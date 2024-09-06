//
//  Home.swift
//  GSwiki
//
//  Created by 박성민 on 8/24/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject var homeViewModel: HomeViewModel
    @State private var selectPicker: Tab? = nil
    
    var body: some View {
        ZStack{
            VStack {
                HStack{
                    Spacer()
                        .frame(width: 50)

                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150)
                        .foregroundStyle(Color.white)
                        .padding(.leading,10)
                        .onTapGesture {
                            withAnimation(.easeIn){
                                selectPicker = nil
                            }
                        }
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
                    
                    Spacer()
                        .frame(width: 50)
                }
                .padding(.top,40)
                .frame(width: 500,height: 100)
                .background(.customGreen)
                
                CustomTabView(selectPicker: $selectPicker)
                Spacer()
            }
            .padding()
            .edgesIgnoringSafeArea(.all)
        }
    }
}

private struct CustomTabView: View {
    @Binding var selectPicker: Tab?
    @Namespace private var animation
    
    fileprivate var body: some View{
        VStack{
            animate()
            detailView(tabs: selectPicker ?? nil)
        }
    }
    
    @ViewBuilder
    private func animate() -> some View {
        HStack {
            ForEach(Tab.allCases, id: \.self) { item in
                VStack {
                    Text(item.rawValue)
                        .frame(maxWidth: 100, minHeight: 30)
                        .font(.system(size: 20,weight: .medium))
                        .foregroundColor(selectPicker == item ? .customGreen: .gray)
                            
                    if selectPicker == item {
                        Capsule()
                            .foregroundColor(.customGreen)
                            .frame(height: 3)
                            .matchedGeometryEffect(id: "info", in: animation)
                    }
                }
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        self.selectPicker = item
                    }
                }
            }
        }
    }
}

private struct detailView: View {
    var tabs: Tab?
    fileprivate var body: some View{
        ScrollView{
            switch tabs{
            case .student:
                StudentView()
            case .teacher:
                TeacherView()
            case .issue:
                IssueView()
            case .club:
                ClubView()
            case .none:
                MainView()
            }
        }
    }
}

#Preview {
    HomeView(homeViewModel: HomeViewModel())
}
