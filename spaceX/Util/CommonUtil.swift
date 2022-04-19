//
//  CommonUtil.swift
//  spaceX
//
//  Created by Yarkın Gazibaba on 7.01.2022.
//

import Foundation


public class CommonUtil {
    
   static func customizedFormating(str: String) -> String {
       var counter = 0
       var newStr = ""
       
        for i in str  {
            newStr.append(i)
               counter += 1
               if counter == 10 {
                   break
               }
           }
        return newStr
       }
    
    

    
    
    
    


}

