FROM adevinta/vulcan-local:0.2.8
COPY entrypoint.sh /action/
RUN chmod +x /action/entrypoint.sh
ENTRYPOINT ["/action/entrypoint.sh"]
