package br.ufc.controller;

import java.awt.BufferCapabilities.FlipContents;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import sun.awt.image.FileImageSource;

import br.ufc.dao.INoticiaDAO;
import br.ufc.dao.ISecaoDAO;
import br.ufc.dao.IUsuarioDAO;
import br.ufc.model.Noticia;
import br.ufc.model.Secao;
import br.ufc.model.Usuario;



@Transactional
@Controller
public class NoticiaController {
	@Autowired
	private INoticiaDAO noticiaDAO;
	@Autowired
	private ISecaoDAO secaoDAO;
	@Autowired
	private IUsuarioDAO usuarioDAO;




	@RequestMapping("ler_noticia")
	public String lerNoticia(Noticia noticia,Model model){
		noticia = noticiaDAO.buscar(noticia);
		model.addAttribute("noticia",noticia);
		Collections.reverse( noticia.getComentarios());
		model.addAttribute("comentarios", noticia.getComentarios() );
		return "noticia/noticia";
	}





	@RequestMapping("manchete")
	public String manchete(Secao secao,Model model){
		secao = secaoDAO.buscar(secao);
		List<Noticia> noticias = secao.getNoticias();
		System.out.println("AQUIIIIIIIIIIIIIIIIIIIII");
		for (Noticia noticia : noticias) {
			System.out.println(noticia.getSubtitulo()+"");
		}
		System.out.println("AQUIIIIIIIIIIIIIIIIIIIII");
		model.addAttribute("noticias",noticias);
		return "noticia/manchete";
	}


	@RequestMapping("lita_secoes")
	public String listaSecoes(Model model){
		List<Secao> secoes = secaoDAO.listar();
		model.addAttribute("secoes", secoes);
		return "noticia/secoes";
	}


	@RequestMapping("lista_noticia")
	public String listaNoticias(Model model,HttpSession session){
		Usuario usuarioLogado = (Usuario) session.getAttribute("usuario");
		if(usuarioLogado.isEditor() || usuarioLogado.isJornalista()){
			List<Noticia> noticias = noticiaDAO.listar();
			model.addAttribute("noticias", noticias);
			return "noticia/apagarNoticias";
		}
		return "../../index";
	}

	@RequestMapping("apagar_noticia")
	public String apagarNoticias(Noticia noticia){

		noticia = noticiaDAO.buscar(noticia);
		if(noticia.getCaminho_imagem() !=null){
			File fg = new File(noticia.getCaminho_imagem());  
			fg.delete();  
		}
		noticiaDAO.deletar(noticia);
		return "redirect:lita_secoes";
	}



	@RequestMapping("formulario_noticia")
	public String formularioNoticia(Model model,HttpSession session){
		Usuario usarioLogado = (Usuario) session.getAttribute("usuario");
		if(usarioLogado.isJornalista()){
			List<Secao> secoes = secaoDAO.listar();
			model.addAttribute("secoes",secoes);
			return "noticia/formularioNoticia";
		}
		return "../../index";
	}

	@RequestMapping(value="add_noticia", method=RequestMethod.POST)
	public String addNoticia(Noticia noticia,HttpSession session,Secao secao,@RequestParam("file") MultipartFile file){


		//Arquivo
		String imagem = "/home/romulo/img_jornal/"+file.getOriginalFilename();
		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();
				BufferedOutputStream stream =
						new BufferedOutputStream(new FileOutputStream(new File(imagem)));
				stream.write(bytes);
				stream.close();
			} catch (Exception e) {
				e.printStackTrace();
				return "";
			}
		} else {
			return "";
		}



		//Set imagem
		noticia.setCaminho_imagem(imagem);


		//Buscar usuário autor
		Usuario usuario = (Usuario) session.getAttribute("usuario");
		usuario = usuarioDAO.buscar(usuario);

		//Buscar Seção
		secao = secaoDAO.buscar(secao);

		//Add noticia
		noticia.setAutor(usuario);
		noticia.setSecao(secao);
		noticia.setData_noticia(new Date());
		noticiaDAO.add(noticia);




		return "redirect:formulario_noticia";
	} 




}
