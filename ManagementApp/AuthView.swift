//
//  AuthView.swift.swift
//  ManagementApp
//
//  Created by Aleksander Gajewski on 07/07/2024.
//

import SwiftUI

struct AuthView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isRegistering = false
    @State private var isResettingPassword = false

    var body: some View {
        VStack {
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            if isRegistering {
                Button("Register") {
                    // Handle registration
                }
                .padding()
            } else if isResettingPassword {
                Button("Reset Password") {
                    // Handle password reset
                }
                .padding()
            } else {
                Button("Login") {
                    // Handle login
                }
                .padding()
            }

            Button(isRegistering ? "Already have an account? Login" : "Don't have an account? Register") {
                isRegistering.toggle()
            }
            .padding()

            if !isRegistering {
                Button("Forgot Password?") {
                    isResettingPassword.toggle()
                }
                .padding()
            }
        }
        .padding()
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
