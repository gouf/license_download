[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy?template=https://github.com/gouf/license_download)

## Setup & Usage

It just same as gitignore.io ( https://www.gitignore.io/docs )

```bash
echo "function li() { curl -L -s https://licensedownload.herokuapp.com/\$@ ;}" >> ~/.bashrc && source ~/.bashrc
```

```bash
li mit > LICENSE
```

## Supported license files

list of keywords and files:

```ruby
LICENSE_LIST = {
  apache:    'apache_license_2.0',
  artistic:  'artistic_license_2.0',
  cc0:       'cc0_1.0_universal',
  eclipse:   'eclipse_public_license_v1.0',
  affero:    'gnu_affero_gpl_v3.0',
  gpl2:      'gnu_gpl_v2.0',
  gpl3:      'gnu_gpl_v3.0',
  lgpl2:     'gnu_lgpl_v2.1',
  lgpl3:     'gnu_lgpl_v3.0',
  isc:       'isc_license',
  mit:       'mit',
  mozilla:   'mozilla_public_license_2.0',
  nbsd:      'new_bsd',
  unlicense: 'public_domain_unlicense',
  sbsd:      'simplified_bsd'
}
```
