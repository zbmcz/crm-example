package edu.hebut.crm.core.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "_user")
public class User {

	@Id
	@GeneratedValue
	@Column(name = "_id")
	private Integer id;
	@Column(nullable = false, name = "_username", length = 12)
	private String username;
	@Column(nullable = false, name = "_psw", length = 6)
	private String password;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
