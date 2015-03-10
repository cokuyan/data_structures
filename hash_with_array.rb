class ArrayHash

  def initialize
    @keys = []
    @values = []
  end

  def []=(key, value)
    index = hash(key)
    index += 1 until (@keys[index] == key) || @keys[index].nil?
    @keys[index] = key
    @values[index] = value
  end

  def [](key)
    return nil unless @keys.include?(key)

    index = index_of(key)
    @values[index]
  end

  def delete(key)
    return nil unless @keys.include?(key)

    index = index_of(key)
    @keys[index] = nil
    @values[index] = nil
  end

  def keys
    @keys.compact
  end

  def values
    @values.compact
  end

  private

  def index_of(key)
    index = hash(key)
    index += 1 until @keys[index] == key
    index
  end

  def hash_code(key)
    new_key = key.to_s

    hash_code = 0
    new_key.each_char { |char| hash_code = 31 * hash_code + char.ord }
    hash_code
  end

  def hash(key)
    hash_code(key) % 97
  end

end
