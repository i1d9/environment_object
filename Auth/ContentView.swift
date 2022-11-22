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
            Text("Authenticated")
        }else{
            Text("Not Authencticated")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(Authenticated())
    }
}
