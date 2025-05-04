# Puppeteer

# building an image using puppeteer
```
docker build -t <image>
```

## Check version
```
docker run --rm --entrypoint node <image> -e "console.log('Puppeteer version:', require('puppeteer/package.json').version)"
```

## Launch Browser
```
docker run --rm   --entrypoint node   <image>   -e "                                                                                                                     const puppeteer = require('puppeteer');
    (async () => {
      const browser = await puppeteer.launch({ args: ['--no-sandbox', '--disable-setuid-sandbox'] });
      const page = await browser.newPage();
      await page.goto('https://example.com');
      const title = await page.title();
      console.log('Page title:', title);
      await browser.close();
    })();
  "
```
