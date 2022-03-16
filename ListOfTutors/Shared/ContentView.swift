
import SwiftUI

struct ContentView: View {
    var tutors: [Tutor] = []
    var body: some View {
        NavigationView{
            List(tutors) { tutor in
               TutorCell(tutor: tutor)
            } .navigationBarTitle(Text("Tutors"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(tutors: testData)
    }
}

struct TutorCell: View {
    let tutor: Tutor
    var body: some View {
        return NavigationLink(destination: TutorInfo(name: tutor.name, headline: tutor.headline, bio: tutor.bio)){
            Image(tutor.imageName)
                .cornerRadius(40)
            VStack(alignment: .leading) {
                Text(tutor.name)
                    .padding()
                Text(tutor.headline)
                    .font(.callout)
                    .foregroundColor(Color.gray)
            }
        }
    }
}
