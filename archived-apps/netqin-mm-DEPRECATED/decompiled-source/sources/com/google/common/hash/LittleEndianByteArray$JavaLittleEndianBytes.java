package com.google.common.hash;

import com.google.common.primitives.Longs;
/* loaded from: classes2-dex2jar.jar:com/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes.class */
public enum LittleEndianByteArray$JavaLittleEndianBytes {
    INSTANCE { // from class: com.google.common.hash.LittleEndianByteArray$JavaLittleEndianBytes.1
        public long getLongLittleEndian(byte[] bArr, int i) {
            return Longs.m7804a(bArr[i + 7], bArr[i + 6], bArr[i + 5], bArr[i + 4], bArr[i + 3], bArr[i + 2], bArr[i + 1], bArr[i]);
        }

        public void putLongLittleEndian(byte[] bArr, int i, long j) {
            long j2 = 255;
            for (int i2 = 0; i2 < 8; i2++) {
                bArr[i + i2] = (byte) ((j & j2) >> (i2 * 8));
                j2 <<= 8;
            }
        }
    }
}
