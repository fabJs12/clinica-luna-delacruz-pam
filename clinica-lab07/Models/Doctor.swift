import UIKit

class Doctor {
    var nombre: String
    var especialidad: String
    var foto: UIImage?
    var biografia: String
    var horario: String
    
    init(nombre: String, especialidad: String, foto: UIImage?, biografia: String, horario: String) {
        self.nombre = nombre
        self.especialidad = especialidad
        self.foto = foto
        self.biografia = biografia
        self.horario = horario
    }
}
