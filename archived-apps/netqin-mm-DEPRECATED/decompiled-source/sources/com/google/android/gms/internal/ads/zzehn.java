package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;
import p131c.p161d.p170b.p224d.p252g.p253a.k60;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzehn.class */
public final class zzehn implements zzecx {

    /* renamed from: a */
    public final ThreadLocal<Mac> f28034a = new k60(this);

    /* renamed from: b */
    public final String f28035b;

    /* renamed from: c */
    public final Key f28036c;

    /* renamed from: d */
    public final int f28037d;

    public zzehn(String str, Key key) throws GeneralSecurityException {
        this.f28035b = str;
        this.f28036c = key;
        if (key.getEncoded().length >= 16) {
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
            if (c == 0) {
                this.f28037d = 20;
            } else if (c == 1) {
                this.f28037d = 32;
            } else if (c != 2) {
                String valueOf = String.valueOf(str);
                throw new NoSuchAlgorithmException(valueOf.length() != 0 ? "unknown Hmac algorithm: ".concat(valueOf) : new String("unknown Hmac algorithm: "));
            } else {
                this.f28037d = 64;
            }
            this.f28034a.get();
            return;
        }
        throw new InvalidAlgorithmParameterException("key size too small, need at least 16 bytes");
    }

    @Override // com.google.android.gms.internal.ads.zzecx
    /* renamed from: a */
    public final byte[] mo12554a(byte[] bArr, int i) throws GeneralSecurityException {
        if (i <= this.f28037d) {
            this.f28034a.get().update(bArr);
            return Arrays.copyOf(this.f28034a.get().doFinal(), i);
        }
        throw new InvalidAlgorithmParameterException("tag size too big");
    }
}
