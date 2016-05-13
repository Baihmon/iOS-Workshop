//: Playground - noun: a place where people can play

import UIKit

let ShoppingMall = ["Central","The Mall","BigC","Tesgo","Carfu"]

var day = [
    1:"Sunday",
    2:"Monday",
    3:"Tuesday",
    4:"Wednesday"
]

print(ShoppingMall[4])
print(ShoppingMall.count)

print(day[1])
print(String(day[2])+String(day[3]))
day[5] = "Other day"
print(day[5])

// Empty Array
var emptyArray = [String]()
var myempArray = [Int]()
var multiValue = [AnyObject]()
emptyArray.append("Pattamawadee")
emptyArray.append("Phakdee-Ngam")

myempArray.append(200)
multiValue.append("SomeText")
multiValue.append(300)
multiValue.append(2.69)

// Loop Array

for Shop in ShoppingMall
{
    print(Shop)
}


var ids = [Int]()
ids.append(10)
ids.append(20)
ids.append(30)

for id in ids
{
    print(id)
}













