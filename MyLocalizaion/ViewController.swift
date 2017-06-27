//
//  ViewController.swift
//  MyLocalizaion
//
//  Created by ahmed on 6/21/17.
//  Copyright © 2017 MyCompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(Language.currentLanguage())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func lanChange_btn(_ sender: UIButton) {
        
        if Language.currentLanguage() == "ar" {
            
            Language.setAppLanguage(lang: "en")
            UIView.appearance().semanticContentAttribute = .forceLeftToRight
        }else{
        
            Language.setAppLanguage(lang: "ar")
            UIView.appearance().semanticContentAttribute = .forceRightToLeft
        }

        let window = (UIApplication.shared.delegate as? AppDelegate)?.window
        let sb = UIStoryboard(name: "Main", bundle: nil)
        window?.rootViewController = sb.instantiateViewController(withIdentifier: "rootVC")
        
        UIView.transition(with: window!, duration: 0.5, options: .transitionFlipFromLeft, animations: nil, completion: nil)
    }
}

