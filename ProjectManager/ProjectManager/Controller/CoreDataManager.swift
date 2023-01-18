//
//  CoreDataManager.swift
//  ProjectManager
//
//  Created by 임지연 on 2023/01/17.
//

import Foundation
import CoreData

struct CoreDataManager {
    
    //Create - 할일Item을 생성하고, state값은 TODO로 추가
    func create(item: Item) {
        
    }
    
    //Read - 할 일 목록 반환
    //모델에 있는 값 전체를 가져와서 state값에 따라 세가지 테이블에 나눠보여준다.
    func fetch() -> [Item] {
        
        return []
    }
    
    //Update - 수정내용 반영
    //수정항목만 다시 저장, fetchItems() 호출하여 갱신된 목록으로 업데이트한다.
    func update(item: Item) {
        
    }
    
    //Delete - 할 일 목록 중 Item 한 개 삭제
    func delete(item: Item) {
        
    }
}
