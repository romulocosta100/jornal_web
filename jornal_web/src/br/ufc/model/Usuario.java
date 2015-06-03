package br.ufc.model;


import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;


@Entity
@Table(name="usuario")
public class Usuario {
	@Id
	@GeneratedValue
	@Column(name="id_usuario", nullable=false)
	private long id_usuario;
	@Column(name="login" ,  unique=true)
	private String login;
	private String senha;
	private String nome;
	private String email;
	
	
	
	@OneToMany(mappedBy="autor",targetEntity=Classificado.class,fetch = FetchType.LAZY)
	List<Classificado> classificados;
	
	
	@OneToMany(mappedBy="autor",targetEntity=Comentario.class,fetch=FetchType.LAZY, cascade = CascadeType.ALL)
	List<Comentario> comentarios;
	
	
	@OneToMany(mappedBy="autor",targetEntity=Noticia.class,fetch=FetchType.LAZY)
	List<Noticia> noticias;
	
	
	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name="usuario_role",
				joinColumns=@JoinColumn(name="id_usuario" , referencedColumnName="id_usuario"),
				inverseJoinColumns =@JoinColumn(name="id_role" , referencedColumnName="id_role"))
	private List<Role> roles;

	
	
	public String convertPasswordToMD5() throws NoSuchAlgorithmException {
			String password = senha;
	        MessageDigest md = MessageDigest.getInstance("MD5");
	 
	        BigInteger hash = new BigInteger(1, md.digest(password.getBytes()));
	        
	        senha=  String.format("%32x", hash);
	        return senha;
	}
	
	
	
	
	public long getId_usuario() {
		return id_usuario;
	}


	public void setId_usuario(long id_usuario) {
		this.id_usuario = id_usuario;
	}


	public String getLogin() {
		return login;
	}


	public void setLogin(String login) {
		this.login = login;
	}


	public String getSenha() {
		return senha;
	}


	public void setSenha(String senha) {
		this.senha = senha;
	}


	public String getNome() {
		return nome;
	}


	public void setNome(String nome) {
		this.nome = nome;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public List<Classificado> getClassificados() {
		return classificados;
	}


	public void setClassificados(List<Classificado> classificados) {
		this.classificados = classificados;
	}


	public List<Comentario> getComentarios() {
		return comentarios;
	}


	public void setComentarios(List<Comentario> comentarios) {
		this.comentarios = comentarios;
	}


	public List<Noticia> getNoticias() {
		return noticias;
	}


	public void setNoticias(List<Noticia> noticias) {
		this.noticias = noticias;
	}


	public List<Role> getRoles() {
		return roles;
	}


	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}
	
	

}
