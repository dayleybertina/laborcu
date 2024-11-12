import SwiftUI

struct ContentView: View {
    var isLoggedIn: Bool = true

    var body: some View {
        VStack {
            Text("Welcome to My App")
            // Using @ViewBuilder to conditionally display views
            @ViewBuilder
            {
                if isLoggedIn {
                    buildEither(first: Text("You are logged in"))
                } else {
                    buildEither(second: Text("Please log in"))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
