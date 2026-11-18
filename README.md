# render-xray-node

Personal VLESS+WS node on Render's free tier (backup node).

- Render assigns the port through the `PORT` env var; `entrypoint.sh`
  writes it into the xray config at container start.
- Public URL is `https://<service>.onrender.com` with Render's TLS.
- Same VLESS UUID as the Unikraft nodes.
- Free tier limits: 750 instance hours/month, 5 GB bandwidth/month,
  sleeps after 15 minutes without traffic, wakes in about 1 minute
  on the next request.
