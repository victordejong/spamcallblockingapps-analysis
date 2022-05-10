package com.google.android.gms.internal.ads;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import p131c.p161d.p170b.p224d.p252g.p253a.b60;
import p131c.p161d.p170b.p224d.p252g.p253a.c60;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzegf.class */
public final class zzegf implements zzdzv {

    /* renamed from: e */
    public static final ThreadLocal<Cipher> f28004e = new c60();

    /* renamed from: f */
    public static final ThreadLocal<Cipher> f28005f = new b60();

    /* renamed from: a */
    public final byte[] f28006a;

    /* renamed from: b */
    public final byte[] f28007b;

    /* renamed from: c */
    public final SecretKeySpec f28008c;

    /* renamed from: d */
    public final int f28009d;

    public zzegf(byte[] bArr, int i) throws GeneralSecurityException {
        if (i == 12 || i == 16) {
            this.f28009d = i;
            zzeht.m12548a(bArr.length);
            this.f28008c = new SecretKeySpec(bArr, "AES");
            Cipher cipher = f28004e.get();
            cipher.init(1, this.f28008c);
            byte[] a = m12581a(cipher.doFinal(new byte[16]));
            this.f28006a = a;
            this.f28007b = m12581a(a);
            return;
        }
        throw new IllegalArgumentException("IV size should be either 12 or 16 bytes");
    }

    /* renamed from: a */
    public static byte[] m12581a(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        int i = 0;
        int i2 = 0;
        while (i2 < 15) {
            byte b = bArr[i2];
            int i3 = i2 + 1;
            bArr2[i2] = (byte) ((b << 1) ^ ((bArr[i3] & 255) >>> 7));
            i2 = i3;
        }
        byte b2 = bArr[15];
        if ((bArr[0] & 128) != 0) {
            i = 135;
        }
        bArr2[15] = (byte) ((b2 << 1) ^ i);
        return bArr2;
    }

    /* renamed from: b */
    public static byte[] m12580b(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        byte[] bArr3 = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr3[i] = (byte) (bArr[i] ^ bArr2[i]);
        }
        return bArr3;
    }

    /* renamed from: a */
    public final byte[] m12582a(Cipher cipher, int i, byte[] bArr, int i2, int i3) throws IllegalBlockSizeException, BadPaddingException {
        byte[] bArr2;
        byte[] bArr3 = new byte[16];
        bArr3[15] = (byte) i;
        if (i3 == 0) {
            return cipher.doFinal(m12580b(bArr3, this.f28006a));
        }
        byte[] doFinal = cipher.doFinal(bArr3);
        int i4 = 0;
        while (i3 - i4 > 16) {
            for (int i5 = 0; i5 < 16; i5++) {
                doFinal[i5] = (byte) (doFinal[i5] ^ bArr[(i2 + i4) + i5]);
            }
            doFinal = cipher.doFinal(doFinal);
            i4 += 16;
        }
        byte[] copyOfRange = Arrays.copyOfRange(bArr, i4 + i2, i2 + i3);
        if (copyOfRange.length == 16) {
            bArr2 = m12580b(copyOfRange, this.f28006a);
        } else {
            bArr2 = Arrays.copyOf(this.f28007b, 16);
            for (int i6 = 0; i6 < copyOfRange.length; i6++) {
                bArr2[i6] = (byte) (bArr2[i6] ^ copyOfRange[i6]);
            }
            bArr2[copyOfRange.length] = (byte) (bArr2[copyOfRange.length] ^ 128);
        }
        return cipher.doFinal(m12580b(doFinal, bArr2));
    }

    @Override // com.google.android.gms.internal.ads.zzdzv
    /* renamed from: a */
    public final byte[] mo12560a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        int i = this.f28009d;
        if (length <= (MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT - i) - 16) {
            byte[] bArr3 = new byte[bArr.length + i + 16];
            byte[] a = zzehs.m12550a(i);
            System.arraycopy(a, 0, bArr3, 0, this.f28009d);
            Cipher cipher = f28004e.get();
            cipher.init(1, this.f28008c);
            byte[] a2 = m12582a(cipher, 0, a, 0, a.length);
            if (bArr2 == null) {
                bArr2 = new byte[0];
            }
            byte[] a3 = m12582a(cipher, 1, bArr2, 0, bArr2.length);
            Cipher cipher2 = f28005f.get();
            cipher2.init(1, this.f28008c, new IvParameterSpec(a2));
            cipher2.doFinal(bArr, 0, bArr.length, bArr3, this.f28009d);
            byte[] a4 = m12582a(cipher, 2, bArr3, this.f28009d, bArr.length);
            int length2 = bArr.length;
            int i2 = this.f28009d;
            for (int i3 = 0; i3 < 16; i3++) {
                bArr3[length2 + i2 + i3] = (byte) ((a3[i3] ^ a2[i3]) ^ a4[i3]);
            }
            return bArr3;
        }
        throw new GeneralSecurityException("plaintext too long");
    }
}
