FROM adevinta/vulcan-local:0.2.7
COPY entrypoint.sh /action/
RUN chmod +x /action/entrypoint.sh
ENTRYPOINT ["/action/entrypoint.sh"]
