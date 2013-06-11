#ifndef _SHARED_H_
#define _SHARED_H_

#include "output.hpp"
#include "scope.h"
#include <string>

typedef struct
{
	VarType type;
	std::string name;
	struct
	{
		std::string name;
		VarType type;
	} expInfo;
	struct scope scopeData;
} STYPE;


#define YYSTYPE STYPE





#endif
