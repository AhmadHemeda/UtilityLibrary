import UIKit

public extension UIView {
    
    // MARK: - Frame
    
    func setCustomFrame(_ frame: CGRect) {
        self.frame = frame
    }
    
    func customFrame() -> CGRect {
        return frame
    }
    
    // MARK: - Background Color
    
    func setCustomBackgroundColor(_ color: UIColor?) {
        backgroundColor = color
    }
    
    func customBackgroundColor() -> UIColor? {
        return backgroundColor
    }
    
    // MARK: - Alpha
    
    func setCustomAlpha(_ alpha: CGFloat) {
        self.alpha = alpha
    }
    
    func customAlpha() -> CGFloat {
        return alpha
    }
    
    // MARK: - Corner Radius
    
    func setCustomCornerRadius(_ radius: CGFloat) {
        layer.cornerRadius = radius
        clipsToBounds = true
    }
    
    func customCornerRadius() -> CGFloat {
        return layer.cornerRadius
    }
    
    // MARK: - Border
    
    func setCustomBorder(_ color: UIColor?, width: CGFloat) {
        layer.borderColor = color?.cgColor
        layer.borderWidth = width
    }
    
    func customBorderColor() -> UIColor? {
        return layer.borderColor != nil ? UIColor(cgColor: layer.borderColor!) : nil
    }
    
    func customBorderWidth() -> CGFloat {
        return layer.borderWidth
    }
    
    // MARK: - Shadow
    
    func setCustomShadow(color: UIColor?, opacity: Float, offset: CGSize, radius: CGFloat) {
        layer.shadowColor = color?.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = offset
        layer.shadowRadius = radius
    }
    
    func customShadowColor() -> UIColor? {
        return layer.shadowColor != nil ? UIColor(cgColor: layer.shadowColor!) : nil
    }
    
    func customShadowOpacity() -> Float {
        return layer.shadowOpacity
    }
    
    func customShadowOffset() -> CGSize {
        return layer.shadowOffset
    }
    
    func customShadowRadius() -> CGFloat {
        return layer.shadowRadius
    }
}
