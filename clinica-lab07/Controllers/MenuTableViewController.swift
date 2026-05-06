import UIKit

class MenuTableViewController: UITableViewController {

    let opciones = ["Pacientes", "Doctores", "Citas", "Especialidades"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Menú Principal"
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return opciones.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellMenu", for: indexPath)
        
        var config = cell.defaultContentConfiguration()
        config.text = opciones[indexPath.row]
        cell.contentConfiguration = config
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let opcion = opciones[indexPath.row]
        
        switch opcion {
        case "Pacientes":
            performSegue(withIdentifier: "seguePacientes", sender: nil)
        case "Doctores":
            performSegue(withIdentifier: "segueDoctores", sender: nil)
        case "Citas":
            performSegue(withIdentifier: "segueCitas", sender: nil)
        case "Especialidades":
            performSegue(withIdentifier: "segueEspecialidades", sender: nil)
        default:
            break
        }
    }
}
