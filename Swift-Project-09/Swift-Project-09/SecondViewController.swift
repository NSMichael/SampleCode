//
//  SecondViewController.swift
//  Swift-Project-09
//
//  Created by 耿功发 on 2017/3/17.
//  Copyright © 2017年 Appcoda. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var textView: UITextView!
    
    var content = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Second View"
        self.textView.text = content
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(SecondViewController.pickImage))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func pickImage() {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        imagePicker.mediaTypes = UIImagePickerController.availableMediaTypes(for: .photoLibrary)!
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        let chosenImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        let attributedString = NSMutableAttributedString()
        if let originalText = textView.attributedText {
            attributedString.append(originalText)
        }
        
        let textAttachment = NSTextAttachment()
        let oldWidth = chosenImage.size.width
        let scaleFactor = oldWidth / textView.frame.size.width
        textAttachment.image = UIImage(cgImage: chosenImage.cgImage!, scale: scaleFactor, orientation: .up)
        let attributedStringWithImage = NSAttributedString(attachment: textAttachment)
        attributedString.append(attributedStringWithImage)
        
        self.textView.attributedText = attributedString
        
        dismiss(animated: true, completion: nil)
        
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }

}
