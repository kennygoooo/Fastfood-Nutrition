//
//  KFCList.swift
//  fooddemo2
//
//  Created by kenny on 2021/11/26.
//

import SwiftUI

struct KFCMenu:Identifiable{
    var id: String{ name }
    let name: String
    let info: String
    let intr: String
    let link: String
}

struct KFCList:View{
    let KFCmenus = [
        KFCMenu(name: "台酒花雕紙包雞" ,info:"熱量(Kcal):457 ,蛋白質(g):49.6 ,脂肪(g):24.1 ,飽和脂肪(g):7.2 ,反式脂肪(g):0 ,碳水化合物(g):10.5 ,糖(g):4 ,鈉(mg):2231" , intr:"以南薑、甘草、薑、當歸、川芎、枸杞等熬煮成醬，加入台酒經典的陳年甕藏花雕酒增添香氣和風味層次，再加入爽口脆嫩的杏鮑菇添加口感，並採用肯德基獨家封烤技術，關鍵控溫210℃，鎖住滿滿雞汁風味。 打開紙包雞，花雕酒香撲鼻，一口咬下，雞肉鮮嫩多汁，整體與花雕酒完美結合，並能感受到滿滿的食補溫潤與療癒。" ,link: "https://www.kfcclub.com.tw/meal/DA133"),
        KFCMenu(name: "綠咖哩無骨脆雞自捲餅" ,info:"熱量(Kcal):1212 ,蛋白質(g):46.5 ,脂肪(g):66 ,飽和脂肪(g):10.2 ,反式脂肪(g):0.43 ,碳水化合物(g):104.5 ,糖(g):2.9 ,鈉(mg):2020", intr:"綠咖哩與肯德基無骨大口脆雞的完美結合，搭配了墨西哥餅皮一起食用，無論是一口餅一口大口脆雞還是將大口脆雞包進餅中來個綠咖哩大口脆雞捲，多種吃法就是今夏最潮新選擇！" ,link: "https://www.kfcclub.com.tw/meal/DA151"),
        KFCMenu(name: "椒香麻辣脆雞" ,info:"熱量(Kcal):476 ,蛋白質(g):23.3 ,脂肪(g):27.1 ,飽和脂肪(g):?? ,反式脂肪(g):0 ,碳水化合物(g):23.3 ,糖(g):0 ,鈉(mg):1032", intr:"椒香麻辣脆雞加入秘製川麻醬，搭配鮮嫩多汁的肉質，麻辣過癮！" ,link: "https://www.kfcclub.com.tw/meal/DA115"),
        KFCMenu(name: "咔啦脆雞" ,info:"熱量(Kcal):236 ,蛋白質(g):15.7 ,脂肪(g):14.1 ,飽和脂肪(g):++ ,反式脂肪(g):0 ,碳水化合物(g):11.5 ,糖(g):++ ,鈉(mg):492", intr:"肯德基好吃炸雞-咔啦脆雞，香酥口感，停不了的吮指好滋味！各式好吃外送美食、外帶炸雞首選肯德基門市外送app！" ,link: "https://www.kfcclub.com.tw/meal/DA002"),
        KFCMenu(name: "上校薄脆雞" ,info:"熱量(Kcal):192 ,蛋白質(g):14.6 ,脂肪(g):11.2 ,飽和脂肪(g):++ ,反式脂肪(g):0 ,碳水化合物(g):8.1 ,糖(g):++ ,鈉(mg):391", intr:"肯德基好吃薄脆炸雞排，以獨家11種神秘香料配方裹粉，又薄又脆的外皮散發誘人香氣，搭配鮮嫩多汁的雞肉，讓你一口接一口，越吃越過癮！外帶炸雞首選肯德基好吃外送app！" ,link: "https://www.kfcclub.com.tw/meal/DA045"),
        KFCMenu(name: "上校薄皮嫩雞" ,info:"熱量(Kcal):167 ,蛋白質(g):14.6 ,脂肪(g):8.9 ,飽和脂肪(g):++ ,反式脂肪(g):0 ,碳水化合物(g):7.2 ,糖(g):++ ,鈉(mg):586", intr:"採用獨門11種神秘香料醃製，搭配獨特裏粉手法，使雞肉浸入滿滿美味！以獨家壓力炸鍋烹炸，將香料由外而內層層逼入、鎖住美味肉汁。" ,link: "https://www.kfcclub.com.tw/meal/DA065"),
        KFCMenu(name: "咔啦雞腿堡" ,info:"熱量(Kcal):445 ,蛋白質(g):25.8 ,脂肪(g):15.2 ,飽和脂肪(g):++ ,反式脂肪(g):0 ,碳水化合物(g):50.7 ,糖(g):++ ,鈉(mg):1070", intr:"肯德基咔啦雞腿堡，經典雞肉漢堡，以獨門醬料醃製，搭配上獨家技術裹粉的100%原塊咔啦雞腿肉，一口咬下，鮮嫩多汁！肯德基速食店門市外送讓你輕鬆享受每一餐！" ,link: "https://www.kfcclub.com.tw/meal/DA003"),
        KFCMenu(name: "花生熔岩咔啦雞腿堡" ,info:"熱量(Kcal):716 ,蛋白質(g):35.6 ,脂肪(g):29.4 ,飽和脂肪(g):4.6 ,反式脂肪(g):0.1 ,碳水化合物(g):76.1 ,糖(g):43.5 ,鈉(mg):1284", intr:"精選香濃滑順顆粒花生醬，搭配櫸木煙燻風味培根" ,link: "https://www.kfcclub.com.tw/meal/DA103"),
        KFCMenu(name: "紐奧良烤雞腿堡" ,info:"熱量(Kcal):411 ,蛋白質(g):23.4 ,脂肪(g):14.7 ,飽和脂肪(g):++ ,反式脂肪(g):0 ,碳水化合物(g):46.3 ,糖(g):++ ,鈉(mg):697", intr:"經典雞肉漢堡-肯德基紐奧良烤雞堡，新鮮去骨雞腿肉搭配紐奧良風味醬汁，給你道地經典紐奧良的美味享受，速食店門市外送首選肯德基！" ,link: "https://www.kfcclub.com.tw/meal/DA004"),
        KFCMenu(name: "正北平雞肉捲" ,info:"熱量(Kcal):535 ,蛋白質(g):22.2 ,脂肪(g):24.5 ,飽和脂肪(g):7.1 ,反式脂肪(g):0 ,碳水化合物(g):54.7 ,糖(g):5.5 ,鈉(mg):1253", intr:"嚴選獨門裹粉工法、現炸酥脆的腿肉條，搭配新鮮爽脆的小黃瓜與青蔥，淋上特調香濃甜麵醬，一起捲入富有嚼勁餅皮。一口咬下，甜麵醬的鹹、甜、香，遇上外酥內軟、香嫩多汁的炸腿肉條，配上清口解膩的小黃瓜與蔥段，是滿滿北平風味的味蕾享受。" ,link: "https://www.kfcclub.com.tw/meal/DA146"),
        KFCMenu(name: "上校雞塊8塊" ,info:"熱量(Kcal):426 ,蛋白質(g):16.2 ,脂肪(g):29.8 ,飽和脂肪(g):++ ,反式脂肪(g):0 ,碳水化合物(g):23 ,糖(g):++ ,鈉(mg):764", intr:"肯德基金黃炸雞塊，肉嫩多汁好對味！肯德基好吃外送app、各式好吃炸雞外送到府很Easy！" ,link: "https://www.kfcclub.com.tw/meal/DA062"),
        KFCMenu(name: "莎莎霸王捲" ,info:"熱量(Kcal):456 ,蛋白質(g):28.3 ,脂肪(g):10.7 ,飽和脂肪(g):++ ,反式脂肪(g):0 ,碳水化合物(g):59.1 ,糖(g):++ ,鈉(mg):1439", intr:"肯德基墨西哥捲餅使用酸辣帶勁的墨西哥莎莎醬、外酥內嫩的咔啦雞腿排，還有多力多滋玉米脆片等多種好料，好吃到停不下來的酸辣滋味，讓你輕鬆享受墨西哥捲，大口秒殺，超帶勁！家庭聚餐首選肯德基好吃外送app！" ,link: "https://www.kfcclub.com.tw/meal/DA010"),
        KFCMenu(name: "花生培根咔啦雞腿堡" ,info:"熱量(Kcal):547 ,蛋白質(g):32.2 ,脂肪(g):20.8 ,飽和脂肪(g):6.1 ,反式脂肪(g):0 ,碳水化合物(g):56.8 ,糖(g):9 ,鈉(mg):1137", intr:"精選香濃滑順顆粒花生醬，搭配櫸木煙燻風味培根" ,link: "https://www.kfcclub.com.tw/meal/DA088"),
        KFCMenu(name: "上校原味脆腿堡" ,info:"熱量(Kcal):386 ,蛋白質(g):24.5 ,脂肪(g):10 ,飽和脂肪(g):++ ,反式脂肪(g):0 ,碳水化合物(g):48.5 ,糖(g):++ ,鈉(mg):1003", intr:"肯德基上校經典脆雞堡，好吃炸雞，大口一咬唇齒留香的滋味！各式美味雞肉漢堡、家庭聚餐首選肯德基好吃外送app！" ,link: "https://www.kfcclub.com.tw/meal/DA082")
    ]
    var body: some View{
        List {
            ForEach(KFCmenus){KFCmenu in NavigationLink{
                KFCNutrientsList(KFCmenu: KFCmenu)
            }label:{
                KFCRow(KFCmenu: KFCmenu)
            }
                
            }
        }.navigationTitle("肯德基")
    }
}

struct KFCRow:View{
    let KFCmenu:KFCMenu
    var body: some View{
        HStack{
            Image(KFCmenu.name)
                .resizable()
                .scaledToFit()
                .frame(width: 80.0, height: 80)
                .clipped()
            Text(KFCmenu.name)
            Spacer()
        }
    }
}

struct KFCNutrientsList:View{
    let KFCmenu:KFCMenu
    var body: some View{
        VStack{
            
            ZStack {
                Link(destination:URL(string: KFCmenu.link)!,label:{
                    Image(KFCmenu.name)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 180, height: 180)
                    .shadow(radius: 3)
                })
            
                Image("肯德基")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .shadow(radius: 3)
                    .offset(y:-150)
               
            }
                
            
            Text(KFCmenu.name)
                .font(.title)
            List{
                Section{
                    Text(KFCmenu.info)
                }header:{
                    Text("營養資訊")
                }
                Section{
                    Text(KFCmenu.intr)
                }header:{
                    Text("介紹")
                }
            }
            
            //                .multilineTextAlignment(.leading)
            .padding()
            Spacer()
        }
    }
}

struct KFCList_Previews: PreviewProvider {
    static var previews: some View {
        KFCList()
    }
}
