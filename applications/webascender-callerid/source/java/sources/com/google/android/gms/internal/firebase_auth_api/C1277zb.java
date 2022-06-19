package com.google.android.gms.internal.firebase_auth_api;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.zb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/zb.class */
final class C1277zb extends ThreadLocal<Cipher> {
    C1277zb() {
    }

    /* renamed from: a */
    protected static final Cipher m2275a() {
        try {
            return C1206sc.f3803e.m2457a("AES/ECB/NOPADDING");
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.lang.ThreadLocal
    protected final /* bridge */ /* synthetic */ Cipher initialValue() {
        return m2275a();
    }
}
