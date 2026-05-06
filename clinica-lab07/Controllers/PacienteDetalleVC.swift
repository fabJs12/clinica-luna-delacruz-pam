import UIKit

class PacienteDetalleVC: UIViewController {

    @IBOutlet weak var imgPaciente: UIImageView!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var txtHistorial: UITextView!
    
    var paciente: Paciente?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let p = paciente {
            title = p.nombre
            lblNombre.text = "\(p.nombre) (\(p.edad) años)"
            imgPaciente.image = p.foto
            txtHistorial.text = p.historial
        }
    }
}
