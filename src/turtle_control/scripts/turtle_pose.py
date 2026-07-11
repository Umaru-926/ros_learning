import rospy

from turtlesim.msg import Pose


def get_pose(pos):
    rospy.loginfo(f"x= %f y= %f theta= %f", pos.x, pos.y, pos.theta)

if __name__ == "__main__":
    rospy.init_node("turtle_pose_py")
    rospy.Subscriber("/turtle1/pose", Pose, get_pose, queue_size=10)

    rospy.spin()