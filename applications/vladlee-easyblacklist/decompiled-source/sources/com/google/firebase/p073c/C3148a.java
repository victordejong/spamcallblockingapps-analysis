package com.google.firebase.p073c;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.core.content.C0646b;
import com.google.firebase.p071a.AbstractC3137c;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.firebase.c.a */
/* loaded from: classes-dex2jar.jar:com/google/firebase/c/a.class */
public final class C3148a {

    /* renamed from: a */
    private final Context f18977a;

    /* renamed from: b */
    private final SharedPreferences f18978b;

    /* renamed from: c */
    private final AbstractC3137c f18979c;

    /* renamed from: d */
    private final AtomicBoolean f18980d;

    public C3148a(Context context, String str, AbstractC3137c cVar) {
        this.f18977a = (Build.VERSION.SDK_INT < 24 || C0646b.m8610e(context)) ? context : C0646b.m8611d(context);
        this.f18978b = context.getSharedPreferences("com.google.firebase.common.prefs:".concat(String.valueOf(str)), 0);
        this.f18979c = cVar;
        this.f18980d = new AtomicBoolean(m638b());
    }

    /* renamed from: b */
    private boolean m638b() {
        ApplicationInfo applicationInfo;
        if (this.f18978b.contains("firebase_data_collection_default_enabled")) {
            return this.f18978b.getBoolean("firebase_data_collection_default_enabled", true);
        }
        try {
            PackageManager packageManager = this.f18977a.getPackageManager();
            if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(this.f18977a.getPackageName(), 128)) == null || applicationInfo.metaData == null || !applicationInfo.metaData.containsKey("firebase_data_collection_default_enabled")) {
                return true;
            }
            return applicationInfo.metaData.getBoolean("firebase_data_collection_default_enabled");
        } catch (PackageManager.NameNotFoundException e) {
            return true;
        }
    }

    /* renamed from: a */
    public final boolean m639a() {
        return this.f18980d.get();
    }
}
