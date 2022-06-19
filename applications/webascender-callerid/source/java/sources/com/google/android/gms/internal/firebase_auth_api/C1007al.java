package com.google.android.gms.internal.firebase_auth_api;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.internal.firebase-auth-api.ql;
import java.net.URLConnection;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.al */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/al.class */
public final class C1007al {

    /* renamed from: a */
    private final Context f3652a;

    /* renamed from: b */
    private ql f3653b;

    /* renamed from: c */
    private final String f3654c;

    /* renamed from: d */
    private boolean f3655d = false;

    /* renamed from: e */
    private String f3656e;

    public C1007al(Context context, String str) {
        C0931r.m3308k(context);
        this.f3652a = context.getApplicationContext();
        this.f3654c = String.format("Android/%s/%s", "Fallback", str);
    }

    /* renamed from: a */
    public final void m3028a(URLConnection uRLConnection) {
        String str;
        if (this.f3655d) {
            String str2 = this.f3654c;
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 19);
            sb.append(str2);
            sb.append("/");
            sb.append("FirebaseUI-Android");
            str = sb.toString();
        } else {
            String str3 = this.f3654c;
            StringBuilder sb2 = new StringBuilder(String.valueOf(str3).length() + 21);
            sb2.append(str3);
            sb2.append("/");
            sb2.append("FirebaseCore-Android");
            str = sb2.toString();
        }
        if (this.f3653b == null) {
            Context context = this.f3652a;
            this.f3653b = new C1186ql(context, context.getPackageName());
        }
        uRLConnection.setRequestProperty("X-Android-Package", this.f3653b.m2502a());
        uRLConnection.setRequestProperty("X-Android-Cert", this.f3653b.m2501b());
        uRLConnection.setRequestProperty("Accept-Language", C1022bl.m3004a());
        uRLConnection.setRequestProperty("X-Client-Version", str);
        uRLConnection.setRequestProperty("X-Firebase-Locale", this.f3656e);
        this.f3656e = null;
    }

    /* renamed from: b */
    public final void m3027b(String str) {
        this.f3655d = !TextUtils.isEmpty(str);
    }

    /* renamed from: c */
    public final void m3026c(String str) {
        this.f3656e = str;
    }
}
