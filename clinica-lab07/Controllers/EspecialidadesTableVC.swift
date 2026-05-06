import UIKit

class EspecialidadesTableVC: UITableViewController {

    var listaEspecialidades: [Especialidad] = [
        Especialidad(nombre: "Cardiología", descripcion: "Especialidad encargada de las enfermedades del corazón."),
        Especialidad(nombre: "Pediatría", descripcion: "Especialidad que se encarga de la salud de los niños."),
        Especialidad(nombre: "Dermatología", descripcion: "Especialidad que se encarga de las enfermedades de la piel.")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Especialidades"
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaEspecialidades.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "especialidadCell", for: indexPath)
        let especialidad = listaEspecialidades[indexPath.row]
        
        var config = cell.defaultContentConfiguration()
        config.text = especialidad.nombre
        config.secondaryText = especialidad.descripcion
        cell.contentConfiguration = config
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let especialidad = listaEspecialidades[indexPath.row]
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "EspecialidadDetalleVC") as! EspecialidadDetalleVC
        detailVC.especialidad = especialidad
        navigationController?.pushViewController(detailVC, animated: true)
    }
}
