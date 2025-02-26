%% Web Access using Data Import and Export API
uri = 'https://cmdb.litop.local/webservices/rest.php';
body = 'version=1.2&auth_user=fdgxf&auth_pwd=oxfdscds&json_data={ "operation": "core/get", "class": "Software", "key": "key" }';
options = weboptions('MediaType', 'application/x-www-form-urlencoded');
response = webwrite(uri, body, options);

%% HTTP Interface
import matlab.net.*
import matlab.net.http.*
import matlab.net.http.io.*

header = HeaderField('Content-Type', 'application/x-www-form-urlencoded');
uri = URI('https://cmdb.litop.local/webservices/rest.php');
body = FormProvider(...
    'version', '1.2',...
    'auth_user', 'fdgxf',...
    'auth_pwd', 'oxfdscds',...
    'json_data', JSONProvider(struct(...
        'operation', 'core/get',...
        'class', 'Software',...
        'key', 'key'...
    ))...
);
response = RequestMessage('post', header, body).send(uri.EncodedURI);
