import rospy
import tf2_ros
import tf
from tf2_geometry_msgs import PointStamped


if __name__ == '__main__':
    rospy.init_node('tf2_sub_demo_py')
    buffer = tf2_ros.Buffer()
    listener = tf2_ros.TransformListener(buffer)

    point = PointStamped()
    point.header.stamp = rospy.Time.now()
    point.header.frame_id = "lidar"
    point.point.x = 2.0
    point.point.y = 2.0
    point.point.z = 5.0

    rate = rospy.Rate(1)
    while not rospy.is_shutdown():
        try:
            point_in_base = buffer.transform(point, "base_link")
            rospy.loginfo(f"Point in base_link: {point_in_base.point.x}, {point_in_base.point.y}, {point_in_base.point.z}, timestamp: {point_in_base.header.stamp}")
        except Exception as e:
            rospy.logerr(e)
        rate.sleep()
        # rospy.spin()
