SELECT 'shell' as component, 'Example REST Call (PL/Python)' as title;

-- #####################################################################
-- Simple GET
-- #####################################################################

SELECT 'text' as component, 'GET https://reqres.in/api/users' as title;

SELECT 'table' as component;
SELECT 
    r->>'id' as "ID",
    r->>'last_name' as "Last Name",
    r->>'first_name' as "First Name",
    r->>'email' as "Email"
FROM rest_get('https://reqres.in/api/users') r

-- #####################################################################
-- Simple POST
-- #####################################################################

SELECT 'text' as component, 'POST https://reqres.in/api/users' as title;

SELECT 'form' as component, 'index.sql' as action;
SELECT 'name' as name, true as required;
SELECT 'job' as name, true as required;

SELECT 'text' as component, 'POST Response' as title;

SELECT 'table' as component;
SELECT 
    r->>'name' as "Name",
    r->>'job' as "Job",
    r->>'id' as "ID",
    r->>'createdAt' as "Created At"
FROM rest_post('https://reqres.in/api/users', 
    json_build_object(
        'name', :name, 
        'job', :job
    )) r
WHERE :name IS NOT NULL AND :job IS NOT NULL;

