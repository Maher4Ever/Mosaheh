Mosaheh
=======

Mosaheh, Arabic for corrector, is a ruby lib which can repair UTF-8 Arabic (U+0600 - U+06FF) text that has been mistakenly saved as single-byte latin1 encoding (cp1252). 

Usage
-----
    
    # encoding: UTF-8
    require 'mosaheh'

    encoder = Mosaheh::Encoder.new
    encoder.repair 'Ø¹Ø±Ø¨ÙŠ' # => عربي

When to use
-----------

The biggest usecase for it is to repair Arabic data stored in MySql databases with the wrong encoding.

Imagine that you have a MySql database which has the correct collation for a utf-8 data, but the MySql driver was sending the data as latin1 (default in PHPs PDO for example). 
In this case Mosaheh will be your savior, especially if you have a lot of invaluable data.

LICENSE
-------

(The MIT License)

> Copyright (C) 2011 by Maher Sallam
> 
> Permission is hereby granted, free of charge, to any person obtaining a copy
> of this software and associated documentation files (the "Software"), to deal
> in the Software without restriction, including without limitation the rights
> to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> copies of the Software, and to permit persons to whom the Software is
> furnished to do so, subject to the following conditions:
> 
> The above copyright notice and this permission notice shall be included in
> all copies or substantial portions of the Software.
> 
> THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
> THE SOFTWARE.
