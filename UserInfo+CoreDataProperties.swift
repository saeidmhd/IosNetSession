//
//  UserInfo+CoreDataProperties.swift
//  NetworkSessionSample
//
//  Created by Saeid.mhd@gmail on 5/16/17.
//  Copyright © 2017 Saeid mohammadi. All rights reserved.
//

import Foundation
import CoreData
import 

extension UserInfo {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<UserInfo> {
        return NSFetchRequest<UserInfo>(entityName: "UserInfoDB");
    }

    @NSManaged public var addressID: Int32
    @NSManaged public var addressDetail: String?
    @NSManaged public var userId: String?
    @NSManaged public var propertyNames: String?
    @NSManaged public var propertyValuesString: String?
    @NSManaged public var propertyValuesBinary: String?
    @NSManaged public var lastUpdatedDate: String?
    @NSManaged public var lastName: String?
    @NSManaged public var firstName: String?
    @NSManaged public var packages: NSSet?

}

// MARK: Generated accessors for packages
extension UserInfo {

    @objc(addPackagesObject:)
    @NSManaged public func addToPackages(_ value: PackInfo)

    @objc(removePackagesObject:)
    @NSManaged public func removeFromPackages(_ value: PackInfo)

    @objc(addPackages:)
    @NSManaged public func addToPackages(_ values: NSSet)

    @objc(removePackages:)
    @NSManaged public func removeFromPackages(_ values: NSSet)

}
