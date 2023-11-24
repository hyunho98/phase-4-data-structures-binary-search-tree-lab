require_relative './node'

class BinarySearchTree
  attr_accessor :root

  def initialize(root = nil)
    @root = root
  end

  def search(value, node = root)
    # your code here
    if node.nil?
      return nil
    end

    if value == node.value
      return node
    end

    if node.left || node.right
      value < node.value ? node = node.left : node = node.right
      return search(value, node)
    end
  end

  def insert(value)
    # your code here
    newNode = Node.new(value)
    node = root

    if root.nil?
      @root = newNode
      return newNode
    end

    while true
      if newNode.value == node.value
        return nil
      end

      if newNode.value < node.value
        if node.left.nil?
          node.left = newNode
          return newNode
        end

        node = node.left
      end

      if newNode.value > node.value
        if node.right.nil?
          node.right = newNode
          return newNode
        end

        node = node.right
      end
    end
  end
end 
