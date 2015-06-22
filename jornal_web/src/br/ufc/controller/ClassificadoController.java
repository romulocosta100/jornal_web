package br.ufc.controller;

import java.util.Date;
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
	
	
	
	
	@RequestMapping("efetuar_oferta")
	public String efetuarOfertar(Classificado classificado,HttpSession session,float oferta){
		classificado = classificadoDAO.buscar(classificado);
		Usuario autor = (Usuario) session.getAttribute("usuario");
		if(oferta >=classificado.getPreco() && oferta>classificado.getMelhor_oferta()){
			classificado.setMelhor_oferta(oferta);
			classificado.setAutor(autor);
			classificado.setData_oferta(new Date());
			classificadoDAO.alterar(classificado);
			return "redirect:classificados";
		}
			
		
		return "redirect:classificados";
	}
	
	
	@RequestMapping("ofertar")
	public String ofertar(Classificado classificado,Model model){
		
		classificado = classificadoDAO.buscar(classificado);
		model.addAttribute("classificado", classificado);
		return "classificado/ofertaDeCompra";
	}
	
	
	
	@RequestMapping("classificados")
	public String listaClassificados(Model model){
		List<Classificado> classificados = classificadoDAO.listar();
		
		model.addAttribute("classificados", classificados);
		return "classificado/classificados";
	}
	
	@RequestMapping("formulario_classificado")
	public String formularioClassificao(HttpSession session){
		Usuario usarioLogado = (Usuario) session.getAttribute("usuario");
		if(usarioLogado.isEditor())
			return "classificado/formularioClassificado";
		return "../../index";
	}
	
	
	@RequestMapping("add_classificado")
	public String addClassificado(Classificado classificado, HttpSession session){
		classificadoDAO.add(classificado);
		return "redirect:formulario_classificado";
		
	}
	
	
	
	
}
