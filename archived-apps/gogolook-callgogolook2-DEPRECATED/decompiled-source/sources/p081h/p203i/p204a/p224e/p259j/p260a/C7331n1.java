package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.Context;
import android.os.StrictMode;
import java.util.concurrent.Callable;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.n1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/n1.class */
public final class C7331n1 {
    /* renamed from: a */
    public static <T> T m20791a(Context context, Callable<T> callable) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        try {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            return callable.call();
        } catch (Throwable th) {
            try {
                C7452x1.m20571b("Unexpected exception.", th);
                C7306l0.m20822a(context).mo20781a(th, "StrictModeUtil.runWithLaxStrictMode");
                StrictMode.setThreadPolicy(threadPolicy);
                return null;
            } finally {
                StrictMode.setThreadPolicy(threadPolicy);
            }
        }
    }
}
