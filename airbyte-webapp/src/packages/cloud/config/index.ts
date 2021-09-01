import {
  defaultConfig as coreDefaultConfig,
  useConfig as useCoreConfig,
} from "config";
import { CloudConfig, CloudConfigExtension } from "./types";

export function useConfig(): CloudConfig {
  return useCoreConfig<CloudConfig>();
}

const cloudConfigExtensionDefault: CloudConfigExtension = {
  cloudApiUrl: "",
  firebase: {},
};

export const defaultConfig: CloudConfig = Object.assign(
  {},
  coreDefaultConfig,
  cloudConfigExtensionDefault
);
