//
//  ReadMemory.m
//  ReadiOSMemory
//
//  Created by 韩卫星 on 2021/4/2.
//

#import "ReadMemory.h"

# import <mach/mach.h>

vm_size_t getUsedMemory() {
    task_basic_info_data_t info;
    mach_msg_type_number_t size = sizeof(info);
    kern_return_t kerr = task_info(mach_task_self(), TASK_BASIC_INFO, (task_info_t) &info, &size);
    if (kerr == KERN_SUCCESS) {
        return info.resident_size;
    } else {
        return 0;
    }
}

vm_size_t getFreeMemory() {
    mach_port_t host = mach_host_self();
    mach_msg_type_number_t size = sizeof(vm_statistics_data_t) / sizeof(integer_t);
    vm_size_t pageSize;
    vm_statistics_data_t vmstat;
    
    host_page_size(host, &pageSize);
    host_statistics(host, HOST_VM_INFO, (host_info_t) &vmstat, &size);
    
    return vmstat.free_count * pageSize;
}

@implementation ReadMemory

+ (u_long)getUsedMemory {
    return getUsedMemory();
}

+ (u_long)getFreeMemory {
    return getFreeMemory();
}

@end
