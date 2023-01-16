## [Unreleased]

## [0.2.1] - 2023-01-16

### Fixed

- Request body must be present on POST requests even if it is an empty Hash.

## [0.2.0] - 2023-01-16

### Breaking

- OPNSense::Client.new no longer uses positional arguments. Instead; `:host`, `:api_key` and `:api_secret` are used.

### Added

- Firmware package (https://docs.opnsense.org/development/api/core/firmware.html#packages)

### Fixed

- System BASE_PATH

## [0.1.0] - 2022-12-11

- Initial release
