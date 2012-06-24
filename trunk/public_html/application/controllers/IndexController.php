<?php

class IndexController extends Zend_Controller_Action
{

    public function init()
    {
        $this->view->pIndex = 'current';
        //$this->_flashMessenger = $this->_helper->getHelper('FlashMessenger');
    }

    public function indexAction()
    {
    	/*if(empty($_COOKIE["contVisita"])){
    		setcookie("contVisita","1",time()+300);
    		self::gravarVisitas();
    	}*/    	
    	//$this->view->contVisitar = self::getVisitas();
    	
        $operadora = new Application_Model_Operadora_OperadoraMapper();
        $this->view->objOperadora = $operadora->fetchAll();
        $this->view->valid = Zend_Auth::getInstance()->hasIdentity();
        
    	$request = $this->getRequest();
        if ($request->getPost()){
        	$retorno = self::logar($request->getPost());

        	if(!empty($retorno))
        	{
        		$this->_redirect("/");
        	}
        	else
        	{
        		//$this->view->$message = "Usuário e/ou senha inválidos.";
        		/*$this->_flashMessenger->addMessage(array(
	                 'message' => 'Usuário e/ou senha inválidos.',
	                 'status' => 'form-msg-warning'
	             ));*/
        	}       	
        }
        
    }
        
    public function logar($post)
    {
    	$usuario = new Application_Model_Usuario_Usuario();
        $user = new Application_Model_Usuario_UsuarioMapper();
        	
        $usuario->setDsLogin($post["user"]);
        $usuario->setDsPass($post["pwd"]);
        $result = $user->login($usuario);
    	return $result;
    }
    
    public function logoutAction()
    {
    	$auth = Zend_Auth::getInstance();
    	$auth->clearIdentity();
    	$this->_redirect("/");
    }
    
    /*public function gravarVisitas()
    {
    	$handle = fopen('contador.txt','a+');
    	$data = fread($handle,512);
    	$contador = ((int) $data + 1);
    	fclose($handle);
    	
    	$handle = fopen('contador.txt','w+');
    	fwrite($handle,$contador);
    	fclose($handle);
    }
    
    public function getVisitas()
    {
    	$handle = fopen('contador.txt','r');
    	$contador = fread($handle,512);
    	fclose($handle);
    	return $contador;
    }*/
}
