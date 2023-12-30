CREATE EXTENSION plpython3u;


-- #####################################################################
CREATE FUNCTION rest_get(url text) RETURNS SETOF json AS $$

import requests, json
res = requests.get(url)
result = res.json()
return [json.dumps(d) for d in result['data']];

$$ LANGUAGE plpython3u;


-- #####################################################################
CREATE FUNCTION rest_post(url text, payload json) RETURNS SETOF json AS $$

import requests, json
res = requests.post(url, json=json.loads(payload))
result = res.json()
return [json.dumps(result)];

$$ LANGUAGE plpython3u;
