//
//  UserDetailViewController.swift
//  Habits
//
//  Created by elliott on 8/9/22.
//

import UIKit

class UserDetailViewController: UIViewController {

    var user: User!
    typealias DataSourceType = UICollectionViewDiffableDataSource<ViewModel.Section, ViewModel.Item>
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameLabel.text = user.name
        bioLabel.text = user.bio

    }
    
    init?(coder: NSCoder, user: User) {
        self.user = user
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    enum ViewModel {
        enum Section: Hashable, Comparable {
            case leading
            case category(_ category: Category)
            
            static func < (lhs: Section, rhs: Section) -> Bool {
                switch (lhs, rhs) {
                case (.leading, .category), (.leading, .leading):
                    return true
                case (.category, .leading):
                    return false
                case (category(let category1), category(let category2)):
                    return category1.name > category2.name
                }
            }
        }
        
        typealias Item = HabitCount
    }
    
    struct Model {
        var userStats: UserStatistics?
        var leadingStats: UserStatistics?
    }
    
    var dataSource: DataSourceType!
    var model = Model()
    
    func update() {
        UserStatisticsRequest(userIDs: [user.id]).send { result in
            switch result {
            case .success(let userStats):
                self.model.userStats = userStats[0]
            case .failure:
                self.model.userStats = nil
            }
            
            DispatchQueue.main.async {
                
            }
        }
    }
    
    
}
