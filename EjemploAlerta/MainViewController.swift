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
    
    private struct Tags{
        static let nameTextFieldTag = 6
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func onActionTapped() {
        //Aqui vamos a crear la alerta
        let alert = UIAlertController(title: "Titulo de la alerta", message: "Cuerpo de la alerta", preferredStyle: .alert)
                
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
                        
                guard  let textFields = alert.textFields else{
                    return
                }
            
                guard let nameTextField = textFields.first(where: { textFieldUnderAnalysis in
                    return textFieldUnderAnalysis.tag == Tags.nameTextFieldTag
                }) else{
                        return
                    }
                
                let name = nameTextField.text ?? ""
                self.showResultMessage(message: "Su nombre completo es: \(name)")
                
            }
            
            
        alert.addAction(okAction)
      
        
        // TextField 1
        alert.addTextField { textFieldToBeConfigured in
            textFieldToBeConfigured.placeholder = "Su nombre "
            textFieldToBeConfigured.tag = Tags.nameTextFieldTag
        }
        
        // TextField 2
        alert.addTextField { textFieldToBeConfigured in
            textFieldToBeConfigured.placeholder = "Su apellido"
            textFieldToBeConfigured.tag = 9
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


