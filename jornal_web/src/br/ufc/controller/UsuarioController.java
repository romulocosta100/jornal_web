package br.ufc.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
	public String formularioJornalista(HttpSession session){
		Usuario usarioLogado = (Usuario) session.getAttribute("usuario");
		if(usarioLogado.isEditor())
			return "usuario/formularioJornalista";
		return "../../index";
	}



	@RequestMapping("formularios_login")
	public String formularioLogin(){
		return "usuario/loginCadastro";
	}

	@RequestMapping("efetua_login")
	public String efetuaLogin(Usuario usuario , HttpSession session){



		//Criptografar a senha que vem do formulario
		try {
			usuario.convertPasswordToMD5();
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			System.out.println("Não foi possível converter a senha para MD5");
			e.printStackTrace();
		}


		Usuario usuario2 = usuarioDAO.buscarPorLogin(usuario);
		if(usuario.getSenha().equals(usuario2.getSenha())){
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



	@RequestMapping(value="add_jornalista", method=RequestMethod.POST)
	public String addJornalista(Usuario usuario,Role role,@RequestParam("file") MultipartFile file){



		//Arquivo
		
		if (!file.isEmpty()) {
			try {
				String nomeImg = new Date().getTime()+"-"+file.getOriginalFilename();
				String imagem = "/home/romulo/img_jornal/img_jornalista/"+nomeImg;	
				
				
				
				byte[] bytes = file.getBytes();
				BufferedOutputStream stream =
						new BufferedOutputStream(new FileOutputStream(new File(imagem)));
				stream.write(bytes);
				stream.close();
				
				//Set imagem
				usuario.setCaminho_imagem(nomeImg);
				
			} catch (Exception e) {
				e.printStackTrace();
				return "";
			}
		} else {
			return "";
		}

		

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
