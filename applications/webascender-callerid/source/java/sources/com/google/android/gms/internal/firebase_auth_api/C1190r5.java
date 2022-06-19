package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.c2;
import com.google.android.gms.internal.firebase-auth-api.p5;
import com.google.android.gms.internal.firebase-auth-api.q2;
import com.google.android.gms.internal.firebase-auth-api.q5;
import com.google.android.gms.internal.firebase-auth-api.r2;
import com.google.android.gms.internal.firebase-auth-api.s2;
import java.io.IOException;
import java.security.GeneralSecurityException;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.r5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/r5.class */
public final class C1190r5 {

    /* renamed from: c */
    private static final String f3795c = "r5";

    /* renamed from: d */
    public static final /* synthetic */ int f3796d = 0;

    /* renamed from: a */
    private final c2 f3797a;

    /* renamed from: b */
    private final r2 f3798b;

    public /* synthetic */ C1190r5(q5 q5Var, p5 p5Var) throws GeneralSecurityException, IOException {
        c2 c2Var;
        r2 r2Var;
        s2 unused;
        unused = ((C1183q5) q5Var).f3786a;
        c2Var = ((C1183q5) q5Var).f3788c;
        this.f3797a = c2Var;
        r2Var = ((C1183q5) q5Var).f3790e;
        this.f3798b = r2Var;
    }

    /* renamed from: a */
    public final q2 m2473a() throws GeneralSecurityException {
        q2 m2482c;
        synchronized (this) {
            m2482c = this.f3798b.m2482c();
        }
        return m2482c;
    }
}
