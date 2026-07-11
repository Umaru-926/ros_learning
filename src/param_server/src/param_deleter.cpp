#include"ros/ros.h"
#include<string>
using namespace std;

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "param_del");
    ros::NodeHandle nh;
    bool res;
    // bool res = nh.deleteParam("name");
    // if(res){
    //     ROS_INFO("delete success");
    // } else {
    //     ROS_INFO("delete fail");
    // }

    res = ros::param::del("name");
    if(res){
        ROS_INFO("delete success");
    } else {
        ROS_INFO("delete fail");
    }
    return 0;
}

