package br.csi.controler;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.csi.dao.ClienteDao;

@Controller
public class LayoutClientesControler {

	@RequestMapping("layoutlistaclientes")
	public ModelAndView listarClientes(){
		System.out.println(".... chamou o listar ... ");
		ModelAndView mv = new ModelAndView("layout/cliente");
mv.addObject("clientes",new ClienteDao().listaClientes());		
		return mv;
	}
	
}
