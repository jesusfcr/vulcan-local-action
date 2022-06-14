FROM adevinta/vulcan-local:0.1.6
COPY entrypoint.sh /action/
RUN chmod +x /action/entrypoint.sh
ENTRYPOINT ["/action/entrypoint.sh"]
