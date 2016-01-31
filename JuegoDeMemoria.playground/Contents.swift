//: Playground - noun: a place where people can play

import UIKit

for i in 0...100
{
    if i%5 == 0 {
        print("\(i)Bingo!!!")
    }
    if(i%2 == 0){
        print("\(i)par!!!")
    }else{
        print("\(i)impar!!!")
    }
    
    switch (i)
    {
    case 30...40:
        print("\(i)Viva Swift!")
        break
    default: break
        
    }
}