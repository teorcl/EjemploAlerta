//
//  MainViewController.swift
//  EjemploAlerta
//
//  Created by TEO on 28/10/22.
//

import UIKit

class MainViewController: UIViewController {
    
    struct Const{
        static let messageOk = "Accion ok presionada"
        static let messageCancel = "Accion cancelar presionada"
        static let messageDestructive = "Accion destruir presionada"
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func onActionTapped() {
        //Aqui vamos a crear la alerta
        let alert = UIAlertController(title: "Titulo de la alerta", message: "Cuerpo de la alerta", preferredStyle: .alert)
        //let okAction = UIAlertAction(title: "OK diferente", style: .default) //Action para cerrar la alerta
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            //self.resultLabel.text = "Accion ok presionada"
            /*====self.resultLabel.isHidden = false====*/
            
            //self.showResultMessage(message: Const.messageOk)
            if let textFields = alert.textFields{
                //cuerpo del optional binding
                let nameTextField = textFields[0]
                let name = nameTextField.text ?? ""
                self.showResultMessage(message: "Su nombre completo es: \(name)")
            }
            
            
            
        } //Action para cerrar la alerta
        
        //let cancelAction = UIAlertAction(title: "Cancelar Mio", style: .default)
        
        //Ahora le agregamos la acción a la alerta nótese el metodo addAction
        alert.addAction(okAction)
        //alert.addAction(cancelAction)
        
      /*----  let destructiveAction = UIAlertAction(title: "Destruir", style: .destructive) { _ in
            //self.resultLabel.text = "Accion destruir presionada"
            /*====self.resultLabel.isHidden = false====*/
            self.showResultMessage(message: Const.messageDestructive)
        }
        alert.addAction(destructiveAction)
        
       /* let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { _ in
            print("Acción cancel presionada")
        } *///Estilo cancel me lleva el boton a la izquierda y le pone el texto en negrita
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { _ in
            //print("Acción cancel presionada")
            /*====self.resultLabel.isHidden = false====*/
            self.showResultMessage(message: Const.messageCancel)
        } //Esta no tiene prioridad en el orden del boton, pero me pone el texto en color rojo
        
        alert.addAction(cancelAction)  ----*/
        
        alert.addTextField { textFieldToBeConfigured in
            textFieldToBeConfigured.placeholder = "Su nombre completo"
        }
        
        present(alert, animated: true) //Presentación de la alerta
    }
    
    //==================================================
    /**
     Las lineas 27, 39, 50 son código repetitivo en su lugar es mejor hacer una función para ello
     */
    func showResultMessage(message: String){
        resultLabel.text = message
        resultLabel.isHidden = false
    }
    
}


