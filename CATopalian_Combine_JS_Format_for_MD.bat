:: CATopalian_Combine_JS_Format_for_MD.bat

@echo off
:: set the output file name
set "output=main.md"

:: set language (python, javascript, etc.)
set "language=javascript"

:: clear existing output file
type nul > "%output%"

:: loop through all js files in subdirectories
for /r %%i in (*.js) do (
    :: append the opening code block for the specified language
    echo ```%language% >> "%output%"

    :: append the content of each file to the output file
    type "%%i" >> "%output%"

    :: append the closing code block
    echo ``` >> "%output%"
)

echo "Files combined into %output% successfully."

:: For bigger projects with many JS files, the process will take a few moments longer, as we witness the main.md file size getting bigger as it builds the file! We make sure to let the process complete, so that all JS content is copied and formatted completely.

:: IMPORTANT: Make sure there is a NEW LINE at the end of each of the JS scripts in our folder! This ensures proper formatting in our generated main.md file.

:: Dedicated to God the Father
:: All Rights Reserved Christopher Andrew Topalian Copyright 2000-2026
:: https://github.com/ChristopherAndrewTopalian
:: https://github.com/ChristopherTopalian
:: https://sites.google.com/view/CollegeOfScripting

