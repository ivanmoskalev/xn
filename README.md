# dear

dear is a (slowly) growing collection of Swift libraries for macOS and iOS, released into the public domain.

## Philosophy

Knowledge should be released into public domain as much as reasonably possible. These libraries are my way of sharing what I learned with fellow engineers.

## Libraries

### [dear-swift](https://github.com/ivanmoskalev/dear-swift)
Swift language extensions and algorithms that are too general to warrant their own packages.

```swift
.package(url: "https://github.com/ivanmoskalev/dear-swift.git", from: "1.0.0")
```

### [dear-levenshtein](https://github.com/ivanmoskalev/dear-levenshtein)
Generic Levenshtein edit distance implementation with **O(n × m)** time and **O(m)** space complexity.

```swift
.package(url: "https://github.com/ivanmoskalev/dear-levenshtein.git", from: "1.0.0")
```

### [dear-sais](https://github.com/ivanmoskalev/dear-sais)

Swift implementation of the SA-IS algorithm for building suffix arrays in **O(n)** (as compared to more usual **O(n × log(n))**.

```swift
.package(url: "https://github.com/ivanmoskalev/dear-sais.git", from: "1.0.0")
```

## Under Construction

### [dear-kv](https://github.com/ivanmoskalev/dear-kv)
Key-value store based on LMDB.

## Contributing

Please note that contributions are accepted if they align with the vision for the library. Please open an issue in the respective repository first to discuss proposed changes. 

## License

This project is released into the public domain under [The Unlicense](https://unlicense.org/). Do whatever you want with it however you want.
