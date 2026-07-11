#include "ros/ros.h"
#include "geometry_msgs/Twist.h"

using namespace std;

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "turtle_control");
    ros::NodeHandle nh;
    ros::Publisher pub = nh.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 10);

    ros::Rate rate(1);

    geometry_msgs::Twist twist;
    twist.linear.x = 1;
    twist.angular.z = 1;

    while(ros::ok())
    {
        pub.publish(twist);
        rate.sleep();
    }
    
    return 0;
}
