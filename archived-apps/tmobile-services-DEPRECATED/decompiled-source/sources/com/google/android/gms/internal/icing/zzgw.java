package com.google.android.gms.internal.icing;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzgw.class */
final class zzgw extends zzgx {
    @Override // com.google.android.gms.internal.icing.zzgx
    /* renamed from: a */
    final int mo13528a(int i, byte[] bArr, int i2, int i3) {
        int h;
        int h2;
        while (i2 < i3 && bArr[i2] >= 0) {
            i2++;
        }
        int i4 = i2;
        if (i2 >= i3) {
            return 0;
        }
        while (i4 < i3) {
            int i5 = i4 + 1;
            byte b = bArr[i4];
            i4 = i5;
            if (b < 0) {
                if (b < -32) {
                    if (i5 >= i3) {
                        return b;
                    }
                    if (b < -62) {
                        return -1;
                    }
                    i4 = i5 + 1;
                    if (bArr[i5] > -65) {
                        return -1;
                    }
                } else if (b < -16) {
                    if (i5 >= i3 - 1) {
                        h = zzgv.m13534h(bArr, i5, i3);
                        return h;
                    }
                    int i6 = i5 + 1;
                    byte b2 = bArr[i5];
                    if (b2 > -65) {
                        return -1;
                    }
                    if (b == -32 && b2 < -96) {
                        return -1;
                    }
                    if (b == -19 && b2 >= -96) {
                        return -1;
                    }
                    i4 = i6 + 1;
                    if (bArr[i6] > -65) {
                        return -1;
                    }
                } else if (i5 >= i3 - 2) {
                    h2 = zzgv.m13534h(bArr, i5, i3);
                    return h2;
                } else {
                    int i7 = i5 + 1;
                    byte b3 = bArr[i5];
                    if (b3 > -65 || (((b << 28) + (b3 + 112)) >> 30) != 0) {
                        return -1;
                    }
                    int i8 = i7 + 1;
                    if (bArr[i7] > -65) {
                        return -1;
                    }
                    i4 = i8 + 1;
                    if (bArr[i8] > -65) {
                        return -1;
                    }
                }
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.icing.zzgx
    /* renamed from: b */
    public final int mo13527b(CharSequence charSequence, byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        char charAt;
        int length = charSequence.length();
        int i5 = i2 + i;
        int i6 = 0;
        while (i6 < length && (i4 = i6 + i) < i5 && (charAt = charSequence.charAt(i6)) < 128) {
            bArr[i4] = (byte) charAt;
            i6++;
        }
        if (i6 == length) {
            return i + length;
        }
        int i7 = i + i6;
        int i8 = i6;
        while (i8 < length) {
            char charAt2 = charSequence.charAt(i8);
            if (charAt2 < 128 && i7 < i5) {
                i7++;
                bArr[i7] = (byte) charAt2;
            } else if (charAt2 < 2048 && i7 <= i5 - 2) {
                int i9 = i7 + 1;
                bArr[i7] = (byte) ((charAt2 >>> 6) | 960);
                i7 = i9 + 1;
                bArr[i9] = (byte) ((charAt2 & '?') | 128);
            } else if ((charAt2 < 55296 || 57343 < charAt2) && i7 <= i5 - 3) {
                int i10 = i7 + 1;
                bArr[i7] = (byte) ((charAt2 >>> '\f') | 480);
                int i11 = i10 + 1;
                bArr[i10] = (byte) (((charAt2 >>> 6) & 63) | 128);
                i7 = i11 + 1;
                bArr[i11] = (byte) ((charAt2 & '?') | 128);
            } else if (i7 <= i5 - 4) {
                int i12 = i8 + 1;
                if (i12 != charSequence.length()) {
                    char charAt3 = charSequence.charAt(i12);
                    if (Character.isSurrogatePair(charAt2, charAt3)) {
                        int codePoint = Character.toCodePoint(charAt2, charAt3);
                        int i13 = i7 + 1;
                        bArr[i7] = (byte) ((codePoint >>> 18) | 240);
                        int i14 = i13 + 1;
                        bArr[i13] = (byte) (((codePoint >>> 12) & 63) | 128);
                        int i15 = i14 + 1;
                        bArr[i14] = (byte) (((codePoint >>> 6) & 63) | 128);
                        i7 = i15 + 1;
                        bArr[i15] = (byte) ((codePoint & 63) | 128);
                        i8 = i12;
                    } else {
                        i8 = i12;
                    }
                }
                throw new zzgz(i8 - 1, length);
            } else if (55296 > charAt2 || charAt2 > 57343 || ((i3 = i8 + 1) != charSequence.length() && Character.isSurrogatePair(charAt2, charSequence.charAt(i3)))) {
                StringBuilder sb = new StringBuilder(37);
                sb.append("Failed writing ");
                sb.append(charAt2);
                sb.append(" at index ");
                sb.append(i7);
                throw new ArrayIndexOutOfBoundsException(sb.toString());
            } else {
                throw new zzgz(i8, length);
            }
            i8++;
        }
        return i7;
    }
}
