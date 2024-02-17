// Police belief base
trusted(social_service_member).
trusted(victim).

// Goals



+assistPolice(victim)[source(S)] : trusted(S) <- .print("We recieved the " ,S, " message\n" );.print("We are looking for available units to dispatch to " , victim ," location\n");
+assistPolice(victim)[source(S)];
    .print("Victim will be supported.");.wait(30);
    .print("We are filling the report about the case.\n").


+!start : not arrested(guilty) <-
    .send(social_service_member, askHow, "+!arresting");
    .wait(20);
    !arresting;
    .send(guilty, tell, arrested).




  
+!getShelter :assistPolice(victim)[source(S)] <-
    .wait(10);
    .send(social_service_member, askAll , availableShelters(location));
    .print("Asking social service member about available shelters\n").

	

    

