# OSA Icons for dia
This provides Dia Open Security Architecture (OSA) Network Icons

This is based on https://github.com/kazuhisya/dia-aws-simple-icons and https://github.com/pieterlange/aws-dia-shapes

http://www.opensecurityarchitecture.org/cms/library/icon-library

## System Requirements

- dia
- ImageMagick (`convert` command)
- ruby (`rexml/document`, it is included in the standard Ruby distribution.)

## Usage
```bash
$ git clone https://github.com/allyunion/osa-dia-shapes
$ cd osa-dia-shapes
$ ./doit.sh
$ cat ./.outputs/shapes.sheet  > ~/.dia/sheets/osa.sheet
$ cp ./.outputs/shapes/* ~/.dia/shapes/
```

## License

- OSA Network Icon Library
    - Not specified
    - See Also: http://www.opensecurityarchitecture.org/cms/library/icon-library

- Makefile
    - Please observe the following
    - From: https://github.com/cipriancraciun/mosaic-blueprints/blob/master/dia-shapes/aws/makefile
