//
//  UserProfileView.swift
//  ManagementApp
//
//  Created by Aleksander Gajewski on 07/07/2024.
//

import SwiftUI

struct UserProfileView: View {
    @State private var username = "JohnDoe"
    @State private var email = "john@example.com"
    @State private var preferredGrowType = "Indoor"
    @State private var preferredStrain = "Indica"
    @State private var notificationsEnabled = true

    var body: some View {
        VStack(alignment: .leading) {
            Text("Profile")
                .font(.largeTitle)
                .padding()

            HStack {
                Text("Username:")
                TextField("Username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }.padding()

            HStack {
                Text("Email:")
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }.padding()

            HStack {
                Text("Preferred Grow Type:")
                TextField("Preferred Grow Type", text: $preferredGrowType)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }.padding()

            HStack {
                Text("Preferred Strain:")
                TextField("Preferred Strain", text: $preferredStrain)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }.padding()

            Toggle(isOn: $notificationsEnabled) {
                Text("Enable Notifications")
            }
            .padding()

            Button("Save Changes") {
                // Handle save changes
            }
            .padding()

            Spacer()
        }
        .padding()
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
