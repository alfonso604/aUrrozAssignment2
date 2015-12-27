// Playground Assignment2
/*
    Creado por: Alfonso G. Urroz-Aguirre
    Fecha: Diciembre 26 2015
    Descripcion:
        Este programa simulara un velocimetro digital de
        un automovil, tendra solo velocidades discretas
*/

import UIKit

enum Velocidades: Int{
    case apagado  = 0
    case velocidadBaja = 20
    case velocidadMedia = 50
    case velocidadAlta = 120
    
    init(velocidadInicial: Velocidades) {
        self = velocidadInicial
    }
}
//
class Auto {
    var velocidad: Velocidades
    
    init() {
        self.velocidad = Velocidades(velocidadInicial: .apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        
        switch velocidad {
        case .apagado:
            velocidad = .velocidadBaja
            return (velocidad.rawValue, "Velocidad Baja")
        case .velocidadBaja:
            velocidad = .velocidadMedia
            return (velocidad.rawValue, "Velocidad Media")
        case .velocidadMedia:
            velocidad = .velocidadAlta
            return (velocidad.rawValue, "Velocidad Alta")
        case .velocidadAlta:
            velocidad = .velocidadMedia
            return (velocidad.rawValue, "Velocidad Media")
        }
    }
}

var auto: Auto = Auto()
print ("\(auto.velocidad.rawValue), \(auto.velocidad)")

var resultado:(actual: Int, velocidadEnCadena: String)

for index in 1...20 {
    resultado = auto.cambioDeVelocidad()
    print("\(resultado.actual), \(resultado.velocidadEnCadena)")
}


