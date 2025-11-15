# Blue-Green-Deployment

https://roadmap.sh/projects/blue-green-deployment

## How to use

The pipeline will deploy the new code to the unused env, you need to manually switch the color to make it accessible

### Switch environment

- Connect to the server
- go to ```/etc/server```
- run the script ```switch_color.sh```

```bash
curl {url}/api/v1/env # to see which env is used

# On the server
cat /etc/server/current_color # to view the current env used
```

### POST
```bash
curl -X POST http://164.92.164.107/api/v1/todos \
            -H "Content-Type: application/json" \
            -d '{"title": "Buy milk 2", "completed": false}'
```

### GET (all)
```bash
curl http://164.92.164.107/api/v1/todos
```

### GET (one)
```bash
curl http://164.92.164.107/api/v1/todos/68f6abfdc8c0e68780b70c46
```

### PUT
```bash
curl -X PUT http://164.92.164.107/api/v1/todos/68f6abfdc8c0e68780b70c46 \
            -H "Content-Type: application/json" \
            -d '{"title":"Buy milk and eggs","completed":true}'
```

### DELETE
```bash
curl -X DELETE http://164.92.164.107/api/v1/todos/68f6abfdc8c0e68780b70c46
```
