import rospy
from turtlesim.srv import Spawn, SpawnRequest, SpawnResponse

if __name__ == "__main__":
    rospy.init_node("turtle_generate_py")

    client = rospy.ServiceProxy("spawn", Spawn)
    client.wait_for_service()
    spawn = SpawnRequest()
    spawn.x = 1
    spawn.y = 5
    spawn.theta = 3.14
    spawn.name = "xiaoguigui"
    try:
        response = client.call(spawn)
        rospy.loginfo("%s", response.name)
    except Exception as e:
        rospy.loginfo("%s", e)
    
