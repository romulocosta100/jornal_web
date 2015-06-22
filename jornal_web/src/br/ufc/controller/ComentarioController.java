package br.ufc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import br.ufc.dao.IComentarioDAO;
import br.ufc.dao.INoticiaDAO;
import br.ufc.dao.IUsuarioDAO;
import br.ufc.model.Comentario;
import br.ufc.model.Noticia;
import br.ufc.model.Usuario;

@Transactional
@Controller
public class ComentarioController {
	
	@Autowired
	private IComentarioDAO comentarioDAO;
	@Autowired
	private INoticiaDAO noticiaDAO;
	@Autowired
	private IUsuarioDAO usuarioDAO;
	
	
	@RequestMapping("comentar")
	public String realizarComentario(Noticia noticia,Comentario comentario,HttpSession session ){
		noticia = noticiaDAO.buscar(noticia);
		Usuario autor = (Usuario) session.getAttribute("usuario");
		comentario.setAutor(autor);
		comentario.setNoticia(noticia);
		comentarioDAO.add(comentario);
		return "redirect:ler_noticia?id_noticia="+noticia.getId_noticia();
	}
	
	
}
