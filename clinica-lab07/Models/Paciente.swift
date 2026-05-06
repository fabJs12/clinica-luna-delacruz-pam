import UIKit

class Paciente {
    var nombre: String
    var edad: Int
    var historial: String
    var foto: UIImage?
    
    init(nombre: String, edad: Int, historial: String, foto: UIImage?) {
        self.nombre = nombre
        self.edad = edad
        self.historial = historial
        self.foto = foto
    }
}
