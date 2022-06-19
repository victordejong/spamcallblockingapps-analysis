package com.google.android.gms.internal.firebase_auth_api;

import java.security.SecureRandom;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.id */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/id.class */
public final class C1103id {

    /* renamed from: a */
    private static final ThreadLocal<SecureRandom> f3735a = new C1089hd();

    /* renamed from: a */
    public static byte[] m2801a(int i) {
        byte[] bArr = new byte[i];
        f3735a.get().nextBytes(bArr);
        return bArr;
    }
}
