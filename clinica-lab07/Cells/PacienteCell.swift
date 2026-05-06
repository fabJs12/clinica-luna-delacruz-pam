import UIKit

class PacienteCell: UITableViewCell {

    @IBOutlet weak var imgPaciente: UIImageView!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblDetalle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Diseño minimalista: imagen circular
        imgPaciente.layer.cornerRadius = imgPaciente.frame.height / 2
        imgPaciente.clipsToBounds = true
    }
    
}
