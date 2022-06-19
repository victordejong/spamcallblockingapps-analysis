package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.qb;
import java.security.GeneralSecurityException;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.k3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/k3.class */
public final class C1120k3 {

    /* renamed from: a */
    public static final String f3741a = "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey";

    /* renamed from: b */
    public static final String f3742b = "type.googleapis.com/google.crypto.tink.AesGcmKey";
    @Deprecated

    /* renamed from: c */
    public static final qb f3743c = qb.y();

    static {
        new r3();
        new b4();
        new e4();
        new y3();
        new k4();
        new o4();
        new h4();
        new r4();
        try {
            m2777a();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    /* renamed from: a */
    public static void m2777a() throws GeneralSecurityException {
        C1042e6.m2945a();
        C1099i3.m2819a(new r3(), true);
        C1099i3.m2819a(new y3(), true);
        C1099i3.m2819a(new b4(), true);
        e4.j(true);
        C1099i3.m2819a(new h4(), true);
        C1099i3.m2819a(new k4(), true);
        C1099i3.m2819a(new o4(), true);
        C1099i3.m2819a(new r4(), true);
        C1099i3.m2817c(new o3());
    }
}
