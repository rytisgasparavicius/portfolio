Here's a useful method which should produce clickable references in any Markdown editor:

At the end of each header, add an empty anchor with a chosen name — e.g. <a name="foo"></a>.
At the start of the document, list the headers with a link to their anchors — e.g. [Foo](#foo).
So this:

# Table of contents
1. [Introduction](#introduction)
2. [Some paragraph](#paragraph1)
    1. [Sub paragraph](#subparagraph1)
3. [Another paragraph](#paragraph2)

## This is the introduction <a name="introduction"></a>
Some introduction text, formatted in heading 2 style

## Some paragraph <a name="paragraph1"></a>
The first paragraph text

### Sub paragraph <a name="subparagraph1"></a>
This is a sub paragraph, formatted in heading 3 style

## Another paragraph <a name="paragraph2"></a>
The second paragraph text
