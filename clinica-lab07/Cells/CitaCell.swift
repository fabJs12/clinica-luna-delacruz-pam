import UIKit

class CitaCell: UITableViewCell {

    @IBOutlet weak var lblPaciente: UILabel!
    @IBOutlet weak var lblFechaHora: UILabel!
    @IBOutlet weak var lblEstado: UILabel!
    @IBOutlet weak var viewEstadoColor: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewEstadoColor.layer.cornerRadius = 5
    }
}
