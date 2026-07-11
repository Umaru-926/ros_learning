#include "ros/ros.h"
#include "turtlesim/Pose.h"

void get_pose(const turtlesim::Pose::ConstPtr& pos)
{
    ROS_INFO("x = %f", pos->x);
    ROS_INFO("y = %f", pos->y);
    ROS_INFO("theta = %f", pos->theta);
}

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "turtle_pose");
    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe("/turtle1/pose", 10, get_pose);

    ros::spin();
    return 0;
}
