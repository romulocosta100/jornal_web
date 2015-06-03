package br.ufc.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.ufc.dao.IClassificadoDAO;
import br.ufc.dao.IUsuarioDAO;
import br.ufc.model.Classificado;
import br.ufc.model.Usuario;



@Transactional
@Controller
public class ClassificadoController {

	@Autowired
	private IClassificadoDAO classificadoDAO;
	@Autowired
	private IUsuarioDAO usuarioDAO;
	
	
	
	@RequestMapping("ofertar")
	public String ofertar(long id_classificado){
		return "classificado/ofertaDeCompra";
	}
	
	
	
	@RequestMapping("classificados")
	public String listaClassificados(Model model){
		List<Classificado> classificados = classificadoDAO.listar();
		model.addAttribute("classificados", classificados);
		return "classificado/classificados";
	}
	
	@RequestMapping("formulario_classificado")
	public String formularioClassificao(){
		return "classificado/formularioClassificado";
	}
	
	
	@RequestMapping("add_classificado")
	public String addClassificado(Classificado classificado, HttpSession session){
		classificadoDAO.add(classificado);
		return "redirect:formulario_classificado";
		
	}
	
	
	
	
}
