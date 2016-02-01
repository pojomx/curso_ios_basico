//: Playground - noun: a place where people can play

import UIKit

import UIKit

enum Velocidad : Int {
    case Apagado = 0, VelocidadBaja = 20 , VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial velocidad : Velocidad){
        self = velocidad
    }
}


class Auto {
    var velocidad : Velocidad
    
    init()
    {
        velocidad = Velocidad(velocidadInicial:.Apagado)
        //La siguiente linea lo que hace es mostrar el estado actual al inicializar.
        print("0. \(velocidad.rawValue), \(velocidad)")
    }
    
    func cambioDeVelocidad()->(actual: Int, velocidadEnCadena: String)
    {
        switch(velocidad)
        {
        case .Apagado:
            velocidad = .VelocidadBaja
            
            break
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            
        }
        
        return (actual: velocidad.rawValue, velocidadEnCadena: "\(velocidad)")
    }
}


let test = Velocidad(velocidadInicial: .Apagado)


let carro = Auto()

//Mostrar el estado actual al inicializar...

for i in 1...20 {
    let (velocidad, cadena) = carro.cambioDeVelocidad()
    print("\(i). \(velocidad), \(cadena)")
}
