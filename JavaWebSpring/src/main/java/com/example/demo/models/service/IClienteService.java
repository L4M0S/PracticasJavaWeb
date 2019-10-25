package com.example.demo.models.service;

import java.util.List;

import com.example.demo.entity.Cliente;

public interface IClienteService {
	
	public List<Cliente> findAll();
	
	public void save(Cliente cliente);
	
	public Cliente findOne(Long id);
	
	public void delete(Long id);

}
