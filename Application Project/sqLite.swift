//
//  sqLite.swift
//  Application Project
//
//  Created by HARSHID PATEL on 23/06/23.
//

import Foundation
import SQLite3

struct DataBase{
    var userName: String
    var password: String
    var number: Int
    var email: String
}

class SqLite{
    static var file: OpaquePointer?
    
    static func createFile(){
        var x = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        x.appendPathExtension(" My instaGram filedata3.db")
        sqlite3_open(x.path, &file)
        print("Create File")
        print(x.path)
        createTable()
    }
    
    static func createTable(){
        var q = "Create Table if not exists Students (userName text,password text,number integer,email text)"
        var table: OpaquePointer?
        sqlite3_prepare(file, q, -1, &table, nil)
        print("Create Table")
        sqlite3_step(table)
    }
    
    static func addData(userName: String,password: String,number: Int,email: String){
        var q = "insert into Students values ('\(userName)','\(password)','\(number)','\(email)')"
        var data: OpaquePointer?
        sqlite3_prepare(file, q, -1, &data, nil)
        print("Add Data")
        sqlite3_step(data)
    }
    
    static func getData()->[DataBase]{
        var arr = [DataBase]()
        
        let q = "select userName,password,number,email from Students"
        var get: OpaquePointer?
        sqlite3_prepare(file, q, -1, &get, nil)
        
        let number = sqlite3_column_int64(get, 2)
        print("number = \(number)",terminator: "")
        
        while sqlite3_step(get) == SQLITE_ROW{
            if let cString0 = sqlite3_column_text(get, 0), let cString1 = sqlite3_column_text(get, 1), let cString3 = sqlite3_column_text(get, 3){
                let userName = String(cString: cString0)
                let password = String(cString: cString1)
                let email = String(cString: cString3)
                
                arr.append(DataBase(userName: userName, password: password, number: Int(number), email: email))
            }
        }
        print("Get Data")
        return arr
    }
    
    static func checkData(userName: String,password: String)->Bool{
        var arr = [DataBase]()
        let q = "select userName,password,number,email from Students WHERE userName = '\(userName)'and password = '\(password)'"
        var data: OpaquePointer?
        sqlite3_prepare(file, q, -1, &data, nil)
        
        let number = sqlite3_column_int64(data, 2)
        print("number = \(number)",terminator: "")
        
        while sqlite3_step(data) == SQLITE_ROW{
            if let cString0 = sqlite3_column_text(data, 0), let cString1 = sqlite3_column_text(data, 1), let cString3 = sqlite3_column_text(data, 3){
                let userName = String(cString: cString0)
                let password = String(cString: cString1)
                let email = String(cString: cString3)
                
                arr.append(DataBase(userName: userName, password: password, number: Int(number), email: email))
            }
            else{
                print("Error")
            }
        }
        print("Check Data")
        return arr.count != 0
    }
    
}
