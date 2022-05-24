# Zotero interface example

This Python script loads [``json``](https://www.json.org/json-en.html) data exported from a specified Zotero library, and allows searching via the article tags.

The ``json`` file (by default, ``items.json``) acts as a local cache of the Zotero information, and as such will not update automatically. This prevents exhausting any limits to the Zotero API access, and speeds up the process as we avoid downloading the information every time the script is used.

To force an update of the cached Zotero library information, simply delete the existing ``json`` cache file.

Also included is a simple [``Bash``](https://www.gnu.org/software/bash/) script demonstrating how to fetch the ``json`` cache file outside of the Python script using the standard [``curl``](https://curl.se) utility.

### Prerequisites:

- Python 3
- [Pyzotero](https://github.com/urschrei/pyzotero) - this seems to be a fairly standard library interface for Zotero. Fetch it via e.g., ``pip3 install pyzotero``. Documentation [here](https://pyzotero.readthedocs.io/en/latest/).
- ``Bash`` / ``curl`` if using the Bash script to fetch the Zotero cache data.

### Usage

*Important note*: You will have to insert your own [Zotero access key](https://www.zotero.org/support/dev/web_api/v3/basics) for the variable ``api_key`` in the ``test.py`` script. The same applies to the ``test.sh`` Bsh script!

Assuming you have the ``Pyzotero`` module installed, simply type ``python3 test.py`` in an appropriate shell (I tested it with [``Bash''](https://www.gnu.org/software/bash/), but other shells should work just fine).

The output is a _lot_ of debug information, and then some simple example tests to filter the resultant cached articles usig specified tags.
