//
//  Home.swift
//  GSwiki
//
//  Created by 박성민 on 8/24/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject var homeViewModel: HomeViewModel
    @State private var selectedTab = "tab"
    
    var tabs = ["학생","선생님","사건/사고","동아리"]
    
    var body: some View {
        VStack {
            HStack{
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .foregroundStyle(Color.white)
                    .padding(.leading,10)
                Spacer()
                if homeViewModel.isLogin{
                    //TODO: - 로그인 이름만 보이게 (버튼 없애고)
                }else{
                    Button(
                        action: {
                            print("로그인 창열리게")
                        }, label: {
                            Image(systemName: "person.fill")
                                .foregroundColor(.white)
                            Text("로그인")
                                .foregroundStyle(.white)
                                .font(.system(size: 20,weight: .bold))
                        }
                    )
                    .padding(.trailing,30)
                }
            }
            .padding(.top,40)
            .frame(width: 400,height: 100)
            .background(.customGreen)
            
            
            Picker("",selection:$selectedTab){
                ForEach(tabs, id:\.self){
                    Text($0)
                        .tag($0)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Spacer()
        }
        .padding()
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    HomeView(homeViewModel: HomeViewModel())
}
