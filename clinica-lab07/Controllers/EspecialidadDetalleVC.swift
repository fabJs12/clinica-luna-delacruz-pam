import UIKit

class EspecialidadDetalleVC: UIViewController {

    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var txtDescripcion: UITextView!
    
    var especialidad: Especialidad?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let esp = especialidad {
            lblNombre.text = esp.nombre
            txtDescripcion.text = esp.descripcion
            title = esp.nombre
        }
    }
}
