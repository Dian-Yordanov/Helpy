

#include <windows.h> 
#include <stdio.h> 
#ifdef WINDOWS
    
    #include <direct.h>
    #define GetCurrentDir _getcwd
#else
    #include <unistd.h>
    #define GetCurrentDir getcwd
#endif

typedef int (*ahkdll)(wchar_t *, wchar_t *, wchar_t *) ; 
typedef int (*ahkReady)();

#include<iostream>
using namespace std;

std::string workingdir()
{
    char buf[256];
    GetCurrentDirectoryA(256, buf);
    return std::string(buf) + '\\';
}

int main() 
{ 



    string currentDir = workingdir();
    string currentDirDll = currentDir + "x64w_MT\\AutoHotkey.dll";
    cout << currentDirDll;


   // Load DLL file 
   HINSTANCE hinstLib = LoadLibrary(currentDirDll.c_str()); 
   if (hinstLib == NULL) 
   { 
      printf("ERROR: unable to load DLL\n"); 
      return 1; 
   } 
   // Get function pointer 
   ahkdll ahkdll_ = (ahkdll)GetProcAddress(hinstLib, "ahkdll"); 
   ahkReady ahkReady_ = (ahkReady)GetProcAddress(hinstLib, "ahkReady"); 
   if (ahkdll_ == NULL || ahkReady_ == NULL) 
   { 
      printf("ERROR: unable to find DLL function\n"); 
      FreeLibrary(hinstLib); 
      return 1; 
   } 
   // Call function. 
   string currentDirAhk =  currentDir + "testmessage.ahk";


//    const wstring wide_string = wstring(currentDirAhk.begin(), currentDirAhk.end());
//    const wchar_t* result = wide_string.c_str();


    // std::string username = "username";
    // string username = "whatever";
    wstring wideusername;
    for(int i = 0; i < currentDirAhk.length(); ++i)
    wideusername += wchar_t( currentDirAhk[i] );

    wchar_t* your_result = wideusername.c_str();

    ahkdll_(your_result, L"", L"");
   
   // Wait for script to finish
   while (ahkReady_())
	   Sleep(50);
   // Unload DLL file 
   FreeLibrary(hinstLib); 
   return 0; 
} 