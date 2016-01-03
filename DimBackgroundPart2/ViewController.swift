import UIKit

class ViewController: UIViewController, Dimmable {

    @IBOutlet var dimView: UIView!
    
    override func viewDidLoad() {super.viewDidLoad()}
    override func didReceiveMemoryWarning() {super.didReceiveMemoryWarning()}
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        dim(withView: dimView)
    }
    
    @IBAction func unwindFromPopup(segue: UIStoryboardSegue) {
        dim(removeView: dimView)
    }
}



