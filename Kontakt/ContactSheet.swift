//
//  ContactSheet.swift
//  Monotag
//
//  Created by Timothy Whiting on 26/02/2016.
//  Copyright © 2016 Arcopo. All rights reserved.
//

import UIKit

var backView: UIView!
class ContactSheet: UIView {
    
    var view: UIView!
    let nibName = "ContactSheet"
    var currentScale:CGFloat = 1.0
    
    @IBOutlet weak var strip1: UIView!
    @IBOutlet weak var strip2: UIView!
    @IBOutlet weak var strip3: UIView!
    @IBOutlet weak var strip4: UIView!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    func setSelectedImages(array:[Int]){
        for view in strip1.subviews {
            if view.isKindOfClass(UIButton){
                if array.contains(view.tag) {
                    view.hidden=false
                    (view as! UIButton).setImage(UIImage(named: "Rectangle.png"), forState: UIControlState.Normal)
                } else {
                    (view as! UIButton).setImage(UIImage(), forState: UIControlState.Normal)
                }
                
            }
        }
        for view in strip2.subviews {
            if view.isKindOfClass(UIButton){
                if array.contains(view.tag) {
                    view.hidden=false
                    (view as! UIButton).setImage(UIImage(named: "Rectangle.png"), forState: UIControlState.Normal)
                } else {
                    (view as! UIButton).setImage(UIImage(), forState: UIControlState.Normal)
                }
                
            }
        }
        for view in strip3.subviews {
            if view.isKindOfClass(UIButton){
                if array.contains(view.tag) {
                    view.hidden=false
                    (view as! UIButton).setImage(UIImage(named: "Rectangle.png"), forState: UIControlState.Normal)
                } else {
                    (view as! UIButton).setImage(UIImage(), forState: UIControlState.Normal)
                }
                
            }
        }
        for view in strip4.subviews {
            if view.isKindOfClass(UIButton){
                if array.contains(view.tag) {
                    view.hidden=false
                    (view as! UIButton).setImage(UIImage(named: "Rectangle.png"), forState: UIControlState.Normal)
                } else {
                    (view as! UIButton).setImage(UIImage(), forState: UIControlState.Normal)
                }
                
            }
        }
        
    }
    
    func occupyImageViews(withImageArray images:[UIImage]){
        if images.count == 0 {
            return
        }
        for view in strip1.subviews {
            
            if view.isKindOfClass(UIImageView){
                let imageView = view as! UIImageView
                if imageView.tag != -1 {
                    imageView.image=nil
                }
                
                if imageView.tag >= 0 && imageView.tag < images.count {
                    imageView.image = images[imageView.tag]
                } else {
                    imageView.image=nil
                }
            }
        }
        for view in strip2.subviews {
            if view.isKindOfClass(UIImageView){
                let imageView = view as! UIImageView
                if imageView.tag != -1 {
                    imageView.image=nil
                }
                if imageView.tag >= 0 && imageView.tag < images.count {
                    imageView.image = images[imageView.tag]
                } else {
                    imageView.image=nil
                }
            }
        }
        for view in strip3.subviews {
            if view.isKindOfClass(UIImageView){
                let imageView = view as! UIImageView
                if imageView.tag != -1 {
                    imageView.image=nil
                }
                if imageView.tag >= 0 && imageView.tag < images.count {
                    imageView.image = images[imageView.tag]
                } else {
                    imageView.image=nil
                }
            }
        }
        for view in strip4.subviews {
            if view.isKindOfClass(UIImageView){
                let imageView = view as! UIImageView
                if imageView.tag != -1 {
                    imageView.image=nil
                }
                if imageView.tag >= 0 && imageView.tag < images.count {
                    imageView.image = images[imageView.tag]
                } else {
                    imageView.image=nil
                }
            }
        }
        
        if images.count > 18 {
          //  strip4.frame.size.width = CGFloat(images!.count-17) * strip4.bounds.height*1.3*currentScale
            self.view.frame.size.height=(strip4.frame.origin.y+strip4.bounds.height)//*currentScale
        } else if images.count > 12 {
          //  strip3.frame.size.width = CGFloat(images!.count-11) * strip3.bounds.height*1.3*currentScale
            self.view.frame.size.height=(strip3.frame.origin.y+strip3.bounds.height)//*currentScale
        }else if images.count > 6 {
          //  strip2.frame.size.width = CGFloat(images!.count-5) * strip2.bounds.height*1.3*currentScale
            self.view.frame.size.height=(strip2.frame.origin.y+strip2.bounds.height)//*currentScale
        } else {
            self.view.frame.size.height=(strip1.frame.origin.y+strip1.bounds.height)//*currentScale
        }
        self.clipsToBounds=true
        self.view.clipsToBounds=true
        
    }
    
    
    func prepareImageViews(imageIDs:[String]){
        
        let images = imageIDs
        
        if images.count == 0 {
            return
        }
       
        if images.count > 18 {
            //  strip4.frame.size.width = CGFloat(images!.count-17) * strip4.bounds.height*1.3*currentScale
            self.view.frame.size.height=(strip4.frame.origin.y+strip4.bounds.height)//*currentScale
        } else if images.count > 12 {
            //  strip3.frame.size.width = CGFloat(images!.count-11) * strip3.bounds.height*1.3*currentScale
            self.view.frame.size.height=(strip3.frame.origin.y+strip3.bounds.height)//*currentScale
        }else if images.count > 6 {
            //  strip2.frame.size.width = CGFloat(images!.count-5) * strip2.bounds.height*1.3*currentScale
            self.view.frame.size.height=(strip2.frame.origin.y+strip2.bounds.height)//*currentScale
        } else {
            self.view.frame.size.height=(strip1.frame.origin.y+strip1.bounds.height)//*currentScale
        }
        self.clipsToBounds=true
        self.view.clipsToBounds=true
        
    }
    
    func occupyImageViewsWithThumbnails(imageIDs:[String]) -> [UIImage]{
        
       
        
        var images = [UIImage]()
        
        for id in imageIDs {
            let file = id+"-150.png"//result.imageFilePath
            let path = CTImageFileStore.fileInDocumentsDirectory(file)
            let image = CTImageFileStore.loadImageFromPath(path)
            if image != nil {
                images.append(image!)
            }
            
        }
        for view in strip1.subviews {
            
            if view.isKindOfClass(UIImageView){
                let imageView = view as! UIImageView
               
                if imageView.tag >= 0 && imageView.tag < images.count {
                    imageView.image = images[imageView.tag]
                }
            }
        }
        for view in strip2.subviews {
            if view.isKindOfClass(UIImageView){
                let imageView = view as! UIImageView
          
                if imageView.tag >= 0 && imageView.tag < images.count {
                    imageView.image = images[imageView.tag]
                }
            }
        }
        for view in strip3.subviews {
            if view.isKindOfClass(UIImageView){
                let imageView = view as! UIImageView
             
                if imageView.tag >= 0 && imageView.tag < images.count {
                    imageView.image = images[imageView.tag]
                }
            }
        }
        for view in strip4.subviews {
            if view.isKindOfClass(UIImageView){
                let imageView = view as! UIImageView
           
                if imageView.tag >= 0 && imageView.tag < images.count {
                    imageView.image = images[imageView.tag]
                }
            }
        }
        return images
    }
    func updateImageViewsWithThumbnails(images:[UIImage]){
        
        
        for view in strip1.subviews {
            
            if view.isKindOfClass(UIImageView){
                let imageView = view as! UIImageView
                
                if imageView.tag >= 0 && imageView.tag < images.count {
                    imageView.image = images[imageView.tag]
                }
            }
        }
        for view in strip2.subviews {
            if view.isKindOfClass(UIImageView){
                let imageView = view as! UIImageView
                
                if imageView.tag >= 0 && imageView.tag < images.count {
                    imageView.image = images[imageView.tag]
                }
            }
        }
        for view in strip3.subviews {
            if view.isKindOfClass(UIImageView){
                let imageView = view as! UIImageView
                
                if imageView.tag >= 0 && imageView.tag < images.count {
                    imageView.image = images[imageView.tag]
                }
            }
        }
        for view in strip4.subviews {
            if view.isKindOfClass(UIImageView){
                let imageView = view as! UIImageView
                
                if imageView.tag >= 0 && imageView.tag < images.count {
                    imageView.image = images[imageView.tag]
                }
            }
        }
        

    }
    
    func occupyImageViewsWithMidSizedImages(imageIDs:[String]){
        
        
        for view in strip1.subviews {
            
            if view.isKindOfClass(UIImageView){
                let imageView = view as! UIImageView
                
                if imageView.tag >= 0 && imageView.tag < imageIDs.count {
                    
                    
                    let file = imageIDs[view.tag]+"-600.png"//result.imageFilePath
                    let path = CTImageFileStore.fileInDocumentsDirectory(file)
                    let image = CTImageFileStore.loadImageFromPath(path)
                    if image != nil {
                        imageView.image = image
                    }
                    
                }
            }
        }
        for view in strip2.subviews {
            if view.isKindOfClass(UIImageView){
                let imageView = view as! UIImageView
                
                if imageView.tag >= 0 && imageView.tag < imageIDs.count {
                    
                    let file = imageIDs[view.tag]+"-600.png"//result.imageFilePath
                    let path = CTImageFileStore.fileInDocumentsDirectory(file)
                    let image = CTImageFileStore.loadImageFromPath(path)
                    if image != nil {
                        imageView.image = image
                    }
                    
                }
            }
        }
        for view in strip3.subviews {
            if view.isKindOfClass(UIImageView){
                let imageView = view as! UIImageView
                
                if imageView.tag >= 0 && imageView.tag < imageIDs.count {
                    
                    let file = imageIDs[view.tag]+"-600.png"//result.imageFilePath
                    let path = CTImageFileStore.fileInDocumentsDirectory(file)
                    let image = CTImageFileStore.loadImageFromPath(path)
                    if image != nil {
                        imageView.image = image
                    }
                    
                }
            }
        }
        for view in strip4.subviews {
            if view.isKindOfClass(UIImageView){
                let imageView = view as! UIImageView
                
                if imageView.tag >= 0 && imageView.tag < imageIDs.count {
                    
                    let file = imageIDs[view.tag]+"-600.png"//result.imageFilePath
                    let path = CTImageFileStore.fileInDocumentsDirectory(file)
                    let image = CTImageFileStore.loadImageFromPath(path)
                    if image != nil {
                        imageView.image = image
                    }
                    
                }
            }
        }
    }
    func occupyImageViewsWithFullSizedImages(imageIDs:[String]){
        
        
        for view in strip1.subviews {
            
            if view.isKindOfClass(UIImageView){
                let imageView = view as! UIImageView
                
                if imageView.tag >= 0 && imageView.tag < imageIDs.count {
                    
                    
                    let file = imageIDs[view.tag]+".png"//result.imageFilePath
                    let path = CTImageFileStore.fileInDocumentsDirectory(file)
                    let image = CTImageFileStore.loadImageFromPath(path)
                    if image != nil {
                        imageView.image = image
                    }
                    
                }
            }
        }
        for view in strip2.subviews {
            if view.isKindOfClass(UIImageView){
                let imageView = view as! UIImageView
                
                if imageView.tag >= 0 && imageView.tag < imageIDs.count {
                    
                    let file = imageIDs[view.tag]+".png"//result.imageFilePath
                    let path = CTImageFileStore.fileInDocumentsDirectory(file)
                    let image = CTImageFileStore.loadImageFromPath(path)
                    if image != nil {
                        imageView.image = image
                    }
                    
                }
            }
        }
        for view in strip3.subviews {
            if view.isKindOfClass(UIImageView){
                let imageView = view as! UIImageView
                
                if imageView.tag >= 0 && imageView.tag < imageIDs.count {
                    
                    let file = imageIDs[view.tag]+".png"//result.imageFilePath
                    let path = CTImageFileStore.fileInDocumentsDirectory(file)
                    let image = CTImageFileStore.loadImageFromPath(path)
                    if image != nil {
                        imageView.image = image
                    }
                    
                }
            }
        }
        for view in strip4.subviews {
            if view.isKindOfClass(UIImageView){
                let imageView = view as! UIImageView
                
                if imageView.tag >= 0 && imageView.tag < imageIDs.count {
                    
                    let file = imageIDs[view.tag]+".png"//result.imageFilePath
                    let path = CTImageFileStore.fileInDocumentsDirectory(file)
                    let image = CTImageFileStore.loadImageFromPath(path)
                    if image != nil {
                        imageView.image = image
                    }
                    
                }
            }
        }
    }
    
    func viewDidLoad(){
        for view in strip1.subviews {
            if view.tag == -1 {
                if view.isKindOfClass(UIImageView){
                    let image = view as! UIImageView
                    image.image=holesImage
                }
            }
            
        }
        for view in strip2.subviews {
            if view.tag == -1 {
                if view.isKindOfClass(UIImageView){
                    let image = view as! UIImageView
                    image.image=holesImage
                }
            }
            
        }
        for view in strip3.subviews {
            if view.tag == -1 {
                if view.isKindOfClass(UIImageView){
                    let image = view as! UIImageView
                    image.image=holesImage
                }
            }
            
        }
        for view in strip4.subviews {
            if view.tag == -1 {
                if view.isKindOfClass(UIImageView){
                    let image = view as! UIImageView
                    image.image=holesImage
                }
            }
            
        }
        
        //UIImageWriteToSavedPhotosAlbum(self.view.pb_takeSnapshot(), nil, nil, nil)
    }

    func xibSetup() {
        
        view = loadViewFromNib()
        
        // use bounds not frame or it'll be offset
        view.frame = bounds
        
        // Make the view stretch with containing view
        view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        
        // Adding custom subview on top of our view (over any custom drawing > see note below)
        
     
        addSubview(view)
        viewDidLoad()
    }
    
    func loadViewFromNib() -> UIView {
        
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        
        return view
    }
    
    override init(frame: CGRect) {
        // 1. setup any properties here
        
        // 2. call super.init(frame:)
        super.init(frame: frame)
        
        // 3. Setup view from .xib file
        xibSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        // 1. setup any properties here
        
        // 2. call super.init(coder:)
        super.init(coder: aDecoder)
        
        // 3. Setup view from .xib file
        xibSetup()
    }
    
}
