package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.c2;
import com.google.android.gms.internal.firebase-auth-api.g2;
import java.security.GeneralSecurityException;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.o5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/o5.class */
public final class C1161o5 {

    /* renamed from: a */
    private final c2 f3764a;

    /* renamed from: b */
    private final g2 f3765b;

    public C1161o5(c2 c2Var) {
        this.f3764a = c2Var;
        this.f3765b = null;
    }

    public C1161o5(g2 g2Var) {
        this.f3764a = null;
        this.f3765b = g2Var;
    }

    /* renamed from: a */
    public final byte[] m2702a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        c2 c2Var = this.f3764a;
        return c2Var != null ? c2Var.m2962b(bArr, bArr2) : this.f3765b.m2852a(bArr, bArr2);
    }
}
