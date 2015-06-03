package br.ufc.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.ufc.model.Noticia;

@Repository
public class NoticiaDAO implements INoticiaDAO{
	
	@PersistenceContext
	private EntityManager manager;
	
	public NoticiaDAO() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public void add(Noticia noticia) {
		// TODO Auto-generated method stub
		
		
		this.manager.persist(noticia);
				
		
	}

	@Override
	public void deletar(Noticia noticia) {
		// TODO Auto-generated method stub
		Noticia noticia2 =  buscar(noticia);
		this.manager.remove(noticia2);
		
		
	}

	@Override
	public void alterar(Noticia noticia) {
		// TODO Auto-generated method stub
		this.manager.merge(noticia);		
		
	}

	@Override
	public List<Noticia> listar() {
		String hql = "select n from Noticia n";
		return this.manager.createQuery(hql,Noticia.class).getResultList();
	}

	@Override
	public Noticia buscar(Noticia noticia) {
		// TODO Auto-generated method stub
		Noticia noticia2 = this.manager.find(Noticia.class,noticia.getId_noticia());
		return noticia2;
	}

	
}