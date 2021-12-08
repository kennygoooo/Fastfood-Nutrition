//
//  BurgerKingList.swift
//  fooddemo2
//
//  Created by kenny on 2021/11/29.
//

import SwiftUI

struct BurgerKingMenu:Identifiable{
    var id: String{ name }
    let name: String
    let info: String
    let intr: String
    let link: String
}

struct BurgerKingList:View{
    let BurgerKingmenus = [
        BurgerKingMenu(name: "重磅培根雙層辣雞堡" ,info:"熱量(Kcal):1169.6 ,蛋白質(g):52 ,脂肪(g):67.5 ,飽和脂肪(g):29.5 ,反式脂肪(g):0.4 ,碳水化合物(g):89.7 ,糖(g):23.6 ,鈉(mg):3040" ,intr:"層層堆疊的美味搭配濃郁起司、酥炸鮮嫩培根來滿足你的味蕾，培根加量、 起士加量，嚴選重磅100%辣雞腿，大口咬下肉汁四溢，肉食主義者絕對不能錯過！" ,link:"https://www.burgerking.com.tw/sag2965"),
        BurgerKingMenu(name: "重磅培根雙層牛肉堡" ,info:"熱量(Kcal):1190.1 ,蛋白質(g):72.2 ,脂肪(g):75.1 ,飽和脂肪(g):33.1 ,反式脂肪(g):0.4 ,碳水化合物(g):58.8 ,糖(g):18.4 ,鈉(mg):2316" ,intr:"層層堆疊的美味搭配濃郁起司、酥炸鮮嫩培根來滿足你的味蕾，培根加量、 起士加量，嚴選重磅100%澳洲純牛肉，經過高溫直火烘烤， 完美鎖住肉汁原味，大口咬下肉香四溢，肉食主義者絕對不能錯過！" ,link:"https://www.burgerking.com.tw/cib139"),
        BurgerKingMenu(name: "花生安格斯牛肉堡" ,info:"熱量(Kcal):652.3 ,蛋白質(g):34.1 ,脂肪(g):39 ,飽和脂肪(g):16.6 ,反式脂肪(g):0 ,碳水化合物(g):41 ,糖(g):10.6 ,鈉(mg):731" ,intr:"嚴選台灣在地無添加香濃花生醬，佐搭培根、起士、澳洲進口三倍厚牛肉，再進入烤爐高溫炙燒，奔馳的火烤美味，簡直讓人味覺甩尾" ,link:"https://www.burgerking.com.tw/jps9805"),
        BurgerKingMenu(name: "小怪獸香豬脆雞堡" ,info:"熱量(Kcal):498.6 ,蛋白質(g):22.8 ,脂肪(g):21.4 ,飽和脂肪(g):8.2 ,反式脂肪(g):0 ,碳水化合物(g):53.8 ,糖(g):11.2 ,鈉(mg):1143" ,intr:"獨家醃製豬肉片經過準確火候炸至香嫩可口！混搭BK獨家研發爽口脆雞，醃製後高溫酥炸，風味獨到！豬肉與脆雞意外合搭絕妙口感，美味基因再進化！" ,link:"https://www.burgerking.com.tw/kys6620"),
        BurgerKingMenu(name: "勁濃安格斯牛肉堡" ,info:"熱量(Kcal):572.9 ,蛋白質(g):29.6 ,脂肪(g):34.8 ,飽和脂肪(g):15.1 ,反式脂肪(g):0 ,碳水化合物(g):35.7 ,糖(g):10 ,鈉(mg):730" ,intr:"安格斯牛肉堡選用純正澳洲的超厚切牛肉，一般牛肉的近3倍厚！搭配漢堡王經典勁濃起士醬，喚醒起士控的靈魂" ,link:"https://www.burgerking.com.tw/hep9925"),
        BurgerKingMenu(name: "安格斯厚切牛肉堡" ,info:"熱量(Kcal):574.7 ,蛋白質(g):30 ,脂肪(g):33.7 ,飽和脂肪(g):14.7 ,反式脂肪(g):0 ,碳水化合物(g):38.6 ,糖(g):11.8 ,鈉(mg):680" ,intr:"安格斯牛肉堡選用純正澳洲的超厚切牛肉，一般牛肉的近3倍厚！搭配漢堡王招牌燒烤醬與多項蔬果組合，令人食慾大振。" ,link:"https://www.burgerking.com.tw/ehn3225"),
        BurgerKingMenu(name: "華堡" ,info:"熱量(Kcal):698.9 ,蛋白質(g):36.1 ,脂肪(g):37.8 ,飽和脂肪(g):14.3 ,反式脂肪(g):0 ,碳水化合物(g):54.7 ,糖(g):15.3 ,鈉(mg):918" ,intr:"暢銷65年、遍佈73國的經典美味華堡全新升級，肉排重量增加10%！同樣選用100%澳洲純牛肉，並採高溫火烤，保留肉汁原味，搭配口感紮實的5吋漢堡，加入番茄、洋蔥、酸黃瓜等新鮮蔬菜，讓你每一口咬下都吃得到牛肉的火烤美味！" ,link:"https://www.burgerking.com.tw/tlk4496"),
        BurgerKingMenu(name: "雙層華堡" ,info:"熱量(Kcal):1033.4 ,蛋白質(g):61.5 ,脂肪(g):64 ,飽和脂肪(g):25.2 ,反式脂肪(g):0 ,碳水化合物(g):54.7 ,糖(g):15.3 ,鈉(mg):956" ,intr:"招牌華堡一層無法滿足你嗎?試試雙層火烤大塊牛肉的魅力吧！100%火烤牛肉，搭配口感紮實的5吋漢堡，肉片皆採全球統一的火烤設備在370度高溫下快速火烤，保留肉汁原味，加入番茄、洋蔥、酸黃瓜等新鮮蔬菜，讓你每一口咬下都吃的到牛肉的火烤美味!" ,link:"https://www.burgerking.com.tw/oqk8193"),
        BurgerKingMenu(name: "犇牛肉堡" ,info:"熱量(Kcal):508.4 ,蛋白質(g):26.7 ,脂肪(g):29.9 ,飽和脂肪(g):14 ,反式脂肪(g):0 ,碳水化合物(g):33.5 ,糖(g):10.1 ,鈉(mg):711" ,intr:"雙份火烤牛肉片與雙層起司片巧妙搭配，夾入Q彈培根再淋上鹹甜開胃的BBQ醬，交疊出獨特風味。" ,link:"https://www.burgerking.com.tw/ybs3350"),
        BurgerKingMenu(name: "BK黃金炸雞" ,info:"熱量(Kcal):405 ,蛋白質(g):15.4 ,脂肪(g):19 ,飽和脂肪(g):5.9 ,反式脂肪(g):0 ,碳水化合物(g):43.4 ,糖(g):8.1 ,鈉(mg):893" ,intr:"金黃色的酥脆外皮，每口咬下都有ㄎㄠㄎㄠㄎㄠ的清脆聲響，讓隔壁聽到也垂涎三尺！" ,link:"https://www.burgerking.com.tw/tzz2391"),
        BurgerKingMenu(name: "總匯辣雞腿堡" ,info:"熱量(Kcal):494.3 ,蛋白質(g):16.3 ,脂肪(g):26.6 ,飽和脂肪(g):9.1 ,反式脂肪(g):0 ,碳水化合物(g):47.8 ,糖(g):11.1 ,鈉(mg):864" ,intr:"酥炸大塊辣雞腿肉的迷人風味，搭配美乃滋醬與清脆生菜、新鮮番茄，清爽可口。" ,link:"https://www.burgerking.com.tw/bwg8640"),
        BurgerKingMenu(name: "勁濃培根烤腿堡" ,info:"熱量(Kcal):558.2 ,蛋白質(g):25.3 ,脂肪(g):32 ,飽和脂肪(g):10.7 ,反式脂肪(g):0 ,碳水化合物(g):42.4 ,糖(g):11.4 ,鈉(mg):1482" ,intr:"嚴選大塊雞腿肉，以特調醬汁醃漬入味，掌握黃金火烤時間烤出迷人肉汁的雞腿排，淋上漢堡王經典勁濃起士醬，搭配Q彈培根、脆洋蔥、起司片，口感豐富。" ,link:"https://www.burgerking.com.tw/txy1323"),
        BurgerKingMenu(name: "火烤雞腿培根堡" ,info:"熱量(Kcal):374.2 ,蛋白質(g):22.4 ,脂肪(g):25.3 ,飽和脂肪(g):6.9 ,反式脂肪(g):0 ,碳水化合物(g):36.9 ,糖(g):8.3 ,鈉(mg):1231" ,intr:"嚴選大塊雞腿肉，以特調醬汁醃漬入味，掌握黃金火烤時間烤出迷人肉汁的雞腿排，搭配Q彈培根與清脆生菜，令人食慾大振。" ,link:"https://www.burgerking.com.tw/aaw6908"),
        BurgerKingMenu(name: "華鱈魚堡" ,info:"熱量(Kcal):337.5 ,蛋白質(g):15.7 ,脂肪(g):14 ,飽和脂肪(g):4.7 ,反式脂肪(g):0 ,碳水化合物(g):37.4 ,糖(g):6.8 ,鈉(mg):801" ,intr:"精選阿拉斯加鱈魚，炸至表面金黃酥脆，搭配濃郁起士和塔塔醬，鮮嫩可口，營養豐富。" ,link:"https://www.burgerking.com.tw/czn7551")
    ]
    var body: some View{
        List {
            ForEach(BurgerKingmenus){BurgerKingmenu in NavigationLink{
                BurgerKingNutrientsList(BurgerKingmenu: BurgerKingmenu)
            }label:{
                BurgerKingRow(BurgerKingmenu: BurgerKingmenu)
            }
                
            }
        }.navigationTitle("漢堡王")
    }
}

struct BurgerKingRow:View{
    let BurgerKingmenu:BurgerKingMenu
    var body: some View{
        HStack{
            Image(BurgerKingmenu.name)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipped()
                .shadow(radius: 3)
            Text(BurgerKingmenu.name)
            Spacer()
        }
    }
}

struct BurgerKingNutrientsList:View{
    let BurgerKingmenu:BurgerKingMenu
    var body: some View{
        VStack{
            
            ZStack {
                Link(destination:URL(string: BurgerKingmenu.link)!,label:{
                    Image(BurgerKingmenu.name)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 180, height: 180)
                        .shadow(radius: 3)
                })
                
                Image("漢堡王")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .shadow(radius: 3)
                    .offset(y:-150)
                
            }
            
            
            Text(BurgerKingmenu.name)
                .font(.title)
            List{
                Section{
                    Text(BurgerKingmenu.info)
                }header:{
                    Text("營養資訊")
                }
                Section{
                    Text(BurgerKingmenu.intr)
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

struct BurgerKingList_Previews: PreviewProvider {
    static var previews: some View {
        BurgerKingList()
    }
}
