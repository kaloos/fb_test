require 'ArrFb'


RSpec.describe 'A FB array' do
  it 'should be created' do
    arr_fb = ArrFb.new
    expect(arr_fb).not_to eq(nil)
  end
  it 'should multiply its members except itself when empty' do
    arr_fb = ArrFb.new
    arr_fb.prod_fb
    expect(arr_fb).to eq([])
  end
  it 'should multiply its members except itself when having 1 member' do
    arr_fb = ArrFb.new
    arr_fb << 3
    arr_fb.prod_fb
    expect(arr_fb).to eq([1])
  end
  it 'should multiply its members except itself when having 2 members' do
    arr_fb = ArrFb.new
    arr_fb << 3
    arr_fb << 5
    arr_fb.prod_fb
    expect(arr_fb).to eq([5, 3])
  end
  it 'should multiply its members except itself when having more than 2 members' do
    arr_fb = ArrFb.new
    arr_fb << 3
    arr_fb << 5
    arr_fb << 7
    arr_fb.prod_fb
    expect(arr_fb).to eq([35, 21, 15])
  end
  it 'should multiply its members except itself when having more than 2 members (2)' do
    arr_fb = ArrFb.new
    arr_fb << 3
    arr_fb << 5
    arr_fb << 7
    arr_fb << 8
    arr_fb.prod_fb
    expect(arr_fb).to eq([280, 168, 120, 105])
  end

end
