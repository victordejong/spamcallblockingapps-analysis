package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.qb;
import java.security.GeneralSecurityException;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.e6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/e6.class */
public final class C1042e6 {
    @Deprecated

    /* renamed from: a */
    public static final qb f3691a = qb.y();

    static {
        new d6();
        try {
            m2945a();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    /* renamed from: a */
    public static void m2945a() throws GeneralSecurityException {
        C1099i3.m2819a(new d6(), true);
        C1099i3.m2819a(new a6(), true);
        C1099i3.m2817c(new h6());
    }
}
