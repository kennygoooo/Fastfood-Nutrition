//
//  McDonaldList.swift
//  fooddemo2
//
//  Created by kenny on 2021/11/26.
//

import SwiftUI

struct MOSMenu:Identifiable{
    var id: String{ name }
    let name: String
    let info: String
    let intr: String
    let link: String
}

struct MOSList:View{
    let MOSmenus = [
        MOSMenu(name: "饗宴火雞堡" ,info:"熱量(Kcal):338.8 ,蛋白質(g):12.6 ,脂肪(g):5.4 ,飽和脂肪(g):2.4 ,反式脂肪(g):0 ,碳水化合物(g):60 ,糖(g):++ ,鈉(mg):341" ,intr: "嚴選美國進口火雞腿肉，精心烘烤熟成後原塊切片，淋上使用西班牙紅酒及大量洋蔥熬煮而成的紅酒洋蔥醬，風味中帶有紅酒香氣及洋蔥的微甜提味，搭配新鮮生菜、爽口蕃茄，邀您於年末佳節品嚐歐式饗宴般的美味！" ,link: "https://www.mos.com.tw/menu/set_detail.aspx?id=M803"),
        MOSMenu(name: "特上牛排珍珠堡" ,info:"熱量(Kcal):424 ,蛋白質(g):20 ,脂肪(g):9.2 ,飽和脂肪(g):3.6 ,反式脂肪(g):0 ,碳水化合物(g):65.6 ,糖(g):++ ,鈉(mg):785" ,intr:"嚴選紐澳牛前腿心部位，豪取兩片牛排交疊，加上櫻桃蘿蔔、櫛瓜、栗南瓜切片等蔬食，最後搭配以獺祭甘酒研發而成的特調醬料增添風味，層次豐富香氣濃郁，奢華的牛排米漢堡即上桌！" ,link: "https://www.mos.com.tw/menu/set_detail.aspx?id=M778"),
        MOSMenu(name: "御品白燒鰻珍珠堡" ,info:"熱量(Kcal):430.8 ,蛋白質(g):18.2 ,脂肪(g):13.8 ,飽和脂肪(g):3.8 ,反式脂肪(g):0 ,碳水化合物(g):58.6 ,糖(g):++ ,鈉(mg):384" ,intr: "極選台灣產優質鰻魚，以薄鹽慢烤的白燒工法凸顯肉質本身的鮮甜及香氣，搭配蛋絲、白蘿蔔絲及以獺祭甘酒特調而成的甘酒蒲燒醬，最後撒上山椒粉提味，邀您品嚐高質感的日式料理風味。" ,link: "https://www.mos.com.tw/menu/set_detail.aspx?id=M779"),
        MOSMenu(name: "蜜芋紅豆珍珠堡" ,info:"熱量(Kcal):352.8 ,蛋白質(g):7.7 ,脂肪(g):2.3 ,飽和脂肪(g):0.2 ,反式脂肪(g):0 ,碳水化合物(g):75.3 ,糖(g):++ ,鈉(mg):45" ,intr: "摩斯第一顆甜點米漢堡誕生！以日式傳統小點「櫻餅」為概念研發，使用色彩搶眼的粉色糯米板，夾入紅豆泥、蜜芋丁及以獺祭甘酒特調而成的奶酒醬，風味香甜軟糯，是午後茶點好選擇。" ,link: "https://www.mos.com.tw/menu/set_detail.aspx?id=M780"),
        MOSMenu(name: "輕檸雙牛堡" ,info:"熱量(Kcal):609.6 ,蛋白質(g):20.2 ,脂肪(g):48.8 ,飽和脂肪(g):18.2 ,反式脂肪(g):1.7 ,碳水化合物(g):22.7 ,糖(g):++ ,鈉(mg):850.1" ,intr: "獨家澳洲和牛+特選紐西蘭煙燻牛胸肉片，獨門烤肉醬採用釀造醬油為基底慢火熬煮，味道清香微甜，輕爽檸檬汁，大量的青生菜及新鮮檸檬角，品嚐前可自行擠上新鮮的檸檬汁" ,link:"https://www.mos.com.tw/menu/set_detail.aspx?id=M152"),
        MOSMenu(name: "摩斯辣味雞塊（8個）" ,info:"熱量(Kcal):417.8 ,蛋白質(g):26.9 ,脂肪(g):24 ,飽和脂肪(g):9.7 ,反式脂肪(g):0.1 ,碳水化合物(g):23.5  ,糖(g):++ ,鈉(mg):452" ,intr: "以黃金比例揉合雞胸、雞腿肉，添加富含多種辣椒、羅勒葉、芝麻等香辛料的七味唐辛子，微辣口感、外酥內嫩又多汁，讓人忍不住一口接著一口！" ,link: "https://www.mos.com.tw/menu/set_detail.aspx?id=M767"),
        MOSMenu(name: "摘鮮綠烤雞起司堡" ,info:"熱量(Kcal):283.8 ,蛋白質(g):15.4 ,脂肪(g):19.8 ,飽和脂肪(g):6.4 ,反式脂肪(g):0 ,碳水化合物(g):11.4 ,糖(g):++ ,鈉(mg):890" ,intr: "使用口感香甜柔嫩的奶油萵苣替代漢堡麵包，包覆著以特調醬料醃漬入味的雞腿肉，沾上風味濃淡合宜的蜜烤醬，經過直火炙烤，呈現焦糖光澤，不僅吃得到蔬菜的高纖健康，更吃出特有燒烤風味" ,link: "https://www.mos.com.tw/menu/set_detail.aspx?id=M661"),
        MOSMenu(name: "摘鮮綠炸蝦堡" ,info:"熱量(Kcal):233.2 ,蛋白質(g):6.7 ,脂肪(g):14.9 ,飽和脂肪(g):1.8 ,反式脂肪(g):0 ,碳水化合物(g):18.3 ,糖(g):++ ,鈉(mg):474.2" ,intr: "使用口感香甜柔嫩的奶油萵苣替代漢堡麵包，包覆著口感酥脆的黃金蝦堡及爽脆可口的高麗菜淋上特調塔塔醬不僅讓顧客吃得到蔬菜的高纖健康，更吃出豐富香甜的美味！整個漢堡充滿了健康的蔬菜，帶給消費者天然、原味的健康享受。" ,link: "https://www.mos.com.tw/menu/set_detail.aspx?id=M628"),
        MOSMenu(name: "藜麥薑燒珍珠堡" ,info:"熱量(Kcal):461.5 ,蛋白質(g):15.5 ,脂肪(g):18.2 ,飽和脂肪(g):9.2 ,反式脂肪(g):0 ,碳水化合物(g):59 ,糖(g):++ ,鈉(mg):482" ,intr: "香Q美味的米飯，搭配新鮮現炒的牛肉片與洋蔥絲與青生菜，是最受歡迎的米漢堡。" ,link: "https://www.mos.com.tw/menu/set_detail.aspx?id=M215"),
        MOSMenu(name: "薑燒珍珠堡" ,info:"熱量(Kcal):460.9 ,蛋白質(g):15.2 ,脂肪(g):18.5 ,飽和脂肪(g):9.5 ,反式脂肪(g):0 ,碳水化合物(g):58.5 ,糖(g):++ ,鈉(mg):510" ,intr: "香Q美味的米飯，搭配現炒薑味醃製豬肉片與青生菜。" ,link: "https://www.mos.com.tw/menu/set_detail.aspx?id=M019"),
        MOSMenu(name: "藜麥海洋珍珠堡" ,info:"熱量(Kcal):355.1 ,蛋白質(g):15.8 ,脂肪(g):7.2 ,飽和脂肪(g):2.6 ,反式脂肪(g):0 ,碳水化合物(g):56.9 ,糖(g):++ ,鈉(mg):463" ,intr: "香Q美味的米飯，搭配鮮蝦、干貝、墨魚等豐富的美味海鮮。" ,link: "https://www.mos.com.tw/menu/set_detail.aspx?id=M216"),
        MOSMenu(name: "海洋珍珠堡" ,info:"熱量(Kcal):390.2 ,蛋白質(g):11.3 ,脂肪(g):8.6 ,飽和脂肪(g):3.6 ,反式脂肪(g):0 ,碳水化合物(g):66.2 ,糖(g):++ ,鈉(mg):331" ,intr: "香Q美味的米飯，搭配鮮蝦、干貝、墨魚等豐富的美味海鮮" ,link: "https://www.mos.com.tw/menu/set_detail.aspx?id=M025"),
        MOSMenu(name: "藜麥杏鮑菇珍珠堡" ,info:"熱量(Kcal):332.3 ,蛋白質(g):8.6 ,脂肪(g):3.6 ,飽和脂肪(g):0.6 ,反式脂肪(g):0 ,碳水化合物(g):66.4 ,糖(g):++ ,鈉(mg):533.7" ,intr: "選用杏鮑菇為主食材，搭配豆皮及紅蘿蔔一同料理，口味鹹香帶甜，讓素食風味也可以很滿足！" ,link: "https://www.mos.com.tw/menu/set_detail.aspx?id=M218"),
        MOSMenu(name: "杏鮑菇珍珠堡" ,info:"熱量(Kcal):333.6 ,蛋白質(g):8.4 ,脂肪(g):3.9 ,飽和脂肪(g):0.8 ,反式脂肪(g):0 ,碳水化合物(g):66.1 ,糖(g):++ ,鈉(mg):561" ,intr: "選用杏鮑菇為主食材，搭配豆皮及紅蘿蔔一同料理，口味鹹香帶甜，讓素食風味也可以很滿足！" ,link: "https://www.mos.com.tw/menu/set_detail.aspx?id=M027"),
        MOSMenu(name: "藜麥元氣牛肉珍珠堡" ,info:"熱量(Kcal):751.9 ,蛋白質(g):24.6 ,脂肪(g):42.3 ,飽和脂肪(g):15.7 ,反式脂肪(g):1.5 ,碳水化合物(g):60 ,糖(g):++ ,鈉(mg):491" ,intr: "使用澳洲和牛肉及紐西蘭草飼牛，搭配摩斯獨家蔬菜醬，蔬果原汁原味的清甜與香氣，使漢堡整體更增層次感。與摩斯特有米漢堡、元氣蛋相互搭配，交疊出獨特的風味。" ,link: "https://www.mos.com.tw/menu/set_detail.aspx?id=M214"),
        MOSMenu(name: "元氣牛肉珍珠堡" ,info:"熱量(Kcal):752.2 ,蛋白質(g):24.9 ,脂肪(g):45.9 ,飽和脂肪(g):17.4 ,反式脂肪(g):1.5 ,碳水化合物(g):60 ,糖(g):++ ,鈉(mg):518" ,intr: "使用澳洲和牛肉及紐西蘭草飼牛，搭配摩斯獨家蔬菜醬，蔬果原汁原味的清甜與香氣，使漢堡整體更增層次感。與摩斯特有米漢堡、元氣蛋相互搭配，交疊出獨特的風味。" ,link: "https://www.mos.com.tw/menu/set_detail.aspx?id=M018"),
        MOSMenu(name: "摩斯漢堡" ,info:"熱量(Kcal):433.9 ,蛋白質(g):17.8 ,脂肪(g):23.5 ,飽和脂肪(g):8 ,反式脂肪(g):0.7 ,碳水化合物(g):38 ,糖(g):++ ,鈉(mg):834.1" ,intr: "摩斯獨創的肉汁醬搭配多項蔬果組合，讓您品嘗5度C到75度C的好味道。" ,link: "https://www.mos.com.tw/menu/set_detail.aspx?id=M203"),
        MOSMenu(name: "摩斯吉士漢堡" ,info:"熱量(Kcal):476.9 ,蛋白質(g):20.4 ,脂肪(g):27.1 ,飽和脂肪(g):8.6 ,反式脂肪(g):0.7 ,碳水化合物(g):38.4 ,糖(g):++ ,鈉(mg):1048.5" ,intr: "摩斯獨創的肉汁醬搭配多項蔬果組合，與香濃的吉士片，讓您品嘗5度C到75度C的好味道。" ,link: "https://www.mos.com.tw/menu/set_detail.aspx?id=M202"),
        MOSMenu(name: "蜜汁烤雞堡" ,info:"熱量(Kcal):383.4 ,蛋白質(g):18 ,脂肪(g):19.3 ,飽和脂肪(g):5.3 ,反式脂肪(g):0 ,碳水化合物(g):34.6 ,糖(g):++ ,鈉(mg):768" ,intr: "烤肉風味的鮮嫩雞腿肉，搭配新鮮萵苣，清淡可口" ,link: "https://www.mos.com.tw/menu/set_detail.aspx?id=M204"),
        MOSMenu(name: "蜜汁烤雞起司堡" ,info:"熱量(Kcal):428.3 ,蛋白質(g):20 ,脂肪(g):23.1 ,飽和脂肪(g):7.6 ,反式脂肪(g):0 ,碳水化合物(g):35 ,糖(g):++ ,鈉(mg):888" ,intr: "嚴選國產雞腿肉，以特調醬汁醃漬入味，搭配起司片、黃芥末醬、美乃滋及新鮮萵苣，更加濃郁的美味，令人食慾大振回味無窮。" ,link: "https://www.mos.com.tw/menu/set_detail.aspx?id=M237"),
        MOSMenu(name: "摩斯鱈魚堡" ,info:"熱量(Kcal):508 ,蛋白質(g):20.5 ,脂肪(g):28.7 ,飽和脂肪(g):2.3 ,反式脂肪(g):0 ,碳水化合物(g):39.6 ,糖(g):++ ,鈉(mg):608" ,intr: "夾著吉士片和美乃滋，這就是軟嫩新鮮的摩斯鱈魚堡" ,link: "https://www.mos.com.tw/menu/set_detail.aspx?id=M032"),
        MOSMenu(name: "黃金炸蝦堡" ,info:"熱量(Kcal):390 ,蛋白質(g):16.4 ,脂肪(g):17.7 ,飽和脂肪(g):1.8 ,反式脂肪(g):0 ,碳水化合物(g):41.2 ,糖(g):++ ,鈉(mg):650" ,intr: "彈性十足的完整蝦肉，搭配高麗菜絲與法式塔塔醬，鮮甜美味" ,link: "https://www.mos.com.tw/menu/set_detail.aspx?id=M033"),
        MOSMenu(name: "厚切培根牛肉堡" ,info:"熱量(Kcal):744.4 ,蛋白質(g):27.8 ,脂肪(g):53.9 ,飽和脂肪(g):9.6 ,反式脂肪(g):1.5 ,碳水化合物(g):36.6 ,糖(g):++ ,鈉(mg):855.1" ,intr: "使用澳洲和牛肉與紐西蘭草飼牛，與厚度5mm 的厚切培根，搭配上元氣蛋及獨具特色的蒜香培根醬，其份量十足，美味滿足。" ,link: "https://www.mos.com.tw/menu/set_detail.aspx?id=M028"),
        MOSMenu(name: "摩斯熱狗堡" ,info:"熱量(Kcal):278.4 ,蛋白質(g):12.7 ,脂肪(g):11.6 ,飽和脂肪(g):3.1 ,反式脂肪(g):0 ,碳水化合物(g):31.1 ,糖(g):++ ,鈉(mg):712.6" ,intr: "天然羊腸衣與上等豬肉製成的熱狗，帶有煙燻香氣，口感Q彈" ,link: "https://www.mos.com.tw/menu/set_detail.aspx?id=M035"),
        MOSMenu(name: "辣味吉利熱狗堡" ,info:"熱量(Kcal):287.4 ,蛋白質(g):13.3 ,脂肪(g):12.3 ,飽和脂肪(g):3.3 ,反式脂肪(g):0 ,碳水化合物(g):31 ,糖(g):++ ,鈉(mg):835.1" ,intr: "使用天然羊腸衣製作的摩斯熱狗帶有獨特的櫸木燻味，搭配上濃郁的吉利醬及富含維他命C的墨西哥辣椒片，讓喜歡辣味商品的顧客品嚐到獨特風味的熱狗堡。" ,link: "https://www.mos.com.tw/menu/set_detail.aspx?id=M036")
        
       ]
    var body: some View{
        List {
            ForEach(MOSmenus){MOSmenu in NavigationLink{
                MOSNutrientsList(MOSmenu: MOSmenu)
            }label:{
                MOSRow(MOSmenu: MOSmenu)
            }
                
            }
        }.navigationTitle("摩斯漢堡")
    }
}

struct MOSRow:View{
    let MOSmenu:MOSMenu
    var body: some View{
        HStack{
            Image(MOSmenu.name)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipped()
                .shadow(radius: 3)
            Text(MOSmenu.name)
            Spacer()
        }
    }
}

struct MOSNutrientsList:View{
    let MOSmenu:MOSMenu
    var body: some View{
        VStack{
            
            ZStack {
                Link(destination:URL(string: MOSmenu.link)!,label:{
                    Image(MOSmenu.name)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 180, height: 180)
                    .shadow(radius: 3)
                })
            
                Image("摩斯漢堡 ")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .shadow(radius: 3)
                    .offset(y:-150)
               
            }
                
            
            Text(MOSmenu.name)
                .font(.title)
            List{
                Section{
                    Text(MOSmenu.info)
                }header:{
                    Text("營養資訊")
                }
                Section{
                    Text(MOSmenu.intr)
                }header:{
                    Text("介紹")
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct MOSList_Previews: PreviewProvider {
    static var previews: some View {
        MOSList()
    }
}
