import Foundation

class Cita {
    var fecha: String
    var hora: String
    var estado: String
    var paciente: Paciente
    var doctor: Doctor
    
    var fechaHora: String {
        return "\(fecha) - \(hora)"
    }
    
    init(fecha: String, hora: String, estado: String, paciente: Paciente, doctor: Doctor) {
        self.fecha = fecha
        self.hora = hora
        self.estado = estado
        self.paciente = paciente
        self.doctor = doctor
    }
}
