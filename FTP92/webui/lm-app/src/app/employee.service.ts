import { Employee } from './employee';
import { Observable } from 'rxjs';
import {HttpClient} from '@angular/common/http';
import { Injectable } from '@angular/core';


@Injectable()
export class EmployeeService {
    constructor(private http: HttpClient) {
    }
getEmployees(): Observable<Employee[]> {
    console.log('getEmployees called on employee.service');
    return this.http.get<Employee[]>('http://localhost:8080/ftp92/api/employees');
   
}
}
