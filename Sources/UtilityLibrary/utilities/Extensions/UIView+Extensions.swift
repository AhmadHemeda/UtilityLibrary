import UIKit

public extension UIView {
    /// Adds a border to the view with specified color, width, and corner radius.
    ///
    /// - Parameters:
    ///   - color: The color of the border.
    ///   - width: The width of the border.
    ///   - cornerRadius: The radius of the view's corners.
    func addBorder(color: UIColor, width: CGFloat, cornerRadius: CGFloat = 0) {
        layer.borderColor = color.cgColor
        layer.borderWidth = width
        layer.cornerRadius = cornerRadius
        layer.masksToBounds = true
    }

    /// Adds a shadow to the view with specified color, opacity, offset, and radius.
    ///
    /// - Parameters:
    ///   - color: The color of the shadow.
    ///   - opacity: The opacity of the shadow.
    ///   - offset: The offset of the shadow.
    ///   - radius: The radius of the shadow.
    func addShadow(color: UIColor, opacity: Float, offset: CGSize, radius: CGFloat) {
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = offset
        layer.shadowRadius = radius
        layer.masksToBounds = false
    }

    /// Adds a tap gesture recognizer to the view.
    ///
    /// - Parameters:
    ///   - target: The target object.
    ///   - action: The action to perform when the tap gesture is recognized.
    func addTapGesture(target: Any, action: Selector) {
        let tapGesture = UITapGestureRecognizer(target: target, action: action)
        addGestureRecognizer(tapGesture)
        isUserInteractionEnabled = true
    }

    /// Adds a rounded corner to the view.
    ///
    /// - Parameter radius: The radius of the corner.
    func addRoundedCorner(radius: CGFloat) {
        layer.cornerRadius = radius
        layer.masksToBounds = true
    }

    /// Adds a gradient layer to the view.
    ///
    /// - Parameters:
    ///   - colors: The array of colors for the gradient.
    ///   - locations: The array of locations for the gradient colors.
    ///   - startPoint: The starting point of the gradient.
    ///   - endPoint: The ending point of the gradient.
    func addGradient(colors: [UIColor], locations: [NSNumber]?, startPoint: CGPoint, endPoint: CGPoint) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = colors.map { $0.cgColor }
        gradientLayer.locations = locations
        gradientLayer.startPoint = startPoint
        gradientLayer.endPoint = endPoint
        layer.insertSublayer(gradientLayer, at: 0)
    }

    /// Removes all subviews from the view.
    func removeAllSubviews() {
        subviews.forEach { $0.removeFromSuperview() }
    }

    /// Sets the corner radius of specific corners of the view.
    ///
    /// - Parameters:
    ///   - corners: The corners to apply the radius to.
    ///   - radius: The radius of the corners.
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let maskPath = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let maskLayer = CAShapeLayer()
        maskLayer.frame = bounds
        maskLayer.path = maskPath.cgPath
        layer.mask = maskLayer
    }
}
