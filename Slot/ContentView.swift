//
//  ContentView.swift
//  Slot
//
//  Created by Kim Tae Kyeong  on 2021/12/17.
//

import SwiftUI

struct ContentView: View {
    
    @State var credits = 1000
    
    @State var slot1 = 1
    @State var slot2 = 2
    @State var slot3 = 3
    
    var body: some View {
        
        VStack{
            Spacer()
            Text("SwiftUI Slots!")
                .font(.title)
            
            Spacer()
            
//            Text("Credits: " + String(credits))

            Text("Credits: \(credits)")
            
            Spacer()
            
            HStack{
                Image("fruit\(slot1)").resizable().aspectRatio(contentMode: .fit)
                Image("fruit\(slot2)").resizable().aspectRatio(contentMode: .fit)
                Image("fruit\(slot3)").resizable().aspectRatio(contentMode: .fit)

            
            }
            
            
                Spacer()
            
            Button(action: {
                slot1 = Int.random(in: 1...3)
                slot2 = Int.random(in: 1...3)
                slot3 = Int.random(in: 1...3)
                
                if(slot1 == slot2 && slot1 == slot3){
                    credits += 500
                }else{
                    credits -= 100
                }
                
//                if(credits < 0){
//
//                }
                
            }) {
                Text("Spin").padding(.horizontal, 24.0)
            }.padding(.all, 7.0).foregroundColor(.white).background(Color.red).cornerRadius(40)
            
                Spacer()
            
        }.ignoresSafeArea()
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
