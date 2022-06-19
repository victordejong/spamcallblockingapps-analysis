package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.al;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.hk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/hk.class */
public class C1092hk {

    /* renamed from: a */
    final String f3719a;

    /* renamed from: b */
    final al f3720b;

    public C1092hk(String str, al alVar) {
        this.f3719a = str;
        this.f3720b = alVar;
    }

    /* renamed from: a */
    final String m2825a(String str, String str2) {
        String str3 = this.f3719a;
        StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 5 + str.length() + String.valueOf(str2).length());
        sb.append(str3);
        sb.append(str);
        sb.append("?key=");
        sb.append(str2);
        return sb.toString();
    }
}
