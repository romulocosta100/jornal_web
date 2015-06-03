package br.ufc.controller;

import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import br.ufc.dao.IUsuarioDAO;
import br.ufc.dao.RoleDAO;
import br.ufc.model.Role;
import br.ufc.model.Usuario;



@Transactional
@Controller
public class UsuarioController {

	@Autowired
	private IUsuarioDAO usuarioDAO;
	@Autowired
	private RoleDAO roleDAO;
	
	
	@RequestMapping("cadastrar_jornalista")
	public String formularioJornalista(){
		return "usuario/formularioJornalista";
	}
	
	
	
	@RequestMapping("formularios_login")
	public String formularioLogin(){
		return "usuario/loginCadastro";
	}
	
	@RequestMapping("efetua_login")
	public String efetuaLogin(Usuario usuario , HttpSession session ){
		//Criptografar a senha que vem do formulario
		try {
			usuario.convertPasswordToMD5();
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			System.out.println("Não foi possível converter a senha para MD5");
			e.printStackTrace();
		}
		
		
		Usuario usuario2 = usuarioDAO.buscarPorLogin(usuario);
		if(usuario.getLogin().equals(usuario2.getLogin())  && usuario.getSenha().equals(usuario2.getSenha())){
			session.setAttribute("usuario", usuario2);
			
			return "redirect:formularios_login";
		}
			
		
		return "redirect:formularios_login";
	}
	
	
	@RequestMapping("add_usuario")
	public String addLeitor(Usuario usuario,Role role){
		System.out.println(usuario.getEmail());
		System.out.println(usuario.getNome());
		System.out.println(role.getId_role());
		
		Role papel = roleDAO.buscar(role);
		List<Role> papeis = new ArrayList<Role>(); 
		papeis.add(papel);
		usuario.setRoles(papeis);
		
		//criptografar senha
		try {
			usuario.convertPasswordToMD5();
			
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			System.out.println("Não foi possível converter a senha para MD5");
			e.printStackTrace();
		}
		
		//Add usuario com papel leitor
		usuarioDAO.add(usuario);
				
		return "usuario/usuarioCadastrado";
	}
	
	
}
