//
//  Glass.swift
//  hello.swift.Camera
//
//  Created by Naohiro OHTA on Jun5,2015.
//  Copyright (c) 2015 Naohiro OHTA. All rights reserved.
//

import UIKit


class FlatGlass: UIViewController,
                 UIImagePickerControllerDelegate,
                 UINavigationControllerDelegate {


	// MARK: - Outlets
    // ---------------

    @IBOutlet weak var myImageView: UIImageView!


	// MARK: - App tells picker (or his delegate) 
    //         when user finished picking a media
	// ------------------------------------------

    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {

        if let i = info[UIImagePickerControllerOriginalImage] as? UIImage {
			myImageView.image = i
        }

        picker.dismissViewControllerAnimated(true, completion: nil)
    }


    // MARK: - Show Camera
	// -------------------

    @IBAction func cameraButtonDidTouchUp(sender: UIButton) {

        var picker = UIImagePickerController()
        let camera = UIImagePickerControllerSourceType.Camera

        if UIImagePickerController.isSourceTypeAvailable(camera) {
            picker.sourceType = camera
            picker.delegate = self
            presentViewController(picker, animated: true, completion: nil)
        }

    }


	// MARK: - Common VC
    // -----------------

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
