#include "ros/ros.h"
#include "api_test/hello.h"

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "test_head");
    hello_ns::MyHello myhello;
    myhello.run();
    return 0;
}