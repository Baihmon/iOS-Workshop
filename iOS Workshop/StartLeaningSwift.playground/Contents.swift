//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var name = "Pattamawadee"

print("สวัสดี Swift")
print("สวัสดี Swift", terminator:"")
print("1.Hello\n2.Hello\n3.Hello")

//Variable in Swift
var district = "Phanthong"
district = "Phanusnikhom"
print (district)

var school = "E-Tech"
var provice = "Chonburi"
var info = school+" "+provice

var price = 200
var vat = 7
var total_price = price+(price*vat)/100

//Let in Swift
let fullname = "Taylor Swift"
let a = 20
let myConstant = 300
//myConstant = 400

print("Hello \(school)")
print("Price is \(price) Vat is\(vat)")

//print let
print("Constant is \(myConstant)")
print("Value a ="+String(a)) //converse a to String

// การกำหนด Data-Type
var bookName:String = "Swift for Beginner"
var bookPrice:Int = 299
var bookShelf:Double = 2.55
var bookConf:Bool = true

print(bookPrice)
print(bookConf)


//การ Converse Data-Type
let label = "The width is "
let width = 95
let widthLabel = label+String(width)
print(widthLabel)

//Check Max Min Data-Type
let minValue = UInt.min
let maxValue = UInt.max

// Variable with out value
var nilData:String? = nil
print(nilData)
nilData = "Pattamawadee"
print(nilData)

//การประกาศตัวแปรแบบอื่น
var day = "Today "
var todo = "go to school"
day += " \(todo) and market"

//Type safety
var mobilePrice:Double = 800
var discount:Float = 2.25

var total_price1 = mobilePrice-Double(discount)
print(total_price1)
























