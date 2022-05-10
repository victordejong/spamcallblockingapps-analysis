package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzrq.class */
public abstract class zzrq {

    /* renamed from: b */
    public static MessageDigest f28938b;

    /* renamed from: a */
    public Object f28939a = new Object();

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x003d -> B:14:0x0024). Please submit an issue!!! */
    /* renamed from: a */
    public final MessageDigest m11489a() {
        synchronized (this.f28939a) {
            try {
                if (f28938b != null) {
                    return f28938b;
                }
                for (int i = 0; i < 2; i++) {
                    try {
                        f28938b = MessageDigest.getInstance("MD5");
                    } catch (NoSuchAlgorithmException e) {
                    }
                }
                return f28938b;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public abstract byte[] mo11480a(String str);
}
