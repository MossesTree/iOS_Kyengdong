//
//  ContentView.swift
//  1st_hw_KimKyengdong
//
//  Created by Kim Kyengdong on 3/17/25.
//

import SwiftUI

struct ContentView: View {
    @State private var timetable = false
    @State private var showAlert: Bool = false
    var body: some View {
        
        VStack {
            Image("프로필")
                .resizable()
                .frame(width:150, height:200)
                .scaledToFit()
                .foregroundStyle(.tint)
                .clipShape(.circle)
            Text("김경동😘")
                .font(.title)
            
            Text("#INFP #사진찍기 #배드민턴\n#PARD #iOS #사랑해요\n#잘부탁드립니다.")
                .font(.body)
                .foregroundColor(.gray)
                .padding()
            
            HStack{
                Button("시간표"){
                    timetable.toggle()
                }
                .foregroundColor(.white)
                .padding()
                .frame(width:100)
                .background(Color.green)
                .cornerRadius(10)
                
                Button("???"){
                    print("지금 나의 고민")
                }
                .foregroundColor(.white)
                .padding()
                .frame(width:100)
                .background(Color.green)
                .cornerRadius(10)
            }
            
            
            Button("More Info"){
                print("학번...")
                showAlert = true
            }
            .foregroundColor(.white)
            .padding()
            .frame(width:210)
            .background(Color.brown)
            .cornerRadius(10)
            .alert("INFO",isPresented:$showAlert){
                Button("확인",role:.cancel){}
            } message:{
                Text("한동대학교 21학번 컴퓨터공학심화 전공\n24살 김경동입니다.")
            }
            
            if timetable{
                Image("시간표")
                    .resizable()
                    .scaledToFit()
                    .frame(height:400)
            }
        }
    }
}

#Preview {
    ContentView()
}
