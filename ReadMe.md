# Demo SwiftUI project


## Some notes

Add modifiers to images like this:

```swift
Image(imageName)
                    .resizable()//to resize the Image so that it fits into the it frame without distorting dimensions of the original image file.
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 150)//is used to limit the dimensions (the "size") of the corresponding view.
                    .clipped() //cuts out the areas of the view that exceeds the specified frame.
                    .cornerRadius(20.0)

```

