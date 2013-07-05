
==============================

Array() の動作でわからない点があり、再現してみるためのコードです。

bubble-wrap を使っているのは、プログラム内で生成したarray/hashデータでは再現しなかったため、問題に遭遇したデータを得るために使っています。


問題点は、下記のコードのうち Array() で生成される結果が違うところです。
(size はわかりやすさのための出力です)

```ruby
puts categories.size         # => 47
puts Array(categories).size  # => 3
puts Array(dummy_array).size # => 47
```
