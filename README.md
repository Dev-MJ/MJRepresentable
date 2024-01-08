# MJRepresentable
UIView or UIView Controller created using UIKit can be easily converted into view in SwiftUI.


# Example
```swift
struct ContentView: View {
    var body: some View {
    
        UILabel()
            .set(\.backgroundColor, value: .red)
            .set(\.text, value: "asdfasdf")
            .swiftUIView()
            .fixedSize()
        
        MJViewRepresenter {
            let b = UIButton()
            b.setTitle("asdfasdf", for: .normal)
            b.backgroundColor = .blue
            return b
        }
        .fixedSize()
    }
}
```
