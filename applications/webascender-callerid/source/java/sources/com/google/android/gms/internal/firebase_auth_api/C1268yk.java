package com.google.android.gms.internal.firebase_auth_api;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.C0923o;
import com.google.android.gms.internal.firebase-auth-api.yk;
import java.util.List;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.yk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/yk.class */
public final class C1268yk {

    /* renamed from: a */
    private final int f3854a;

    public C1268yk(String str) {
        int i;
        try {
            List<String> m3037c = C1000a2.m3038b("[.-]").m3037c(str);
            if (m3037c.size() == 1) {
                i = Integer.parseInt(str);
            } else {
                i = -1;
                if (m3037c.size() >= 3) {
                    i = (Integer.parseInt(m3037c.get(0)) * 1000000) + (Integer.parseInt(m3037c.get(1)) * 1000) + Integer.parseInt(m3037c.get(2));
                }
            }
        } catch (IllegalArgumentException e) {
            i = -1;
            if (Log.isLoggable("LibraryVersionContainer", 3)) {
                Log.d("LibraryVersionContainer", String.format("Version code parsing failed for: %s with exception %s.", str, e));
                i = -1;
            }
        }
        this.f3854a = i;
    }

    /* renamed from: b */
    public static yk m2300b() {
        return new C1268yk(m2299c());
    }

    /* renamed from: c */
    static String m2299c() {
        String m3328b = C0923o.m3329a().m3328b("firebase-auth");
        return (TextUtils.isEmpty(m3328b) || m3328b.equals("UNKNOWN")) ? "-1" : m3328b;
    }

    /* renamed from: a */
    public final String m2301a() {
        return String.format("X%s", Integer.toString(this.f3854a));
    }
}
