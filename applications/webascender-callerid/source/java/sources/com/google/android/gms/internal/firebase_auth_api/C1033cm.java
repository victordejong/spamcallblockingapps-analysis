package com.google.android.gms.internal.firebase_auth_api;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.cm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/cm.class */
public final class C1033cm {
    /* renamed from: a */
    public static String m2959a(String str) {
        try {
            Object invoke = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class).invoke(null, str);
            if (invoke != null && String.class.isAssignableFrom(invoke.getClass())) {
                return (String) invoke;
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }
}
