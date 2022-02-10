//
//  EmployeeManager.swift
//  coreData2
//
//  Created by Apple on 09/02/22.
//

import Foundation

struct EmployeeManager
{
    private let _employeeDataRepository = EmployeeDataRepository()
    
    func createEmployee(employee: Employee) {
        _employeeDataRepository.create(employee: employee)
    }
    
    func fetchEmployee() -> [Employee]? {
        return _employeeDataRepository.getAll()
    }
    
    func get(byIdentifier id: UUID) -> Employee? {
        return _employeeDataRepository.get(byIdentifier: id)
    }
    
    func update(employee: Employee) -> Bool {
        return _employeeDataRepository.update(employee: employee)
    }
    
    func delete(id: UUID) -> Bool {
        return _employeeDataRepository.delete(id: id)
    }
    
    
}
