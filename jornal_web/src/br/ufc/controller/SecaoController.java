package br.ufc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import br.ufc.dao.ISecaoDAO;
import br.ufc.model.Secao;

@Transactional
@Controller
public class SecaoController {
	
	@Autowired
	private ISecaoDAO secaoDAO;
	
	
	@RequestMapping("formulario_secao")
	private String formularioSecao(){
		return "secao/formularioSecao";
	}
	
	
	@RequestMapping("add_secao")
	private String addSecao(Secao secao){
		System.out.println(secao.getTitulo());
		System.out.println(secao.getDescricao());
		secaoDAO.add(secao);
		return "secao/secaoCadastrada";
	}
	
}
