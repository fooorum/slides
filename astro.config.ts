import { defineConfig } from "astro/config";
import icon from "astro-icon";
import favicons from "astro-favicons";

// https://astro.build/config
export default defineConfig({
  integrations: [
    icon(),
    favicons({
      appName: "Fooorum Slides",
      appShortName: "Fooorum Slides",
      appDescription: "Presentation über Fooorum.",
      path: "/",
      masterPicture: "./src/assets/favicon.svg",
    }),
  ],
  site: "https://fooorum.netlify.app",
  vite: {
    ssr: {
      noExternal: ["@fontsource-variable/montserrat"],
    },
  },
});
