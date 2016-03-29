//: Playground - noun: a place where people can play

import Cocoa

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto{
    var velocidad : Velocidades
    
    init(){
        velocidad = Velocidades.init( velocidadInicial: Velocidades.Apagado )
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        
        var leyenda : String = ""
        var velocidadActual : Int = 0
        
        if(velocidad == Velocidades.Apagado){
            velocidadActual = 0
            leyenda = "Apagado"
            velocidad = Velocidades.VelocidadBaja
        }
        else if(velocidad == Velocidades.VelocidadBaja){
            velocidadActual = 20
            leyenda = "Velocidad baja"
            velocidad = Velocidades.VelocidadMedia
        }
        else if(velocidad == Velocidades.VelocidadMedia){
            velocidadActual = 50
            leyenda = "Velocidad media"
            velocidad = Velocidades.VelocidadAlta
        }
        else if(velocidad == Velocidades.VelocidadAlta){
            velocidadActual = 120
            leyenda = "Velocidad alta"
            velocidad = Velocidades.VelocidadMedia
        }
        
        let tupla = (velocidadActual, leyenda)
        return tupla
    }
}

var auto = Auto()

for i in 0..<20 {
    let estado = auto.cambioDeVelocidad()
    print(estado)
    
}