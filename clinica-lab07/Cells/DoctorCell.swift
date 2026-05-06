import UIKit

class DoctorCell: UITableViewCell {

    @IBOutlet weak var imgDoctor: UIImageView!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblEspecialidad: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imgDoctor.layer.cornerRadius = imgDoctor.frame.height / 2
        imgDoctor.clipsToBounds = true
    }
}
