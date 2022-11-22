//

//  Auth
//
//  Created by Ian Nalyanya on 17/11/2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var auth: Authenticated
  
    
    var body: some View {
        if(auth.isAuthenticated){
            VStack {
                Text(" Authencticated")
                Button(action: {
                    auth.isAuthenticated = false
                }){
                    Text("Log out")
               
                }
            }
        }else{
            VStack {
                Text("Not Authencticated")
                Button(action: {
                    auth.isAuthenticated = true
                }){
                    Text("Login")
               
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(Authenticated())
    }
}
