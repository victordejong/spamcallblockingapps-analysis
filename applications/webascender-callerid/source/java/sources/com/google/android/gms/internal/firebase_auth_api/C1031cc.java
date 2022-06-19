package com.google.android.gms.internal.firebase_auth_api;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.cc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/cc.class */
final class C1031cc extends ThreadLocal<Cipher> {
    C1031cc() {
    }

    /* renamed from: a */
    protected static final Cipher m2960a() {
        try {
            return C1206sc.f3803e.m2457a("AES/GCM/NoPadding");
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.lang.ThreadLocal
    protected final /* bridge */ /* synthetic */ Cipher initialValue() {
        return m2960a();
    }
}
