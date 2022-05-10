package p131c.p396i.p397a;

import android.app.Activity;
import android.app.Application;
import p131c.p396i.p397a.p417j.C6614a;
/* renamed from: c.i.a.a */
/* loaded from: classes2-dex2jar.jar:c/i/a/a.class */
public class C6489a {

    /* renamed from: a */
    public static long f20204a;

    /* renamed from: b */
    public static String f20205b;

    /* renamed from: c */
    public static Application f20206c;

    /* renamed from: d */
    public static Activity f20207d;

    /* renamed from: e */
    public static int f20208e;

    /* renamed from: a */
    public static Activity m20721a() {
        Activity activity = f20207d;
        if (activity != null) {
            return activity;
        }
        throw new RuntimeException("Can not get the activity,do you have initialized it in the Activity?");
    }

    /* renamed from: a */
    public static void m20720a(Activity activity) {
        f20207d = activity;
    }

    /* renamed from: a */
    public static void m20719a(Application application, long j, String str, int i, boolean z) {
        C6614a.f20428a = z;
        f20206c = application;
        f20205b = str;
        f20204a = j;
        f20208e = i;
    }

    /* renamed from: b */
    public static Application m20718b() {
        Application application = f20206c;
        if (application != null) {
            return application;
        }
        throw new RuntimeException("Can not get the application context,do you have initialized it in the main process's application?");
    }

    /* renamed from: c */
    public static boolean m20717c() {
        return f20206c != null;
    }
}
