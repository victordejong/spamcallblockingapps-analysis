package com.google.android.gms.internal.ads;

import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvo.class */
public final class zzdvo {

    /* renamed from: a */
    private final ByteBuffer f14597a;

    /* renamed from: b */
    private zzdrb f14598b;

    /* renamed from: c */
    private int f14599c;

    private zzdvo(ByteBuffer byteBuffer) {
        this.f14597a = byteBuffer;
        this.f14597a.order(ByteOrder.LITTLE_ENDIAN);
    }

    private zzdvo(byte[] bArr, int i) {
        this(ByteBuffer.wrap(bArr, 0, i));
    }

    /* renamed from: a */
    private static int m3324a(CharSequence charSequence) {
        int i;
        int i2;
        int length = charSequence.length();
        int i3 = 0;
        int i4 = 0;
        while (i4 < length && charSequence.charAt(i4) < 128) {
            i4++;
        }
        int i5 = length;
        while (true) {
            i = i5;
            if (i4 >= length) {
                break;
            }
            char charAt = charSequence.charAt(i4);
            if (charAt < 2048) {
                i5 += (127 - charAt) >>> 31;
                i4++;
            } else {
                int length2 = charSequence.length();
                while (i4 < length2) {
                    char charAt2 = charSequence.charAt(i4);
                    if (charAt2 < 2048) {
                        i3 += (127 - charAt2) >>> 31;
                        i2 = i4;
                    } else {
                        int i6 = i3 + 2;
                        i3 = i6;
                        i2 = i4;
                        if (55296 <= charAt2) {
                            i3 = i6;
                            i2 = i4;
                            if (charAt2 > 57343) {
                                continue;
                            } else if (Character.codePointAt(charSequence, i4) >= 65536) {
                                i2 = i4 + 1;
                                i3 = i6;
                            } else {
                                StringBuilder sb = new StringBuilder(39);
                                sb.append("Unpaired surrogate at index ");
                                sb.append(i4);
                                throw new IllegalArgumentException(sb.toString());
                            }
                        } else {
                            continue;
                        }
                    }
                    i4 = i2 + 1;
                }
                i = i5 + i3;
            }
        }
        if (i >= length) {
            return i;
        }
        StringBuilder sb2 = new StringBuilder(54);
        sb2.append("UTF-8 length does not fit in int: ");
        sb2.append(i + 4294967296L);
        throw new IllegalArgumentException(sb2.toString());
    }

    /* renamed from: a */
    private final void m3325a(int i) {
        byte b = (byte) i;
        if (this.f14597a.hasRemaining()) {
            this.f14597a.put(b);
            return;
        }
        throw new zzdvn(this.f14597a.position(), this.f14597a.limit());
    }

    /* renamed from: a */
    private static void m3323a(CharSequence charSequence, ByteBuffer byteBuffer) {
        int i;
        int i2;
        int i3;
        int i4;
        if (!byteBuffer.isReadOnly()) {
            int i5 = 0;
            int i6 = 0;
            if (byteBuffer.hasArray()) {
                try {
                    byte[] array = byteBuffer.array();
                    int arrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
                    int remaining = byteBuffer.remaining();
                    int length = charSequence.length();
                    int i7 = remaining + arrayOffset;
                    while (i6 < length && (i2 = i6 + arrayOffset) < i7) {
                        char charAt = charSequence.charAt(i6);
                        if (charAt >= 128) {
                            break;
                        }
                        array[i2] = (byte) charAt;
                        i6++;
                    }
                    if (i6 == length) {
                        i = arrayOffset + length;
                    } else {
                        int i8 = arrayOffset + i6;
                        while (true) {
                            i = i8;
                            if (i6 >= length) {
                                break;
                            }
                            char charAt2 = charSequence.charAt(i6);
                            if (charAt2 < 128 && i8 < i7) {
                                i8++;
                                array[i8] = (byte) charAt2;
                            } else if (charAt2 < 2048 && i8 <= i7 - 2) {
                                int i9 = i8 + 1;
                                array[i8] = (byte) ((charAt2 >>> 6) | 960);
                                i8 = i9 + 1;
                                array[i9] = (byte) ((charAt2 & '?') | 128);
                            } else if ((charAt2 < 55296 || 57343 < charAt2) && i8 <= i7 - 3) {
                                int i10 = i8 + 1;
                                array[i8] = (byte) ((charAt2 >>> '\f') | 480);
                                int i11 = i10 + 1;
                                array[i10] = (byte) (((charAt2 >>> 6) & 63) | 128);
                                i8 = i11 + 1;
                                array[i11] = (byte) ((charAt2 & '?') | 128);
                            } else if (i8 <= i7 - 4) {
                                int i12 = i6 + 1;
                                if (i12 == charSequence.length()) {
                                    break;
                                }
                                char charAt3 = charSequence.charAt(i12);
                                if (!Character.isSurrogatePair(charAt2, charAt3)) {
                                    i6 = i12;
                                    break;
                                }
                                int codePoint = Character.toCodePoint(charAt2, charAt3);
                                int i13 = i8 + 1;
                                array[i8] = (byte) ((codePoint >>> 18) | 240);
                                int i14 = i13 + 1;
                                array[i13] = (byte) (((codePoint >>> 12) & 63) | 128);
                                int i15 = i14 + 1;
                                array[i14] = (byte) (((codePoint >>> 6) & 63) | 128);
                                i8 = i15 + 1;
                                array[i15] = (byte) ((codePoint & 63) | 128);
                                i6 = i12;
                            } else {
                                StringBuilder sb = new StringBuilder(37);
                                sb.append("Failed writing ");
                                sb.append(charAt2);
                                sb.append(" at index ");
                                sb.append(i8);
                                throw new ArrayIndexOutOfBoundsException(sb.toString());
                            }
                            i6++;
                        }
                        StringBuilder sb2 = new StringBuilder(39);
                        sb2.append("Unpaired surrogate at index ");
                        sb2.append(i6 - 1);
                        throw new IllegalArgumentException(sb2.toString());
                    }
                    byteBuffer.position(i - byteBuffer.arrayOffset());
                } catch (ArrayIndexOutOfBoundsException e) {
                    BufferOverflowException bufferOverflowException = new BufferOverflowException();
                    bufferOverflowException.initCause(e);
                    throw bufferOverflowException;
                }
            } else {
                int length2 = charSequence.length();
                while (i5 < length2) {
                    char charAt4 = charSequence.charAt(i5);
                    if (charAt4 < 128) {
                        i4 = charAt4;
                    } else {
                        if (charAt4 < 2048) {
                            i3 = (charAt4 >>> 6) | 960;
                        } else if (charAt4 < 55296 || 57343 < charAt4) {
                            byteBuffer.put((byte) ((charAt4 >>> '\f') | 480));
                            i3 = ((charAt4 >>> 6) & 63) | 128;
                        } else {
                            int i16 = i5 + 1;
                            if (i16 != charSequence.length()) {
                                char charAt5 = charSequence.charAt(i16);
                                if (Character.isSurrogatePair(charAt4, charAt5)) {
                                    int codePoint2 = Character.toCodePoint(charAt4, charAt5);
                                    byteBuffer.put((byte) ((codePoint2 >>> 18) | 240));
                                    byteBuffer.put((byte) (((codePoint2 >>> 12) & 63) | 128));
                                    byteBuffer.put((byte) (((codePoint2 >>> 6) & 63) | 128));
                                    byteBuffer.put((byte) ((codePoint2 & 63) | 128));
                                    i5 = i16;
                                    i5++;
                                } else {
                                    i5 = i16;
                                }
                            }
                            StringBuilder sb3 = new StringBuilder(39);
                            sb3.append("Unpaired surrogate at index ");
                            sb3.append(i5 - 1);
                            throw new IllegalArgumentException(sb3.toString());
                        }
                        byteBuffer.put((byte) i3);
                        i4 = (charAt4 & '?') | 128;
                    }
                    byteBuffer.put((byte) i4);
                    i5++;
                }
            }
        } else {
            throw new ReadOnlyBufferException();
        }
    }

    /* renamed from: b */
    private final void m3322b(int i) {
        while ((i & (-128)) != 0) {
            m3325a((i & 127) | 128);
            i >>>= 7;
        }
        m3325a(i);
    }

    public static zzdvo zzaa(byte[] bArr) {
        return zzq(bArr, 0, bArr.length);
    }

    public static int zzaf(int i, int i2) {
        return zzfz(i) + zzga(i2);
    }

    public static int zzb(int i, zzdvt zzdvtVar) {
        int zzfz = zzfz(i);
        int zzazu = zzdvtVar.zzazu();
        return zzfz + zzgh(zzazu) + zzazu;
    }

    public static int zzfz(int i) {
        return zzgh(i << 3);
    }

    public static int zzg(int i, String str) {
        return zzfz(i) + zzhh(str);
    }

    public static int zzga(int i) {
        if (i >= 0) {
            return zzgh(i);
        }
        return 10;
    }

    public static int zzgh(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    public static int zzhh(String str) {
        int a = m3324a(str);
        return zzgh(a) + a;
    }

    public static zzdvo zzq(byte[] bArr, int i, int i2) {
        return new zzdvo(bArr, i2);
    }

    public final void zza(int i, zzdvt zzdvtVar) {
        zzaa(i, 2);
        if (zzdvtVar.f14607b < 0) {
            zzdvtVar.zzazu();
        }
        m3322b(zzdvtVar.f14607b);
        zzdvtVar.zza(this);
    }

    public final void zza(int i, byte[] bArr) {
        zzaa(3, 2);
        m3322b(bArr.length);
        int length = bArr.length;
        if (this.f14597a.remaining() >= length) {
            this.f14597a.put(bArr, 0, length);
            return;
        }
        throw new zzdvn(this.f14597a.position(), this.f14597a.limit());
    }

    public final void zzaa(int i, int i2) {
        m3322b((i << 3) | i2);
    }

    public final void zzab(int i, int i2) {
        zzaa(i, 0);
        if (i2 >= 0) {
            m3322b(i2);
        } else {
            zzfs(i2);
        }
    }

    public final void zzazd() {
        if (this.f14597a.remaining() != 0) {
            throw new IllegalStateException(String.format("Did not write as much data as expected, %s bytes remaining.", Integer.valueOf(this.f14597a.remaining())));
        }
    }

    public final void zze(int i, zzdte zzdteVar) {
        if (this.f14598b == null) {
            this.f14598b = zzdrb.zzm(this.f14597a);
        } else {
            if (this.f14599c != this.f14597a.position()) {
                this.f14598b.write(this.f14597a.array(), this.f14599c, this.f14597a.position() - this.f14599c);
            }
            zzdrb zzdrbVar = this.f14598b;
            zzdrbVar.zza(i, zzdteVar);
            zzdrbVar.flush();
            this.f14599c = this.f14597a.position();
        }
        this.f14599c = this.f14597a.position();
        zzdrb zzdrbVar2 = this.f14598b;
        zzdrbVar2.zza(i, zzdteVar);
        zzdrbVar2.flush();
        this.f14599c = this.f14597a.position();
    }

    public final void zzf(int i, String str) {
        zzaa(i, 2);
        try {
            int zzgh = zzgh(str.length());
            if (zzgh == zzgh(str.length() * 3)) {
                int position = this.f14597a.position();
                if (this.f14597a.remaining() >= zzgh) {
                    this.f14597a.position(position + zzgh);
                    m3323a(str, this.f14597a);
                    int position2 = this.f14597a.position();
                    this.f14597a.position(position);
                    m3322b((position2 - position) - zzgh);
                    this.f14597a.position(position2);
                    return;
                }
                throw new zzdvn(position + zzgh, this.f14597a.limit());
            }
            m3322b(m3324a(str));
            m3323a(str, this.f14597a);
        } catch (BufferOverflowException e) {
            zzdvn zzdvnVar = new zzdvn(this.f14597a.position(), this.f14597a.limit());
            zzdvnVar.initCause(e);
            throw zzdvnVar;
        }
    }

    public final void zzfs(long j) {
        while (((-128) & j) != 0) {
            m3325a((((int) j) & 127) | 128);
            j >>>= 7;
        }
        m3325a((int) j);
    }
}
