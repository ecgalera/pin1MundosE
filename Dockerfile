# Utiliza la imagen base de Bitbucket de Atlassian
FROM atlassian/bitbucket

# Configura los puertos que quieres exponer
EXPOSE 7990 7999

# El directorio donde se montará el primer volumen dentro del contenedor
VOLUME /var/atlassian/application-data/bitbucket

# Agregar más volúmenes si es necesario
VOLUME /var/atlassian/application-logs

# Comando por defecto para iniciar Bitbucket (esto ya está configurado en la imagen base)
CMD ["bitbucket"]
