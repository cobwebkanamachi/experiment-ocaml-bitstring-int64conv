# experiment-ocaml-bitstring-int64conv<BR>
This is an experiment of ocaml-bitstring, esp. convert to Int64(stdlib).<BR>
Please read about ocaml bitsring shown bellow.<BR>
https://people.redhat.com/~rjones/bitstring/<BR>
<BR>
1. Download<BR>
I downloaded that from here: https://code.google.com/archive/p/bitstring/downloads<BR>
then gzip -dc ocaml-bitstring-2.0.4.tar.gz|tar xvf -<BR>
<BR>
2. make<BR>
type make<BR>
<BR>
3. make test<BR>
type make test<BR>
then I got assert error on test18 (on my environment).<BR>
<BR>
4. put test_18_mine.ml into tests dir.<BR>
then type make test<BR>
5. output of test_18_mine.ml<BR>
You would get shown bellow when you type make test.<BR>
<pre>
Building tests/test_18_mine
Running tests/test_18_mine
dump of 1_L in bitstring of int64:00000000  00 00 00 00 00 00 00 01                           |........        |
1_L to bitstring of int64 to int64:1
dump of 2_L in bitstring of int64:00000000  00 00 00 00 00 00 00 02                           |........        |
2_L to bitstring of int64 to int64:2
dump of 3_L in bitstring of int64:00000000  00 00 00 00 00 00 00 03                           |........        |
3_L to bitstring of int64 to int64:3
</pre>
That is all.<BR>
