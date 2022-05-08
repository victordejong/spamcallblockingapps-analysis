package p081h.p203i.p204a.p224e.p235d.p240n;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import javax.annotation.concurrent.GuardedBy;
import p081h.p203i.p204a.p224e.p235d.p251t.C7097c;
/* renamed from: h.i.a.e.d.n.x0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/x0.class */
public final class C7033x0 {

    /* renamed from: a */
    public static Object f17166a = new Object();
    @GuardedBy("sLock")

    /* renamed from: b */
    public static boolean f17167b;

    /* renamed from: c */
    public static String f17168c;

    /* renamed from: d */
    public static int f17169d;

    /* renamed from: a */
    public static String m21198a(Context context) {
        m21196c(context);
        return f17168c;
    }

    /* renamed from: b */
    public static int m21197b(Context context) {
        m21196c(context);
        return f17169d;
    }

    /* renamed from: c */
    public static void m21196c(Context context) {
        Bundle bundle;
        synchronized (f17166a) {
            if (!f17167b) {
                f17167b = true;
                try {
                    bundle = C7097c.m21085b(context).m21091a(context.getPackageName(), 128).metaData;
                } catch (PackageManager.NameNotFoundException e) {
                    Log.wtf("MetadataValueReader", "This should never happen.", e);
                }
                if (bundle != null) {
                    f17168c = bundle.getString("com.google.app.id");
                    f17169d = bundle.getInt("com.google.android.gms.version");
                }
            }
        }
    }
}
