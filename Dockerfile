FROM adevinta/vulcan-local:v0.1.3
COPY entrypoint.sh /action/
RUN chmod +x /action/entrypoint.sh
ENTRYPOINT ["/action/entrypoint.sh"]
