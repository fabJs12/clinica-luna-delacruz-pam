import UIKit

class DoctoresListaVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var listaDoctores: [Doctor] = [
        Doctor(nombre: "Dr. Alberto Ortiz", especialidad: "Cardiología", foto: UIImage(named: "doctor_hombre_profesional"), biografia: "Especialista con 20 años de experiencia.", horario: "Lun-Vie 9:00 - 13:00"),
        Doctor(nombre: "Dra. Elena Ramos", especialidad: "Pediatría", foto: UIImage(named: "doctor_mujer_profesional"), biografia: "Especialista en pediatría integral.", horario: "Mar-Jue 15:00 - 19:00")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Lista de Doctores"
        tableView.dataSource = self
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaDoctores.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "doctorCell", for: indexPath) as! DoctorCell
        let doctor = listaDoctores[indexPath.row]
        
        cell.lblNombre.text = doctor.nombre
        cell.lblEspecialidad.text = doctor.especialidad
        cell.imgDoctor.image = doctor.foto ?? UIImage(systemName: "person.circle.fill")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let doctor = listaDoctores[indexPath.row]
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "DoctorDetalleVC") as! DoctorDetalleVC
        detailVC.doctor = doctor
        navigationController?.pushViewController(detailVC, animated: true)
    }
}
