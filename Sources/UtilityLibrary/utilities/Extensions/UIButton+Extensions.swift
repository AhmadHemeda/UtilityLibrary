import UIKit

extension UIButton {
    /// Set background color for a specific control state.
    ///
    /// - Parameters:
    ///   - color: The color to set as the background color.
    ///   - state: The control state for which to set the background color.
    func setBackgroundColor(_ color: UIColor, for state: UIControl.State) {
        UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
        if let context = UIGraphicsGetCurrentContext() {
            context.setFillColor(color.cgColor)
            context.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
            let colorImage = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            setBackgroundImage(colorImage, for: state)
        }
    }
    
    /// Adds rounded corners to the button with specified radius.
    ///
    /// - Parameter radius: The radius to use when rounding the button's corners.
    func addRoundedCorners(radius: CGFloat) {
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }
    
    /// Sets border color and width for the button.
    ///
    /// - Parameters:
    ///   - color: The color of the border.
    ///   - width: The width of the border.
    func setBorder(color: UIColor, width: CGFloat) {
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = width
    }
    
    /// Adds a shadow effect to the button with specified parameters.
    ///
    /// - Parameters:
    ///   - color: The color of the shadow.
    ///   - opacity: The opacity of the shadow.
    ///   - offset: The offset of the shadow.
    ///   - radius: The radius of the shadow.
    func addShadowEffect(color: UIColor, opacity: Float, offset: CGSize, radius: CGFloat) {
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = offset
        layer.shadowRadius = radius
        layer.masksToBounds = false
    }
    
    /// Set the title color for a specific control state.
    ///
    /// - Parameters:
    ///   - color: The color to set as the title color.
    ///   - state: The control state for which to set the title color.
    func setTitleTextColor(_ color: UIColor, for state: UIControl.State) {
        self.setTitleColor(color, for: state)
    }
}
