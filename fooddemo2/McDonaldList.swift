//
//  McDonaldList.swift
//  fooddemo2
//
//  Created by kenny on 2021/11/26.
//

import SwiftUI

struct McDonaldMenu:Identifiable{
    var id: String{ name }
    let name: String
    let info: String
    let intr: String
    let link: String
}

struct McDonaldList:View{
    let McDonaldmenus = [
        McDonaldMenu(name: "大麥克" ,info:"熱量(Kcal):548 ,蛋白質(g):26 ,脂肪(g):28 ,飽和脂肪(g):12 ,反式脂肪(g):0.7 ,碳水化合物(g):49 ,糖(g):7.1 ,鈉(mg):672.1" ,intr:"麥當勞永遠的一號餐，全球狂熱50年，紐澳100%雙層純牛肉，淋上大麥克招牌醬料，加上生菜、吉事、洋蔥、酸黃瓜，美味層層堆疊，口感樂趣無窮。從美國總統到素人都是鐵粉，經濟學家還發明「大麥克指數」致敬，果然，只有大麥克，才是大麥克！" ,link:"https://www.mcdonalds.com/tw/zh-tw/product/big-mac.html"),
        McDonaldMenu(name: "蕈菇安格斯黑牛堡",info:"熱量(Kcal):575 ,蛋白質(g):30 ,脂肪(g):34 ,飽和脂肪(g):14 ,反式脂肪(g):0.7 ,碳水化合物(g):38 ,糖(g):6.9 ,鈉(mg):938.1" ,intr:"「蔬菜界的牛排」－蕈菇，奢華入堡！大火翻炒厚切蕈菇，搭配高溫鎖汁的頂級4盎司安格斯黑牛，鋪上當季爽脆原葉生菜、疊上柔滑起司，再淋上法式香草醬，最後蓋上奶香布里歐麵包，層層講究，一氣呵成！鮮甜與濃郁交織出的極選美味，請享用。" ,link:"https://www.mcdonalds.com/tw/zh-tw/product/mushroom-angus-beef-burger.html"),
        McDonaldMenu(name: "雙層牛肉吉事堡",info:"熱量(Kcal):467 ,蛋白質(g):26 ,脂肪(g):25 ,飽和脂肪(g):14 ,反式脂肪(g):0.9 ,碳水化合物(g):35 ,糖(g):6.3 ,鈉(mg):784.4" ,intr:"紐澳雙層100%優質牛肉，搭配雙層切達吉事片，酸黃瓜、洋蔥在裡面，芥末醬、番茄醬淋上去，層出不窮的經典滋味，真的沒在跟你客氣的。" ,link: "https://www.mcdonalds.com/tw/zh-tw/product/double-cheese-burger.html"),
        McDonaldMenu(name: "BLT安格斯黑牛堡",info:"熱量(Kcal):544 ,蛋白質(g):30 ,脂肪(g):29 ,飽和脂肪(g):12 ,反式脂肪(g):0.5 ,碳水化合物(g):40 ,糖(g):10 ,鈉(mg):888.5" ,intr:"麥當勞獻上漢堡界的「饗宴三重奏」！頂級厚實4盎司安格斯黑牛配上經典BLT三大食材，本產香Q培根的煙燻味，交疊在地鮮採牛番茄的清甜，以及整片當季原葉生菜的爽脆。精心烘烤的香軟布里歐麵包，包覆著厚實、多汁、有勁、鮮甜、爽口等層次滋味，每一口，都是美味之最！" ,link: "https://www.mcdonalds.com/tw/zh-tw/product/blt-angus-beef-burger.html"),
        McDonaldMenu(name: "BLT嫩煎雞腿堡",info:"熱量(Kcal):455 ,蛋白質(g):27 ,脂肪(g):20 ,飽和脂肪(g):5.6 ,反式脂肪(g):0 ,碳水化合物(g):42 ,糖(g):11 ,鈉(mg):918.5" ,intr:"濃郁與清爽能並存嗎？極選系列一次獻上兩種味蕾饗宴！嚴選本產培根的香Q與嫩煎鷄腿排的多汁，搭配煙燻BBQ醬，疊出層層濃郁香氣，同時，當季原葉生菜與台灣鮮採番茄，為味蕾注入清爽鮮甜。濃郁與清爽相互襯托，每樣食材完美呈現各自的極致美味，層層講究入口後，便停不下來。" ,link: "https://www.mcdonalds.com/tw/zh-tw/product/blt-grilled-chicken-burger.html"),
        McDonaldMenu(name: "BLT辣脆雞腿堡",info:"熱量(Kcal):554 ,蛋白質(g):26 ,脂肪(g):25 ,飽和脂肪(g):6.2 ,反式脂肪(g):0 ,碳水化合物(g):55 ,糖(g):10 ,鈉(mg):1111.3" ,intr:"三種食材的英文字首為名的經典之味 – BLT，獻上不一樣的豐富層次！嚴選本產煙燻培根、台灣鮮採牛番茄、當季原葉生菜，配上辣脆鷄腿排，一口咬下，先感受到布里歐麵包的柔軟，然後是生菜與番茄的清爽，接著席捲而來的是，香Q培根的煙燻味與酥脆鷄腿排的微辣刺激，經典滋味，化身極選之味！" ,link:"https://www.mcdonalds.com/tw/zh-tw/product/blt-spicy-chicken-burger.html"),
        McDonaldMenu(name: "嫩煎雞腿堡",info:"熱量(Kcal):363 ,蛋白質(g):24 ,脂肪(g):12 ,飽和脂肪(g):3.7 ,反式脂肪(g):0 ,碳水化合物(g):40 ,糖(g):11 ,鈉(mg):690.0" ,intr:"低熱量的清爽美味，捨我其誰。獨特的BBQ風味醬，搭配多汁去骨鷄腿肉，以慢火嫩煎入味，意料之外的絕配。加上大片牛番茄與三道水洗新鮮生菜，清爽感加乘，喜歡就醬吃，越吃越順口！" ,link:"https://www.mcdonalds.com/tw/zh-tw/product/grilled-bbq-chicken-burger.html"),
        McDonaldMenu(name: "勁辣雞腿堡",info:"熱量(Kcal):493 ,蛋白質(g):22 ,脂肪(g):24 ,飽和脂肪(g):5.5 ,反式脂肪(g):0 ,碳水化合物(g):47 ,糖(g):4.3 ,鈉(mg):871.4" ,intr:"整塊勁辣鷄腿排，未吃份量先得分。滿滿生菜搭配特製美乃滋，口感豐富多層次。芝麻漢堡蓋上去，一口咬下過足癮。夠辣夠帶勁！意猶未盡、就是吃不膩。" ,link: "https://www.mcdonalds.com/tw/zh-tw/product/spicy-chicken-filet-burger.html"),
        McDonaldMenu(name: "薑燒豬肉長堡",info:"熱量(Kcal):381 ,蛋白質(g):29 ,脂肪(g):11 ,飽和脂肪(g):2.5 ,反式脂肪(g):0 ,碳水化合物(g):41 ,糖(g):10 ,鈉(mg):1040.7" ,intr:"就愛日式甜鹹滋味！本產豬肉片大火拌炒洋蔥等食材，炒出醬油與味醂的薑燒香，配上新鮮生菜，好吃不膩口，有肉有菜好滿足！薑燒豬肉長堡，就是要你吃一口就停不了！" ,link: "https://www.mcdonalds.com/tw/zh-tw/product/ginger-pork-long-burger.html"),
        McDonaldMenu(name: "麥香魚",info:"熱量(Kcal):330 ,蛋白質(g):14 ,脂肪(g):15 ,飽和脂肪(g):3.5 ,反式脂肪(g):0.2 ,碳水化合物(g):36 ,糖(g):3.7 ,鈉(mg):532.8" ,intr:"從純淨海域游來的美味麥香魚，足足稱霸地表60年。選用淨海阿拉斯加鱈魚製成現炸魚排，佐以濃郁麥香魚醬與香濃吉事，帶來酥脆濃郁的美妙魔力，讓所有人都不自覺著迷！" ,link: "https://www.mcdonalds.com/tw/zh-tw/product/filet-o-fish.html"),
        McDonaldMenu(name: "麥香雞",info:"熱量(Kcal):360 ,蛋白質(g):14 ,脂肪(g):16 ,飽和脂肪(g):3.5 ,反式脂肪(g):0 ,碳水化合物(g):42 ,糖(g):4.6 ,鈉(mg):743.7" ,intr:"清脆爽口新鮮生菜，健康優質麥香鷄排，淋上特製醬料，通通夾進芝麻麵包，熟悉的經典美味，不只超值，更有品質。" ,link: "https://www.mcdonalds.com/tw/zh-tw/product/mcchicken.html"),
        McDonaldMenu(name: "原味麥脆雞翅",info:"熱量(Kcal):611 ,蛋白質(g):32 ,脂肪(g):29 ,飽和脂肪(g):10 ,反式脂肪(g):0 ,碳水化合物(g):33 ,糖(g):0 ,鈉(mg):877.7" ,intr:"炸雞，就要麥脆鷄。甚至，炸雞翅就要麥脆鷄翅！麥當勞炸雞翅，使用嚴選優質雞翅，口感軟嫩有彈性。堅持三道裹粉五道翻滾，表皮酥脆有層次，經歷先烤後炸工法，高溫鎖住肉汁，終於打造「黃金美味3要點」。 炸雞，就要麥脆鷄。" ,link: "https://www.mcdonalds.com/tw/zh-tw/product/chicken-mccrispy-wing-2-pieces.html"),
        McDonaldMenu(name: "原味麥脆雞塊",info:"熱量(Kcal):747 ,蛋白質(g):46 ,脂肪(g):50 ,飽和脂肪(g):14 ,反式脂肪(g):0 ,碳水化合物(g):30 ,糖(g):0 ,鈉(mg):1157.1" ,intr:"炸雞，就要麥脆鷄。獨一無二「黃金美味3要點」，大腿棒腿一起來！麥當勞炸雞使用嚴選帶骨雞腿，堅持三道裹粉五道翻滾，表皮酥脆有層次！首創先烤後炸工法，高溫鎖住肉汁，給你嫩、脆、爽的好滋味！ 吃過了，你也會這樣說。" ,link: "https://www.mcdonalds.com/tw/zh-tw/product/chicken-mccrispy-2-pieces.html"),
        McDonaldMenu(name: "辣味麥脆雞翅",info:"熱量(Kcal):612 ,蛋白質(g):36 ,脂肪(g):41 ,飽和脂肪(g):10 ,反式脂肪(g):0 ,碳水化合物(g):24 ,糖(g):0 ,鈉(mg):1414.8" ,intr:"廣大的雞翅控站出來！美味多汁的炸雞翅就在麥當勞！堅持三道裹粉五道翻滾，表皮酥脆有層次，經歷先烤後炸工法，高溫鎖住肉汁，再搭配上火辣的凱恩辣椒及秘製辛香料，多汁酥脆更夠味！炸雞，就要麥脆鷄！" ,link: "https://www.mcdonalds.com/tw/zh-tw/product/spicy-chicken-mccrispy-wing-2-pieces.html"),
        McDonaldMenu(name: "辣味麥脆雞塊",info:"熱量(Kcal):765 ,蛋白質(g):44 ,脂肪(g):51 ,飽和脂肪(g):13 ,反式脂肪(g):0 ,碳水化合物(g):33 ,糖(g):0 ,鈉(mg):1511.7" ,intr:"炸雞加辣更夠味！麥當勞獨家「黃金美味3要點」，火辣的凱恩辣椒，搭配秘製炸雞辛香料，香辣夠味；使用嚴選優質雞腿，大口咬下超過癮；經歷先烤後炸工法，高溫鎖住肉汁，外脆內嫩又多汁的麥脆鷄，讓人一口接一口，欲罷不能！炸雞，就要麥脆鷄！" ,link: "https://www.mcdonalds.com/tw/zh-tw/product/spicy-chicken-mccrispy-2-pieces.html"),
        McDonaldMenu(name: "麥克雞塊（6塊）",info:"熱量(Kcal):270 ,蛋白質(g):16 ,脂肪(g):17 ,飽和脂肪(g):4.2 ,反式脂肪(g):0 ,碳水化合物(g):13 ,糖(g):0 ,鈉(mg):427.6" ,intr:"大家都愛麥克鷄塊！100%嚴選健康優質鷄肉，調配鷄胸和鷄腿黃金比例，口感外酥內軟，男女老少都愛吃，每年熱銷超過3億片，疊起來有6000棟台北101。搭上經典的糖醋醬，酸酸甜甜的越吃越順口。你呢？今天麥克鷄塊了嗎？" ,link: "https://www.mcdonalds.com/tw/zh-tw/product/chicken-mcnuggets-6-pieces.html"),
        McDonaldMenu(name: "麥克雞塊（10塊）",info:"熱量(Kcal):449 ,蛋白質(g):26 ,脂肪(g):29 ,飽和脂肪(g):6.9 ,反式脂肪(g):0 ,碳水化合物(g):22 ,糖(g):0 ,鈉(mg):712.6" ,intr:"對麥克鷄塊愛不釋手嗎？一次點10塊更滿足！口感外酥內軟，男女老少都愛吃，這樣的滋味，真好！" ,link: "https://www.mcdonalds.com/tw/zh-tw/product/chicken-mcnuggets-10-pieces.html"),
        McDonaldMenu(name: "凱薩辣脆雞沙拉",info:"熱量(Kcal):347 ,蛋白質(g):21 ,脂肪(g):20 ,飽和脂肪(g):6.7 ,反式脂肪(g):0.2 ,碳水化合物(g):22 ,糖(g):2.8 ,鈉(mg):679.2" ,intr:"簡單的沙拉，也能有不簡單的講究！在最新鮮多汁的時期採收的台灣牛番茄與五色蔬菜，搭配清脆鮮甜的當季原葉生菜，再鋪上香濃巧達吉事片與帶點微辣的酥脆鷄腿排，輕輕挑起味蕾並增添飽足感。不只口感豐富、層次分明，更賞心悅目， 簡單沙拉，躍升味覺與視覺的饗宴！" ,link: "https://www.mcdonalds.com/tw/zh-tw/product/caesar-salad-with-spicy-fried-chicken-filet.html"),
        McDonaldMenu(name: "義式烤雞沙拉",info:"熱量(Kcal):248 ,蛋白質(g):23 ,脂肪(g):14 ,飽和脂肪(g):6 ,反式脂肪(g):0.2 ,碳水化合物(g):8.6 ,糖(g):3.5 ,鈉(mg):486.4" ,intr:"輕食也能講究吃！極選系列義式烤鷄沙拉嚴選各種新鮮食材，從清脆鮮甜的當季原葉生菜、五色蔬菜到在地鮮採牛番茄，再搭配吉事片與獨家香料醃製入味的鷄腿排，多汁脆嫩堆疊出層層無負擔的美味，每口都是講究，每口都是安心。" ,link: "https://www.mcdonalds.com/tw/zh-tw/product/italian-salad-with-grilled-chicken-filet.html")
    ]
    var body: some View{
        List {
            ForEach(McDonaldmenus){McDonaldmenu in NavigationLink{
                McDonaldNutrientsList(McDonaldmenu: McDonaldmenu)
            }label:{
                McDonaldRow(McDonaldmenu: McDonaldmenu)
            }
                
            }
        }.navigationTitle("麥當勞")
    }
}

struct McDonaldRow:View{
    let McDonaldmenu:McDonaldMenu
    var body: some View{
        HStack{
            Image(McDonaldmenu.name)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipped()
                .shadow(radius: 3)
            Text(McDonaldmenu.name)
            Spacer()
        }
    }
}

struct McDonaldNutrientsList:View{
    let McDonaldmenu:McDonaldMenu
    var body: some View{
        VStack{
            
            ZStack {
                Link(destination:URL(string: McDonaldmenu.link)!,label:{
                    Image(McDonaldmenu.name)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 180, height: 180)
                    .shadow(radius: 3)
                })
            
                Image("麥當勞")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .shadow(radius: 3)
                    .offset(y:-150)
               
            }
                
            
            Text(McDonaldmenu.name)
                .font(.title)
            List{
                Section{
                    Text(McDonaldmenu.info)
                }header:{
                    Text("營養資訊")
                }
                Section{
                    Text(McDonaldmenu.intr)
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

struct McDonaldList_Previews: PreviewProvider {
    static var previews: some View {
        McDonaldList()
    }
}
