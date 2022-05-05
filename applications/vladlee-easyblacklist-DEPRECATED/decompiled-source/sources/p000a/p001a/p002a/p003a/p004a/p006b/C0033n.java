package p000a.p001a.p002a.p003a.p004a.p006b;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import p000a.p001a.p002a.p003a.C0137d;
/* renamed from: a.a.a.a.a.b.n */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/b/n.class */
public final class C0033n {

    /* renamed from: a */
    private static C0033n f56a;

    /* renamed from: b */
    private static Object f57b = new Object();

    /* renamed from: c */
    private final SharedPreferences f58c;

    /* renamed from: d */
    private volatile boolean f59d;

    /* renamed from: e */
    private volatile boolean f60e;

    /* renamed from: f */
    private final AbstractC0040u f61f;

    private C0033n(Context context) {
        boolean z;
        boolean z2;
        if (context != null) {
            this.f58c = context.getSharedPreferences("com.google.firebase.crashlytics.prefs", 0);
            this.f61f = C0041v.m10298a(context);
            if (this.f58c.contains("firebase_crashlytics_collection_enabled")) {
                this.f58c.getBoolean("firebase_crashlytics_collection_enabled", true);
            } else {
                try {
                    PackageManager packageManager = context.getPackageManager();
                    z2 = false;
                    z = true;
                    if (packageManager != null) {
                        ApplicationInfo applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128);
                        z2 = false;
                        z = true;
                        if (applicationInfo != null) {
                            z2 = false;
                            z = true;
                            if (applicationInfo.metaData != null) {
                                z2 = false;
                                z = true;
                                z = applicationInfo.metaData.containsKey("firebase_crashlytics_collection_enabled") ? applicationInfo.metaData.getBoolean("firebase_crashlytics_collection_enabled") : z;
                            }
                        }
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    C0137d.m10155c().mo10134a("Fabric", "Unable to get PackageManager. Falling through", e);
                    z = true;
                    z2 = false;
                }
                this.f60e = z;
                this.f59d = z2;
                return;
            }
            z2 = true;
            this.f60e = z;
            this.f59d = z2;
            return;
        }
        throw new RuntimeException("null context");
    }

    /* renamed from: a */
    public static C0033n m10308a(Context context) {
        C0033n nVar;
        synchronized (f57b) {
            if (f56a == null) {
                f56a = new C0033n(context);
            }
            nVar = f56a;
        }
        return nVar;
    }

    /* renamed from: a */
    public final void m10307a(boolean z) {
        this.f60e = z;
        this.f59d = true;
        this.f58c.edit().putBoolean("firebase_crashlytics_collection_enabled", z).commit();
    }

    /* renamed from: a */
    public final boolean m10309a() {
        if (this.f59d) {
            return this.f60e;
        }
        AbstractC0040u uVar = this.f61f;
        if (uVar != null) {
            return uVar.mo10299a();
        }
        return true;
    }
}
