Simulation of communication of multiple agents using Jason
Deniz Rasoulijambori
deniizrasoulii@gmail.com
1. A brief introduction: agents and the way they communicate:
I would like to give an overview of what agents are, why and how they communicate, and the 
role that agent communication plays in many applications before getting into the technical details 
of this report. Furthermore, I will provide a summary of previous experiments conducted in this 
field. This will assist us in gaining a deeper comprehension of related ideas and the factors that 
need to be taken into account when creating an appropriate scenario for agent communication.
1.1.What is an agent?
Agents are independent entities that engage in interactions with both their surroundings and other 
agents in order to accomplish their objectives. They are computational entities that possess 
particular abilities like communication, reasoning, perception, and decision-making.
Essential characteristics of agents consist of:
• Autonomy: Agent autonomy refers to their ability to function autonomously, making 
choices and acting without direct external supervision.
• Reactivity: Agents have the ability to instantly detect and react to changes in their 
surroundings or input from other agents.
• Proactivity: Instead of just responding to changes in their surroundings, agents can take 
proactive steps to accomplish their objectives.
• Sociality: Agents interact with one another through communication in order to coordinate 
actions, negotiate agreements, share goals and plans, and exchange information.
1.2.Social agent:
A social agent, in the context of multi-agent systems, refers to an agent that exhibits social 
behaviors and interacts with other agents within its environment. Social agents are designed to 
simulate aspects of human social interaction and communication, and this enables them to 
collaborate, cooperate, and compete with other agents to achieve their goals.
1.3.agent communication in different applications:
In many applications, agent communication is essential because it allows agents to collaborate, 
coordinate, and share information. In various domains, it operates as follows:
• Healthcare: In order to track medical data, monitor patient health, and organize 
healthcare services, agents in healthcare systems including wearable sensors, medical 
devices, and electronic health records must communicate with one another.
• Robotics: Agents, or robots, in robotic systems communicate with one another to share 
sensor data, cooperate on tasks, and plan movements in common areas. Collaborating on 
complex tasks like swarm robotics applications, warehouse automation, and search and 
rescue missions is made possible by communication between robots.
• Autonomous Vehicles: In order to coordinate movements, prevent collisions, and 
maximize traffic flow, agents in autonomous vehicle systems—vehicles, drones, etc.—
need to communicate with one another. In order to improve situational awareness and 
enable safer driving, communication between vehicles can also make it easier to share 
sensor data (such as lidar, radar, and camera).
2. A Review of Agent Communication Literature and Recent Advancements
Before I put my communication system into action, I would like to review the papers and 
research that have already been done. This will help me grasp the idea and improve my 
understanding of the subject and all of its necessary information.
Multi-agent systems (MAS) rely on agent communication to allow autonomous agents to 
interact, cooperate, and accomplish shared objectives. Considerable effort has been spent in the 
past few years investigating new directions for agent-oriented programming and reconsidering 
the fundamentals of agent communication languages (ACLs). Here, we examine how agent 
communication has evolved, taking cues from important studies and current developments in the 
area.
A key component of multi-agent systems is agent communication, which allows agents to 
communicate, interact, and work together to accomplish shared objectives.
Much work has been done in the past to create strong frameworks and languages that will help 
autonomous agents communicate with each other. Accordingly, the research conducted by 
Bordini et al. (2011), Hübner et al. (2005), and Hübner et al. (2002) has been extremely 
important in improving our knowledge and application of agent communication in the Jason 
platform.
These are the papers that provide the most relevant insight into utilizing Jason to implement 
social agents, so I decided to include an overview of them in this report.
The fundamental elements of agent communication languages (ACLs) were clarified by Bordini 
et al. (2011) in "Agent Communication Languages: Rethinking the Foundations," which also 
offered a thorough framework for creating and assessing ACLs. Their research highlights how 
crucial it is to reconsider the fundamental ideas and design decisions of ACLs in order to meet 
the changing requirements of complex multi-agent systems. The writers open the door for the 
creation of more expressive, effective, and interoperable communication languages by offering a 
methodical approach to ACL design.
Expanding on the ideas presented by Bordini et al. (2011), Hübner et al. (2005) use the Jason 
platform to explore the usefulness of agent-oriented programming in "Jason and the Golden 
Fleece of Agent-Oriented Programming." They demonstrate how adaptable Jason is in 
facilitating the creation of intelligent agents with complex coordination and communication 
skills. The authors show how Jason supports agent interactions, message passing, and belief 
updating, enabling agents to have meaningful conversations and work together to solve problems 
through real-world examples and case studies.
Hübner et al. (2002) provide "Agent Communication in Multi-Agent Systems Using Jason," an 
earlier work that establishes the foundation for understanding agent communication within the 
Jason platform. The authors offer helpful advice for putting communication protocols in place 
and encouraging agent collaboration by introducing AgentSpeak(L) and demonstrating its 
communication capabilities. They highlight the versatility of Jason and its efficacy in modelling 
and simulating intricate multi-agent systems by using case studies and real-world examples.
Hübner et al. (2002) provide a real-world example of this in the form of the coordination of 
autonomous vehicles in a transportation system. Each car in this scenario is modeled as an 
autonomous agent with sensors to identify other cars, traffic signals, and obstacles. In order to 
maximize traffic flow and reduce congestion, the agents coordinate their movements, negotiate 
routes, and share traffic information with one another via Jason's communication primitives.
3.The scenario that we will implement and discuss in this project:
My goal in this project is to create a communication channel between the various agents 
participating in a domestic abuse situation.
3.1. my scenario:
In the primary scenario, five agents who are members of the ontology that is explained below are 
implemented utilizing the Jason language in the Jason platform.
3.1.1. List of agents:
Five agents are supposed to be involved: the victim, the guilty, the social worker, the police, and 
the hospital. 
• Victim: The agent who is a victim of domestic abuse is the one who contacts a social 
worker and requests assistance. 
• Guilty: the individual committing violent acts.
• Social service member: This is a randomly assigned social worker who serves as the 
victim's only point of contact and helps arrange for medical or police assistance.
• Police: social service providers call this type of agent to help victims and take necessary 
action.
• Hospital: An additional agent will be included in the scenario to offer medical assistance 
to social service members who call.
3.1.2. overall dialogue flow:
The victim agent is expected to send the first help message, along with some background that 
will be explained below, and the social service member agent will always be the first to receive 
it. Next, the social service member agent will assist the victim agent by contacting the police or 
medical agent based on the message category. 
This is a brief overview of the communication process and further details will be discussed in the 
next parts.
3.2. implementation choices:
Using a framework based on beliefs, desires, and intentions (BDI) is not only appropriate, but 
crucial as we work to create cognitive agents with sophisticated behavior and communication 
capabilities. Our agents can mimic human-like decision-making processes by using this BDI 
structure. This allows them to reason about their surroundings, set objectives, and carry out 
actions in accordance with those objectives.
We have chosen to use the agentspeak language in the Jason platform in order to put this idea 
into practice. Agentspeak is a great option for implementing intelligent agents because it offers a 
wide range of constructs for expressing beliefs, desires, and intentions. Our agents' internal 
states, objectives, and plans can all be specified in this environment, and we can even control 
how they interact with the outside world and each other.
Agentspeak's expressive syntax and strong reasoning powers allow us to model intricate 
communication scenarios like the one we have in mind for our rescue mission. We can 
coordinate an effort to save the victim from violence by representing each agent's opinions about 
the situation, their intentions to help the victim, and their plans to carry out specific tasks.
4. Agent Communication in Multi-Agent Systems: Leveraging AgentSpeak and Jason:
As I mentioned before, a high-level agent-oriented programming language called AgentSpeak 
was created especially for creating intelligent agents. The BDI model serves as its foundation. It 
demonstrates agents as entities with beliefs about the world, desires or goals they hope to 
accomplish, and intentions or plans to carry out those desires. 
Jason serves as an AgentSpeak interpreter, offering a platform for setting up and carrying out 
AgentSpeak applications. It is extensively used in the study and development of multi-agent 
systems and is based on the Java programming language. Jason adds more capabilities and tools 
to AgentSpeak so that it can be used for tracking, debugging, and analyzing agent behavior.
The usual steps to create an agent communication scenario with Jason and AgentSpeak are as 
follows:
• Identify Agents: Find out who is involved in the communication scenario, what their 
responsibilities are, and what the agents hope to achieve.
• Define Beliefs: Describe each agent's starting beliefs, taking into account their 
understanding of the surroundings, other agents, and any relevant information required 
for making decisions.
• Establish Goals: Specify each agent's objectives, indicating what they hope to accomplish 
through dialogue and cooperation with other agents.
• Create strategies or plans to help each agent accomplish their objectives. These plans 
should include the steps the agent will take in accordance with its objectives and beliefs.
• Create Communication Protocols: Specify the guidelines or procedures that govern agentto-agent communication. These covers defining the kinds of messages that agents can 
send and receive, the circumstances in which messages can be sent, and the appropriate 
ways for agents to understand and react to messages. 
• Implement in AgentSpeak: Create programs in AgentSpeak that take into account each 
agent's plans, beliefs, objectives, and communication guidelines. 
• Evaluate and Simulate: Conduct experiments or simulations to watch how the agents 
behave in the created communication scenario. Assess the success of the agent goals and 
the efficiency of the communication protocols.
5. Communication flow for rescue of victim from violence in detail:
Below I will describe the communication details that are designed in this project in order to help 
agents to transfer information and achieve their goals.
5.1. Victim communicative abilities and communication flow:
In this section, I only want to discuss communication skills that are intended to help victims 
access support, regardless of their beliefs and knowledge. The 
• Victim sends helpNeeded(medical) to social service member agent if 
needmedicalhelp(Z) belief holds.
• Victim sends helpNeeded(security) to social service member agent if 
isunderviolence(victim) belief holds.
As acknowledge of the message that sent, it will print a message on the console to ensure that the 
social service member is aware of the situation and will take necessary actions. 
5.2. Social service member communicative abilities and communication flow:
• Receives helpNeeded(medical) or helpNeeded(security) from victim or any trusted 
source.
• Prints a message acknowledging the message and its source.
• Sends assistMedical(victim) to hospital for helpNeeded(medical).
• Sends assistPolice(victim) to police for helpNeeded(security).
• Prints messages indicating contact with hospital and police.
• Optionally, wait 20 seconds and provide emotional support to the victim.
5.3. Police communicative abilities and communication flow:
• Receives assistPolice(victim) from social service member or any trusted source.
• Prints messages acknowledging the message, looking for available units, and supporting 
the victim.
• If not arrested(guilty), sends askHow +! arresting to social service member and waits 
20 seconds.
• Sends arrested belief to guilty and prints a message about arresting he/she.
• Waits 10 seconds, sends askAll availableShelters(location) to social service member, 
and prints a message about asking for shelters.
• Waits 30 seconds and prints a message about filling the report.
5.4. guilty communicative abilities and communication flow:
No direct communication initiated in the implementation. Guilty just check if the arrested belief 
received from police or not. If this belief exists, then it will print an acknowledge message that 
he/she is arrested.
5.5. hospital communicative abilities and communication flow:
• Receives assistMedical(victim) from social service member or any trusted source.
• Prints a message acknowledging the message and its source.
• Prints messages indicating examination and medical assistance for the victim.
• Prints a message that all medical findings will be documented.
6.A detailed overview of the agent communication flow, including beliefs, goals and 
plans: 
I'll provide a thorough diagram of the agent communication model in the next section, which 
includes important components like agent beliefs, message formats, and particular message 
instances. My goal in following the steps described in Section 4 of the communication modelling 
process was to produce a thorough framework that accurately represents the dynamics of agent 
interactions.
The communication protocol is shown graphically in this figure, making it easier to comprehend 
how agents communicate and plan actions within the system.
Figure 1 communication overview
As shown, I explore the complex internal structure of each agent, going into great detail about 
their underlying beliefs, the communication logic that is specific to their traits, and the 
performatives that are used to coordinate talks, share important information, and carry out 
assigned tasks.
I created two different versions of the victim agent's belief base in order to account for different 
possibilities. The initial version includes broad indicators of violence, like being beaten, 
threatened, endangered, or injured by someone else (the “guilty party”). It is wise to contact the 
police in these situations as the victim's safety might be in danger.
On the other hand, the second set of beliefs concentrates only on physical injury, where the 
necessity is to call for medical assistance as soon as possible. Given the urgency of the medical 
situation, the conversation is set up to begin with sending an alert to the closest hospital.
Because there are different triggers for the same result, such as asking for security or medical 
help, it is wise to set up different rules for each belief system. This method ensures a more 
effective response mechanism by improving clarity and optimizing the confirmation of belief 
existence.
Two different rules have been developed, as the figure illustrates, and each one is responsible for 
determining whether beliefs relevant to its assigned domain are present. By utilizing unification, 
these rules enable smooth evaluations based on beliefs, creating the opportunity for quick and 
efficient decision-making inside the agent network.
• needmedicalhelp(Z):- injured(Y,Z)| bleeding(Z).
• isunderviolence(Z):- hurt(Y,Z)| beat(Y,Z)| threat(Y,Z)|indanger(Z).
7.Implementation and testing:
I will demonstrate the results of applying the previously mentioned procedure with Jason. The 
console's output clearly demonstrates the agents' ability to communicate with one another, 
confirming the system's functionality.
The interactions between the various agents are visible in the console output, which highlights 
how smoothly coordination and communication operate within the system. Every message sent 
back and forth between the agents denotes a step in the communication protocol that was created 
to meet the particular requirements of the particular situation.
It is clear from examining the console output that the agents are effectively coordinating, 
responding to requests, and sharing information in order to fulfill the communication protocol's 
goals. The messages recorded in the console provide information about how the agents make 
decisions and how the communication protocol has developed.
7.1. results in the case that victim hold the beliefs that indicating he/she is 
experiencing domestic violence and need security help:
Figure 2 Security help scenario
As was previously mentioned, the victim agent's main purpose was to make contact and ask for 
help, whereas the social workers was to take the victim's trouble signal and work with the police 
units to deal with the issue in an efficient manner. According to this scenario, the police had to 
find the victim quickly, provide assistance, and make sure the person was safe by giving them 
access to a safe place to stay , arrest the guilty and doing the paperwork for the case .
The outcomes attained verify that these goals were successfully attained. The victim agent 
successfully started the conversation by sending the social service member a distress message, 
which was quickly answered. The social worker then quickly made contact with the police units, 
which resulted in their timely arrival at the victim's location.
7.2. results in the case that victim hold the beliefs that indicating he/she is 
experiencing physical violence and need immediate medical help:
Figure 3 medical help scenario
The results clearly show that all parties involved—the victim, the social worker, and the 
hospital—have carried out their responsibilities and reached their goals in accordance with the 
communication protocol. Because every agent acted in accordance with the established protocol, 
the current situation was successfully coordinated and resolved.
Its evident that there are so many improvements can be applied to this scenario to make a 
complete rescue scenario implemented by agent communication tools, but this was just a simple 
and yet efficient version that shows the ability of agent communication and Jason platform to 
simulate and implement real word scenarios.
Although the scenario that is being presented shows how agent communication and the Jason 
platform can be used to simulate and execute real-world scenarios, there are still many 
opportunities for additional improvements and adjustments to be made in order to create a 
thorough and reliable rescue scenario. 
Extending the scenario to include a greater variety of emergency scenarios and response 
techniques is one way to make it better. The scenario can more accurately capture the complexity 
and variety of actual rescue operations by adding extra elements like changing degrees of 
urgency, a range of emergency situations, and extra response options.
8.References:
[1] Bordini, R. H., Hübner, J. F., & Vieira, R. (2005). Jason and the Golden Fleece of agentoriented programming. Multi-agent programming: languages, platforms and applications , 3-37.
[2] Bordini, R. H., Dastani, M., Dix, J., & El Fallah Seghrouchni, A. (2011). Agent 
Communication Languages: Rethinking the Principles. In R. H. Bordini, M. Dastani, J. Dix, & 
A. El Fallah Seghrouchni (Eds.), Multi-Agent Programming: Languages, Tools and Applications 
(pp. 123-148). Springer.
[3] Bordini, R. H., Hübner, J. F., & Wooldridge, M. (2007). Programming multi-agent systems in 
AgentSpeak using Jason. John Wiley & Sons.
