## 2. Create a Secret

Before deploying a StorageOS cluster, create a Secret defining the StorageOS
API Username and Password in base64 encoding.

The API username and password are used to create the default StorageOS admin
account which can be used with the StorageOS CLI and to login to the StorageOS
GUI. The account defined in the secret is also used by Kubernetes to
authenticate against the StorageOS API when installing with the native driver.


{{ partial "content/secret-v1.md" . }}


This example contains a default password, for production installations, use a
unique, strong password.

> You can define a base64 value by `echo -n "mystring" | base64`.

> Make sure that the encoding of the credentials doesn't have special characters such as '\n'.
> The `echo -n` ensures that a trailing new line is not appended to the string.

> If you wish to change the default accounts details post-install please see [Managing
> Users](/docs/operations/users#altering-the-storageos-api-account)
