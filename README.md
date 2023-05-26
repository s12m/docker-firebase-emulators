# Firebase emulators on Docker

https://ghcr.io/s12m/firebase-emulators

## Usage

```bash
docker run --rm \
  -v $PWD/.firebaserc:/opt/firebase/.firebaserc \
  -v $PWD/firebase.json:/opt/firebase/firebase.json \
  -v $PWD/data/firebase:/opt/firebase/data \
  s12m/firebase-emulators
```

The container exports data on exit.

## Exposed ports

| Port | Purpose |
| -- | -- |
| Emulator | Port |
| Emulator Suite UI | 4000 |
| Firebase Hosting | 5000 |
| Cloud Functions | 5001 |
| Cloud Firestore | 8080 |
| Cloud Pub/Sub | 8085 |
| Realtime Database | 9000 |
| Firebase Login | 9005 |
| Authentication | 9099 |
| Cloud Storage | 9199 |
