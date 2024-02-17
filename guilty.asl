//guilty belief base
 trusted(police).
 trusted(social_service_member).
 trusted(doctor).
 
 
//plans
+B[source(S)] : trusted(S) <-
.print("I got ", B, " by ", S,  "\n").
