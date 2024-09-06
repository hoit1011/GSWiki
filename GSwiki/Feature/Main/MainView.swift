//
//  MainView.swift
//  GSwiki
//
//  Created by 박성민 on 9/2/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView{
            TitleView()
            
            Classification(content: "대문")
        }
    }
}

private struct TitleView: View {
    fileprivate var body: some View{
        HStack{
            Text("경소위키:대문")
                .foregroundColor(.customGreen)
                .font(.system(size: 28,weight: .bold))
            
            Spacer()
        }
    }
}

#Preview {
    MainView()
}
