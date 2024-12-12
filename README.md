# uniwig exampls
Code for producing `.bw` files that seem slightly incorrect.

## Environment
I am using the latest `gtars` installed/built locally from the master branch:
```
git checkout master
git pull
cargo install --profile=release --path=gtars/
```

To convert `.wig` files to `.bw` I am using [kent utils](https://github.com/ENCODE-DCC/kentUtils).

## Running
Please see the `scripts.sh` file to see what I ran. Some more info:

- The sample file comes from some peaks called on the large scATAC atlas.
- The chrom sizes was downloaded from the internet (I forget where)
- I havn't tried outputting to bed graphs **or** big wigs directly yet, but I can

## Outputs
I used IGV to visualize the output and this is an example of an oddity that I see:

At `chr1:122,984,535-127,257,915` I can see some weirdness with accumulation not being subtracted:
<img width="914" alt="image" src="https://github.com/user-attachments/assets/c61e84d4-8a1e-4022-9d35-1d3bdd412410" />

Another example in a busier area (`chr1:116,896,772-123,342,964`):
<img width="773" alt="image" src="https://github.com/user-attachments/assets/01774cfd-ad7a-4731-bf18-80e67862c2b7" />

