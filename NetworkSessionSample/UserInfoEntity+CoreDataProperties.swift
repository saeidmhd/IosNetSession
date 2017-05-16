//
//  UserInfoEntity+CoreDataProperties.swift
//  NetworkSessionSample
//
//  Created by Saeid.mhd@gmail on 5/16/17.
//  Copyright © 2017 Saeid mohammadi. All rights reserved.
//

import Foundation
import CoreData


extension UserInfoEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<UserInfoEntity> {
        return NSFetchRequest<UserInfoEntity>(entityName: "UserInfoEntity");
    }

    @NSManaged public var firstName: String?

}
