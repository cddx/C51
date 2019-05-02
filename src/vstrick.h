// This is here to trick VS2019 into ignoring non-iso keywords 
// define VSTRICK under "NMAKE->Preprocessor Definitions"
// and VS will replace these keywords and all variable references, lookups, etc.
// that are supported by the IDE will now work

#ifdef __VSTRICK__
#define data
#define idata
#define bdata
#define xdata
#define code

#define sfr
#define sbit
#define bit


#endif // __VSTRICK_H__