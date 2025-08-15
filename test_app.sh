
if curl -i http://localhost:8080/healthz | grep "200 OK" 
then 
echo "looks good"
else 
echo "looks bad"
exit 1
fi