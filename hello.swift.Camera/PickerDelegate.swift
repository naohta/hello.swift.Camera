//
//  ImagePickerDelegate.swift
//  hello.swift.Camera
//
//  Created by Naohiro OHTA on Jun5,2015.
//  Copyright (c) 2015 Naohiro OHTA. All rights reserved.
//

import UIKit

class PickerDelegate: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

//    func imagePickerController(picker: UIImagePickerController,
//        didFinishPickingMediaWithInfo info: [NSObject : AnyObject])
//    {
////        let image =
////        info[UIImagePickerControllerOriginalImage] as! UIImage
////        self.imageView.image = image
////        picker.dismissViewControllerAnimated(true, completion: nil)
//    }
//    func imagePickerControllerDidCancel(picker: UIImagePickerController){
//        picker.dismissViewControllerAnimated(true, completion: nil)
//    }

    var imageView: UIImageView!

    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        picker.dismissViewControllerAnimated(true, completion: nil)
    }


}
