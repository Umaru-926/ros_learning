#include"ros/ros.h"
#include"std_msgs/String.h"
#include<sstream>
#include"pub_and_sub/Person.h"
void revMsg(const pub_and_sub::Person::ConstPtr &msg_ptr)
{
    ROS_INFO("接收：%s %d %.2f", msg_ptr->name.c_str(), msg_ptr->age, msg_ptr->height);
}

int main(int argc, char *argv[])
{
    setlocale(LC_ALL,"");
    ros::init(argc, argv, "subscribe");
    ros::NodeHandle handle;
    ros::Subscriber sub = handle.subscribe("pub_theme", 10, revMsg);

    ros::spin();
    return 0; 
}