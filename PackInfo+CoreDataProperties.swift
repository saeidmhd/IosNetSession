//
//  PackInfo+CoreDataProperties.swift
//  NetworkSessionSample
//
//  Created by Saeid.mhd@gmail on 5/16/17.
//  Copyright © 2017 Saeid mohammadi. All rights reserved.
//

import Foundation
import CoreData
import 

extension PackInfo {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PackInfo> {
        return NSFetchRequest<PackInfo>(entityName: "PackInfoDB");
    }

    @NSManaged public var packageNo: Int32
    @NSManaged public var appId: Int32
    @NSManaged public var appName: String?
    @NSManaged public var user: UserInfo?

}
