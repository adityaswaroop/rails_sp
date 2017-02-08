Rails.application.config.middleware.use OmniAuth::Builder do
  provider :saml,
           :assertion_consumer_service_url     => "http://35.154.138.111/users/saml/auth",
           :issuer                             => "http://35.154.138.111/",
           :idp_sso_target_url                 => "https://ssotest.craneww.com/IDBUS/CRANE/CRANE-IDP/SAML2/SSO/REDIR",
           :idp_sso_target_url_runtime_params  => {:original_request_param => :mapped_idp_param},
           :idp_cert                           => "-----BEGIN CERTIFICATE-----MIIC9DCCAl2gAwIBAgIBDTANBgkqhkiG9w0BAQQFADCBkzELMAkGA1UEBhMCVVMx
ETAPBgNVBAgTCE5ldyBZb3JrMREwDwYDVQQHEwhOZXcgWW9yazEXMBUGA1UEChMO
QXRyaWNvcmUsIEluYy4xDjAMBgNVBAsTBUpPU1NPMRUwEwYDVQQDEwxhdHJpY29y
ZS5jb20xHjAcBgkqhkiG9w0BCQEWD2NhQGF0cmljb3JlLmNvbTAeFw0xMzEyMTYx
OTE1MTVaFw0xNDEyMTYxOTE1MTVaMGgxCzAJBgNVBAYTAlVTMQ4wDAYDVQQIEwVU
ZXhhczEQMA4GA1UEChMHY3JhbmV3dzEUMBIGA1UECxMLY3JhbmV3dy1zc28xITAf
BgNVBAMTGGVwcC10ZXN0LXNzby5jcmFuZXd3LmNvbTCCASIwDQYJKoZIhvcNAQEB
BQADggEPADCCAQoCggEBAI9SfiRoiPwrnAxgd431rs4q9cKRkT09d74CaClqj2QJ
p74I8sG7nPVOTUq6WpE+VV13NWToRIqgxLZMiIBiLm9OjUBU4Sc8wXXMHXa9ZJUg
Lt3YV+tEblAEe+mR+6zoBfxyuArk2QUsIwi/8HCRjqW/eKA/0ewAppRS1VxermQk
5y1HYaHsl2xWl5d2jPz8UbNPcq974hkHI09+LMauP9Hz54OsVKwn36I6rcniPGlo
hsHcife34jewF+7NW7ILs+9X0TpcLnaGCLOx4CmDqTSpciAb8mQt+Er2bIgWR3D6
IK/SjWvpb6/8xssLk8rXZi/RnE7fhG16AAq5X+JQVzUCAwEAATANBgkqhkiG9w0B
AQQFAAOBgQCXV23LQ0afCLLF9Lzy0805TuvmGGnCFuE6Nn3flKWePuAtnMCVNqgA
whsHD1KsXnUNRFFQHWEEUY5WLIpNUjkvhc+ZDS8KufcYQJi9OpKA+R/vx7cIVhwV
8RPdRpJBdkZ2Wl/qBrQhiAJP/rmi1eshf2CYyy9oqto3z2Pr7xhAsQ==-----END CERTIFICATE-----",
           :idp_cert_fingerprint               => "BE DE AF 95 29 9B 00 04 7C 8A D7 45 C4 5D A3 87 6B 4B 37 C9",
           :idp_cert_fingerprint_validator     => lambda { |fingerprint| fingerprint },
           :name_identifier_format             => "urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress"
end