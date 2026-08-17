import type { Core } from '@strapi/strapi';

const config = ({ env }: Core.Config.Shared.ConfigParams): Core.Config.Plugin => ({
  upload: {
    config: {
      actionOptions: {
        upload: {
          responsiveDimensions: false,
        },
        uploadStream: {
          responsiveDimensions: false,
        },
      },
    },
  },
});

export default config;
