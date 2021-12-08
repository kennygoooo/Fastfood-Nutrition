//
//  LogoList.swift
//  fooddemo2
//
//  Created by kenny on 2021/11/26.
//

import SwiftUI

struct Logo:Identifiable{
    var id: String{ name }
    let name: String
}

struct LogoList: View {
    let logos = [
        Logo(name: "麥當勞"),
        Logo(name: "肯德基"),
        Logo(name: "摩斯漢堡 "),
        Logo(name: "漢堡王")]
    var body: some View {
        NavigationView {
            List {
                NavigationLink{
                    McDonaldList()
                }label:{
                    LogoRow(logo: logos[0])
                }
                NavigationLink{
                    KFCList()
                }label:{
                    LogoRow(logo: logos[1])
                }
                NavigationLink{
                    MOSList()
                }label:{
                    LogoRow(logo: logos[2])
                }
                NavigationLink{
                    BurgerKingList()
                }label:{
                    LogoRow(logo: logos[3])
                }
//                ForEach(logos){logo in
//                    NavigationLink{
//                        McDonaldList()
//                    }label:{
//                        LogoRow(logo: logo)
//                    }
                
                //               .previewLayout(.fixed(width: 300, height: 80))
            }
            .navigationTitle("速食店")            
            
        }
    }
}

//NavigationLink("View 3", destination: View3())

struct LogoRow:View{
    
    let logo: Logo
    var body: some View{
        HStack{
            Image(logo.name)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .shadow(radius: 3)
                .clipped()
            Text(logo.name)
            Spacer()
        }
    }
}

struct LogoList_Previews: PreviewProvider {
    static var previews: some View {
        LogoList()
    }
}
