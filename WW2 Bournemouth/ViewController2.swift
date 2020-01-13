
import Foundation
import UIKit
import MapKit

class ViewController2: UIViewController {
    let locationManager = CLLocationManager()
    
    @IBOutlet weak var MapView: MKMapView!
    
    override func viewDidLoad() {
    super.viewDidLoad()
        locationManager.requestAlwaysAuthorization()
        
        locationManager.startUpdatingLocation()
     //   locationManager.startMonitoring(for: region)
    
        let MetropoleCoordinate = CLLocationCoordinate2D (latitude: 50.72, longitude: -1.86)
        let MetropoleAnnotation = CustomAnnotataion(coordinate:MetropoleCoordinate , title: "Metropole Hotel")
        let MetropoleRegion = CLCircularRegion(center: MetropoleCoordinate, radius: 200, identifier: "Metropole")
        locationManager.startMonitoring(for: MetropoleRegion)
        
        let BealesCoordinate = CLLocationCoordinate2D (latitude: 50.72, longitude: -1.87)
        let BealesAnnotation = CustomAnnotataion(coordinate:BealesCoordinate , title: "Beales Hotel")
        let BealesRegion = CLCircularRegion(center: BealesCoordinate, radius: 200, identifier: "Beales")
        locationManager.startMonitoring(for: BealesRegion)
       
        let HoldenhurstCoordinate = CLLocationCoordinate2D(latitude: 50.72, longitude: -1.85)
        let HoldenhurstAnnotation = CustomAnnotataion(coordinate: HoldenhurstCoordinate, title: "255A-256A Holdenhurt Road")
        let HoldenhurstRegion = CLCircularRegion(center: HoldenhurstCoordinate, radius: 200, identifier: "Holdenhurst")
        locationManager.startMonitoring(for: HoldenhurstRegion)
    
    
        MapView.addAnnotation(BealesAnnotation)
        MapView.addAnnotation(MetropoleAnnotation)
        MapView.addAnnotation(HoldenhurstAnnotation)
    
  
    }
    
   
    @IBAction func MetropoleInterviewButton(_ sender: Any) {
        openUrl(urlStr: "https://vimeo.com/384589662")
      
    }
    func openUrl(urlStr:String!){
        if let url = NSURL(string:urlStr){
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
    }
    
  
    @IBAction func BealesInterviewButton(_ sender: Any) {
        openUrl(urlStr1: "https://vimeo.com/384581421")
          
        }
        func openUrl(urlStr1:String!){
            if let url = NSURL(string:urlStr1){
                UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)    }
    
    
   

    }
    
    @IBAction func HoldenhurstInterviewButton(_ sender: Any) {
        
     openUrl(urlStr2: "https://vimeo.com/384581757")
             
           }
           func openUrl(urlStr2:String!){
               if let url = NSURL(string:urlStr2){
                UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)

            }
}
}
