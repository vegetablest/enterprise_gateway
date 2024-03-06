FROM elyra/enterprise-gateway:3.2.2

USER root
COPY ./dist/jupyter_enterprise_gateway*.whl /tmp/
RUN pip install /tmp/jupyter_enterprise_gateway*.whl --no-cache-dir && \
	rm -f /tmp/jupyter_enterprise_gateway*.whl

USER $NB_UID