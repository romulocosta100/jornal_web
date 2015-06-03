package br.ufc.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.ufc.model.Role;



@Repository
public class RoleDAO implements IRoleDAO {
	
	@PersistenceContext
	private EntityManager manager;
	
	public RoleDAO() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public void add(Role role) {
		// TODO Auto-generated method stub
		this.manager.persist(role);
	}

	@Override
	public void deletar(Role role) {
		// TODO Auto-generated method stub
		Role role2 = buscar(role);
		
		this.manager.remove(role2);
		
	}

	@Override
	public void alterar(Role role) {
		// TODO Auto-generated method stub
		
		this.manager.merge(role);
		
		
	}

	@Override
	public Role buscar(Role role) {
		// TODO Auto-generated method stub
		Role role2 = this.manager.find(Role.class, role.getId_role());
		
		return role2;
	}

	@Override
	public List<Role> listar() {
		// TODO Auto-generated method stub
		String hql = "select r from role r";
		return this.manager.createQuery(hql,Role.class).getResultList();
		
		
	}
	
	
	
	

}
