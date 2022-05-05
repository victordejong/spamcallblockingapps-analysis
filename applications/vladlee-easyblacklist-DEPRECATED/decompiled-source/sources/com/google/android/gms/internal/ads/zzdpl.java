package com.google.android.gms.internal.ads;

import java.security.InvalidAlgorithmParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpl.class */
public final class zzdpl implements zzdio {

    /* renamed from: a */
    private final Mac f14442a;

    /* renamed from: b */
    private final int f14443b;

    /* renamed from: c */
    private final String f14444c;

    /* renamed from: d */
    private final Key f14445d;

    public zzdpl(String str, Key key, int i) {
        if (i < 10) {
            throw new InvalidAlgorithmParameterException("tag size too small, need at least 10 bytes");
        } else if (key.getEncoded().length >= 16) {
            char c = 65535;
            int hashCode = str.hashCode();
            if (hashCode != -1823053428) {
                if (hashCode != 392315118) {
                    if (hashCode == 392317873 && str.equals("HMACSHA512")) {
                        c = 2;
                    }
                } else if (str.equals("HMACSHA256")) {
                    c = 1;
                }
            } else if (str.equals("HMACSHA1")) {
                c = 0;
            }
            if (c != 0) {
                if (c != 1) {
                    if (c != 2) {
                        String valueOf = String.valueOf(str);
                        throw new NoSuchAlgorithmException(valueOf.length() != 0 ? "unknown Hmac algorithm: ".concat(valueOf) : new String("unknown Hmac algorithm: "));
                    } else if (i > 64) {
                        throw new InvalidAlgorithmParameterException("tag size too big");
                    }
                } else if (i > 32) {
                    throw new InvalidAlgorithmParameterException("tag size too big");
                }
            } else if (i > 20) {
                throw new InvalidAlgorithmParameterException("tag size too big");
            }
            this.f14444c = str;
            this.f14443b = i;
            this.f14445d = key;
            this.f14442a = zzdoy.zzhgh.zzhd(str);
            this.f14442a.init(key);
        } else {
            throw new InvalidAlgorithmParameterException("key size too small, need at least 16 bytes");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdio
    public final byte[] zzl(byte[] bArr) {
        Mac mac;
        try {
            mac = (Mac) this.f14442a.clone();
        } catch (CloneNotSupportedException e) {
            mac = zzdoy.zzhgh.zzhd(this.f14444c);
            mac.init(this.f14445d);
        }
        mac.update(bArr);
        byte[] bArr2 = new byte[this.f14443b];
        System.arraycopy(mac.doFinal(), 0, bArr2, 0, this.f14443b);
        return bArr2;
    }
}
