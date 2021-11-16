'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"index.html": "f9335ed23430c0c10cc75b8f716c8376",
"/": "f9335ed23430c0c10cc75b8f716c8376",
"assets/FontManifest.json": "c1470c7ca52c0fd296b7a1a7a326553d",
"assets/assets/fonts/Kaushan_Script/KaushanScript-Regular.ttf": "bafd78da573962d22a817cf22678c8dc",
"assets/assets/fonts/Montserrat/Montserrat-Thin.ttf": "43dd5b7a3d277362d5e801e5353e3a01",
"assets/assets/fonts/Montserrat/Montserrat-ExtraBoldItalic.ttf": "52a50ca037f2f96fa567404dc3c5bdfb",
"assets/assets/fonts/Montserrat/Montserrat-Bold.ttf": "ade91f473255991f410f61857696434b",
"assets/assets/fonts/Montserrat/Montserrat-ExtraLightItalic.ttf": "1170df5548b7e238df5fa14b6f1a753e",
"assets/assets/fonts/Montserrat/Montserrat-BoldItalic.ttf": "1b38414956c666bd1df78fe5b9c84756",
"assets/assets/fonts/Montserrat/Montserrat-SemiBold.ttf": "c641dbee1d75892e4d88bdc31560c91b",
"assets/assets/fonts/Montserrat/Montserrat-Regular.ttf": "ee6539921d713482b8ccd4d0d23961bb",
"assets/assets/fonts/Montserrat/Montserrat-ExtraBold.ttf": "19ba7aa52a78c3896558ac1c0a5fb4c7",
"assets/assets/fonts/Montserrat/Montserrat-Italic.ttf": "a7063e0c0f0cb546ad45e9e24b27bd3b",
"assets/assets/fonts/Montserrat/Montserrat-ExtraLight.ttf": "570a244cacd3d78b8c75ac5dd622f537",
"assets/assets/fonts/Montserrat/Montserrat-MediumItalic.ttf": "40a74702035bf9ef19053c84ce9a58b9",
"assets/assets/fonts/Montserrat/Montserrat-ThinItalic.ttf": "3c2b290f95cd5b33c3ead2911064a2ab",
"assets/assets/fonts/Montserrat/Montserrat-Medium.ttf": "c8b6e083af3f94009801989c3739425e",
"assets/assets/fonts/Montserrat/Montserrat-LightItalic.ttf": "01c4560c9c15069b6700ce7ad2e49a9c",
"assets/assets/fonts/Montserrat/Montserrat-SemiBoldItalic.ttf": "83c1ec1f1db9a6416791f7d9d29536f2",
"assets/assets/fonts/Montserrat/Montserrat-Light.ttf": "409c7f79a42e56c785f50ed37535f0be",
"assets/assets/images/background-jumbotron.jpg": "ffa58932303686f05851948fb73cd602",
"assets/assets/images/background-education.jpg": "42a0c12c1e925c8cc175881046e9d3d9",
"assets/AssetManifest.json": "1f22dd7267a6dc542705491354a03213",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "7d6a86e31ee2aeb3b0559b0705ad35fb",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "b37ae0f14cbc958316fac4635383b6e8",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "aa1ec80f1b30a51d64c72f669c1326a7",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "5178af1d278432bec8fc830d50996d6f",
"version.json": "1bcd77b377a76afa446cafde42f21bda",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"manifest.json": "fe3efdabbab826762c914b1b0811f44f",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/config": "e3f42381150c2c0a9f22ff2439788cd0",
".git/refs/heads/master": "e4700d074ed5fe646c385fb869fe9b2a",
".git/refs/remotes/origin/master": "273a93c58a23067402ad11df5a4f0f48",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/index": "7d94cdb58874bb95105268f70830d6d9",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/85/0119e6b6a683d35535feecdc0dbae7614c35ea": "70d4ed8096ad92a277706cc741f483dc",
".git/objects/85/5d3f998c5fe874e83176ffd3e0daec1be3feea": "01811a5093ee4633f2b73ca4e879fadf",
".git/objects/60/b8bb9582d339b036ac8c02adcfa7f44b493970": "5b6780892c529010f12f79856882fbec",
".git/objects/9b/b072c026079965309217333f394099d975dee2": "b4a2ef36e8c09a1da9246b29193a595c",
".git/objects/50/0fd5db787469be4de608432c61b8c9c3c32b1c": "e080538bafda9747928e858e9b36c86b",
".git/objects/69/28e167de5b1538b7c36ef75255d61ad71ec04e": "e165af6d1b20a03dfae3e080746c9ab5",
".git/objects/67/9bcef768472b7c4ec93b0edcc14e5456912287": "075c621fd80de921c97b425fbbf79bf7",
".git/objects/80/ea8061b046af5af78623788022a3bdd9f79994": "76b11b4e5efcdd1ebbbcdcd298ff6011",
".git/objects/99/4761922386f6aa255e2001de5c6ec259f988be": "d3038ff6a7f94b9956aae256f2d25388",
".git/objects/99/0857de8e03f4db6c2e1112045dfa37ed2d675d": "c6c0a2e381bb5650bc0bc39a55a42b2d",
".git/objects/22/1819bca06ec2b584dd1c24ccd701082d12774f": "2b4dafa16f0126cf2f9badcb914b8567",
".git/objects/90/8e2a7954857695b8b9d33659926ce8ce19ee0b": "b38d25ba8359fc6665e92acd8c5b8533",
".git/objects/90/84bd9d2397bd4cb8e3b0556e6d17f65c1cb61a": "dbe832b0167966f894bddd59539595bf",
".git/objects/90/8c75a9985ed9ac03536d7e2fedd45bcb8e6ab3": "8c5c7709b97fcb5cc682f13f5152b1d7",
".git/objects/ef/c840e675d49ec651f1356089d0c9c6352d76fa": "039f3e37666de40d8359511f66f77601",
".git/objects/52/2dc72a6eb76e90a9dc1ba007d82394d9402c53": "bc6dc5e58435b640d75990caf00eddee",
".git/objects/5f/a2017b4304a0ce0f25bdf91f6b5346b5636681": "fc1243ace78ca2f4375e19c6fed22df0",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/a1/8628aa4aeb6c96283630d92eacec64af2d3c9c": "4aea981dd1ed09ce810aac47ee7eacda",
".git/objects/e3/02f24e4337daa7de52b98364cc9077d81fa5fe": "eeceb3c05f308a35b16353494ba2b808",
".git/objects/7a/e2e8bd9d424a8f209fc651063b6d8323ee73e4": "67cb8f67d30c566848508911134498e1",
".git/objects/07/bc88b39fc4419486fbb4e71edeb1b69b60271e": "875868c55b8da60292e256c3837a96bc",
".git/objects/32/46ad559eeae0370195978eaed83f1053ee13fd": "a043dbc0a0bda96ce2127799ccc27506",
".git/objects/4f/ca84029fe1a40a7c3d5b9d2f6b2b5387d05b87": "f19da786695b357b072627bc81c5b4ec",
".git/objects/bc/61863de397937d5dead8c953c65424b4cf02f5": "42f4f6344c93a9b3390838b832353007",
".git/objects/4b/da1e205e646c62d9e5a88eb01f8505c03c4760": "ff055d927bd6565aa8555aa87b649ead",
".git/objects/6f/2073ee85ef8bff60af5d532000f0d816a7cf74": "3e5f34987de119a489d89f66c62e4ce0",
".git/objects/96/a2b72d3dac2552ebd1743271463f082b52334d": "9dbb439e2b938a335b3ee2da59fb41cf",
".git/objects/63/4ddc82c4eba2b2395e447a68bf7f51efc01d7a": "fe30e5f655cde310e0c8998b855cedc0",
".git/objects/79/ef71917c9320b42dffe2c91676d5c9b7e5a9d0": "62148c6f1b3ad03f390ec48aed979e4a",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/0d/c58b770a8e8b73f5f7188e9e0616b687a46f15": "be0a3c6a82fb8ce3e9fe5de4e825eaba",
".git/objects/0d/c3ac9c29cb870a141d10dd6225c06205c17872": "275c5612ea18552fe336dc16c28958fe",
".git/objects/c1/f47c4c6923f91dadc40944a3e02927f91a4b76": "a150be616e9bc544b0f9bf1229bc8d67",
".git/objects/c1/06fbdad6486c41389311f3a4a3984bf2954fe2": "e08b27451262a92bf0702dc0a838efa5",
".git/objects/6c/961e1cc944ee69e76b98bdc97c549fafdba31b": "fffdd8f90bcd184fa508766d24fd5035",
".git/objects/6c/c946f022b84ac0d293f774c50e2cf0818808e3": "2af64bc5f844d4241e378c1d770faef6",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/b9/858757eb98286718cc526d245ee2ed50e3b68b": "3b20615aa9092e71e91ac6624e0a8649",
".git/objects/9f/c23c0c388bb4f3c3cb689504179e6202d6c05c": "c6f4560aea0f9036d6522d3999ccc3df",
".git/objects/c2/271a262cf347628dd0e5c4bb6ac65aa7e0b0ee": "00421909814fb1070da17568ed06932f",
".git/objects/9a/e2bd240fee41917519b3d57a2818606e3d9de2": "06c4f51cbb3b3e5f710106bc89885c43",
".git/objects/57/7764ea9a58687840ab4d7feae17fde23b1c484": "b399c1d5e3ab2685f02c6d0a33e3c6c8",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/bd/c4ac8fcc457ed69920de2590232fbdb335694b": "d89718edd75f96beb4da9791c93991ca",
".git/objects/bd/ec9882829f2f9d358f4fbced1de82ff44acd31": "b2958e763458e72c737e13de926172cf",
".git/objects/26/2b125d2ba2ad1ca41d72a190503c97a361a6f3": "0ecc20633c0733ebfeca6b0862d35faf",
".git/objects/a0/c52abfdd3e7cb3ef0057cd9c6658b0174db189": "b8f66986d3a7f9c9c4ddf33a2c77407f",
".git/objects/f7/675a6f456db885f924565fd9462ebfce4e3bbb": "679e10f308e07787af55d5b5a867d947",
".git/objects/a8/beffd3ad4fe54d6cabccf83a05477d6a986cd0": "6677888e4a051c7838b5b240c09f0981",
".git/objects/d2/0c7eb3070fb088da7da91f30ecc69f781bbafb": "ebd146ed9d20a81d70d5672fb763d589",
".git/objects/2e/5b9f163d6755786e219b435077d72633c19c18": "3590b084174d12f139d31e94eb0e375a",
".git/objects/8d/443d5d56ac36091e9689cd5d1b1948d9124545": "eb1c5a32937a98bb8b8612d5fad02130",
".git/objects/04/28b0e63c1ce7764f8bcef66f45153133771d35": "c6e9633b991c5c24918b1c0d6d81c099",
".git/objects/2a/6390bdbccec09716383a580732d1a8633ab093": "5a983cc0e838ae1803d628f830b027a0",
".git/objects/6b/e32efe3e4dc9a709b06df38b7e6814ea8aff83": "683d2dd587a4e07002854a71b7ce46cb",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/23/637bc3573701e2ad80a6f8be31b82926b4715f": "5f84f5c437bb2791fdc8411523eae8ff",
".git/objects/2b/14e77180ac381f96d7f915a355f93238ecd380": "e67de27922b01edb0ec0425ef28edc7b",
".git/objects/8c/38fff2f64f5484cc7a9a939546b386b201ad35": "192aff90f91d20223bcc71416fe12b4a",
".git/objects/8c/da78f886de79c419791a6cb446c8972d741f08": "ed2a74e08472aa172d9e47d14793dc68",
".git/objects/f8/c5e3bd79a641fd4fa2a2b5e87e42fc4ef7bdac": "16e0735fb4d249aa9ee6a56ff9b762bc",
".git/objects/f8/a43f2b203054676b64e38e2b78af5468c39b6d": "c74b50a853cc4b1a5f5dc1f07b4a619a",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/20/9604046b343269618c3a857bc5c00238db7171": "203cb97ce9b93de601536870c11ef549",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/eb/4232a0c2cd4970128e5271fec45b6868fa2eae": "82bdd55a92e7f57744f34ab6ab555ae9",
".git/objects/6e/079f6984098cc53f68a24390936a73a6dcd944": "9860083b26475cb02af305975737a70b",
".git/objects/62/0b2cb14611082fdb46a2688b7f1af24699a4f6": "a5758daff474aa44dc3234348e97a771",
".git/objects/e4/88998ec79ac8e5bde78cf3ba1f4991d5e25511": "41e1351ae09919a6a33730498d824ce5",
".git/objects/5e/ba35632159a5ec71de4209784afe66efa44abf": "4de5750cd6954008ba9b4896d896e440",
".git/objects/b2/5d54fd4d894eb8a44fcd39604222cf6471fadc": "64a576fdace75a9f8c8ddac9d8fee43b",
".git/objects/33/6c56ec0cf2e118410440df4f81bde7fc464b1d": "8bd0f670368139f7292b9ffef26e0396",
".git/objects/54/eac259f47603ac571d9fd09db3171ac90de37f": "dc5ea15c47f02bd227987aa2e741e725",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/4d/d119932d3ba03fa4dc823d0b76a03b027f9080": "93c8feed8f51380bc338f2c4f3cd3a88",
".git/objects/f3/c1559ec7f7353d50be555554bd1715170d1115": "e756f75d544838f0db4e7785a0a24cd7",
".git/objects/ca/c1f440b5f62227fb8bb2dc1558e5d5dc234fd8": "9c515dc0747f80dc2ddda52a0424ba23",
".git/objects/ca/0bbb6569d51021125875d40e951ca09e5be5ca": "a6c6b5af18511e82330ce3649aa04f57",
".git/objects/cb/1bfe26b9860c51f80ff07af83f1d9abe11eb0f": "00cb5d73d50953873101609923c00f34",
".git/objects/3c/c9fa5f2dcaa71039a9053e9e0b1b84e5cc10ac": "48ec1258936fc854b39e704b5d1763b9",
".git/objects/3c/f1baa5c1c429079dd0fd32dd9bef08d4a2bb2a": "48293457a1953ef2360bea6a260a572d",
".git/logs/refs/heads/master": "c8c75cb4e23af6700806ef9aa796018a",
".git/logs/refs/remotes/origin/master": "0ba4f223e544dd9fff5d7dcb89a17bb8",
".git/logs/HEAD": "c8c75cb4e23af6700806ef9aa796018a",
".git/COMMIT_EDITMSG": "c90c8cd50017e0c84da6ef6cd1c0bfb7",
".git/hooks/fsmonitor-watchman.sample": "ecbb0cb5ffb7d773cd5b2407b210cc3b",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/pre-commit.sample": "01b1688f97f94776baae85d77b06048b",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/update.sample": "517f14b9239689dff8bda3022ebd9004",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "3c5989301dd4b949dfa1f43738a22819",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/HEAD": "4cf2d64e44205fe628ddd534e1151b58",
"main.dart.js": "a6ac00a8693d2093ab0f0f22e242bdae"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
