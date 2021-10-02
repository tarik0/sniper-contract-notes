# Palkeoramix decompiler. 

def storage:
  owner is addr at storage 0
  router is addr at storage 1
  __owner is addr at storage 2
  _owner is addr at storage 3
  unknownMap is mapping of uint256 at storage 4
  swapPath is array of struct at storage 5
  swapPath3Lenght is array of struct at storage 6
  stor7 is uint32 at storage 7
  stor7 is uint256 at storage 7 offset 32
  stor7 is uint256 at storage 7
  boolAboutSwapPath is uint256 at storage 8

def unknown432d5802(addr _param1): # not payable
  require calldata.size - 4 >= 32
  if owner != caller:
      revert with 0, 'Ownable: caller is not the owner'
  unknownMap[addr(_param1)] = 1

# https://bscscan.com/tx/0xaaac73d633c7f2a0718929bed9b54a98fcc8762f4a27bba9bf2cf7ca0caa68f6
# 0xf191414b
# 000000000000000000000000000000000000000000002a5a058fc295ed000000
# 0000000000000000000000000000000000000000000000000000000000000001
def unknownf191414b(uint256 _param1, uint256 _param2): # not payable
  require calldata.size - 4 >= 64
  if owner != caller:
      revert with 0, 'Ownable: caller is not the owner'
  uint256(stor7.amountTokenToBuy?) = _param1
  boolAboutSwapPath = _param2

def unknownf6f33638(): # not payable
  if owner != caller:
      revert with 0, 'Ownable: caller is not the owner'
  call _owner with:
     value eth.balance(this.address) wei
       gas 2300 * is_zero(value) wei
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]

# https://bscscan.com/tx/0xcf5e952a57a78b2a6943f4a24e8d9a6729955940c1a67b5e826826783d1016a9
# 0xc0af8385
# 000000000000000000000000e485b2780c3822a62da88857fd6481018ea8cb95 RANDOM COIN
def unknownc0af8385(addr tokenAddress): # not payable
  require calldata.size - 4 >= 32
  if owner != caller:
      revert with 0, 'Ownable: caller is not the owner'
  mem[128 len 64] = call.data[calldata.size len 64]
  swapPath.length = 2
  s = 0
  idx = 128
  while 192 > idx:
      swapPath[s].field_0 = mem[idx + 12 len 20]
      s = s + 1
      idx = idx + 32
      continue 
  idx = 2
  while swapPath.length > idx:
      swapPath[idx].field_0 = 0
      idx = idx + 1
      continue 
  require 0 < swapPath.length
  addr(swapPath.WETH) = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
  require 1 < swapPath.length
  addr(swapPath.targetTokenAddress) = tokenAddress

# https://bscscan.com/tx/0x3cf202267263436e1aed72ff71ced4d13e72d4a2222f6d1ea730a9905ae91b3a
# 0x744ebfb5
# 000000000000000000000000e9e7cea3dedca5984780bafc599bd69add087d56 BUSD
# 0000000000000000000000005530ec23f4ee1521182bd158c09f4ca7efec1ef0 RANDOM COIN
def unknown744ebfb5(addr tokenAAddress, addr tokenBAddress): # not payable
  require calldata.size - 4 >= 64
  if owner != caller:
      revert with 0, 'Ownable: caller is not the owner'
  mem[128 len 96] = call.data[calldata.size len 96]
  swapPath3Lenght.length = 3
  s = 0
  idx = 128
  while 224 > idx:
      swapPath3Lenght[s].field_0 = mem[idx + 12 len 20]
      s = s + 1
      idx = idx + 32
      continue 
  idx = 3
  while swapPath3Lenght.length > idx:
      swapPath3Lenght[idx].field_0 = 0
      idx = idx + 1
      continue 
  require 0 < swapPath3Lenght.length
  addr(swapPath3Lenght.WETH) = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
  require 1 < swapPath3Lenght.length
  addr(swapPath3Lenght.tokenAAddress) = _param1
  require 2 < swapPath3Lenght.length
  addr(swapPath3Lenght.tokenBAddress) = _param2

def unknownfd0af329(): # not payable
  if eth.balance(this.address) > 0:
      mem[96] = swapExactETHForTokens00000000000000000000000000000000000000000000000000000000
      mem[100] = uint256(stor7.amountTokenToBuy?)
      mem[164] = __owner
      mem[196] = block.timestamp + 3600
      mem[132] = 128
      if boolAboutSwapPath:
          mem[228] = swapPath3Lenght.length
          if not swapPath3Lenght.length:
              require ext_code.size(router)
              call router.swapExactETHForTokens with:
                 value eth.balance(this.address) wei
                   gas gas_remaining wei
                  args 0, uint32(stor7.amountTokenToBuy?), 128, __owner, block.timestamp + 3600, swapPath3Lenght.length
          else:
              mem[0] = 6
              mem[260] = addr(swapPath3Lenght.WETH)
              idx = 260
              s = 0
              while (32 * swapPath3Lenght.length) + 260 > idx + 32:
                  mem[idx + 32] = swapPath3Lenght[s].field_256
                  idx = idx + 32
                  s = s + 1
                  continue 
              require ext_code.size(router)
              call router.swapExactETHForTokens with:
                 value eth.balance(this.address) wei
                   gas gas_remaining wei
                  args 0, uint32(stor7.amountTokenToBuy?), 128, __owner, block.timestamp + 3600, swapPath3Lenght.length, mem[260 len 32 * swapPath3Lenght.length]
      else:
          mem[228] = swapPath.length
          if not swapPath.length:
              require ext_code.size(router)
              call router.swapExactETHForTokens with:
                 value eth.balance(this.address) wei
                   gas gas_remaining wei
                  args 0, uint32(stor7.amountTokenToBuy?), 128, __owner, block.timestamp + 3600, swapPath.length
          else:
              mem[0] = 5
              mem[260] = addr(swapPath.WETH)
              idx = 260
              s = 0
              while (32 * swapPath.length) + 260 > idx + 32:
                  mem[idx + 32] = swapPath[s].field_256
                  idx = idx + 32
                  s = s + 1
                  continue 
              require ext_code.size(router)
              call router.swapExactETHForTokens with:
                 value eth.balance(this.address) wei
                   gas gas_remaining wei
                  args 0, uint32(stor7.amountTokenToBuy?), 128, __owner, block.timestamp + 3600, swapPath.length, mem[260 len 32 * swapPath.length]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
      mem[64] = ceil32(return_data.size) + 96
      require return_data.size >= 32
      require mem[96 len 4], Mask(224, 0, stor7.field_32) <= 4294967296
      require mem[96 len 4], Mask(224, 0, stor7.field_32) + 32 <= return_data.size
      require mem[mem[96 len 4], Mask(224, 0, stor7.field_32) + 96] <= 4294967296 and mem[96 len 4], Mask(224, 0, stor7.field_32) + (32 * mem[mem[96 len 4], Mask(224, 0, stor7.field_32) + 96]) + 32 <= return_data.size


