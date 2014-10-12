//
//  AlarmViewController.swift
//  Alarm Clock
//
//  Created by twb on 6/7/14.
//  Copyright (c) 2014 alex. All rights reserved.
//

import UIKit

class AlarmViewController: UIViewController {
    
    @IBOutlet var label: UILabel?
    
    @IBOutlet var button1: UIButton?
    @IBOutlet var button2: UIButton?
    @IBOutlet var button3: UIButton?
    @IBOutlet var button4: UIButton?
    @IBOutlet var button5: UIButton?
    @IBOutlet var button6: UIButton?
    @IBOutlet var button7: UIButton?
    @IBOutlet var button8: UIButton?
    @IBOutlet var button9: UIButton?
    @IBOutlet var button0: UIButton?
    
    @IBOutlet var toggle: UISegmentedControl?
    
    @IBOutlet var deleteButton:UIButton?
    
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label!.text = ":"
        
        label!.textAlignment = .Center
    
        button1!.addTarget(self, action: "buttonPressed:event:", forControlEvents: .TouchUpInside )
        button2!.addTarget(self, action: "buttonPressed:event:", forControlEvents: .TouchUpInside )
        button3!.addTarget(self, action: "buttonPressed:event:", forControlEvents: .TouchUpInside )
        button4!.addTarget(self, action: "buttonPressed:event:", forControlEvents: .TouchUpInside )
        button5!.addTarget(self, action: "buttonPressed:event:", forControlEvents: .TouchUpInside )
        button6!.addTarget(self, action: "buttonPressed:event:", forControlEvents: .TouchUpInside )
        button7!.addTarget(self, action: "buttonPressed:event:", forControlEvents: .TouchUpInside )
        button8!.addTarget(self, action: "buttonPressed:event:", forControlEvents: .TouchUpInside )
        button9!.addTarget(self, action: "buttonPressed:event:", forControlEvents: .TouchUpInside )
        button0!.addTarget(self, action: "buttonPressed:event:", forControlEvents: .TouchUpInside )
        
        deleteButton!.addTarget(self, action: "deletePressed", forControlEvents: .TouchUpInside )
    }

    func buttonPressed(sender: UIButton?, event: UIControlEvents) {
        if label!.text.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) == 5 {
            return
        }
        if label!.text.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) == 3 {
            label!.text = label!.text.substringFromIndex(label!.text.lengthOfBytesUsingEncoding(NSUTF8StringEncoding)) + ":"
        }
        label!.text = label!.text + sender!.titleLabel.text
    }
    
    func deletePressed() {
        if label!.text == ":" {
            return
        }
        if label!.text.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) == 0 {
            return
        }
        label!.text = label!.text.substringToIndex(label!.text.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) - 1)
    }
}
