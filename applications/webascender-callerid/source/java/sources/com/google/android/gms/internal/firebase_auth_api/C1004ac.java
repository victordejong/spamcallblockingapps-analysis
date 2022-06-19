package com.google.android.gms.internal.firebase_auth_api;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.ac */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/ac.class */
final class C1004ac extends ThreadLocal<Cipher> {
    C1004ac() {
    }

    /* renamed from: a */
    protected static final Cipher m3030a() {
        try {
            return C1206sc.f3803e.m2457a("AES/CTR/NOPADDING");
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.lang.ThreadLocal
    protected final /* bridge */ /* synthetic */ Cipher initialValue() {
        return m3030a();
    }
}
