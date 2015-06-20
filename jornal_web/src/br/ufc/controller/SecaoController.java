package br.ufc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import br.ufc.dao.ISecaoDAO;
import br.ufc.model.Secao;
import br.ufc.model.Usuario;

@Transactional
@Controller
public class SecaoController {
	
	@Autowired
	private ISecaoDAO secaoDAO;
	
	
	@RequestMapping("formulario_secao")
	private String formularioSecao(HttpSession session){
		Usuario usarioLogado = (Usuario) session.getAttribute("usuario");
		if(usarioLogado.isEditor())
			return "secao/formularioSecao";
		return "../../index";
	}
	
	
	@RequestMapping("add_secao")
	private String addSecao(Secao secao){
		System.out.println(secao.getTitulo());
		System.out.println(secao.getDescricao());
		secaoDAO.add(secao);
		return "secao/secaoCadastrada";
	}
	
}
