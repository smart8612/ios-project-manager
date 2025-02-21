//
//  RepositoryDataSource.swift
//  ProjectManager
//
//  Created by JeongTaek Han on 2022/03/15.
//

import Foundation

protocol RepositoryDataSource: AnyObject {
    
    associatedtype Element
    
    var queryAllRecords: [Element] { get }
    
    func create(_ object: Element) throws
    func delete(_ object: Element) throws
    func update(_ object: Element) throws
    func removeAllRecords() throws
    
}
