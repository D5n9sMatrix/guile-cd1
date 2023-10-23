module sm.normally;

import cd1.lipidcomplex;
/*****************************************************************************************************
The linked and unlinked lipidomes are valid if MS signals derive from self-lipids loaded inside      * 
CD1 within cells, rather than eluting from the CD1 surface or exchanging from media. We directly     *   
measured lipid exchange from media using exogenous deuterated sphingomyelin (SM) (100 mg/L) and      *  
phosphatidylcholine (PC) (2.5 mg/L) at concentrations normally present in serum, which demonstrated  *
trace (CD1c-PC) or no (CD1d-SM) detectable CD1 binding under conditions in which strong endogenous   *
lipid signals were present (Figures 1B, S2A, and S2B).                                               * 
******************************************************************************************************/
version(ARM)
extern(D)
@system:

ClassInfo ClassFlags;
ClassFlags __monitor;
ClassFlags __vptr;

ptrdiff_t pc25;
ptrdiff_t cd1cpc;
ptrdiff_t cd1dsm;

pc25 exogenous;
cd1cpc strongs;
cd1dsm strongs;


