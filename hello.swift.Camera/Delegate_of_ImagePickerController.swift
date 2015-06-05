//
//  ImagePickerDelegate.swift
//  hello.swift.Camera
//
//  Created by Naohiro OHTA on Jun5,2015.
//  Copyright (c) 2015 Naohiro OHTA. All rights reserved.
//

import UIKit

class Delegate_of_ImagePickerController: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var imageView: UIImageView!

    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        picker.dismissViewControllerAnimated(true, completion: nil)
    }


}
