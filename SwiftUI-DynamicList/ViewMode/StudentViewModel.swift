//
//  StudentViewModel.swift
//  SwiftUI-DynamicList
//
//  Created by Admin on 22/04/24.
//

import Foundation
import SwiftUI

class StudentViewModel:ObservableObject {
    
    @Published var studentList = [Student]()

    var count = 10

    
//    func fetchStudentData() {
//        guard let url = URL(string: "") else {
//            return
//        }
//        URLSession.shared.dataTask(with: url) { (data, response, error) in
//            if let error = error {
//                print("\(error.localizedDescription)")
//            }
//            guard let data = data else{
//                print("No valid data")
//                return
//            }
//            do {
//                let response = try JSONDecoder().decode(Student.self, from: data)
//                //studentList =
//            }catch {
//
//            }
//
//        }
//    }
    
    func addData() {

        let student = Student(id:count,name:("Bheema" + "\(count)"),address:"Nandyal")
        studentList.append(student)
        count += 1
    }
}
