package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/agl.class */
final class agl extends ThreadLocal<Cipher> {
    /* renamed from: a */
    private static Cipher m5443a() {
        try {
            return zzdoy.zzhgg.zzhd("AES/GCM/NoPadding");
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.lang.ThreadLocal
    protected final /* synthetic */ Cipher initialValue() {
        return m5443a();
    }
}
