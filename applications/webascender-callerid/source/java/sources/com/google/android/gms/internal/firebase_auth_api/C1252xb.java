package com.google.android.gms.internal.firebase_auth_api;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.xb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/xb.class */
final class C1252xb extends ThreadLocal<Cipher> {
    C1252xb() {
    }

    /* renamed from: a */
    protected static final Cipher m2327a() {
        try {
            return C1206sc.f3803e.m2457a("AES/CTR/NoPadding");
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.lang.ThreadLocal
    protected final /* bridge */ /* synthetic */ Cipher initialValue() {
        return m2327a();
    }
}
