contract Contract {
    function main() {
        memory[0x40:0x60] = 0x80;
    
        if (msg.data.length >= 0x04) {
            var var0 = msg.data[0x00:0x20] >> 0xe0;
        
            if (0xc0af8385 > var0) {
                if (var0 == 0x432d5802) {
                    // Dispatch table entry for 0x432d5802 (unknown)
                    var var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x00e5;
                    var var2 = 0x04;
                    var var3 = msg.data.length - var2;
                
                    if (var3 < 0x20) { revert(memory[0x00:0x00]); }
                
                    func_00B9(var2, var3);
                    stop();
                } else if (var0 == 0x744ebfb5) {
                    // Dispatch table entry for 0x744ebfb5 (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0156;
                    var2 = 0x04;
                    var3 = msg.data.length - var2;
                
                    if (var3 < 0x40) { revert(memory[0x00:0x00]); }
                
                    func_010A(var2, var3);
                    stop();
                } else if (var0 == 0x83197ef0) {
                    // Dispatch table entry for destroy()
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x016d;
                
                    if (storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff == msg.sender) { selfdestruct(0xffffffffffffffffffffffffffffffffffffffff & 0xa7cc7c1522f529320776d27d9340f534d3a73b7f); }
                
                    var temp0 = memory[0x40:0x60];
                    memory[temp0:temp0 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                    var temp1 = temp0 + 0x04;
                    var temp2 = temp1 + 0x20;
                    memory[temp1:temp1 + 0x20] = temp2 - temp1;
                    memory[temp2:temp2 + 0x20] = 0x20;
                    var temp3 = temp2 + 0x20;
                    memory[temp3:temp3 + 0x20] = 0x4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e6572;
                    var temp4 = memory[0x40:0x60];
                    revert(memory[temp4:temp4 + (temp3 + 0x20) - temp4]);
                } else if (var0 == 0x8da5cb5b) {
                    // Dispatch table entry for owner()
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0184;
                    var1 = owner();
                    var temp5 = memory[0x40:0x60];
                    memory[temp5:temp5 + 0x20] = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
                    var temp6 = memory[0x40:0x60];
                    return memory[temp6:temp6 + (temp5 + 0x20) - temp6];
                } else { revert(memory[0x00:0x00]); }
            } else if (var0 == 0xc0af8385) {
                // Dispatch table entry for 0xc0af8385 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x01ff;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x20) { revert(memory[0x00:0x00]); }
            
                func_01D3(var2, var3);
                stop();
            } else if (var0 == 0xf191414b) {
                // Dispatch table entry for 0xf191414b (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0244;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x40) { revert(memory[0x00:0x00]); }
            
                func_0224(var2, var3);
                stop();
            } else if (var0 == 0xf2fde38b) {
                // Dispatch table entry for transferOwnership(address)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0295;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x20) { revert(memory[0x00:0x00]); }
            
                transferOwnership(var2, var3);
                stop();
            } else if (var0 == 0xf6f33638) {
                // Dispatch table entry for 0xf6f33638 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x02ac;
                func_0BDC();
                stop();
            } else if (var0 == 0xfd0af329) {
                // Dispatch table entry for 0xfd0af329 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x02c3;
                func_0D0E();
                stop();
            } else { revert(memory[0x00:0x00]); }
        } else if (msg.data.length) { revert(memory[0x00:0x00]); }
        else { stop(); }
    }
    
    function func_00B9(var arg0, var arg1) {
        arg0 = msg.data[arg0:arg0 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
    
        if (storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff == msg.sender) {
            memory[0x00:0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
            memory[0x20:0x40] = 0x04;
            storage[keccak256(memory[0x00:0x40])] = 0x01;
            return;
        } else {
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var temp1 = temp0 + 0x04;
            var temp2 = temp1 + 0x20;
            memory[temp1:temp1 + 0x20] = temp2 - temp1;
            memory[temp2:temp2 + 0x20] = 0x20;
            var temp3 = temp2 + 0x20;
            memory[temp3:temp3 + 0x20] = 0x4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e6572;
            var temp4 = memory[0x40:0x60];
            revert(memory[temp4:temp4 + (temp3 + 0x20) - temp4]);
        }
    }
    
    function func_010A(var arg0, var arg1) {
        var temp0 = arg0;
        arg0 = msg.data[temp0:temp0 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
        arg1 = msg.data[temp0 + 0x20:temp0 + 0x20 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
    
        if (storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff == msg.sender) {
            var var0 = 0x03;
            var var1 = var0 > 0xffffffffffffffff;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var temp1 = memory[0x40:0x60];
            var temp2 = var0;
            var0 = temp1;
            var1 = temp2;
            memory[var0:var0 + 0x20] = var1;
            memory[0x40:0x60] = var0 + var1 * 0x20 + 0x20;
        
            if (!var1) {
                var temp3 = var0;
                var0 = 0x04ec;
                var1 = 0x06;
                var var3 = memory[temp3:temp3 + 0x20];
                var var2 = temp3 + 0x20;
                var0 = func_1161(var1, var2, var3);
            
            label_04EC:
                var0 = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c;
                var1 = 0x06;
                var2 = 0x00;
            
                if (var2 >= storage[var1]) { assert(); }
            
                memory[0x00:0x20] = var1;
                var temp4 = keccak256(memory[0x00:0x20]) + var2;
                storage[temp4] = (var0 & 0xffffffffffffffffffffffffffffffffffffffff) | (storage[temp4] & ~0xffffffffffffffffffffffffffffffffffffffff);
                var0 = arg0;
                var1 = 0x06;
                var2 = 0x01;
            
                if (var2 >= storage[var1]) { assert(); }
            
                memory[0x00:0x20] = var1;
                var temp5 = keccak256(memory[0x00:0x20]) + var2;
                storage[temp5] = (var0 & 0xffffffffffffffffffffffffffffffffffffffff) | (storage[temp5] & ~0xffffffffffffffffffffffffffffffffffffffff);
                var0 = arg1;
                var1 = 0x06;
                var2 = 0x02;
            
                if (var2 >= storage[var1]) { assert(); }
            
                memory[0x00:0x20] = var1;
                var temp6 = keccak256(memory[0x00:0x20]) + var2;
                storage[temp6] = (var0 & 0xffffffffffffffffffffffffffffffffffffffff) | (storage[temp6] & ~0xffffffffffffffffffffffffffffffffffffffff);
                return;
            } else {
                var temp7 = var0;
                var temp8 = var1 * 0x20;
                memory[temp7 + 0x20:temp7 + 0x20 + temp8] = msg.data[msg.data.length:msg.data.length + temp8];
                var0 = 0x04ec;
                var1 = 0x06;
                var2 = temp7 + 0x20;
                var3 = memory[temp7:temp7 + 0x20];
                var0 = func_1161(var1, var2, var3);
                goto label_04EC;
            }
        } else {
            var temp9 = memory[0x40:0x60];
            memory[temp9:temp9 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var temp10 = temp9 + 0x04;
            var temp11 = temp10 + 0x20;
            memory[temp10:temp10 + 0x20] = temp11 - temp10;
            memory[temp11:temp11 + 0x20] = 0x20;
            var temp12 = temp11 + 0x20;
            memory[temp12:temp12 + 0x20] = 0x4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e6572;
            var temp13 = memory[0x40:0x60];
            revert(memory[temp13:temp13 + (temp12 + 0x20) - temp13]);
        }
    }
    
    function func_01D3(var arg0, var arg1) {
        arg0 = msg.data[arg0:arg0 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
    
        if (storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff == msg.sender) {
            arg1 = 0x02;
            var var0 = arg1 > 0xffffffffffffffff;
        
            if (var0) { revert(memory[0x00:0x00]); }
        
            var temp0 = memory[0x40:0x60];
            var temp1 = arg1;
            arg1 = temp0;
            var0 = temp1;
            memory[arg1:arg1 + 0x20] = var0;
            memory[0x40:0x60] = arg1 + var0 * 0x20 + 0x20;
        
            if (!var0) {
                var temp2 = arg1;
                arg1 = 0x083f;
                var0 = 0x05;
                var var1 = temp2 + 0x20;
                var var2 = memory[temp2:temp2 + 0x20];
                arg1 = func_1161(var0, var1, var2);
            
            label_083F:
                arg1 = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c;
                var0 = 0x05;
                var1 = 0x00;
            
                if (var1 >= storage[var0]) { assert(); }
            
                memory[0x00:0x20] = var0;
                var temp3 = keccak256(memory[0x00:0x20]) + var1;
                storage[temp3] = (arg1 & 0xffffffffffffffffffffffffffffffffffffffff) | (storage[temp3] & ~0xffffffffffffffffffffffffffffffffffffffff);
                arg1 = arg0;
                var0 = 0x05;
                var1 = 0x01;
            
                if (var1 >= storage[var0]) { assert(); }
            
                memory[0x00:0x20] = var0;
                var temp4 = keccak256(memory[0x00:0x20]) + var1;
                storage[temp4] = (arg1 & 0xffffffffffffffffffffffffffffffffffffffff) | (storage[temp4] & ~0xffffffffffffffffffffffffffffffffffffffff);
                return;
            } else {
                var temp5 = arg1;
                var temp6 = var0 * 0x20;
                memory[temp5 + 0x20:temp5 + 0x20 + temp6] = msg.data[msg.data.length:msg.data.length + temp6];
                arg1 = 0x083f;
                var0 = 0x05;
                var1 = temp5 + 0x20;
                var2 = memory[temp5:temp5 + 0x20];
                arg1 = func_1161(var0, var1, var2);
                goto label_083F;
            }
        } else {
            var temp7 = memory[0x40:0x60];
            memory[temp7:temp7 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var temp8 = temp7 + 0x04;
            var temp9 = temp8 + 0x20;
            memory[temp8:temp8 + 0x20] = temp9 - temp8;
            memory[temp9:temp9 + 0x20] = 0x20;
            var temp10 = temp9 + 0x20;
            memory[temp10:temp10 + 0x20] = 0x4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e6572;
            var temp11 = memory[0x40:0x60];
            revert(memory[temp11:temp11 + (temp10 + 0x20) - temp11]);
        }
    }
    
    function func_0224(var arg0, var arg1) {
        var temp0 = arg0;
        arg0 = msg.data[temp0:temp0 + 0x20];
        arg1 = msg.data[temp0 + 0x20:temp0 + 0x20 + 0x20];
    
        if (storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff == msg.sender) {
            storage[0x07] = arg0;
            storage[0x08] = arg1;
            return;
        } else {
            var temp1 = memory[0x40:0x60];
            memory[temp1:temp1 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var temp2 = temp1 + 0x04;
            var temp3 = temp2 + 0x20;
            memory[temp2:temp2 + 0x20] = temp3 - temp2;
            memory[temp3:temp3 + 0x20] = 0x20;
            var temp4 = temp3 + 0x20;
            memory[temp4:temp4 + 0x20] = 0x4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e6572;
            var temp5 = memory[0x40:0x60];
            revert(memory[temp5:temp5 + (temp4 + 0x20) - temp5]);
        }
    }
    
    function transferOwnership(var arg0, var arg1) {
        arg0 = msg.data[arg0:arg0 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
    
        if (storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff != msg.sender) {
            var temp7 = memory[0x40:0x60];
            memory[temp7:temp7 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var temp8 = temp7 + 0x04;
            var temp9 = temp8 + 0x20;
            memory[temp8:temp8 + 0x20] = temp9 - temp8;
            memory[temp9:temp9 + 0x20] = 0x20;
            var temp10 = temp9 + 0x20;
            memory[temp10:temp10 + 0x20] = 0x4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e6572;
            var temp11 = memory[0x40:0x60];
            revert(memory[temp11:temp11 + (temp10 + 0x20) - temp11]);
        } else if (arg0 & 0xffffffffffffffffffffffffffffffffffffffff != 0xffffffffffffffffffffffffffffffffffffffff & 0x00) {
            var temp0 = arg0;
            var temp1 = memory[0x40:0x60];
            log(memory[temp1:temp1 + memory[0x40:0x60] - temp1], [0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0, storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff, stack[-1] & 0xffffffffffffffffffffffffffffffffffffffff]);
            storage[0x00] = (temp0 & 0xffffffffffffffffffffffffffffffffffffffff) | (storage[0x00] & ~0xffffffffffffffffffffffffffffffffffffffff);
            return;
        } else {
            var temp2 = memory[0x40:0x60];
            memory[temp2:temp2 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var temp3 = temp2 + 0x04;
            var temp4 = temp3 + 0x20;
            memory[temp3:temp3 + 0x20] = temp4 - temp3;
            memory[temp4:temp4 + 0x20] = 0x26;
            var temp5 = temp4 + 0x20;
            memory[temp5:temp5 + 0x26] = code[0x1227:0x124d];
            var temp6 = memory[0x40:0x60];
            revert(memory[temp6:temp6 + (temp5 + 0x40) - temp6]);
        }
    }
    
    function owner() returns (var r0) { return storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff; }
    
    function func_0BDC() {
        if (storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff == msg.sender) {
            var temp0 = address(this).balance;
            var var0 = temp0;
            var temp1 = memory[0x40:0x60];
            var temp2;
            temp2, memory[temp1:temp1 + 0x00] = address(storage[0x03] & 0xffffffffffffffffffffffffffffffffffffffff).call.gas(!var0 * 0x08fc).value(var0)(memory[temp1:temp1 + memory[0x40:0x60] - temp1]);
            var var1 = !temp2;
        
            if (!var1) { return; }
        
            var temp3 = returndata.length;
            memory[0x00:0x00 + temp3] = returndata[0x00:0x00 + temp3];
            revert(memory[0x00:0x00 + returndata.length]);
        } else {
            var temp4 = memory[0x40:0x60];
            memory[temp4:temp4 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var temp5 = temp4 + 0x04;
            var temp6 = temp5 + 0x20;
            memory[temp5:temp5 + 0x20] = temp6 - temp5;
            memory[temp6:temp6 + 0x20] = 0x20;
            var temp7 = temp6 + 0x20;
            memory[temp7:temp7 + 0x20] = 0x4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e6572;
            var temp8 = memory[0x40:0x60];
            revert(memory[temp8:temp8 + (temp7 + 0x20) - temp8]);
        }
    }
    
    function func_0D0E() {
        var var0 = block.timestamp + 0x0e10;
        var var1 = address(this).balance;
    
        if (var1 <= 0x00) {
        label_115D:
            return;
        } else if (storage[0x08] != 0x00) {
            var var2 = storage[0x01] & 0xffffffffffffffffffffffffffffffffffffffff;
            var var3 = 0x7ff36ab5;
            var var4 = var1;
            var var5 = storage[0x07];
            var var6 = 0x06;
            var var7 = storage[0x02] & 0xffffffffffffffffffffffffffffffffffffffff;
            var var8 = var0;
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x20] = (var3 & 0xffffffff) << 0xe0;
            var temp1 = temp0 + 0x04;
            var var9 = temp1;
            memory[var9:var9 + 0x20] = var5;
            var temp2 = var9 + 0x20;
            var var10 = temp2;
            var temp3 = var10 + 0x20;
            memory[temp3:temp3 + 0x20] = var7 & 0xffffffffffffffffffffffffffffffffffffffff;
            var temp4 = temp3 + 0x20;
            memory[temp4:temp4 + 0x20] = var8;
            var temp5 = temp4 + 0x20;
            memory[var10:var10 + 0x20] = temp5 - var9;
            var var12 = var6;
            memory[temp5:temp5 + 0x20] = storage[var12];
            var var11 = temp5 + 0x20;
            var var13 = storage[var12];
        
            if (!var13) {
            label_1062:
                var5 = var11;
                var6 = 0x00;
                var7 = memory[0x40:0x60];
                var8 = var5 - var7;
                var9 = var7;
                var10 = var4;
                var11 = var2;
                var12 = !address(var11).code.length;
            
                if (var12) { revert(memory[0x00:0x00]); }
            
                var temp6;
                temp6, memory[var7:var7 + var6] = address(var11).call.gas(msg.gas).value(var10)(memory[var9:var9 + var8]);
                var6 = !temp6;
            
                if (!var6) {
                    var temp7 = memory[0x40:0x60];
                    var2 = temp7;
                    var temp8 = returndata.length;
                    memory[var2:var2 + temp8] = returndata[0x00:0x00 + temp8];
                    var temp9 = returndata.length;
                    var3 = temp9;
                    memory[0x40:0x60] = var2 + (var3 + 0x1f & ~0x1f);
                
                    if (var3 < 0x20) { revert(memory[0x00:0x00]); }
                
                    var temp10 = var2;
                    var2 = memory[0x40:0x60];
                    var3 = temp10 + var3;
                    var4 = temp10;
                    var5 = var4;
                    var6 = memory[var5:var5 + 0x20];
                    var7 = var2;
                
                    if (var6 > 0x0100000000) { revert(memory[0x00:0x00]); }
                
                    var temp11 = var6 + var4;
                    var6 = temp11;
                    var8 = var6 + 0x20;
                
                    if (var8 > var3) { revert(memory[0x00:0x00]); }
                
                    var temp12 = memory[var6:var6 + 0x20];
                    var9 = temp12;
                
                    if ((var9 > 0x0100000000) | (var8 + var9 * 0x20 > var3)) { revert(memory[0x00:0x00]); }
                
                    var temp13 = var7;
                    memory[temp13:temp13 + 0x20] = var9;
                    var temp14 = var6;
                    var6 = temp13 + 0x20;
                    var7 = temp14 + 0x20;
                    var8 = memory[temp14:temp14 + 0x20] * 0x20;
                    var9 = var8;
                    var10 = var6;
                    var11 = var7;
                    var12 = 0x00;
                
                    if (var12 >= var9) {
                    label_114D:
                        memory[0x40:0x60] = var8 + var6;
                        goto label_115D;
                    } else {
                    label_113B:
                        var temp15 = var12;
                        memory[var10 + temp15:var10 + temp15 + 0x20] = memory[var11 + temp15:var11 + temp15 + 0x20];
                        var12 = temp15 + 0x20;
                    
                        if (var12 >= var9) { goto label_114D; }
                        else { goto label_113B; }
                    }
                } else {
                    var temp16 = returndata.length;
                    memory[0x00:0x00 + temp16] = returndata[0x00:0x00 + temp16];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            } else {
                var temp17 = var11;
                var temp18 = temp17 + var13 * 0x20;
                var11 = temp18;
                memory[0x00:0x20] = var12;
                var temp19 = keccak256(memory[0x00:0x20]);
                memory[temp17:temp17 + 0x20] = storage[temp19] & 0xffffffffffffffffffffffffffffffffffffffff;
                var12 = temp19 + 0x01;
                var13 = temp17 + 0x20;
            
                if (var11 <= var13) { goto label_1062; }
            
            label_1018:
                var temp20 = var12;
                var temp21 = var13;
                memory[temp21:temp21 + 0x20] = storage[temp20] & 0xffffffffffffffffffffffffffffffffffffffff;
                var13 = temp21 + 0x20;
                var12 = temp20 + 0x01;
            
                if (var11 > var13) { goto label_1018; }
                else { goto label_1062; }
            }
        } else {
            var2 = storage[0x01] & 0xffffffffffffffffffffffffffffffffffffffff;
            var3 = 0x7ff36ab5;
            var4 = var1;
            var5 = storage[0x07];
            var6 = 0x05;
            var7 = storage[0x02] & 0xffffffffffffffffffffffffffffffffffffffff;
            var8 = var0;
            var temp22 = memory[0x40:0x60];
            memory[temp22:temp22 + 0x20] = (var3 & 0xffffffff) << 0xe0;
            var temp23 = temp22 + 0x04;
            var9 = temp23;
            memory[var9:var9 + 0x20] = var5;
            var temp24 = var9 + 0x20;
            var10 = temp24;
            var temp25 = var10 + 0x20;
            memory[temp25:temp25 + 0x20] = var7 & 0xffffffffffffffffffffffffffffffffffffffff;
            var temp26 = temp25 + 0x20;
            memory[temp26:temp26 + 0x20] = var8;
            var temp27 = temp26 + 0x20;
            memory[var10:var10 + 0x20] = temp27 - var9;
            var12 = var6;
            memory[temp27:temp27 + 0x20] = storage[var12];
            var11 = temp27 + 0x20;
            var13 = storage[var12];
        
            if (!var13) {
            label_0E4A:
                var5 = var11;
                var6 = 0x00;
                var7 = memory[0x40:0x60];
                var8 = var5 - var7;
                var9 = var7;
                var10 = var4;
                var11 = var2;
                var12 = !address(var11).code.length;
            
                if (var12) { revert(memory[0x00:0x00]); }
            
                var temp28;
                temp28, memory[var7:var7 + var6] = address(var11).call.gas(msg.gas).value(var10)(memory[var9:var9 + var8]);
                var6 = !temp28;
            
                if (!var6) {
                    var temp29 = memory[0x40:0x60];
                    var2 = temp29;
                    var temp30 = returndata.length;
                    memory[var2:var2 + temp30] = returndata[0x00:0x00 + temp30];
                    var temp31 = returndata.length;
                    var3 = temp31;
                    memory[0x40:0x60] = var2 + (var3 + 0x1f & ~0x1f);
                
                    if (var3 < 0x20) { revert(memory[0x00:0x00]); }
                
                    var temp32 = var2;
                    var2 = memory[0x40:0x60];
                    var3 = temp32 + var3;
                    var4 = temp32;
                    var5 = var4;
                    var6 = memory[var5:var5 + 0x20];
                    var7 = var2;
                
                    if (var6 > 0x0100000000) { revert(memory[0x00:0x00]); }
                
                    var temp33 = var6 + var4;
                    var6 = temp33;
                    var8 = var6 + 0x20;
                
                    if (var8 > var3) { revert(memory[0x00:0x00]); }
                
                    var temp34 = memory[var6:var6 + 0x20];
                    var9 = temp34;
                
                    if ((var9 > 0x0100000000) | (var8 + var9 * 0x20 > var3)) { revert(memory[0x00:0x00]); }
                
                    var temp35 = var7;
                    memory[temp35:temp35 + 0x20] = var9;
                    var temp36 = var6;
                    var6 = temp35 + 0x20;
                    var7 = temp36 + 0x20;
                    var8 = memory[temp36:temp36 + 0x20] * 0x20;
                    var9 = var8;
                    var10 = var6;
                    var11 = var7;
                    var12 = 0x00;
                
                    if (var12 >= var9) {
                    label_0F35:
                        memory[0x40:0x60] = var8 + var6;
                        goto label_115D;
                    } else {
                    label_0F23:
                        var temp37 = var12;
                        memory[var10 + temp37:var10 + temp37 + 0x20] = memory[var11 + temp37:var11 + temp37 + 0x20];
                        var12 = temp37 + 0x20;
                    
                        if (var12 >= var9) { goto label_0F35; }
                        else { goto label_0F23; }
                    }
                } else {
                    var temp38 = returndata.length;
                    memory[0x00:0x00 + temp38] = returndata[0x00:0x00 + temp38];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            } else {
                var temp39 = var11;
                var temp40 = temp39 + var13 * 0x20;
                var11 = temp40;
                memory[0x00:0x20] = var12;
                var temp41 = keccak256(memory[0x00:0x20]);
                memory[temp39:temp39 + 0x20] = storage[temp41] & 0xffffffffffffffffffffffffffffffffffffffff;
                var12 = temp41 + 0x01;
                var13 = temp39 + 0x20;
            
                if (var11 <= var13) { goto label_0E4A; }
            
            label_0E00:
                var temp42 = var12;
                var temp43 = var13;
                memory[temp43:temp43 + 0x20] = storage[temp42] & 0xffffffffffffffffffffffffffffffffffffffff;
                var12 = temp42 + 0x01;
                var13 = temp43 + 0x20;
            
                if (var11 > var13) { goto label_0E00; }
                else { goto label_0E4A; }
            }
        }
    }
    
    function func_1161(var arg0, var arg1, var arg2) returns (var r0) {
        var temp0 = arg0;
        var temp1 = storage[temp0];
        var temp2 = arg2;
        storage[temp0] = temp2;
        memory[0x00:0x20] = temp0;
        var var0 = keccak256(memory[0x00:0x20]);
        var var1 = arg1;
        arg1 = var0 + temp1;
    
        if (!temp2) {
        label_11DA:
            var temp3 = arg1;
            arg1 = 0x11e7;
            var0 = var0;
            arg2 = temp3;
            arg1 = func_11EB(arg2, var0);
            return arg0;
        } else {
            var temp4 = var1;
            var temp5 = arg2;
            arg2 = temp4;
            var1 = arg2 + temp5 * 0x20;
        
            if (var1 <= arg2) {
            label_11D9:
                goto label_11DA;
            } else {
            label_118A:
                var temp6 = arg2;
                var temp7 = var0;
                storage[temp7] = (memory[temp6:temp6 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff) | (storage[temp7] & ~0xffffffffffffffffffffffffffffffffffffffff);
                arg2 = temp6 + 0x20;
                var1 = var1;
                var0 = temp7 + 0x01;
            
                if (var1 <= arg2) { goto label_11D9; }
                else { goto label_118A; }
            }
        }
    }
    
    function func_11EB(var arg0, var arg1) returns (var r0) {
        if (arg0 <= arg1) {
        label_1222:
            return arg0;
        } else {
        label_11F5:
            var temp0 = arg1;
            storage[temp0] = storage[temp0] & ~0xffffffffffffffffffffffffffffffffffffffff;
            arg1 = temp0 + 0x01;
        
            if (arg0 <= arg1) { goto label_1222; }
            else { goto label_11F5; }
        }
    }
}

