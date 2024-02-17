// Social service member belief base
availableShelters(firststreet).
availableShelters(thirdstreet).
trusted(victim).



//goals
!victimMessageReceived.

//plans
+helpNeeded(medical)[source(S)] : trusted(S) <- .print("I got medical help message from ", S); +helpNeeded(medical)
[source(S)];.send(hospital, tell, assistMedical(victim));.print("In contact with Hospital to inform doctor").



+helpNeeded(security)[source(S)] : trusted(S) <- .print("I got security help message from ", S); +helpNeeded(security)
[source(S)];.send(police, tell, assistPolice(victim));.print("In contact with police station ").

+!arresting <- .my_name(X); .print(X, " is arresting the guilty! ").

+!victimMessageReceived: true<-
    .wait(20);
    .print("Providing emotional support to the victim\n").
