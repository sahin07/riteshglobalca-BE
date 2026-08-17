import { mergeConfig, type UserConfig } from 'vite';

export default (config: UserConfig) => {
  // Important: always return the modified config
  return mergeConfig(config, {
    server: {
      allowedHosts: ['riteshglobalca.com', 'www.riteshglobalca.com'],
    },
  });
};
