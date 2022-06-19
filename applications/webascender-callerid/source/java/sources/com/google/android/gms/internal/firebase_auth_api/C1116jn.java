package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.fj;
import com.google.android.gms.internal.firebase-auth-api.jn;
import java.util.logging.Logger;
import java.util.regex.Pattern;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.jn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/jn.class */
final class C1116jn {
    static {
        Logger.getLogger(jn.class.getName());
    }

    private C1116jn() {
    }

    /* renamed from: a */
    public static boolean m2789a(String str) {
        return str == null || str.isEmpty();
    }

    /* renamed from: b */
    public static fj m2788b(String str) {
        return new ik(Pattern.compile("[.-]"));
    }
}
