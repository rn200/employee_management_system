package employeeManagement.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import employeeManagement.model.EmployeeEntity;


@Component
public class EmployeeDao {
	
    @Autowired
	private HibernateTemplate hibernateTemplate;
    
    //create
    @Transactional
    public void createEmployee(EmployeeEntity employeeEntity) {
    	this.hibernateTemplate.saveOrUpdate(employeeEntity);
    	
    }
    
    //get multiple data
    public List<EmployeeEntity> getEmployees(){
    	return this.hibernateTemplate.loadAll(EmployeeEntity.class);
    }
    

	// delete
	@Transactional
	public void deleteEmployee(int pid) {
		EmployeeEntity p=this.hibernateTemplate.load(EmployeeEntity.class,pid);
		this.hibernateTemplate.delete(p);
	}
	// get single product
	public EmployeeEntity getEmployee(int pid) {
		return this.hibernateTemplate.get(EmployeeEntity.class,pid);
	}
	
	
}
