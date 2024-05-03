//
//  ContentView.swift
//  SwiftUI-DynamicList
//
//  Created by Admin on 22/04/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = StudentViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                List(viewModel.studentList){ student
                    in
                    VStack(alignment:.leading) {
                        NavigationLink(destination: StudentDetail(student: student)) {
                        }

                        Text(student.name).font(.headline)
                        Text(student.address).font(.subheadline)
                    }
                }.listStyle(GroupedListStyle())
                
            }.navigationTitle("Student List").navigationBarTitle("Add", displayMode: .large).toolbar(content: {
                Button("Add") {
                    viewModel.addData()
                }
            })
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
