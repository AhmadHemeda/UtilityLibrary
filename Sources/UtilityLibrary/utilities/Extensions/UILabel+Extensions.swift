import UIKit

public extension UILabel {
    /// Convenience initializer for creating a UILabel with specified text, font, and color.
    ///
    /// - Parameters:
    ///   - text: The text to be displayed.
    ///   - font: The font of the text.
    ///   - color: The color of the text.
    convenience init(text: String, font: UIFont, color: UIColor) {
        self.init()
        self.text = text
        self.font = font
        self.textColor = color
    }

    /// Adds an underline to the label's text.
    func addUnderline() {
        guard let text = self.text else { return }
        let attributedString = NSMutableAttributedString(string: text)
        attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributedString.length))
        self.attributedText = attributedString
    }

    /// Sets the text color for a specified range of the label's text.
    ///
    /// - Parameters:
    ///   - color: The color to set as the text color.
    ///   - range: The range of text to which the color will be applied.
    func setTextColor(_ color: UIColor, forRange range: NSRange) {
        guard let attributedText = self.attributedText else { return }
        let mutableAttributedText = NSMutableAttributedString(attributedString: attributedText)
        mutableAttributedText.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: range)
        self.attributedText = mutableAttributedText
    }

    /// Sets the line spacing for the label's text.
    ///
    /// - Parameter spacing: The line spacing to set.
    func setLineSpacing(_ spacing: CGFloat) {
        guard let text = self.text else { return }
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = spacing
        let attributedString = NSMutableAttributedString(string: text)
        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: attributedString.length))
        self.attributedText = attributedString
    }
}
