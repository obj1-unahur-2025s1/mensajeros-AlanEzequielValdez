object mensajero {
  var mensajeroActual = roberto
  var peso = mensajeroActual.peso()

  method puedeViajarA(lugar){

    return lugar.cumpleCondiciones(mensajeroActual)
  }

  method cambiarMensajero(nuevoMensajero){

    mensajeroActual = nuevoMensajero
  }
}

object paquete {
  var peso = 10

  var estaPago = True 

  method puedeSerEntregado(mensajero, lugar){

    return mensajero.puedeViajarA(lugar) and estaPago
  }

}

object puenteDeBrooklyn {

  method cumpleCondiciones(mensajero) {
    return mensajero.peso() < 1000
  }
}

object matrix {
  var energy = 100

  method cumpleCondiciones(mensajero) {
    return mensajero.puedeLlamar()
  }
}

object roberto {
  var peso = 90

  var vehiculo = bicicleta

  method peso() = peso + vehiculo.calcularPeso()

  method puedeLlamar() = return False

  method cambiarVehiculo(nuevoVehiculo) {

    vehiculo = nuevoVehiculo
  }

}

object bicicleta {

  var peso = 5
  method calcularPeso() = peso
}

object camioneta{

  var peso = 1000000

  var acoplados = 1

  method calcularPeso() = peso * (acoplados*500000)

  method cambiarAcoplados(nuevoAcoplado){

    acoplados = nuevoAcoplado
  }
}

object chuckNorris {
  var peso = 80

  method peso() = peso

  method puedeLlamar() = True

}

object neo {

  var tieneCredito = 0
  var peso = 0

  method peso() = peso

  method puedeLlamar() = tieneCredito > 0

  method cambiarCredito(nuevoCredito){

    tienerCredito = nuevoCredito
  }
}

object empresaDeMensajeria{

  listaDeMensajeros = [roberto, chuckNorris, neo]

  method contratarMensajero(nuevoMensajero){

    listaDeMensajeros.add(nuevoMensajero)
  }

  method despedirMensajero(mensajeroADespedir){

    listaDeMensajeros.remove(mensajeroADespedir)
  }

  method despedirATodosLosMensajeros(){

    listaDeMensajeros.clear()
  }

  method laMensajeriaEsGrande(){

    return listaDeMensajeros.size()
  }
}
