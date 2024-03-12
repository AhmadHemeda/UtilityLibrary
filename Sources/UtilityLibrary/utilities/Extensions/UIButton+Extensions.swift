import UIKit

public extension UIButton {
    
    // MARK: - Title
    
    func setCustomTitle(_ title: String?, for state: UIControl.State) {
        setTitle(title, for: state)
    }
    
    func customTitle(for state: UIControl.State) -> String? {
        title(for: state)
    }
    
    // MARK: - Title Font
    
    func setTitleFont(_ font: UIFont?, for state: UIControl.State) {
        titleLabel?.font = font
    }
    
    func titleFont(for state: UIControl.State) -> UIFont? {
        titleLabel?.font
    }
    
    // MARK: - Attributed Title
    
    func setCustomAttributedTitle(_ title: NSAttributedString?, for state: UIControl.State) {
        setAttributedTitle(title, for: state)
    }
    
    func customAttributedTitle(for state: UIControl.State) -> NSAttributedString? {
        attributedTitle(for: state)
    }
    
    // MARK: - Title Color
    
    func setCustomTitleColor(_ color: UIColor?, for state: UIControl.State) {
        setTitleColor(color, for: state)
    }
    
    func customTitleColor(for state: UIControl.State) -> UIColor? {
        titleColor(for: state)
    }
    
    // MARK: - Title Shadow Color
    
    func setCustomTitleShadowColor(_ color: UIColor?, for state: UIControl.State) {
        setTitleShadowColor(color, for: state)
    }
    
    func customTitleShadowColor(for state: UIControl.State) -> UIColor? {
        titleShadowColor(for: state)
    }
    
    // MARK: - Corner Radius
    
    func setCornerRadius(_ radius: CGFloat) {
        layer.cornerRadius = radius
        clipsToBounds = true
    }
    
    func cornerRadius() -> CGFloat {
        layer.cornerRadius
    }
    
    // MARK: - Border Color
    
    func setBorderColor(_ color: UIColor?, width: CGFloat) {
        layer.borderColor = color?.cgColor
        layer.borderWidth = width
    }
    
    func borderColor() -> UIColor? {
        layer.borderColor != nil ? UIColor(cgColor: layer.borderColor!) : nil
    }
    
    func setBorderWidth(_ width: CGFloat) {
        layer.borderWidth = width
    }
    
    func borderWidth() -> CGFloat {
        layer.borderWidth
    }
    
    // MARK: - Shadow
    
    func setShadow(color: UIColor?, opacity: Float, offset: CGSize, radius: CGFloat) {
        layer.shadowColor = color?.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = offset
        layer.shadowRadius = radius
    }
    
    func shadowColor() -> UIColor? {
        layer.shadowColor != nil ? UIColor(cgColor: layer.shadowColor!) : nil
    }
    
    func setShadowOpacity(_ opacity: Float) {
        layer.shadowOpacity = opacity
    }
    
    func shadowOpacity() -> Float {
        layer.shadowOpacity
    }
    
    func setShadowOffset(_ offset: CGSize) {
        layer.shadowOffset = offset
    }
    
    func shadowOffset() -> CGSize {
        layer.shadowOffset
    }
    
    func setShadowRadius(_ radius: CGFloat) {
        layer.shadowRadius = radius
    }
    
    func shadowRadius() -> CGFloat {
        layer.shadowRadius
    }
}
