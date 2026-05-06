import UIKit

class PacientesListaVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var listaPacientes: [Paciente] = [
        Paciente(nombre: "Juan Pérez", edad: 45, historial: "Paciente con hipertensión leve. Requiere chequeo semestral.", foto: UIImage(named: "paciente_hombre_minimalista")),
        Paciente(nombre: "María García", edad: 30, historial: "Paciente en etapa de gestación. Control prenatal al día.", foto: UIImage(named: "paciente_mujer_minimalista"))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Lista de Pacientes"
        tableView.dataSource = self
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaPacientes.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pacienteCell", for: indexPath) as! PacienteCell
        let paciente = listaPacientes[indexPath.row]
        
        cell.lblNombre.text = paciente.nombre
        cell.lblDetalle.text = "Ver historial médico de \(paciente.nombre)"
        cell.imgPaciente.image = paciente.foto ?? UIImage(systemName: "person.circle.fill")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let paciente = listaPacientes[indexPath.row]
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "PacienteDetalleVC") as! PacienteDetalleVC
        detailVC.paciente = paciente
        navigationController?.pushViewController(detailVC, animated: true)
    }
}
