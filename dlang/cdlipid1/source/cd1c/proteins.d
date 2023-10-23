module cd1c.proteins;

import cd1.lipidcomplex;
version(GNU)
extern(D)
@system:

/*************************************************************************
CD1c, and CD1d proteins are equivalent to dendritic cells for            *
lipid display.38 293T cells produce CD1 proteins that efficiently        *
bind lipids for presentation to TCRs when affixed to plates or           *
assembled as tetramers.39–43                                             *
**************************************************************************
*/

ClassInfo ClassFlags;
ClassFlags __monitor;
ClassFlags __vptr;

/*************************************************************************
Assembling two human CD1-lipidomes                                       *  
After cell secretion and affinity purification of CD1-lipid com-         * 
plexes, ligands were eluted with an adapted Folch extraction44           *  
to generate lipidomes. Complex lipid eluents were separated              *
with normal phase high-performance liquid chromatography                 *  
with quadrupole time of flight MS (HPLC-QToF-MS).35,36                   *  
**************************************************************************/

long cells;
long phase;
long human;
long MS;

cells HPLC1;
phase QToF1;
human lipids;
MS lipids;




