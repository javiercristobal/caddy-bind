$TTL    604800
; SOA record with MNAME and RNAME updated
@       IN      SOA     domain-registrar.publicvm.com. admin.domain-registrar.publicvm.com (
                              1         ; Serial Note: increment after each cha>
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
; Name server record
domain-registrar.publicvm.com.       IN      NS      ns1.domain-registrar.publicvm.com.
; A record for name server
ns1.domain-registrar.publicvm.com.      IN      A       54.177.232.250
; PTR record for name server
2   IN      PTR     ns1.domain-registrar.publicvm.com.
; PTR record for clients
3   IN      PTR     domain-registrar.publicvm.com.
4   IN      PTR     www.domain-registrar.publicvm.com.
