//
//  ViewController.swift
//  photo app
//
//  Created by Darya Dahi on 7/27/18.
//  Copyright © 2018 Darya Dahi. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UINavigationControllerDelegate,
UIImagePickerControllerDelegate {
    
    
    func imagePickerController(_ picker: UIImagePickerController,didFinishPickingMediaWithInfo info: [String : Any]) {
      
        imagePickerController.dismiss(animated: true, completion: nil)
        imageMain.image = info[UIImagePickerControllerOriginalImage] as? UIImage
    }
 
    var imagePickerController: UIImagePickerController!

    
    @IBOutlet weak var imageMain: UIImageView!
    
    @IBAction func captureButton(_ sender: UIButton) {
        imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.sourceType = .camera
        present(imagePickerController, animated: true, completion: nil)

    }
    
    @IBAction func saveButton(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

