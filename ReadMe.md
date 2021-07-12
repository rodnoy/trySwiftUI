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


To format string with float or double value in it, use smth like  that :

```swift
Text("your feedback: \(userFeedback , specifier: "%2.0f")")
```

or

```
Text("\(food.price, specifier: "%2.2f") $")
```


To reduce a space takes by Empty header in Section in Form construction, I've use a dummy header

```swift
(header: Color.clear
                .frame(width: 0, height: 0)
                .accessibilityHidden(true))
``` 
The example of the usage can be found in **OrderForm.swift** file.


## Present views

### Modally
1. We need to open a **sheet** in **presenting** view, like that:

```swift
.sheet(isPresented: $showOrderSheet, content: {
            OrderForm(showOrderSheet: $showOrderSheet)
        })
```

2. We need to toggle **isPresented** binding value from somewhere (another view, or just a button in the same view...), i.e.

```swift
Button(action:{
                showOrderSheet.toggle()
                print("order smth")
            }) {
                    Text("ORDER")        
                }
```

3. We can add a navigation button to the **presented** sheet from example 

```swift
NavigationView {
            Form{...}
            }
            .navigationBarItems(leading:
                                    Button(action: {
                                        showOrderSheet = false
                                    }) {
                                        Text("Cancel")
                                    })       
```

Of course, we have to pass the binded value of `showOrderSheet` to each view that modifies the one.

### Aka Navigation style


## Wrappers

1. `@State` + `@Binding`
2. `ObservableObject` `(@Published)` + `@StateObject`
> In one sentence: Using an `ObservableObjects` observed by using `@StateObject` can become confusing when we work with more complex app hierarchies.

3. `EnvironmentObject`: declaration the same as `ObservableObject` `(@Published)`, `@EnvironmentObject` should be used instead of `@StateObject` in exploiting views.

> NB! **ObservableObject** should be a class

## Buttons

Buttons are not displayed correctly on MacOs target. To elude the problem, `PlainButtonStyle` should be applied.
```swift
Button(action: {
                    print("💶")
                }, label: {
                    Text("Back")
                })
                .buttonStyle(PlainButtonStyle())
```
[^/dev/my/probe-zone/DemoApp]