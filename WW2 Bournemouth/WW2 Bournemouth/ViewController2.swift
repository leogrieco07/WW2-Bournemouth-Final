
import Foundation
import UIKit
import MapKit

class ViewController2: UIViewController {
    let locationManager = CLLocationManager()
    
    @IBOutlet weak var MapView: MKMapView!
    
    override func viewDidLoad() {
    super.viewDidLoad()
        locationManager.requestAlwaysAuthorization()
        locationManager.delegate = self
        locationManager.startUpdatingLocation()
     //   locationManager.startMonitoring(for: region)
    
        let MetropoleCoordinate = CLLocationCoordinate2D (latitude: 50.72, longitude: -1.86)
        let MetropoleAnnotation = CustomAnnotataion(coordinate:MetropoleCoordinate , title: "Metropole Hotel")
        let MetropoleRegion = CLCircularRegion(center: MetropoleCoordinate, radius: 200, identifier: "Entered Metropole Hotel")
        locationManager.startMonitoring(for: MetropoleRegion)
        
        let BealesCoordinate = CLLocationCoordinate2D (latitude: 50.72, longitude: -1.87)
        let BealesAnnotation = CustomAnnotataion(coordinate:BealesCoordinate , title: "Beales Hotel")
        let BealesRegion = CLCircularRegion(center: BealesCoordinate, radius: 200, identifier: "Entered Beales")
        locationManager.startMonitoring(for: BealesRegion)
       
        let HoldenhurstCoordinate = CLLocationCoordinate2D(latitude: 50.72, longitude: -1.85)
        let HoldenhurstAnnotation = CustomAnnotataion(coordinate: HoldenhurstCoordinate, title: "255A-256A Holdenhurt Road")
        let HoldenhurstRegion = CLCircularRegion(center: HoldenhurstCoordinate, radius: 200, identifier: "Entered Holdenhurst")
        locationManager.startMonitoring(for: HoldenhurstRegion)
    
    
        MapView.addAnnotation(BealesAnnotation)
        MapView.addAnnotation(MetropoleAnnotation)
        MapView.addAnnotation(HoldenhurstAnnotation)
    
    
       
        
        
    }
    @IBSegueAction func MetropoleVid(_ coder: NSCoder) -> MetropoleVidViewController? {
        return <#AVPlayerViewController(coder: coder)#>
    }
}
    
   
extension ViewController2: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
      print(locations.last!)
    }

    func locationManager(_ manager: CLLocationManager, didEnterRegion region: CLRegion) {
        //this happens every time you get ot one of your regions..
        print("Entered: \(region.identifier)")
        
        
        if region.identifier == "Entered Metropole Hotel" {
            //do things specific to this region
            
        }
    
        
    }
    
    
}
