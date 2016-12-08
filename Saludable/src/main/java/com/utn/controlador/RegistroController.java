package com.utn.controlador;

import javax.validation.Valid;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.utn.dao.HibernateUtil;
import com.utn.modelo.Paciente;


@Controller
public class RegistroController {

	
	@RequestMapping(value="/alta")
	public String registrar(@ModelAttribute("nuevopaciente") Paciente paciente,BindingResult result){
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		if(!result.hasErrors()){
			Transaction transaccionos = session.beginTransaction();
			session.save(paciente);
			transaccionos.commit();
			
			return "controlDiario";
		}
		
		return "registrar";
	}
	
	@RequestMapping(value="/registrarse")
	public String guardar(@ModelAttribute("nuevopaciente") Paciente paciente,BindingResult result){
		
		return "registrar";
	}
	
}
