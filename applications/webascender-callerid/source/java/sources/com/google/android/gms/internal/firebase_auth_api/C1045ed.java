package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.fd;
import java.security.GeneralSecurityException;
import javax.crypto.Mac;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.ed */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/ed.class */
final class C1045ed extends ThreadLocal<Mac> {

    /* renamed from: a */
    final /* synthetic */ fd f3694a;

    C1045ed(fd fdVar) {
        this.f3694a = fdVar;
    }

    /* renamed from: a */
    public final Mac initialValue() {
        try {
            Mac m2457a = C1206sc.f3804f.m2457a(fd.b(this.f3694a));
            m2457a.init(fd.c(this.f3694a));
            return m2457a;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }
}
