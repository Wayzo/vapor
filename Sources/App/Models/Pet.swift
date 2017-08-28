//
//  Pet.swift
//  Hello
//
//  Created by wyz on 2017/8/28.
//
//

import Vapor
import FluentProvider


final class Pet: Model{

    var name: String
    var age: Int
    let storage = Storage()
    
    init(row: Row) throws {
        name = try row.get("name")
        age = try row.get("age")
    }
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    func makeRow()  throws -> Row {
        var row = Row()
        try row.set("name",name)
        try row.set("age", age)
        return row
    }
}
