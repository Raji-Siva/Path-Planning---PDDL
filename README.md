This repo consists of a path planning algorithm implementation using PDDL to make a robot pick and place books of different sizes.
The robot is simulated in Gazebo. The communication between the scripts and robot is through ROS. 
The domain.pddl consists of the path plan
The refinement.py generates the actions from the path planned using pddl and communicates it to the bot.
