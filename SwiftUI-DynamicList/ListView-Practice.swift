//
//  ListView-Practice.swift
//  SwiftUI-DynamicList
//
//  Created by Admin on 22/04/24.
//

import SwiftUI

struct ListView_Practice: View {
    @ObservedObject var viewModel = StudentViewModel()

    var body: some View {
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        NavigationView {
            VStack(alignment:.leading) {
                List(viewModel.studentList){ student in
                    VStack(alignment: .leading){
                        NavigationLink ( "", destination: ListDetailView())
                        Text(student.name).font(.headline)
                        Text(student.address).font(.subheadline).foregroundColor(.blue)
                    }
                }.listStyle(GroupedListStyle())
            }.navigationTitle("Welcome screen").font(.headline).toolbar(content: {
                Button("Get Data") {
                    viewModel.addData()
                }
            })
        }
    }
}

struct ListView_Practice_Previews: PreviewProvider {
    static var previews: some View {
        ListView_Practice()
    }
}

