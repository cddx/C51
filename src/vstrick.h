//This is here to trick VS2005 into ignoring non-iso keywords 
// define VSTRICK under "NMAKE->Preprocessor Definitions"
// and VS will replace these keywords and all variable references, lookups, etc.
// that are supported by the IDE will now work

#ifdef VSTRICK
#define xdata
#define code
#define bdata
#define sfr
#define idata
#endif