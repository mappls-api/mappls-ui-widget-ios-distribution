# Changes to the MapplsUIWidgets SDK for iOS

## 2.0.2 - 15 Oct, 2026

### Added
- Added a global property `gloabl` (`Bool`, default `false`) in `MapplsAutocompleteFilter` to control the `global` option sent with autosuggest requests.

### Changed
- Re-structured the project and consolidated the example app into the `SearchExample` target.
- Improved memory management across autocomplete and place picker components (added `deinit` cleanup and `[weak self]` usage to avoid retain cycles).

## 2.0.1 - 01 Apr, 2026

### Added
- Added a delegate method to set request options for auto-suggest.

### Removed
- Removed the `zoom` and `hyperLocal` parameters.

## 2.0.0 - 06 Jun, 2025

### Changed
- Updated minimum iOS deployment target to 13.0.
- Revised authentication and authorization mechanisms (Auth 2.0 support).
- Added method ID restriction.