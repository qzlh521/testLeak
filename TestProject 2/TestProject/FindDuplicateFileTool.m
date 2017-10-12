//
//  FindDuplicateFileTool.m
//  TestProject
//
//  Created by Lijing on 2017/6/23.
//  Copyright © 2017年 TOON. All rights reserved.
//

#import "FindDuplicateFileTool.h"

@implementation FindDuplicateFileTool

-(void)find{
    
    NSString *str = @"PBXFileReference -- /mainGroup/children/children:displayName:libIQKeyboardManager-iOS8.0.a,explicitFileType:archive.ar,includeInIndex:0,isa:PBXFileReference,name:libIQKeyboardManager-iOS8.0.a,path:libIQKeyboardManager-iOS8.0.a,sourceTree:BUILT_PRODUCTS_DIR,,displayName:libIQKeyboardManager-iOS8.3.a,explicitFileType:archive.ar,includeInIndex:0,isa:PBXFileReference,name:libIQKeyboardManager-iOS8.3.a,path:libIQKeyboardManager-iOS8.3.a,sourceTree:BUILT_PRODUCTS_DIR,,displayName:libJSONKit-NoWarning-iOS8.0.a,explicitFileType:archive.ar,includeInIndex:0,isa:PBXFileReference,name:libJSONKit-NoWarning-iOS8.0.a,path:libJSONKit-NoWarning-iOS8.0.a,sourceTree:BUILT_PRODUCTS_DIR,,displayName:libJSONKit-NoWarning-iOS8.3.a,explicitFileType:archive.ar,includeInIndex:0,isa:PBXFileReference,name:libJSONKit-NoWarning-iOS8.3.a,path:libJSONKit-NoWarning-iOS8.3.a,sourceTree:BUILT_PRODUCTS_DIR,,displayName:libMasonry-iOS8.0.a,explicitFileType:archive.ar,includeInIndex:0,isa:PBXFileReference,name:libMasonry-iOS8.0.a,path:libMasonry-iOS8.0.a,sourceTree:BUILT_PRODUCTS_DIR,,displayName:libMasonry-iOS8.3.a,explicitFileType:archive.ar,includeInIndex:0,isa:PBXFileReference,name:libMasonry-iOS8.3.a,path:libMasonry-iOS8.3.a,sourceTree:BUILT_PRODUCTS_DIR,,displayName:libMJExtension-iOS8.0.a,explicitFileType:archive.ar,includeInIndex:0,isa:PBXFileReference,name:libMJExtension-iOS8.0.a,path:libMJExtension-iOS8.0.a,sourceTree:BUILT_PRODUCTS_DIR,,displayName:libMJExtension-iOS8.3.a,explicitFileType:archive.ar,includeInIndex:0,isa:PBXFileReference,name:libMJExtension-iOS8.3.a,path:libMJExtension-iOS8.3.a,sourceTree:BUILT_PRODUCTS_DIR,,displayName:libObjection-iOS8.0.a,explicitFileType:archive.ar,includeInIndex:0,isa:PBXFileReference,name:libObjection-iOS8.0.a,path:libObjection-iOS8.0.a,sourceTree:BUILT_PRODUCTS_DIR,,displayName:libObjection-iOS8.3.a,explicitFileType:archive.ar,includeInIndex:0,isa:PBXFileReference,name:libObjection-iOS8.3.a,path:libObjection-iOS8.3.a,sourceTree:BUILT_PRODUCTS_DIR,,displayName:libOMGHTTPURLRQ-iOS8.0.a,explicitFileType:archive.ar,includeInIndex:0,isa:PBXFileReference,name:libOMGHTTPURLRQ-iOS8.0.a,path:libOMGHTTPURLRQ-iOS8.0.a,sourceTree:BUILT_PRODUCTS_DIR,,displayName:libOMGHTTPURLRQ-iOS8.3.a,explicitFileType:archive.ar,includeInIndex:0,isa:PBXFileReference,name:libOMGHTTPURLRQ-iOS8.3.a,path:libOMGHTTPURLRQ-iOS8.3.a,sourceTree:BUILT_PRODUCTS_DIR,,displayName:libPods-TNPhotoSelector_Example.a,explicitFileType:archive.ar,includeInIndex:0,isa:PBXFileReference,name:libPods-TNPhotoSelector_Example.a,path:libPods-TNPhotoSelector_Example.a,sourceTree:BUILT_PRODUCTS_DIR,,displayName:libPods-TNPhotoSelector_Tests.a,explicitFileType:archive.ar,includeInIndex:0,isa:PBXFileReference,name:libPods-TNPhotoSelector_Tests.a,path:libPods-TNPhotoSelector_Tests.a,sourceTree:BUILT_PRODUCTS_DIR,,displayName:libPods-TNPhotoSelectorBinary.a,explicitFileType:archive.ar,includeInIndex:0,isa:PBXFileReference,name:libPods-TNPhotoSelectorBinary.a,path:libPods-TNPhotoSelectorBinary.a,sourceTree:BUILT_PRODUCTS_DIR,,displayName:libPromiseKit-iOS8.0.a,explicitFileType:archive.ar,includeInIndex:0,isa:PBXFileReference,name:libPromiseKit-iOS8.0.a,path:libPromiseKit-iOS8.0.a,sourceTree:BUILT_PRODUCTS_DIR,,displayName:libPromiseKit-iOS8.3.a,explicitFileType:archive.ar,includeInIndex:0,isa:PBXFileReference,name:libPromiseKit-iOS8.3.a,path:libPromiseKit-iOS8.3.a,sourceTree:BUILT_PRODUCTS_DIR,,displayName:libSDWebImage-iOS8.0.a,explicitFileType:archive.ar,includeInIndex:0,isa:PBXFileReference,name:libSDWebImage-iOS8.0.a,path:libSDWebImage-iOS8.0.a,sourceTree:BUILT_PRODUCTS_DIR,,displayName:libSDWebImage-iOS8.3.a,explicitFileType:archive.ar,includeInIndex:0,isa:PBXFileReference,name:libSDWebImage-iOS8.3.a,path:libSDWebImage-iOS8.3.a,sourceTree:BUILT_PRODUCTS_DIR,,displayName:libServiceSLibrary-iOS8.0.a,explicitFileType:archive.ar,includeInIndex:0,isa:PBXFileReference,name:libServiceSLibrary-iOS8.0.a,path:libServiceSLibrary-iOS8.0.a,sourceTree:BUILT_PRODUCTS_DIR,,displayName:libServiceSLibrary-iOS8.3.a,explicitFileType:archive.ar,includeInIndex:0,isa:PBXFileReference,name:libServiceSLibrary-iOS8.3.a,path:libServiceSLibrary-iOS8.3.a,sourceTree:BUILT_PRODUCTS_DIR,,displayName:libTNMBProgressHUD-iOS8.0.a,explicitFileType:archive.ar,includeInIndex:0,isa:PBXFileReference,name:libTNMBProgressHUD-iOS8.0.a,path:libTNMBProgressHUD-iOS8.0.a,sourceTree:BUILT_PRODUCTS_DIR,,displayName:libTNMBProgressHUD-iOS8.3.a,explicitFileType:archive.ar,includeInIndex:0,isa:PBXFileReference,name:libTNMBProgressHUD-iOS8.3.a,path:libTNMBProgressHUD-iOS8.3.a,sourceTree:BUILT_PRODUCTS_DIR,,displayName:libTNTheme-iOS8.0.a,explicitFileType:archive.ar,includeInIndex:0,isa:PBXFileReference,name:libTNTheme-iOS8.0.a,path:libTNTheme-iOS8.0.a,sourceTree:BUILT_PRODUCTS_DIR,,displayName:libTNTheme-iOS8.3.a,explicitFileType:archive.ar,includeInIndex:0,isa:PBXFileReference,name:libTNTheme-iOS8.3.a,path:libTNTheme-iOS8.3.a,sourceTree:BUILT_PRODUCTS_DIR,,displayName:libToonCommon-iOS8.0.a,explicitFileType:archive.ar,includeInIndex:0,isa:PBXFileReference,name:libToonCommon-iOS8.0.a,path:libToonCommon-iOS8.0.a,sourceTree:BUILT_PRODUCTS_DIR,,displayName:libToonCommon-iOS8.3.a,explicitFileType:archive.ar,includeInIndex:0,isa:PBXFileReference,name:libToonCommon-iOS8.3.a,path:libToonCommon-iOS8.3.a,sourceTree:BUILT_PRODUCTS_DIR,,displayName:libToonRouter-iOS8.0.a,explicitFileType:archive.ar,includeInIndex:0,isa:PBXFileReference,name:libToonRouter-iOS8.0.a,path:libToonRouter-iOS8.0.a,sourceTree:BUILT_PRODUCTS_DIR,,displayName:libToonRouter-iOS8.3.a,explicitFileType:archive.ar,includeInIndex:0,isa:PBXFileReference,name:libToonRouter-iOS8.3.a,path:libToonRouter-iOS8.3.a,sourceTree:BUILT_PRODUCTS_DIR,,displayName:ToonCommon.bundle,explicitFileType:wrapper.cfbundle,includeInIndex:0,isa:PBXFileReference,name:ToonCommon.bundle,path:ToonCommon.bundle,sourceTree:BUILT_PRODUCTS_DIR,,displayName:ToonCommon.bundle,explicitFileType:wrapper.cfbundle,includeInIndex:0,isa:PBXFileReference,name:ToonCommon.bundle,path:ToonCommon.bundle,sourceTree:BUILT_PRODUCTS_DIR,,displayName:Products,isa:PBXGroup,name:Products,sourceTree:<group>,/Products/children/displayName:ToonCommon.bundle,explicitFileType:wrapper.cfbundle,includeInIndex:0,isa:PBXFileReference,name:ToonCommon.bundle,path:ToonCommon.bundle,sourceTree:BUILT_PRODUCTS_DIR,/Products/ToonCommon.bundle";
    
    
    NSMutableDictionary *fileDic = [NSMutableDictionary dictionary];
    NSArray *items = [str componentsSeparatedByString:@"fileRef:displayName:"];
    for (NSString * item in items) {
        
        if([item hasPrefix:@"|"]){
            continue;
        }
        NSArray *splits = [item componentsSeparatedByString:@","];
        if (splits.count > 0) {
            NSString *name = splits[0];
            [fileDic setObject:item forKey:name];
            
        }
        
    }
    
    NSLog(@"all files: %@", fileDic.allKeys  );

}
@end
