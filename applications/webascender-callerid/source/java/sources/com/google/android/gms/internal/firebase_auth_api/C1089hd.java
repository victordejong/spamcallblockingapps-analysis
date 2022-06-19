package com.google.android.gms.internal.firebase_auth_api;

import java.security.SecureRandom;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.hd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/hd.class */
final class C1089hd extends ThreadLocal<SecureRandom> {
    @Override // java.lang.ThreadLocal
    protected final /* bridge */ /* synthetic */ SecureRandom initialValue() {
        SecureRandom secureRandom = new SecureRandom();
        secureRandom.nextLong();
        return secureRandom;
    }
}
