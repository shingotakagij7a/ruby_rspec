describe IntTriangle do
  describe '3つの入力が正の整数で三角形を作成する条件を満たす場合にインスタンス作成に成功する' do
    it '3辺の長さが1,1,1の三角形を作成できる' do
      triangle = IntTriangle.new(1, 1, 1)
      expect(triangle.side_a).to eq 1
      expect(triangle.side_b).to eq 1
      expect(triangle.side_c).to eq 1
    end

    it '3辺の長さが1,2,3の三角形を作成できない' do
      expect { IntTriangle.new(1, 2, 3) }.to raise_error(ArgumentError, 'The given sides do not form a valid triangle')
    end

    it '3辺の長さが0,1,1の三角形を作成できない' do
      expect do
        IntTriangle.new(0, 1, 1)
      end.to raise_error(ArgumentError, 'The given sides contain a zero or negative value')
    end

    it '3辺の長さが-1,1,1の三角形を作成できない' do
      expect do
        IntTriangle.new(-1, 1, 1)
      end.to raise_error(ArgumentError, 'The given sides contain a zero or negative value')
    end

    it '3辺の長さが0.1,1,1の三角形を作成できない' do
      expect { IntTriangle.new(0.1, 1, 1) }.to raise_error(ArgumentError, 'The given sides contain a float value')
    end
  end

  describe '三角形は周囲の長さを 3 つの辺の長さの和として整数値で返せる' do
    it '3辺の長さが1,1,1で3を返す' do
      triangle = IntTriangle.new(1, 1, 1)
      expect(triangle.perimeter).to eq 3
    end

    it '3辺の長さが3,4,5で12を返す' do
      triangle = IntTriangle.new(3, 4, 5)
      expect(triangle.perimeter).to eq 12
    end
  end
end
