

import SwiftUI

struct TutorInfo: View {
    var name: String
    var headline: String
    var bio: String
    var body: some View {
        VStack {
            VStack {
                Image(name)
                    .clipShape(Circle())
                         .overlay(
                             Circle().stroke(Color.yellow, lineWidth: 4)
                         )
                         .shadow(radius: 10)
                     Text(name)
                         .font(.title)
                    Text(headline)
                         .font(.subheadline)
                     Divider()
          
                     Text(bio)
                         .font(.headline)
                         .multilineTextAlignment(.center)
                         .lineLimit(50)
            }.padding().navigationBarTitle(Text(name), displayMode: .inline)
        }
    }


struct TutorInfo_Previews: PreviewProvider {
    static var previews: some View {
        TutorInfo(name: "Simon Ng", headline: "Founder of AppCoda", bio: "Founder of AppCoda. Author of multiple iOS programming books including Beginning iOS 12 Programming with Swift and Intermediate iOS 12 Programming with Swift. iOS Developer and Blogger.")
    }
}
}
