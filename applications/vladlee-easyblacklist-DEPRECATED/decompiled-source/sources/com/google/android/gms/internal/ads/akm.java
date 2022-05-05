package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/akm.class */
final class akm extends akn {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.akn
    /* renamed from: a */
    public final int mo4995a(int i, byte[] bArr, int i2, int i3) {
        int i4;
        byte b;
        int b2;
        int b3;
        int b4;
        if (i == 0) {
            i4 = i2;
        } else if (i2 >= i3) {
            return i;
        } else {
            byte b5 = (byte) i;
            if (b5 < -32) {
                if (b5 < -62) {
                    return -1;
                }
                i4 = i2 + 1;
                if (bArr[i2] > -65) {
                    return -1;
                }
            } else if (b5 < -16) {
                byte b6 = (byte) ((i >> 8) ^ (-1));
                byte b7 = b6;
                int i5 = i2;
                if (b6 == 0) {
                    i5 = i2 + 1;
                    b7 = bArr[i2];
                    if (i5 >= i3) {
                        b4 = akl.m5001b(b5, b7);
                        return b4;
                    }
                }
                if (b7 > -65) {
                    return -1;
                }
                if (b5 == -32 && b7 < -96) {
                    return -1;
                }
                if (b5 == -19 && b7 >= -96) {
                    return -1;
                }
                i4 = i5 + 1;
                if (bArr[i5] > -65) {
                    return -1;
                }
            } else {
                byte b8 = (byte) ((i >> 8) ^ (-1));
                if (b8 == 0) {
                    int i6 = i2 + 1;
                    b8 = bArr[i2];
                    if (i6 >= i3) {
                        b3 = akl.m5001b(b5, b8);
                        return b3;
                    }
                    i2 = i6;
                    b = 0;
                } else {
                    b = (byte) (i >> 16);
                }
                byte b9 = b;
                int i7 = i2;
                if (b == 0) {
                    i7 = i2 + 1;
                    b9 = bArr[i2];
                    if (i7 >= i3) {
                        b2 = akl.m5000b(b5, b8, b9);
                        return b2;
                    }
                }
                if (b8 > -65 || (((b5 << 28) + (b8 + 112)) >> 30) != 0 || b9 > -65) {
                    return -1;
                }
                i4 = i7 + 1;
                if (bArr[i7] > -65) {
                    return -1;
                }
            }
        }
        while (i4 < i3 && bArr[i4] >= 0) {
            i4++;
        }
        int i8 = i4;
        if (i4 >= i3) {
            return 0;
        }
        while (i8 < i3) {
            int i9 = i8 + 1;
            byte b10 = bArr[i8];
            i8 = i9;
            if (b10 < 0) {
                if (b10 < -32) {
                    if (i9 >= i3) {
                        return b10;
                    }
                    if (b10 < -62) {
                        return -1;
                    }
                    i8 = i9 + 1;
                    if (bArr[i9] > -65) {
                        return -1;
                    }
                } else if (b10 < -16) {
                    if (i9 >= i3 - 1) {
                        return akl.m4998c(bArr, i9, i3);
                    }
                    int i10 = i9 + 1;
                    byte b11 = bArr[i9];
                    if (b11 > -65) {
                        return -1;
                    }
                    if (b10 == -32 && b11 < -96) {
                        return -1;
                    }
                    if (b10 == -19 && b11 >= -96) {
                        return -1;
                    }
                    i8 = i10 + 1;
                    if (bArr[i10] > -65) {
                        return -1;
                    }
                } else if (i9 >= i3 - 2) {
                    return akl.m4998c(bArr, i9, i3);
                } else {
                    int i11 = i9 + 1;
                    byte b12 = bArr[i9];
                    if (b12 > -65 || (((b10 << 28) + (b12 + 112)) >> 30) != 0) {
                        return -1;
                    }
                    int i12 = i11 + 1;
                    if (bArr[i11] > -65) {
                        return -1;
                    }
                    i8 = i12 + 1;
                    if (bArr[i12] > -65) {
                        return -1;
                    }
                }
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.akn
    /* renamed from: a */
    public final int mo4993a(CharSequence charSequence, byte[] bArr, int i, int i2) {
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
                throw new akp(i8 - 1, length);
            } else if (55296 > charAt2 || charAt2 > 57343 || ((i3 = i8 + 1) != charSequence.length() && Character.isSurrogatePair(charAt2, charSequence.charAt(i3)))) {
                StringBuilder sb = new StringBuilder(37);
                sb.append("Failed writing ");
                sb.append(charAt2);
                sb.append(" at index ");
                sb.append(i7);
                throw new ArrayIndexOutOfBoundsException(sb.toString());
            } else {
                throw new akp(i8, length);
            }
            i8++;
        }
        return i7;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.akn
    /* renamed from: a */
    public final String mo4992a(byte[] bArr, int i, int i2) {
        if ((i | i2 | ((bArr.length - i) - i2)) >= 0) {
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte b = bArr[i];
                if (!(b >= 0)) {
                    break;
                }
                i++;
                cArr[i4] = (char) b;
                i4++;
            }
            int i5 = i;
            int i6 = i4;
            while (i5 < i3) {
                int i7 = i5 + 1;
                byte b2 = bArr[i5];
                if (b2 >= 0) {
                    i6++;
                    cArr[i6] = (char) b2;
                    i5 = i7;
                    while (i5 < i3) {
                        byte b3 = bArr[i5];
                        if (b3 >= 0) {
                            i5++;
                            cArr[i6] = (char) b3;
                            i6++;
                        }
                    }
                } else if (akk.m5017a(b2)) {
                    if (i7 < i3) {
                        akk.m5014a(b2, bArr[i7], cArr, i6);
                        i5 = i7 + 1;
                        i6++;
                    } else {
                        throw zzdse.m3339i();
                    }
                } else if (akk.m5013b(b2)) {
                    if (i7 < i3 - 1) {
                        int i8 = i7 + 1;
                        akk.m5015a(b2, bArr[i7], bArr[i8], cArr, i6);
                        i5 = i8 + 1;
                        i6++;
                    } else {
                        throw zzdse.m3339i();
                    }
                } else if (i7 < i3 - 2) {
                    int i9 = i7 + 1;
                    byte b4 = bArr[i7];
                    int i10 = i9 + 1;
                    akk.m5016a(b2, b4, bArr[i9], bArr[i10], cArr, i6);
                    i5 = i10 + 1;
                    i6 = i6 + 1 + 1;
                } else {
                    throw zzdse.m3339i();
                }
            }
            return new String(cArr, 0, i6);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.akn
    /* renamed from: a */
    public final void mo4994a(CharSequence charSequence, ByteBuffer byteBuffer) {
        m4997b(charSequence, byteBuffer);
    }
}
