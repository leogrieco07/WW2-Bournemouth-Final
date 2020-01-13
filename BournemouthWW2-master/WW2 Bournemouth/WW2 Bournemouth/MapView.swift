import Foundation
import MapKit
import Foundation

class CustomAnnotataion: NSObject, MKAnnotation {
    
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var region:
    
    init(coordinate: CLLocationCoordinate2D, title: String){
        self.coordinate = coordinate
        self.title = title
    }
    
}
