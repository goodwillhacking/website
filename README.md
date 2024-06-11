## Description
Static Site generated with Hugo and hosted on Digitalocean app platform.

## Theme
The website relies on the FeelIt theme which can be found [here](https://github.com/khusika/FeelIt). Many thanks to Khusika 

### Theme documentation
[FeelIt Documentation](https://feelit.khusika.dev/categories/documentation/)

## Testing

### Development mode
Note: Ensure you are using the extended version of Hugo with Sass/SCSS support,
```bash
    hugo serve --disableFastRender --config hugo.toml
```
### Build mode
Use Docker to locally test website builds
```bash
    hugo --config hugo.toml
```

## Deploying the App to Digital Ocean
```bash
    doctl app create --spec .do/app.yml
    
    doctl apps update <app_id> --spec .do/app.yml 
```
https://docs.digitalocean.com/products/app-platform/reference/buildpacks/hugo/
https://docs.digitalocean.com/products/app-platform/reference/app-spec/

