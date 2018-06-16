# PEU205-Spring16
Astronomy Course - Simulating Three body and N-body Problem results

We provided two simulation approaches to the 3-Body Problem (A problem with no analytical solutions):

- A 3-Body ode solver using matlab's ode45. This analytical solution was found by considering one of the three bodies to have an extremely small (and thus, negligible) mass, compared to the other two. This is the  case with the moon-Sun-Earth System.

You can run this using: project.m, which uses func.m as a function.


- The second solution uses a summation approximation for integration, applying newton's equations of motions on N-bodies, where n is an input. This is much more powerful, but diverges after enough time. Therefore, the option of determining the starting position of every body is given.

You can run ths using: Nbody.m only
