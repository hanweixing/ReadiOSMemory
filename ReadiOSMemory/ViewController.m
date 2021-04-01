//
//  ViewController.m
//  ReadiOSMemory
//
//  Created by 韩卫星 on 2021/4/2.
//

#import "ViewController.h"
#import "ReadMemory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    u_long usedMemory = [ReadMemory getUsedMemory];
    u_long freeMemory = [ReadMemory getFreeMemory];
    
    NSLog(@"Memory has been used %lu", usedMemory);
    NSLog(@"Memory has been left %lu", freeMemory);
}


@end
