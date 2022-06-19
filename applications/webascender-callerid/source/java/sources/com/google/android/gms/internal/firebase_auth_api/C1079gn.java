package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.common.util.C0962c;
import com.google.android.gms.internal.firebase-auth-api.hn;
import java.io.UnsupportedEncodingException;
import java.util.List;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.gn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/gn.class */
public final class C1079gn {
    /* renamed from: a */
    public static long m2841a(String str) {
        C0931r.m3312g(str);
        List<String> m3037c = C1000a2.m3039a('.').m3037c(str);
        if (m3037c.size() < 2) {
            String valueOf = String.valueOf(str);
            throw new RuntimeException(valueOf.length() != 0 ? "Invalid idToken ".concat(valueOf) : new String("Invalid idToken "));
        }
        try {
            hn m2822c = C1094hn.m2822c(new String(C0962c.m3173b(m3037c.get(1)), "UTF-8"));
            return m2822c.m2823b().longValue() - m2822c.m2824a().longValue();
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("Unable to decode token", e);
        }
    }
}
