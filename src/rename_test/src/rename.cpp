#include "ros/ros.h"
#include "std_msgs/String.h"

int main(int argc, char **argv)
{
    ros::init(argc, argv, "rename_node");
    // ros::NodeHandle nh;
    // 全局
    // ros::Publisher pub = nh.advertise<std_msgs::String>("/chatter", 10);

    // 相对
    // ros::Publisher pub = nh.advertise<std_msgs::String>("chatter", 10);

    // 私有
    ros::NodeHandle n2("~");
    ros::Publisher pub = n2.advertise<std_msgs::String>("chatter", 10);
    

    while (ros::ok())
    {
        std_msgs::String msg;
        msg.data = "Hello, World!";
        pub.publish(msg);
        ros::spinOnce();
    }
    return 0;
}
