class Node

  attr_reader :children
  attr_accessor :terminal

  def initialize(terminal = false)
    @terminal = terminal
    @children = Array.new(26)
  end

  def add_child(child, index)
    @children[index] = child
  end

end

class Trie

  def initialize
    @root = Node.new
  end

  def add(word)
    current = @root
    word.each_char do |char|
      idx = char_index(char)
      if @root.children[idx].nil?
        child = Node.new
        @root.add_child(child, idx)
        current = child
      else
        current = @root.children[idx]
      end
    end

    current.terminal = true
  end

  def include?(word)
    current = @root
    word.each_char do |char|
      idx = char_index(char)
      if @root.children[idx].nil?
        return false
      else
        current = @root.children[idx]
      end
    end

    current.terminal
  end

  private

  def char_index(char)
    char.ord - “a”.ord
  end

end
