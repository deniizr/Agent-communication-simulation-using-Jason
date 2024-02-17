//Hospital belief base
trusted(social_service_member).




//plans
+assistMedical(victim)[source(S)] : trusted(S) <- .print("I got medical help message from ", S );.print("try to send an ambulance as soon as possible " );
+assistMedical(victim)[source(S)]; .print("Victim is examined and under medical observation\n");
    .print("Providing medical assistance for recovery\n"); .wait(20);.print("We are documenting medical findings.").
	
	


    
