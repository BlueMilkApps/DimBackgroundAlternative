import UIKit

protocol Dimmable { }
extension Dimmable where Self: UIViewController {
    
    func dim(withView dimView: UIView, withSpeed speed: NSTimeInterval = 0.5) {
        
        // Add dim view
        view.addSubview(dimView)
        
        // Deal with auto layout
        dimView.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("|[dimView]|", options: [], metrics: nil, views: ["dimView": dimView]))
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[dimView]|", options: [], metrics: nil, views: ["dimView": dimView]))
        
        // Animate
        UIView.animateWithDuration(speed) { dimView.alpha = 1 }
    }
    
    func dim(removeView dimView: UIView, withSpeed speed: NSTimeInterval = 0.5) {
        // Animate then remove from superview
        UIView.animateWithDuration(speed, animations: { dimView.alpha = 0 }, completion: { (completed) in dimView.removeFromSuperview() })
    }
}
