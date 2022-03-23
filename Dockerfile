FROM czerasz/nginx-geoip2:latest

# Add GeoIP configuration file to enable GeoIP 2 variables
ADD ./config/geoip2.conf /etc/nginx/conf.d/geoip2.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY GeoLite2-Country.mmdb /var/lib/GeoIP/GeoLite2-Country.mmdb
CMD ["nginx", "-g", "daemon off;"]