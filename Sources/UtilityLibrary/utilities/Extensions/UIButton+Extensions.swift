import UIKit

// MARK: - Property for state

extension UIButton {
    public var title: String? {
        get { return self.title(for: .normal) }
        set { setTitle(newValue, for: .normal) }
    }
    
    public var titleFont: UIFont? {
        get { return titleLabel?.font }
        set { titleLabel?.font = newValue }
    }
    
    public var attributedTitle: NSAttributedString? {
        get { return self.attributedTitle(for: .normal) }
        set { setAttributedTitle(newValue, for: .normal) }
    }
    
    public var titleColor: UIColor? {
        get { return self.titleColor(for: .normal) }
        set {
            setTitleColor(newValue, for: .normal)
            setTitleColor(newValue?.withAlphaComponent(0.5), for: .disabled)
            setTitleColor(newValue, for: .selected)
            if buttonType == .custom {
                setTitleColor(newValue?.withAlphaComponent(0.5), for: .highlighted)
            }
        }
    }
    
    public var titleShadowColor: UIColor? {
        get { return self.titleShadowColor(for: .normal) }
        set {
            setTitleShadowColor(newValue, for: .normal)
            setTitleShadowColor(newValue?.withAlphaComponent(0.5), for: .disabled)
            setTitleShadowColor(newValue, for: .selected)
        }
    }
    
    public var image: UIImage? {
        get { return self.image(for: .normal) }
        set {
            setImage(newValue?.withRenderingMode(.alwaysOriginal), for: .normal)
        }
    }
    
    public var selectedImage: UIImage? {
        get { return self.image(for: .selected) }
        set { setImage(newValue?.withRenderingMode(.alwaysOriginal), for: .selected) }
    }
    
    public var selectedBackgroundImage: UIImage? {
        get { return self.backgroundImage(for: .selected) }
        set { setBackgroundImage(newValue?.withRenderingMode(.alwaysOriginal), for: .selected) }
    }
    
    public var disabledBackgroundImage: UIImage? {
        get { return self.backgroundImage(for: .disabled) }
        set { setBackgroundImage(newValue?.withRenderingMode(.alwaysOriginal), for: .disabled) }
    }
}

extension UIButton {
    /// Set background color for a specific control state.
    ///
    /// - Parameters:
    ///   - color: The color to set as the background color.
    ///   - state: The control state for which to set the background color.
    public func setBackgroundColor(_ color: UIColor, for state: UIControl.State) {
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
    public func addRoundedCorners(radius: CGFloat) {
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }
    
    /// Sets border color and width for the button.
    ///
    /// - Parameters:
    ///   - color: The color of the border.
    ///   - width: The width of the border.
    public func setBorder(color: UIColor, width: CGFloat) {
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
    public func addShadowEffect(color: UIColor, opacity: Float, offset: CGSize, radius: CGFloat) {
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
    public func setTitleTextColor(_ color: UIColor, for state: UIControl.State) {
        self.setTitleColor(color, for: state)
    }
}
