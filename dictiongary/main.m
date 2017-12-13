//
//  main.m
//  dictiongary
//
//  Created by 玄博屹 on 2017/12/13.
//  Copyright © 2017年 玄博屹. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       NSDictionary *dic1 = [[NSDictionary alloc]init];
        NSDictionary *dic2 = [[NSDictionary alloc]initWithObjectsAndKeys:@"2.5",@"apple",@"2.2",@"orange", nil];
        NSDictionary *dic3 = @{@"1.64":@"beijing",@"1.28":@"tianjin"};
       // NSLog(@"%@ %@ %@",dic1,dic2,dic3);
        NSString *str1 = [dic2 valueForKey:@"apple"];
        NSLog(@"str1=%@",str1);
        NSArray *array1 = [dic2 allKeys];
        NSArray *array2 = [dic2 allValues];
       // NSLog(@"%@ %@",array1,array2);
        
        for (int i = 0 ; i < array1.count; i++ ) {
            NSString *item = [dic2 valueForKey:[array1 objectAtIndex:i]];
           // NSLog(@"item=%@",item);
        }
        for (NSString *item2 in dic2){
         //   NSLog(@"item2=%@",item2);
        }
        NSArray *array3=@[@"abc",@"123"];
        NSDictionary *dic4 = [[NSDictionary alloc]initWithObjectsAndKeys:@"value1",@"keya",@"value2",@"keyb",@"array3",@"keyd", nil];
        NSLog(@"dic4=%@",dic4);
        for (int i =0; i < [dic4 allKeys].count; i++) {
           id item = [dic4 valueForKey:[[dic4 allKeys]objectAtIndex:i]];
            NSLog(@"item=%@",item);
        }
        
        
    }
    return 0;
}
