package com.google.android.gms.internal.firebase_auth_api;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.common.util.C0960a;
import com.google.android.gms.common.util.C0969k;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.ql */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/ql.class */
public final class C1186ql {

    /* renamed from: a */
    private final String f3792a;

    /* renamed from: b */
    private final String f3793b;

    public C1186ql(Context context, String str) {
        C0931r.m3308k(context);
        C0931r.m3312g(str);
        this.f3792a = str;
        try {
            byte[] m3178a = C0960a.m3178a(context, str);
            if (m3178a != null) {
                this.f3793b = C0969k.m3149c(m3178a, false);
                return;
            }
            String valueOf = String.valueOf(str);
            Log.e("FBA-PackageInfo", valueOf.length() != 0 ? "single cert required: ".concat(valueOf) : new String("single cert required: "));
            this.f3793b = null;
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf2 = String.valueOf(str);
            Log.e("FBA-PackageInfo", valueOf2.length() != 0 ? "no pkg: ".concat(valueOf2) : new String("no pkg: "));
            this.f3793b = null;
        }
    }

    /* renamed from: a */
    public final String m2502a() {
        return this.f3792a;
    }

    /* renamed from: b */
    public final String m2501b() {
        return this.f3793b;
    }
}
