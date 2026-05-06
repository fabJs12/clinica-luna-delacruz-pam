import UIKit

class CitasListaVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var listaCitas: [Cita] = [
        Cita(fecha: "20/05/2026", hora: "10:30 AM", estado: "Programada", 
             paciente: Paciente(nombre: "Juan Pérez", edad: 45, historial: "...", foto: nil), 
             doctor: Doctor(nombre: "Dr. Alberto Ortiz", especialidad: "Cardiología", foto: nil, biografia: "...", horario: "...")),
        Cita(fecha: "21/05/2026", hora: "03:00 PM", estado: "Pendiente", 
             paciente: Paciente(nombre: "María García", edad: 30, historial: "...", foto: nil), 
             doctor: Doctor(nombre: "Dra. Elena Ramos", especialidad: "Pediatría", foto: nil, biografia: "...", horario: "..."))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Lista de Citas"
        tableView.dataSource = self
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaCitas.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "citaCell", for: indexPath) as! CitaCell
        let cita = listaCitas[indexPath.row]
        
        cell.lblPaciente.text = "Paciente: \(cita.paciente.nombre)"
        cell.lblFechaHora.text = cita.fechaHora
        cell.lblEstado.text = cita.estado
        
        // Color minimalista según estado
        if cita.estado == "Programada" {
            cell.lblEstado.textColor = .systemGreen
            cell.viewEstadoColor.backgroundColor = .systemGreen
        } else {
            cell.lblEstado.textColor = .systemOrange
            cell.viewEstadoColor.backgroundColor = .systemOrange
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cita = listaCitas[indexPath.row]
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "CitaDetalleVC") as! CitaDetalleVC
        detailVC.cita = cita
        navigationController?.pushViewController(detailVC, animated: true)
    }
}
