package p193e.p194a.p615c4;

import android.util.Log;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.c4.m */
/* loaded from: classes10-dex2jar.jar:e/a/c4/m.class */
public final class C10945m {

    /* renamed from: a */
    public static boolean f32458a;

    /* renamed from: a */
    public static String m25486a(Throwable th) {
        StringBuilder m8728C = C22128a.m8728C("Exception: ");
        m8728C.append(th.getMessage());
        m8728C.append(", Stack: ");
        m8728C.append(Log.getStackTraceString(th));
        return m8728C.toString();
    }
}
