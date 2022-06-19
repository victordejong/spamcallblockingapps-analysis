package com.google.android.gms.internal.firebase_auth_api;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.p024l.C0945a;
import java.net.HttpURLConnection;
import java.net.URL;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.gk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/gk.class */
public interface AbstractC1077gk {

    /* renamed from: b */
    public static final C0945a f3716b = new C0945a("FirebaseAuth", "GetAuthDomainTaskResponseHandler");

    /* renamed from: b */
    String m2848b(String str);

    /* renamed from: c */
    void m2847c(Uri uri, String str);

    /* renamed from: k */
    Context m2846k();

    /* renamed from: m */
    HttpURLConnection m2845m(URL url);

    /* renamed from: r */
    Uri.Builder m2844r(Intent intent, String str, String str2);

    /* renamed from: v */
    void m2843v(String str, Status status);
}
