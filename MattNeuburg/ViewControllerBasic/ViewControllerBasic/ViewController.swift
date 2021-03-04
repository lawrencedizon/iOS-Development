
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Programatically adding views
        let v = UIView(frame: CGRect(x: 100, y: 200, width: 50, height: 50))
        v.backgroundColor = .red
        
        //self.view refers to this ViewController's main View
        self.view.addSubview(v)
        
    }


}

