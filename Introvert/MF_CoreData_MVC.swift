//
//  MFForMainViewController.swift
//  Introvert
//
//  Created by 张高歌 on 15/12/6.
//  Copyright © 2015年 weIntroverts. All rights reserved.
//

import UIKit
import CoreData

//载入fetchedResultsController
extension MainViewController {
    func loadFetchedResultsController(WithContext context: NSManagedObjectContext) -> NSFetchedResultsController<NSFetchRequestResult> {
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "CDQuestion")
        let sortDescriptor = NSSortDescriptor(key: "metaTime", ascending: false)
        fetchRequest.sortDescriptors = [sortDescriptor]
        
        let fetchedResultsController = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: context, sectionNameKeyPath: nil, cacheName: nil)
        
        try! fetchedResultsController.performFetch()
        
        return fetchedResultsController
    }
}

extension MainViewController: NSFetchedResultsControllerDelegate {
    func controllerWillChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        tableView.beginUpdates()
    }
    func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>,
        didChange anObject: Any,
        at indexPath: IndexPath?,
        for type: NSFetchedResultsChangeType,
        newIndexPath: IndexPath?) {
            
            switch type {
            case .insert:
                tableView.insertRows(at: [newIndexPath!],
                    with: .automatic)
            case .delete:
                tableView.deleteRows(at: [indexPath!],
                    with: .automatic)
            case .move:
                tableView.deleteRows(at: [indexPath!],
                    with: .automatic)
                tableView.insertRows(at: [newIndexPath!],
                    with: .automatic)
            default:break
            }
    }
    
    func controllerDidChangeContent(_ controller:
        NSFetchedResultsController<NSFetchRequestResult>) {
            tableView.endUpdates()
    }
    
    func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>,
        didChange sectionInfo: NSFetchedResultsSectionInfo,
        atSectionIndex sectionIndex: Int,
        for type: NSFetchedResultsChangeType) {
            
            let indexSet = IndexSet(integer: sectionIndex)
            
            switch type {
            case .insert:
                tableView.insertSections(indexSet,
                    with: .automatic)
            case .delete:
                tableView.deleteSections(indexSet,
                    with: .automatic)
            default :
                break
            }
    }

}
