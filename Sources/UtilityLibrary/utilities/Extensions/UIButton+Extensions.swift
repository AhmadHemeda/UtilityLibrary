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
    
    /// Background color for the normal state.
    public var backgroundColorForNormal: UIColor? {
        get {
            guard let image = backgroundImage(for: .normal),
                  let backgroundColor = image.uicolorPixel(at: CGPoint(x: 0, y: 0)) else {
                return nil
            }
            return backgroundColor
        }
        set {
            guard let color = newValue else {
                setBackgroundImage(nil, for: .normal)
                return
            }
            let image = UIButton.imageWithColor(color: color, size: CGSize(width: 1, height: 1))
            setBackgroundImage(image, for: .normal)
        }
    }
    
    /// Radius for rounded corners.
    public var cornerRadius: CGFloat {
        get { layer.cornerRadius }
        set {
            layer.cornerRadius = newValue
            clipsToBounds = true
        }
    }
    
    /// Border color for the button.
    public var borderColor: UIColor? {
        get { layer.borderColor != nil ? UIColor(cgColor: layer.borderColor!) : nil }
        set {
            layer.borderColor = newValue?.cgColor
            layer.borderWidth = borderWidth
        }
    }
    
    /// Border width for the button.
    public var borderWidth: CGFloat {
        get { layer.borderWidth }
        set { layer.borderWidth = newValue }
    }
    
    /// Shadow color for the button.
    public var shadowColor: UIColor? {
        get { layer.shadowColor != nil ? UIColor(cgColor: layer.shadowColor!) : nil }
        set { layer.shadowColor = newValue?.cgColor }
    }
    
    /// Shadow opacity for the button.
    public var shadowOpacity: Float {
        get { layer.shadowOpacity }
        set { layer.shadowOpacity = newValue }
    }
    
    /// Shadow offset for the button.
    public var shadowOffset: CGSize {
        get { layer.shadowOffset }
        set { layer.shadowOffset = newValue }
    }
    
    /// Shadow radius for the button.
    public var shadowRadius: CGFloat {
        get { layer.shadowRadius }
        set { layer.shadowRadius = newValue }
    }
    
    /// Title color for the normal state.
    public var titleColorForNormal: UIColor? {
        get { titleColor(for: .normal) }
        set {
            setTitleColor(newValue, for: .normal)
            setTitleColor(newValue?.withAlphaComponent(0.5), for: .disabled)
            setTitleColor(newValue, for: .selected)
            if buttonType == .custom {
                setTitleColor(newValue?.withAlphaComponent(0.5), for: .highlighted)
            }
        }
    }
    
    /// Title shadow color for the normal state.
    public var titleShadowColorForNormal: UIColor? {
        get { titleShadowColor(for: .normal) }
        set {
            setTitleShadowColor(newValue, for: .normal)
            setTitleShadowColor(newValue?.withAlphaComponent(0.5), for: .disabled)
            setTitleShadowColor(newValue, for: .selected)
        }
    }
    
    /// Image for the normal state.
    public var imageForNormal: UIImage? {
        get { image(for: .normal) }
        set { setImage(newValue?.withRenderingMode(.alwaysOriginal), for: .normal) }
    }
    
    /// Image for the selected state.
    public var selectedImage: UIImage? {
        get { image(for: .selected) }
        set { setImage(newValue?.withRenderingMode(.alwaysOriginal), for: .selected) }
    }
    
    /// Background image for the selected state.
    public var selectedBackgroundImage: UIImage? {
        get { backgroundImage(for: .selected) }
        set { setBackgroundImage(newValue?.withRenderingMode(.alwaysOriginal), for: .selected) }
    }
    
    /// Background image for the disabled state.
    public var disabledBackgroundImage: UIImage? {
        get { backgroundImage(for: .disabled) }
        set { setBackgroundImage(newValue?.withRenderingMode(.alwaysOriginal), for: .disabled) }
    }
    
    // MARK: - Helper Methods
    
    /// Helper method to create an image with a specified color and size.
    private static func imageWithColor(color: UIColor, size: CGSize) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        color.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))
        let image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }
}

extension UIImage {
    /// Get the pixel color at a specific point in the image.
    func uicolorPixel(at point: CGPoint) -> UIColor? {
        guard let cgImage = self.cgImage else { return nil }
        let pixelData = cgImage.dataProvider?.data
        let data: UnsafePointer<UInt8> = CFDataGetBytePtr(pixelData)
        let pixelInfo: Int = ((Int(self.size.width) * Int(point.y)) + Int(point.x)) * 4
        let red: CGFloat = CGFloat(data[pixelInfo]) / 255.0
        let green: CGFloat = CGFloat(data[pixelInfo + 1]) / 255.0
        let blue: CGFloat = CGFloat(data[pixelInfo + 2]) / 255.0
        let alpha: CGFloat = CGFloat(data[pixelInfo + 3]) / 255.0
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
}

