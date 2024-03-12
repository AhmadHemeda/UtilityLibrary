import UIKit

public extension UILabel {
    
    // MARK: - Text
    
    func setCustomText(_ text: String?) {
        self.text = text
    }
    
    func customText() -> String? {
        return text
    }
    
    // MARK: - Text Color
    
    func setCustomTextColor(_ color: UIColor?) {
        textColor = color
    }
    
    func customTextColor() -> UIColor? {
        return textColor
    }
    
    // MARK: - Font
    
    func setCustomFont(_ font: UIFont?) {
        self.font = font
    }
    
    func customFont() -> UIFont? {
        return font
    }
    
    // MARK: - Attributed Text
    
    func setCustomAttributedText(_ attributedText: NSAttributedString?) {
        self.attributedText = attributedText
    }
    
    func customAttributedText() -> NSAttributedString? {
        return attributedText
    }
    
    // MARK: - Text Alignment
    
    func setCustomTextAlignment(_ alignment: NSTextAlignment) {
        textAlignment = alignment
    }
    
    func customTextAlignment() -> NSTextAlignment {
        return textAlignment
    }
    
    // MARK: - Number of Lines
    
    func setCustomNumberOfLines(_ numberOfLines: Int) {
        self.numberOfLines = numberOfLines
    }
    
    func customNumberOfLines() -> Int {
        return numberOfLines
    }
    
    // MARK: - Line Break Mode
    
    func setCustomLineBreakMode(_ lineBreakMode: NSLineBreakMode) {
        self.lineBreakMode = lineBreakMode
    }
    
    func customLineBreakMode() -> NSLineBreakMode {
        return lineBreakMode
    }
    
    // MARK: - Shadow
    
    func setShadow(color: UIColor?, opacity: Float, offset: CGSize, radius: CGFloat) {
        layer.shadowColor = color?.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = offset
        layer.shadowRadius = radius
    }
    
    func shadowColor() -> UIColor? {
        return layer.shadowColor != nil ? UIColor(cgColor: layer.shadowColor!) : nil
    }
    
    func setShadowOpacity(_ opacity: Float) {
        layer.shadowOpacity = opacity
    }
    
    func shadowOpacity() -> Float {
        return layer.shadowOpacity
    }
    
    func setShadowOffset(_ offset: CGSize) {
        layer.shadowOffset = offset
    }
    
    func shadowOffset() -> CGSize {
        return layer.shadowOffset
    }
    
    func setShadowRadius(_ radius: CGFloat) {
        layer.shadowRadius = radius
    }
    
    func shadowRadius() -> CGFloat {
        return layer.shadowRadius
    }
}
