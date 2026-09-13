#include "ros/ros.h"
#include "tf2_ros/static_transform_broadcaster.h"
#include "geometry_msgs/TransformStamped.h"
#include "tf2/LinearMath/Quaternion.h"

int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "");
    ros::init(argc, argv, "tf2_pub_demo_node");
    ros::NodeHandle nh;

    tf2_ros::StaticTransformBroadcaster tf_broadcaster;
    geometry_msgs::TransformStamped transformStamped;
    transformStamped.header.stamp = ros::Time::now();
    
    transformStamped.header.frame_id = "base_link";
    transformStamped.child_frame_id = "lidar";

    transformStamped.transform.translation.x = 0.2;
    transformStamped.transform.translation.y = 0.0;
    transformStamped.transform.translation.z = 0.5;
    
    tf2::Quaternion q;
    q.setRPY(0, 0, 0);
    transformStamped.transform.rotation.x = q.getX();
    transformStamped.transform.rotation.y = q.getY();
    transformStamped.transform.rotation.z = q.getZ();
    transformStamped.transform.rotation.w = q.getW();

    tf_broadcaster.sendTransform(transformStamped);

    ros::spin();

    return 0;
}
