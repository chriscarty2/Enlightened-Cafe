//
//  ViewController_Load.swift
//  Cafe Menu
//
//  Created by Chris Carty on 7/12/18.
//  Copyright © 2018 Chris Carty. All rights reserved.
//

import UIKit
import MapKit

class ViewController_Load: UIViewController {


    
    
    @IBAction func callNow(_ sender: Any) {
        guard let url = URL(string: "telprompt://\(6097052299)")
            else{return
    }
        UIApplication.shared.open(url)
        
    }
    
    
    @IBAction func getDirections(_ sender: Any) {
        let latitude:CLLocationDegrees = 39.337732
        let longitude:CLLocationDegrees = -74.482695
        
        let regionDistance:CLLocationDistance = 1000;
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegion(center: coordinates, latitudinalMeters: regionDistance, longitudinalMeters: regionDistance)
        
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]
        
        let placemark = MKPlacemark(coordinate: coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "Enlightened Cafe"
        mapItem.openInMaps(launchOptions: options)
    }
    
    @IBAction func instagramButton(_ sender: Any) {
        let screenName =  "enlightenedcafe"
        let appURL = NSURL(string: "instagram://user?screen_name=\(screenName)")!
        let webURL = NSURL(string: "https://www.instagram.com/\(screenName)")!
        
        if UIApplication.shared.canOpenURL(appURL as URL) {
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(appURL as URL, options: [:], completionHandler: nil)
            } else {
                UIApplication.shared.openURL(appURL as URL)
            }
        } else {
            //redirect to safari because the user doesn't have Instagram
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(webURL as URL, options: [:], completionHandler: nil)
            } else {
                UIApplication.shared.openURL(webURL as URL)
            }
        }
    }
    
    @IBAction func facebookButton(_ sender: Any) {
        let screenName =  "enlightenedcafenj"
        let appURL = NSURL(string: "facebook://user?screen_name=\(screenName)")!
        let webURL = NSURL(string: "https://www.facebook.com/\(screenName)")!
        
        if UIApplication.shared.canOpenURL(appURL as URL) {
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(appURL as URL, options: [:], completionHandler: nil)
            } else {
                UIApplication.shared.openURL(appURL as URL)
            }
        } else {
            //redirect to safari because the user doesn't have Facebook
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(webURL as URL, options: [:], completionHandler: nil)
            } else {
                UIApplication.shared.openURL(webURL as URL)
            }
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


}

