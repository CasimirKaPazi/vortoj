Item translation mod for Minetest
=================================

This mod translates the item description into the language defined in the settings.

Currently supported languages:
DE, ES, FR, ID, IT, JA, TP, TR

This mod softdepends on all supported mods so it gets loaded after them.

Adding a new language
---------------------

* copy sample_language.lua to your own language
* rename it according to your own language code, in capital letters
* translate :)

Adding new strings
------------------

* First add them - without translation - to sample_language.lua
* Then add them again - translated, this time - to any language you want/can.

This way, other translators would only have to "diff" sample_language.lua to keep track of additions.

License
-------

License of source code: GPLv3 or later

License of translations: Translations undefined for license fall back to GPLv3. Others should use CC0.
Also sample_language.lua is licensed as CC0 for reuse.

Translations currently undefined: FR, IT, JA

Translations licensed as CC0: DE, ES, ID, TP, TR
