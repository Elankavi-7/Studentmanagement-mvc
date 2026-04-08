package com.pojo;

import javax.persistence.*;

@Entity
@Table(name = "student")
public class Student {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private int marks;
    private int age;

    public int getId() 
    { 
    	return id; 
    	}

    public String getName() 
    { 
    	return name; 
    	}
    public void setName(String name) 
    { 
    	this.name = name; 
    	}

    public int getMarks() 
    { 
    	return marks; 
    	}
    public void setMarks(int marks) 
    { 
    	this.marks = marks; 
    	}
    
    public int getAge()
    {
    	return age;
    }
    public void setAge(int age)
    {
    	this.age=age;
    }
}