package p193e.p194a.p673d0;

import android.os.SystemClock;
import java.util.UUID;
/* renamed from: e.a.d0.p0 */
/* loaded from: classes6-dex2jar.jar:e/a/d0/p0.class */
public class C12539p0 {

    /* renamed from: a */
    public static String f36647a;

    /* renamed from: b */
    public static long f36648b;

    /* renamed from: a */
    public static String m22885a() {
        String str;
        long j;
        synchronized (C12539p0.class) {
            try {
                str = f36647a;
                j = f36648b;
                f36647a = null;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (j + 1200 < SystemClock.elapsedRealtime()) {
            str = null;
        }
        String str2 = str;
        if (str == null) {
            str2 = UUID.randomUUID().toString();
        }
        return str2;
    }
}
