import rospy
import tf2_ros
import tf
from geometry_msgs.msg import TransformStamped

if __name__ == '__main__':
    rospy.init_node('tf2_pub_demo_py')
    broadcaster = tf2_ros.StaticTransformBroadcaster()

    transform = TransformStamped()
    transform.header.stamp = rospy.Time.now()
    transform.header.frame_id = "base_link"
    transform.child_frame_id = "lidar"

    transform.transform.translation.x = 0.2
    transform.transform.translation.y = 0.0
    transform.transform.translation.z = 0.5

    qtn = tf.transformations.quaternion_from_euler(0, 0, 0)
    
    transform.transform.rotation.x = qtn[0]
    transform.transform.rotation.y = qtn[1]
    transform.transform.rotation.z = qtn[2]
    transform.transform.rotation.w = qtn[3]


    broadcaster.sendTransform(transform)
    rospy.spin()