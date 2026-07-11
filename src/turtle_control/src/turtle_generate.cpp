#include "ros/ros.h"
#include "turtlesim/Spawn.h"

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "turtle_generate_node");
    ros::NodeHandle nh;
    ros::ServiceClient client = nh.serviceClient<turtlesim::Spawn>("spawn");
    turtlesim::Spawn spawn;
    spawn.request.x = 1;
    spawn.request.y = 2;
    spawn.request.theta = 0;
    spawn.request.name = "xiaowugui";

    client.waitForExistence();
    bool flag = client.call(spawn);
    if(flag) {
        ROS_INFO("new turtle success");
    } else {
        ROS_INFO("turtle fail");
    }

    return 0;
}
