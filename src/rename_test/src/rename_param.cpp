#include "ros/ros.h"

int main(int argc, char **argv)
{
    ros::init(argc, argv, "rename_param");
    ros::NodeHandle nh;
    ros::param::set("new_nam", 1);
    ros::param::set("/new_nam_pub", 2);
    ros::param::set("~new_nam_pri", 3);


    nh.setParam("nh_param", 11);
    nh.setParam("/nh_param_pub", 12);
    // nh.setParam("/nh_param_pri", 12);

    ros::NodeHandle nh_pri("~");
    nh_pri.setParam("nh_pri_param_pri", 13);

    ros::spin();
    return 0;
}
