import UIKit

class CitaDetalleVC: UIViewController {

    @IBOutlet weak var lblFechaHora: UILabel!
    @IBOutlet weak var lblPaciente: UILabel!
    @IBOutlet weak var lblDoctor: UILabel!
    @IBOutlet weak var lblEstado: UILabel!
    
    var cita: Cita?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let c = cita {
            title = "Detalle de Cita"
            lblFechaHora.text = "Fecha y Hora: \(c.fecha) \(c.hora)"
            lblPaciente.text = "Paciente: \(c.paciente.nombre)"
            lblDoctor.text = "Doctor: \(c.doctor.nombre)"
            lblEstado.text = "Estado: \(c.estado)"
        }
    }
}
