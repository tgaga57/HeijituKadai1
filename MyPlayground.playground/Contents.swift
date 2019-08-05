import UIKit


// 課題1-1 型

// itemA.itemB,itemC,itemDに格納
let itemA: Int = 1000
print (itemA)

let itemB: String = "こんにちは"
print (itemB)

let itemC: Double = 42.195
print (itemC)

let itemD: Bool = true
print (itemD)

//課題1-2 四則演算

// int型　valueA, valueB格納
let valueA: Int = 100
let valueB: Int = 20

//計算します
print (valueA + valueB )
print (valueA - valueB )
print (valueA * valueB)
print (valueA / valueB )

//課題1-3 if文

// valueCに格納
var valueC: Int = 115

//条件定義
if valueC >= 1 && valueC < 10 {
    print ("\(valueC)は1桁の数字です")
} else if valueC >= 10 && valueC < 100 {
    print ("\(valueC)は２桁はの数字です")
    
} else if valueC >= 100 && valueC < 1000 {
    print ("\(valueC)は３桁の数字です")
} else {
    print ("\(valueC)は４桁以上です")
}

//課題1-4 switch文


switch valueC {
case 0...9:
    print ("\(valueC)は1桁の数字です")
case 10...99:
    print ("\(valueC)は２桁はの数字です")
    
case 100...999:
    print ("\(valueC)は３桁の数字です")
default:
    print ("\(valueC)は４桁以上です")
}

//課題1-5 関数単一の引数
//Int型の引数valueを持つ関数calculationAを作成。
//valueに10を渡し、10倍された値を出力してください。
//// 出力結果
//100

//関数名calculationAで定義
func calculationA(value: Int) {
    print (value * 10)
}
calculationA(value: 10)

//課題1-6 関数複数の引数
//Int型の引数valueA,valueBを持つ関数calculationBを作成。
//valueAに100,valueBに30を渡し、割り算したあまりを出力してください。
//// 出力結果
//10

func calculationB(valueA: Int,valueB: Int) {
    print(valueA % valueB)
}

calculationB(valueA: 100, valueB: 30)

//課題1-7 関数の戻り値
//Int型の引数valueA,valueBとInt型の戻り値を返す関数calculationCを作成。 valueAに40,valueBに25を渡し足し算した値を戻り値で返します。
//戻り値の結果に応じif文で偶数か奇数を示す文言を出力してください。
//例）
//奇数 -> "計算結果xxは奇数です。"
//偶数 -> "計算結果xxは偶数です。"
//// 出力結果
//計算結果65は奇数です。

func calculationC(valueA: Int, valueB: Int) -> Int{
    return valueA + valueB
}
var valueD: Int = calculationC(valueA: 40, valueB: 25)

if valueD % 2 == 0 {
    print ( "計算結果\(valueD)は偶数です。")
} else {
    print ("計算結果\(valueD)は奇数です.")
}

//課題1-8 クラスのインスタンス
//classHogeAを作成します。 classHogeAにprint文で「クラスAインスタンスです」と表示する関数putを作成します。インスンタンス化を行い、関数putを呼び出してください。宣言する定数名はinsAとします。
//// 出力結果
//クラスAインスタンスです。

class HogeA {
    func put() {
        print ("クラスAインスタンスです")
    }
}
let insA: HogeA = HogeA()
insA.put

//classHogeBを作成します。
//classHogeBにprint文で「私の名前はxxxです。」と表示するString型の引数nameを持つ関数putNameを作成します。定数takashiとkenを宣言し、それぞれHogeBのインスタンス化をおこないます。takashiにはnameの引数に「たかし」、Kenには「ケン」を渡して表示してください。
//// 出力結果
//私の名前はたかしです。
//私の名前はケンです。

class HogeB {
    func putName(name:String) {
        print ("私の名前は\(name)です。")
    }
}

let takashi = HogeB()
let ken  = HogeB()

takashi.putName(name:"たかし")
ken.putName(name:"ケン")

//課題1-10 イニシャライザ
//課題1-9の関数の引数をclassのイニシャライザに定義し、関数の引数を使わずに同様の出力になるようにしてください。 class名はHogeCとし、定数はそれぞれyamada出力は「やまだ」,miyata出力は「みやた」としてください。
//// 出力結果
//私の名前はやまだです。
//私の名前はみやたです。
class HogeC {
    var name : String
    init(name : String) {
        self.name = name
    }
    func putNam() {
        print("私の名前\(name)です")
    }
}
let yamada : HogeC = HogeC(name : "やまだ")
let miyata : HogeC = HogeC(name : "みやた")

yamada.putNam()
miyata.putNam()





//課題1-11 Enum
//以下のEnumをUserという名前で定義します。
//「name」を持つ定数userを宣言し、Switch文で分岐させprint文で出力してください。
//name -> 出力内容「名前」
//age -> 出力内容「年齢」
//bloodType -> 出力内容「血液型」
//// 出力結果
//名前


//列挙体userを定義をします
enum User: String {
    case name = "名前"
    case age  = "年齢"
    case bloodType = "血液型"
}
//user name の定義
let user: User = User.name

//rawValueはストリング型の情報が出る
// switch どれを出力するか見分ける
switch user {
case .name:
    print(User.name.rawValue)
case .age:
    print(User.age.rawValue)
case .bloodType:
    print(User.bloodType.rawValue)
}

//for文を用いて1〜50までの数値を出力してください。
//// 出力結果
//1
//2
//3
//~ 省略 ~
//48
//49
//50

for i in 1...50 {
    print(i)
}

//課題1-13 配列（追加）
//Int型配列変数valueEを定義し、for文を用いて1〜50の値を代入してください。代入後、valueEの内容をprint文で出力してください。
//// 出力結果
//[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50]

var valueE: [Int] = []

for i in 1...50 {
    valueE.append(i)
}
print (valueE)

//課題1-14 配列（削除）
//以下の内容を持つString型配列変数valueFを定義し、ナッシュを配列から削除した結果を出力してください。
//["リュウ", "ケン", "ナッシュ", "ガイル", "ベガ", "フェイロン"]
//// 出力結果
//["リュウ", "ケン", "ガイル", "ベガ", "フェイロン"]
//
//

//String型の変数配列を定義
var valueF:[String] = ["リュウ", "ケン", "ナッシュ", "ガイル", "ベガ", "フェイロン"]
// removでナッシュを除去
valueF.remove(at: 2)
print (valueF)

//課題1-15 配列（ソート）
//以下の内容を持つInt型配列定数valueGを定義し、昇順と降順にソートした内容をそれぞれ出力してください。
//[5, 4, 100, 49, 30, 1, 12, 0]
//// 出力結果
//// 昇順
//[0, 1, 4, 5, 12, 30, 49, 100]
//// 降順
//[100, 49, 30, 12, 5, 4, 1, 0]

var valueG: [Int] = [5, 4, 100, 49, 30, 1, 12, 0]

//昇順
valueG.sort {$0 < $1}
print (valueG)

//降順
valueG.sort {$0 > $1}
print (valueG)

//課題1-16 配列（要素数）
//課題1-15で定義したvalueGの配列の数を出力してください。
//// 出力結果
//8

//valueGをカウント
print (valueG.count)

//課題1-17 辞書型
//以下の内容を持つ辞書型の定数valueHを宣言し、bの値を出力してください。 （※警告は無視しても構わない）
//key - value
//a - 1
//b - 2
//c - 3
//// 出力内容
//Optional(2)

//辞書型定義
let valueH: [String: Int] = [
    "a": 1,
    "b": 2,
    "c": 3
]

//valueH出力
print (valueH["b"])



//課題1-18 Optional
//課題1-17で定義したvalueHのbの値をOptional Bindingを用いて出力してください。
//// 出力結果
//2




// if let => optinal bainding
// optinal baingig で　nil を除去

if let valueNumebr = valueH["b"] {
    // 出力
    print (valueNumebr)
}
//課題1-19 nil
//課題1-17で定義したvalueHのkの値をOptional Bindingを用いて判断し、nilパターンの場合は「値はnilです。」と出力してください。
//// 出力結果
//値はnilです

if let valueSum = valueH["k"] {
    print (valueSum)
} else {
    print ("値はnilです")
}


//課題1-20 総復習
//以下の内容を持つvalueIを宣言し、以下の仕様にしたがい出力してください。（[Any?]型で宣言してください。）
//nilの場合は「値はnilです。」と出力する。
//数値の場合は「数値xxxxです。」と出力する。
//文字列の場合はそのまま文字列を出力する。
//[Any?] = [1, "こんにちわ" , "こんばんわ", nil, 3, 100, "よろしく", nil, "お願いします。"]
//// 出力結果
//数値1です。
//こんにちわ
//こんばんわ
//値はnilです。
//数値3です。
//数値100です。
//よろしく
//値はnilです。
//お願いします。
//

//var
var valueI: [Any?] = [1, "こんにちわ" , "こんばんわ", nil, 3, 100, "よろしく", nil, "お願いします。"]

for i in 0...valueI.count - 1{
    if let string = valueI[i] as? String{
        print (string)
    } else if let num = valueI[i] as? Int {
        print ("数値は\(num)です。")
    } else {
        print("値はnilです。")
    }
    
    
}
