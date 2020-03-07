'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/main.dart.js": "7ab376a7597697c254e2dc333bdcb5e2",
"/index.html": "125a3907fde665c7174f14065e3e6d62",
"/assets/FontManifest.json": "d73e73ac392ba5e358cb9dbe7e52f7bd",
"/assets/abd_profile.jpeg": "50897d2fee6a8df7ad80026fcaef776e",
"/assets/LICENSE": "0f14d60a1f3cfc527f112c4c272dc474",
"/assets/fonts/SourceSansPro-Regular.ttf": "c1678b46f7dd3f50ceac94ed4e0ad01a",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/assets/fonts/GoogleSans-Medium.ttf": "8d57e4014b18edef070d285746485115",
"/assets/fonts/Spartan-Medium.ttf": "217d42a9239169e2273937872d6ed272",
"/assets/fonts/GoogleSansRegular.ttf": "b5c77a6aed75cdad9489effd0d5ea411",
"/assets/images/abd_profile.jpeg": "50897d2fee6a8df7ad80026fcaef776e",
"/assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "0ea892e09437fcaa050b2b15c53173b7",
"/assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "51d23d1c30deda6f34673e0d5600fd38",
"/assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "d51b09f7b8345b41dd3b2201f653c62b",
"/assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"/assets/GoogleSansRegular.ttf": "b5c77a6aed75cdad9489effd0d5ea411",
"/assets/AssetManifest.json": "32708e2eb6ee3f0b9093987c4f48adcd",
"/icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"/icons/abd_profile.jpeg": "50897d2fee6a8df7ad80026fcaef776e",
"/icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"/manifest.json": "8cd4dbdf05b5260f02ce9d0c18abb886"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request, {
          credentials: 'include'
        });
      })
  );
});
