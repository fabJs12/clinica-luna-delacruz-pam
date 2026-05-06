import UIKit

class DoctorDetalleVC: UIViewController {

    @IBOutlet weak var imgDoctor: UIImageView!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblEspecialidad: UILabel!
    @IBOutlet weak var txtBiografia: UITextView!
    @IBOutlet weak var lblHorario: UILabel!
    
    var doctor: Doctor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let d = doctor {
            title = d.nombre
            lblNombre.text = d.nombre
            lblEspecialidad.text = d.especialidad
            imgDoctor.image = d.foto
            txtBiografia.text = d.biografia
            lblHorario.text = "Horario: \(d.horario)"
        }
    }
}
