//
//  PackInfoEntity+CoreDataProperties.swift
//  NetworkSessionSample
//
//  Created by Saeid.mhd@gmail on 5/16/17.
//  Copyright © 2017 Saeid mohammadi. All rights reserved.
//

import Foundation
import CoreData


extension PackInfoEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PackInfoEntity> {
        return NSFetchRequest<PackInfoEntity>(entityName: "PackInfoEntity");
    }

    @NSManaged public var packageNo: Int32

}
