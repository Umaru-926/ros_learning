#include "ros/ros.h"

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "turtle_back_c");
    // ros::param::set("/turtlesim/background_r", 69);
    // ros::param::set("/turtlesim/background_g", 86);
    // ros::param::set("/turtlesim/background_b", 255);
    ros::param::set("/turtlesim/background_r", 100);
    ros::param::set("/turtlesim/background_g", 100);
    ros::param::set("/turtlesim/background_b", 100);
    return 0;
}
