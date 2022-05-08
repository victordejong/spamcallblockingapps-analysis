package p459j.p460a.p474c0.p499h;

import android.content.Context;
import android.content.pm.PackageManager;
import java.util.Locale;
/* renamed from: j.a.c0.h.u0 */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/u0.class */
public final class C12218u0 {

    /* renamed from: b */
    public static final Object f27385b = new Object();

    /* renamed from: c */
    public static C12218u0 f27386c;

    /* renamed from: a */
    public final String f27387a;

    public C12218u0(Context context) {
        int i;
        try {
            i = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            C12151d.m7005a("couldn't get package info " + e);
            i = -1;
        }
        int i2 = i / 1000;
        this.f27387a = String.format(Locale.US, "%d.%d.%03d", Integer.valueOf(i2 / 10000), Integer.valueOf((i2 / 1000) % 10), Integer.valueOf(i2 % 1000));
    }

    /* renamed from: a */
    public static C12218u0 m6736a(Context context) {
        synchronized (f27385b) {
            if (f27386c == null) {
                f27386c = new C12218u0(context);
            }
        }
        return f27386c;
    }

    /* renamed from: a */
    public String m6737a() {
        return this.f27387a;
    }
}
