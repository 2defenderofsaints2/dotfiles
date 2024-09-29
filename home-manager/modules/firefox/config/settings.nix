{
  "ui.systemUsesDarkTheme" = 1;
  "browser.aboutConfig.showWarning" = false;
  "browser.aboutwelcome.enabled" = false;
  "browser.bookmarks.addedImportButton" = false;
  "browser.toolbars.bookmarks.visibility" = "never";
  "browser.urlbar.suggest.history" = false;
  "browser.urlbar.suggest.bookmark" = true;
  "browser.urlbar.suggest.openpage" = false;
  "browser.urlbar.suggest.shortcut" = false;
  "browser.urlbar.suggest.searches" = false;
  "browser.urlbar.suggest.recentsearches" = false;
  "dom.forms.autocomplete.formautofill" = true;
  "extensions.pocket.enabled" = false;
  "general.autoScroll" = true;
  "media.eme.enabled" = true;
  "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
  "browser.compactmode.show" = true;

  # STARTUP
  "browser.newtab.url" = "about:home";
  "browser.newtabpage.activity-stream.default.sites" = "";
  "browser.newtabpage.activity-stream.feeds.system.topstories" = false;
  "browser.newtabpage.activity-stream.feeds.topsites" = false;
  "browser.newtabpage.activity-stream.showRecentSaves" = false;
  "browser.newtabpage.activity-stream.showSearch" = false;
  "browser.newtabpage.activity-stream.showSponsored" = false;
  "browser.newtabpage.activity-stream.showSponsoredTopSites" = false;
  "browser.newtabpage.activity-stream.showWeather" = false;
  "browser.newtabpage.enabled" = true;
  "browser.startup.homepage" = "about:home";
  "browser.startup.page" = 1;
  "browser.tabs.closeWindowWithLastTab" = false;
  "browser.tabs.firefox-view-newIcon" = false;
  "browser.tabs.firefox-view" = false;
  "browser.tabs.inTitlebar" = 1;
  "browser.tabs.loadBookmarksInBackground" = true;
  "browser.tabs.tabmanager.enabled" = false;

  # GEOLOCATION
  "geo.provider.network.url" = "https://location.services.mozilla.com/v1/geolocate?key=%MOZILLA_API_KEY%";
  "geo.provider.ms-windows-location" = false;
  "geo.provider.use_corelocation" = false;
  "geo.provider.use_gpsd" = false;
  "geo.provider.use_geoclue" = false;

  # TELEMETRY
  "extensions.getAddons.showPane" = false;
  "extensions.htmlaboutaddons.recommendations.enabled" = false;
  "browser.discovery.enabled" = false;
  "browser.shopping.experience2023.enabled" = false;
  "datareporting.policy.dataSubmissionEnabled" = false;
  "datareporting.healthreport.uploadEnabled" = false;
  "toolkit.telemetry.unified" = false;
  "toolkit.telemetry.enabled" = false;
  "toolkit.telemetry.server" = "data:,";
  "toolkit.telemetry.archive.enabled" = false;
  "toolkit.telemetry.newProfilePing.enabled" = false;
  "toolkit.telemetry.shutdownPingSender.enabled" = false;
  "toolkit.telemetry.updatePing.enabled" = false;
  "toolkit.telemetry.bhrPing.enabled" = false;
  "toolkit.telemetry.firstShutdownPing.enabled" = false;
  "toolkit.telemetry.coverage.opt-out" = true;
  "toolkit.coverage.opt-out" = true;
  "toolkit.coverage.endpoint.base" = "";
  "browser.newtabpage.activity-stream.feeds.telemetry" = false;
  "browser.newtabpage.activity-stream.telemetry" = false;
  "app.shield.optoutstudies.enabled" = false;
  "app.normandy.enabled" = false;
  "app.normandy.api_url" = "";
  "breakpad.reportURL" = "";
  "browser.tabs.crashReporting.sendReport" = false;
  "network.captive-portal-service.enabled" = false;
  "network.connectivity-service.enabled" = false;

  # SAFE BROWSING
  "browser.safebrowsing.downloads.remote.enabled" = false;

  # BLOCK IMPLICIT OUTBOUND
  "network.prefetch-next" = false;
  "network.dns.disablePrefetch" = true;
  "network.predictor.enabled" = false;
  "network.predictor.enable-prefetch" = false;
  "network.http.speculative-parallel-limit" = 0;
  "browser.places.speculativeConnect.enabled" = false;

  # DNS / DoH / PROXY / SOCKS
  "network.proxy.socks_remote_dns" = true;
  "network.file.disable_unc_paths" = true;
  "network.gio.supported-protocols" = "";

  # LOCATION BAR / SEARCH BAR / SUGGESTIONS / HISTORY / FORMS
  "browser.urlbar.speculativeConnect.enabled" = false;
  "browser.search.suggest.enabled" = false;
  "browser.formfill.enable" = false;
  "browser.search.separatePrivateDefault" = true;
  "browser.search.separatePrivateDefault.ui.enabled" = true;
  "extensions.formautofill.addresses.enabled" = false;
  "extensions.formautofill.addresses.supported" = "on";
  "extensions.formautofill.addresses.usage.hasEntry" = true;
  "extensions.formautofill.creditCards.enabled" = false;
  "extensions.formautofill.heuristics.enabled" = false;

  # PASSWORDS
  "network.auth.subresource-http-auth-allow" = 1;
  "signon.autofillForms" = false;
  "signon.formlessCapture.enabled" = false;
  "signon.rememberSignons" = false;

  # DISK AVOIDANCE
  "browser.cache.disk.enable" = false;
  "browser.privatebrowsing.forceMediaMemoryCache" = true;
  "media.memory_cache_max_size" = 65536;
  "browser.sessionstore.privacy_level" = 2;
  "toolkit.winRegisterApplicationRestart" = false;
  "browser.shell.shortcutFavicons" = false;

  # HTTPS (SSL/TLS / OCSP / CERTS / HPKP)
  "security.ssl.require_safe_negotiation" = true;
  "security.tls.enable_0rtt_data" = false;
  "security.OCSP.enabled" = 1;
  "security.OCSP.require" = true;
  "security.cert_pinning.enforcement_level" = 2;
  "security.remote_settings.crlite_filters.enabled" = true;
  "security.pki.crlite_mode" = 2;
  "dom.security.https_only_mode" = true;
  "dom.security.https_only_mode_send_http_background_request" = false;
  "security.ssl.treat_unsafe_negotiation_as_broken" = true;
  "browser.xul.error_pages.expert_bad_cert" = true;

  # REFERERS
  "network.http.referer.XOriginTrimmingPolicy" = 2;

  # CONTAINERS
  "privacy.userContext.enabled" = true;
  "privacy.userContext.ui.enabled" = true;

  # PLUGINS / MEDIA / WEBRTC
  "media.peerconnection.ice.proxy_only_if_behind_proxy" = true;
  "media.peerconnection.ice.default_address_only" = true;

  # DOM (DOCUMENT OBJECT MODEL)
  "dom.disable_window_move_resize" = true;

  # MISCELLANEOUS
  "browser.download.start_downloads_in_tmp_dir" = true;
  "browser.helperApps.deleteTempFileOnExit" = true;
  "browser.uitour.enabled" = false;
  "devtools.debugger.remote-enabled" = false;
  "network.IDN_show_punycode" = true;
  "pdfjs.disabled" = false;
  "pdfjs.enableScripting" = false;

  # SHUTDOWN & SANITIZING
  "privacy.sanitize.sanitizeOnShutdown" = false;
  "privacy.clearOnShutdown.cache" = true;
  "privacy.clearOnShutdown.downloads" = true;
  "privacy.clearOnShutdown.formdata" = true;
  "privacy.clearOnShutdown.history" = true;
  "privacy.clearOnShutdown.cookies" = true;
  "privacy.clearOnShutdown.offlineApps" = true;
  "privacy.clearOnShutdown.sessions" = false;
  "privacy.clearSiteData.cache" = true;
  "privacy.clearSiteData.historyFormDataAndDownloads" = true;
  "privacy.clearHistory.cache" = true;
  "privacy.clearHistory.cookiesAndStorage" = false;
  "privacy.clearHistory.historyFormDataAndDownloads" = true;
  "privacy.cpd.sessions" = true;

  # FPP (fingerprintingProtection)
  "privacy.fingerprintingProtection.pbmode" = true;
  "privacy.fingerprintingProtection" = true;

  # RFP (resistFingerprinting)
  "privacy.resistFingerprinting" = true;
  "privacy.window.maxInnerWidth" = 1600;
  "privacy.window.maxInnerHeight" = 900;
  "privacy.resistFingerprinting.block_mozAddonManager" = true;
  "privacy.resistFingerprinting.letterboxing" = false;
  "privacy.spoof_english" = 1;
  "browser.display.use_system_colors" = false;
  "widget.non-native-theme.enabled" = true;
  "browser.link.open_newwindow" = 3;
  "browser.link.open_newwindow.restriction" = 0;
  "webgl.disabled" = false;

  # OPTIONAL OPSEC
  "browser.download.useDownloadDir" = false;
  "browser.download.alwaysOpenPanel" = false;
  "browser.download.manager.addToRecentDocs" = false;
  "browser.download.always_ask_before_handling_new_types" = true;
  "extensions.enabledScopes" = 5;
  "extensions.postDownloadThirdPartyPrompt" = false;

  # ETP (ENHANCED TRACKING PROTECTION)
  "browser.contentblocking.category" = "strict";

  # SHUTDOWN & SANITIZING (continued)
  "privacy.clearOnShutdown_v2.cache" = true;
  "privacy.clearOnShutdown_v2.historyFormDataAndDownloads" = true;
  "privacy.clearOnShutdown_v2.cookiesAndStorage" = true;

  # OPTIONAL HARDENING
  # These settings are commented out in the original template; uncomment if needed
  # "mathml.disabled" = true;
  # "svg.disabled" = true;
  # "gfx.font_rendering.graphite.enabled" = false;
  # "javascript.options.asmjs" = false;
  # "javascript.options.ion" = false;
  # "javascript.options.baselinejit" = false;
  # "javascript.options.jit_trustedprincipals" = true;
  # "javascript.options.wasm" = false;
  # "gfx.font_rendering.opentype_svg.enabled" = false;
  # "media.eme.enabled" = false;
  # "browser.eme.ui.enabled" = false;
  # "network.dns.disableIPv6" = true;

  # DON'T TOUCH
  "extensions.blocklist.enabled" = true;
  "network.http.referer.spoofSource" = false;
  "security.dialog_enable_delay" = 1000;
  "privacy.firstparty.isolate" = false;
  "extensions.webcompat.enable_shims" = true;
  "security.tls.version.enable-deprecated" = false;
  "extensions.webcompat-reporter.enabled" = false;
  "extensions.quarantinedDomains.enabled" = true;

  # NON-PROJECT RELATED
  # "browser.startup.homepage_override.mstone" = "ignore";
  "browser.newtabpage.activity-stream.asrouter.userprefs.cfr.addons" = false;
  "browser.newtabpage.activity-stream.asrouter.userprefs.cfr.features" = false;
  "browser.urlbar.showSearchTerms.enabled" = false;
}
