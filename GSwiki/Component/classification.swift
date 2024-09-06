//
//  Classification.swift
//  GSwiki
//
//  Created by 박성민 on 9/6/24.
//

import SwiftUI

struct Classification: View {
    var content: String
    
    init(content: String = "대문") {
        self.content = content
    }
    
    var body: some View {
        HStack{
            Spacer()
                .frame(width: 10)
            Text("분류: ")
            
            Text(content)
                .foregroundStyle(.orange)
            
            Spacer()
        }
        .padding(.vertical,10)
        .border(Color.gray)
    }
}

#Preview {
    Classification()
}
