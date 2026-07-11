#include<ros/ros.h>

int main(int argc, char* argv[])
{
    ros::init(argc, argv, "set_param");
    ros::NodeHandle nh;
    nh.setParam("name", "xiaoming");
    ros::param::set("name", "xiaohong");
    return 0;
}