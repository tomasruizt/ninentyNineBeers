# 99 Beers (in R)

### Running the generation
To generate the lyrics of 99 bottles of beer execute the command:
```shell
$ Rscript main99.R
...
1 bottle of beer on the wall, 1 bottle of beer
Take one down and pass it around, no more bottles of beer on the wall

No more bottles of beer on the wall, no more bottles of beer
Go to the store and buy some more, 99 bottles of beer on the wall
```
To generate the lyrics for a number of *n* bottles of beer (e.g., `n=3`):
```shell
$ Rscript main_n.R 3
ℹ Loading ninetyNineBeers
The generated lyrics for n=3 are:
3 bottles of beer on the wall, 3 bottles of beer
Take one down and pass it around, 2 bottles of beer on the wall

2 bottles of beer on the wall, 2 bottles of beer
Take one down and pass it around, 1 bottle of beer on the wall

1 bottle of beer on the wall, 1 bottle of beer
Take one down and pass it around, no more bottles of beer on the wall

No more bottles of beer on the wall, no more bottles of beer
Go to the store and buy some more, 3 bottles of beer on the wall
```
### Running the tests
1. Open R
2. In the console run:
```R
> devtools::test()
ℹ Loading ninetyNineBeers
ℹ Testing ninetyNineBeers
✓ | F W S  OK | Context
✓ |         7 | ninety_nine_beers                                                          
══ Results ════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
[ FAIL 0 | WARN 0 | SKIP 0 | PASS 7 ]
```
