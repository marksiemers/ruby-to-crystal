# ruby-to-crystal

Examples of ruby code converted to crystal and benchmarks to show the speed increase with compiled crystal code.

## Installation & Usage

1. Clone the repo
```
git clone git@github.com:marksiemers/ruby-to-crystal.git
# OR
git clone https://github.com/marksiemers/ruby-to-crystal.git
```
2. Choose an example and cd into that directory
```
# for leap-year
cd leap-year
```
3. Run the ruby example
```
ruby leap_year.rb
```
4. Run the crystal example
```
crystal eval 'require "./leap_year"'
```
5. Run the ruby benchmark
```
ruby leap_year_bench.rb
```
6. Compile and run the crystal benchmark
```
crystal build --release leap_year_bench.cr -o leap_year_bench.out
./leap_year_bench.out
```
7. Pledge your undying allegiance to crystal

## Development

If you want to add an example, create a folder that contains these files at a minimum:
- `{example}.cr`
- `{example}.rb`
- `{example}_bench.cr`
- `{example}_bench.rb`

Additionally, it may be helpful to provide an `{example}.sh` that will execute the example in both language and report the benchmark results.

## Contributing

1. Fork it ( https://github.com/marksiemers/ruby-to-crystal/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [marksiemers](https://github.com/marksiemers) Mark Siemers - creator, maintainer
