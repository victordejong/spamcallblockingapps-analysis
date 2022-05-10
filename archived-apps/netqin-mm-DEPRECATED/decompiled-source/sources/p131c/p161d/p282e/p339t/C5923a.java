package p131c.p161d.p282e.p339t;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import p012b.p042i.p044i.C0869a;
import p131c.p161d.p282e.p313o.AbstractC5472c;
/* renamed from: c.d.e.t.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/t/a.class */
public class C5923a {

    /* renamed from: a */
    public final Context f19273a;

    /* renamed from: b */
    public final SharedPreferences f19274b;

    /* renamed from: c */
    public boolean f19275c = m22694b();

    public C5923a(Context context, String str, AbstractC5472c cVar) {
        Context a = m22695a(context);
        this.f19273a = a;
        this.f19274b = a.getSharedPreferences("com.google.firebase.common.prefs:" + str, 0);
    }

    /* renamed from: a */
    public static Context m22695a(Context context) {
        return Build.VERSION.SDK_INT < 24 ? context : C0869a.m35694a(context);
    }

    /* renamed from: a */
    public boolean m22696a() {
        boolean z;
        synchronized (this) {
            z = this.f19275c;
        }
        return z;
    }

    /* renamed from: b */
    public final boolean m22694b() {
        return this.f19274b.contains("firebase_data_collection_default_enabled") ? this.f19274b.getBoolean("firebase_data_collection_default_enabled", true) : m22693c();
    }

    /* renamed from: c */
    public final boolean m22693c() {
        ApplicationInfo applicationInfo;
        try {
            PackageManager packageManager = this.f19273a.getPackageManager();
            if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(this.f19273a.getPackageName(), 128)) == null || applicationInfo.metaData == null || !applicationInfo.metaData.containsKey("firebase_data_collection_default_enabled")) {
                return true;
            }
            return applicationInfo.metaData.getBoolean("firebase_data_collection_default_enabled");
        } catch (PackageManager.NameNotFoundException e) {
            return true;
        }
    }
}
