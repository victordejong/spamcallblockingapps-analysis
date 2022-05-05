package com.google.android.gms.common.util;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/HexDumpUtils.class */
public final class HexDumpUtils {
    public static String dump(byte[] bArr, int i, int i2, boolean z) {
        int i3;
        if (bArr == null || bArr.length == 0 || i < 0 || i2 <= 0 || i + i2 > bArr.length) {
            return null;
        }
        int i4 = 57;
        if (z) {
            i4 = 75;
        }
        StringBuilder sb = new StringBuilder(i4 * (((i2 + 16) - 1) / 16));
        int i5 = i2;
        int i6 = 0;
        int i7 = 0;
        while (i5 > 0) {
            if (i6 == 0) {
                sb.append(i2 < 65536 ? String.format("%04X:", Integer.valueOf(i)) : String.format("%08X:", Integer.valueOf(i)));
                i3 = i;
            } else {
                i3 = i7;
                if (i6 == 8) {
                    sb.append(" -");
                    i3 = i7;
                }
            }
            sb.append(String.format(" %02X", Integer.valueOf(bArr[i] & 255)));
            int i8 = i5 - 1;
            int i9 = i6 + 1;
            if (z && (i9 == 16 || i8 == 0)) {
                int i10 = 16 - i9;
                if (i10 > 0) {
                    for (int i11 = 0; i11 < i10; i11++) {
                        sb.append("   ");
                    }
                }
                if (i10 >= 8) {
                    sb.append("  ");
                }
                sb.append("  ");
                for (int i12 = 0; i12 < i9; i12++) {
                    char c = (char) bArr[i3 + i12];
                    if (c < ' ' || c > '~') {
                        c = '.';
                    }
                    sb.append(c);
                }
            }
            if (i9 != 16) {
                i6 = i9;
                if (i8 != 0) {
                    i++;
                    i7 = i3;
                    i5 = i8;
                }
            }
            sb.append('\n');
            i6 = 0;
            i++;
            i7 = i3;
            i5 = i8;
        }
        return sb.toString();
    }
}
