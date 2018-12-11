//
//  ViewController.swift
//  CameraDemo
//
//  Created by NATHAN GEHRKE on 12/4/18.
//  Copyright © 2018 Nathan Gehrke. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
let imagePicker = UIImagePickerController ()
    override func viewDidLoad() {
        super.viewDidLoad()
     
weak var imageView: UIImageView!
        imagePicker.delegate = self as! UIImagePickerControllerDelegate & UINavigationControllerDelegate
    }
    
    
    
    
    
    
    @IBAction func whenCameraTapped(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            imagePicker.sourceType = UIImagePickerController.SourceType.camera }
        else{
            imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
        
        present(imagePicker, animated: true, completion: nil) }
        
    }
    @IBAction func whenPhotoTapped(_
        
        sender: Any) {
        imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary; present(imagePicker, animated: true, completion: nil)

    
    }
    

}
func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
    picker.dismiss(animated: true) {
        self.imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage





    }
}
