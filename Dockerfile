FROM node:8 as builder
RUN npm install -g parcel-bundler

WORKDIR /sites
COPY . .

RUN npm install
RUN npm run build

FROM nginx:alpine

COPY --from=builder /sites/bigbraincarl/dist /var/www/bigbraincarl
COPY --from=builder /sites/picturesofcarl/dist /var/www/picturesofcarl