package com.google.android.gms.internal.firebase_auth_api;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.s4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/s4.class */
final class C1202s4 extends ThreadLocal<Cipher> {
    C1202s4() {
    }

    /* renamed from: a */
    protected static final Cipher m2458a() {
        try {
            return C1206sc.f3803e.m2457a("AES/GCM-SIV/NoPadding");
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.lang.ThreadLocal
    protected final /* bridge */ /* synthetic */ Cipher initialValue() {
        return m2458a();
    }
}
