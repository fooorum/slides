import { defineConfig } from "astro/config";
import favicons from "astro-favicons";

// https://astro.build/config
export default defineConfig({
    integrations: [
      favicons({
        appName: "Fooorum Slides",
        appShortName: "Fooorum Slides",
        appDescription: "Presentation über Fooorum.",
        path: "/",
        masterPicture: "./src/assets/favicon.svg",
      }),
    ]
});
