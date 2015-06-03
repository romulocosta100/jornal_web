package br.ufc.dao;

import java.util.List;


import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import br.ufc.model.Usuario;

@Repository
public class UsuarioDAO implements IUsuarioDAO {
	
	@PersistenceContext
	private EntityManager manager;
	
	public UsuarioDAO() {
		// TODO Auto-generated constructor stub
	}
	

	@Override
	public void add(Usuario usuario) {
		// TODO Auto-generated method stub
		this.manager.persist(usuario);	
		
	}

	@Override
	public void deletar(Usuario usuario) {
		// TODO Auto-generated method stub
		Usuario usuario2 =  buscar(usuario);
		
	
		this.manager.remove(usuario2);
	
		
	}

	@Override
	public void alterar(Usuario usuario) {
		// TODO Auto-generated method stub
		
	
		this.manager.merge(usuario);
	
		
		
		
	}

	@Override
	public List<Usuario> listar() {
		String hql = "select u from Usuario u";
		return this.manager.createQuery(hql,Usuario.class).getResultList();
	}

	@Override
	public Usuario buscar(Usuario usuario) {
		// TODO Auto-generated method stub
		Usuario usuario2 = this.manager.find(Usuario.class, usuario.getId_usuario());
		return usuario2;
	}


	@Override
	public Usuario buscarPorLogin(Usuario usuario) {
		String hql = "select u from Usuario u where u.login='"+usuario.getLogin()+"'";
		return (Usuario) this.manager.createQuery(hql,Usuario.class).getResultList().get(0);
	}

}
