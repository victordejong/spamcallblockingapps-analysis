package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdoe.class */
public final class zzdoe implements zzdhx {

    /* renamed from: a */
    private final byte[] f14403a;

    /* renamed from: b */
    private final byte[] f14404b;

    /* renamed from: c */
    private final SecretKeySpec f14405c;

    /* renamed from: d */
    private final int f14406d;

    public zzdoe(byte[] bArr, int i) {
        if (i == 12 || i == 16) {
            this.f14406d = i;
            zzdpo.zzez(bArr.length);
            this.f14405c = new SecretKeySpec(bArr, "AES");
            Cipher instance = Cipher.getInstance("AES/ECB/NOPADDING");
            instance.init(1, this.f14405c);
            this.f14403a = m3422a(instance.doFinal(new byte[16]));
            this.f14404b = m3422a(this.f14403a);
            return;
        }
        throw new IllegalArgumentException("IV size should be either 12 or 16 bytes");
    }

    /* renamed from: a */
    private final byte[] m3423a(Cipher cipher, int i, byte[] bArr, int i2, int i3) {
        byte[] bArr2;
        byte[] bArr3 = new byte[16];
        bArr3[15] = (byte) i;
        if (i3 == 0) {
            return cipher.doFinal(m3421a(bArr3, this.f14403a));
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
            bArr2 = m3421a(copyOfRange, this.f14403a);
        } else {
            bArr2 = Arrays.copyOf(this.f14404b, 16);
            for (int i6 = 0; i6 < copyOfRange.length; i6++) {
                bArr2[i6] = (byte) (bArr2[i6] ^ copyOfRange[i6]);
            }
            bArr2[copyOfRange.length] = (byte) (bArr2[copyOfRange.length] ^ 128);
        }
        return cipher.doFinal(m3421a(doFinal, bArr2));
    }

    /* renamed from: a */
    private static byte[] m3422a(byte[] bArr) {
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

    /* renamed from: a */
    private static byte[] m3421a(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        byte[] bArr3 = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr3[i] = (byte) (bArr[i] ^ bArr2[i]);
        }
        return bArr3;
    }

    @Override // com.google.android.gms.internal.ads.zzdhx
    public final byte[] zzc(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int i = this.f14406d;
        if (length <= (Api.BaseClientBuilder.API_PRIORITY_OTHER - i) - 16) {
            byte[] bArr3 = new byte[bArr.length + i + 16];
            byte[] zzey = zzdpn.zzey(i);
            System.arraycopy(zzey, 0, bArr3, 0, this.f14406d);
            Cipher instance = Cipher.getInstance("AES/ECB/NOPADDING");
            instance.init(1, this.f14405c);
            byte[] a = m3423a(instance, 0, zzey, 0, zzey.length);
            if (bArr2 == null) {
                bArr2 = new byte[0];
            }
            byte[] a2 = m3423a(instance, 1, bArr2, 0, bArr2.length);
            Cipher instance2 = Cipher.getInstance("AES/CTR/NOPADDING");
            instance2.init(1, this.f14405c, new IvParameterSpec(a));
            instance2.doFinal(bArr, 0, bArr.length, bArr3, this.f14406d);
            byte[] a3 = m3423a(instance, 2, bArr3, this.f14406d, bArr.length);
            int length2 = bArr.length;
            int i2 = this.f14406d;
            for (int i3 = 0; i3 < 16; i3++) {
                bArr3[length2 + i2 + i3] = (byte) ((a2[i3] ^ a[i3]) ^ a3[i3]);
            }
            return bArr3;
        }
        throw new GeneralSecurityException("plaintext too long");
    }
}
