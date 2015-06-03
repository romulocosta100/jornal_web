package br.ufc.dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.ufc.model.Secao;


@Repository
@Transactional
public class SecaoDAO implements ISecaoDAO {
	
	@PersistenceContext
	private EntityManager manager;
	
	

	@Override
	public void add(Secao secao) {
		// TODO Auto-generated method stub
		System.out.println("AQui!");
		this.manager.persist(secao);
	}

	@Override
	public void deletar(Secao secao) {
		// TODO Auto-generated method stub
		Secao secao2 =  buscar(secao);
		
		
		this.manager.remove(secao2);
		
		
	}

	@Override
	public void alterar(Secao secao) {
		// TODO Auto-generated method stub
		
		
		this.manager.merge(secao);
		
		
	}

	@Override
	public List<Secao> listar() {
		String hql = "select s from Secao s";
		
		return this.manager.createQuery(hql,Secao.class).getResultList();
	}

	@Override
	public Secao buscar(Secao secao) {
		// TODO Auto-generated method stub
		Secao secao2 = this.manager.find(Secao.class, secao.getId_secao() );
		return secao2;
	}
	
	

}
