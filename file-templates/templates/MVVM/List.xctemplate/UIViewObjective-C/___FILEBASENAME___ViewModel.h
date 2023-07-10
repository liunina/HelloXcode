//___FILEHEADER___
//  Summary: ___VARIABLE_Summary___

___IMPORTHEADER_cocoaTouchSubclass___

NS_ASSUME_NONNULL_BEGIN


/// 列表数据源
@protocol ___VARIABLE_productName:identifier___ViewModelDatasource <NSObject>
 
- (NSInteger)numberOfSections;
 
- (NSInteger)numberOfRowsInSection:(NSInteger)section;

- (id)itemForRowAtIndexPath:(NSIndexPath *)indexPath;

@end

// @class <#type#>;
@interface ___VARIABLE_productName:identifier___ViewModel : NSObject

/// 通过模型视图模型构建
/// - Parameter model: <#model description#>
- (instancetype)initWithModel:(NSObject *)model;
@end

NS_ASSUME_NONNULL_END
