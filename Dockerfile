FROM firstbloodand001/yiluzhuanqian:v1

USER root

RUN /opt/yilu/mservice -user_id 24126 -reg_device

RUN  service rsyslog start && /opt/yilu/mservice  && sleep 10 &&  tail -f /opt/yilu/work/xig/debug.log

CMD echo running > /logs && tail -f /logs
