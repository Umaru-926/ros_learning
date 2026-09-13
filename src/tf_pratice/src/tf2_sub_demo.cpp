#include "ros/ros.h"
#include "tf2_ros/transform_listener.h"
#include "tf2_ros/buffer.h"
#include "geometry_msgs/PointStamped.h"
#include "tf2_geometry_msgs/tf2_geometry_msgs.h"

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "tf2_sub_demo_node");
    ros::NodeHandle nh;

    tf2_ros::Buffer buffer;
    tf2_ros::TransformListener tf_listener(buffer);

    geometry_msgs::PointStamped point;
    point.header.stamp = ros::Time::now();
    point.header.frame_id = "lidar";
    point.point.x = 2.0;
    point.point.y = 0.0;
    point.point.z = 5.0;

    ros::Rate rate(1);
    // ros::Duration(2).sleep();
    while (ros::ok())
    {
        geometry_msgs::PointStamped point_out;
        try
        {
            point_out = buffer.transform(point, "base_link");

            ROS_INFO("point is (%.2f, %.2f, %.2f), base: %s", 
                        point_out.point.x, 
                        point_out.point.y, 
                        point_out.point.z,
                        point_out.header.frame_id.c_str()
                    );
        }
        catch(const std::exception& e)
        {
            // std::cerr << e.what() << '\n';
            ROS_INFO("Exception: %s", e.what());
        }
        rate.sleep();
        ros::spinOnce();
    }
    return 0;
}
