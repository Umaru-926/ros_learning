#include "ros/ros.h"
#include "api_test/hello.h"


namespace hello_ns {
    void MyHello::run() {
        ROS_INFO("hello, hello, hello");
    }
}

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "test_head");
    hello_ns::MyHello myhello;
    myhello.run();
    return 0;
}


// # 1. 找到 ROS 依赖（必须包含 roscpp）
// find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs ...)

// # 2. 包含头文件目录
// include_directories(${catkin_INCLUDE_DIRS})

// # 3. 创建可执行文件
// add_executable(hello src/hello.cpp)

// # 4. 添加消息生成依赖（如果有自定义消息）
// add_dependencies(hello ${catkin_EXPORTED_TARGETS})

// # 5. 链接 ROS 库 ← 你缺的就是这一步！
// target_link_libraries(hello ${catkin_LIBRARIES})

