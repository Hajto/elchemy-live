import json
import os


_CDN_BASE = os.environ['CDN_BASE']
_PRODUCTION = os.environ['ENV'] != 'development'

with open('./build/manifest.json') as file_data:
    _manifest = json.load(file_data)

def is_my_asset(relative: str) -> bool:
    if relative in _manifest:
        return True
    else:
        return False

def true_asset(rel: str) -> str:
    return _manifest[rel]

def asset_path(relative: str) -> str:
    if relative in _manifest:
        return '/assets/' + _manifest[relative]
    else:
        return 'kurwa'

