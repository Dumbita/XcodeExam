import UIKit
import MapKit

class MapaViewController: UIViewController {

    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude:  -23.5826306329072, longitude: -46.71542195397243)
        annotation.title = "Fabrica"
        annotation.subtitle = "fabrica de Stellantis, Jeep"
        mapView.addAnnotation(annotation)

        
        let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 300, longitudinalMeters: 300)
        mapView.setRegion(region, animated: true)
    }
    
}
