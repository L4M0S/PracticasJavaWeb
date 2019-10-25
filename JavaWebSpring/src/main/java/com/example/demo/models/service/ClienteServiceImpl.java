package com.example.demo.models.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Cliente;
import com.example.demo.models.dao.IClienteDAO;

@Service
public class ClienteServiceImpl implements IClienteService {
	
	@Autowired
	private IClienteDAO clienteDao;
	
	@Override
	@Transactional(readOnly = true)
	public List<Cliente> findAll(){
		return (List<Cliente>) clienteDao.findAll();
	}
	
	@Override
	@Transactional(readOnly = true)
	public void save(Cliente cliente){
		clienteDao.save(cliente);
	}
	
	@Override
	@Transactional(readOnly = true)
	public Cliente findOne(Long id){
		return clienteDao.findById(id).orElse(null);
	}
	
	@Override
	@Transactional
	public void delete(Long id){
		clienteDao.deleteById(id);
	}

}
