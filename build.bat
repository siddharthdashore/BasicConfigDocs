@echo off

SETLOCAL


echo INTERNAL copy mkdocs_external.yml+mkdocs_trailer.yml+mkdocs_global_constants.yml mkdocs.yml
COPY /B /Y mkdocs_external.yml+mkdocs_trailer.yml+mkdocs_global_constants.yml mkdocs.yml
echo "Building documents for Local deployment..."
echo "Building documents for Local deployment..."
echo.
start mkdocs serve


ENDLOCAL
:theend
