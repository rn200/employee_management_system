package employeeManagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import employeeManagement.dao.EmployeeDao;
import employeeManagement.model.EmployeeEntity;

@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeDao employeeDao;

	@RequestMapping("/home")
	public String home(Model model ) {
		List<EmployeeEntity> employeeEntities=employeeDao.getEmployees();
		model.addAttribute("employee",employeeEntities);
		return "index";
	}
	
	@RequestMapping("/add-employee")
	public String add_employee() {
		return "add_employee";
	}
	
	@RequestMapping(value = "/handleEmployee", method=RequestMethod.POST)
	public RedirectView employeeHandler(@ModelAttribute EmployeeEntity employeeEntity) {
		System.out.println(employeeEntity);
		this.employeeDao.createEmployee(employeeEntity);
		return new RedirectView("/home",true);
	}
	
	@RequestMapping("/delete/{employeeId}")
	public RedirectView deleteHandle(@PathVariable("employeeId") int eid) {
		this.employeeDao.deleteEmployee(eid);
		return new RedirectView("/home",true);
	}
	
	@RequestMapping("/update/{employeeId}")
	public String updateHandle(@PathVariable("employeeId") int eid,Model model) {
		EmployeeEntity employee=this.employeeDao.getEmployee(eid);
		model.addAttribute("emp",employee);
		return "updateForm";
	}
}
