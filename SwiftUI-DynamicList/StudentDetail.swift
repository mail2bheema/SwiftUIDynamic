//
//  StudentDetail.swift
//  SwiftUI-DynamicList
//
//  Created by Admin on 22/04/24.
//

import SwiftUI

struct StudentDetail: View {
    let student: Student

    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
            Text(student.name)
                .font(.title)
                .foregroundColor(.blue)
                .padding()
            Spacer()
        }.padding()
        Spacer()
    }
}

