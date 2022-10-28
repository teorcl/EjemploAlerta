//
//  MainViewController.swift
//  EjemploAlerta
//
//  Created by TEO on 28/10/22.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onActionTapped() {
        //Aqui vamos a crear la alerta
        let alert = UIAlertController(title: "Titulo de la alerta", message: "Cuerpo de la alerta", preferredStyle: .alert)
        //let okAction = UIAlertAction(title: "OK diferente", style: .default) //Action para cerrar la alerta
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            print("Acción presionada")
        } //Action para cerrar la alerta
        
        //let cancelAction = UIAlertAction(title: "Cancelar Mio", style: .default)
        
        //Ahora le agregamos la acción a la alerta nótese el metodo addAction
        alert.addAction(okAction)
        //alert.addAction(cancelAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { _ in
            print("Acción cancel presionada")
        } //Estilo cancel me lleva el boton a la izquierda y le pone el texto en negrita
        
        alert.addAction(cancelAction)
        
        present(alert, animated: true) //Presentación de la alerta
    }
    
}

