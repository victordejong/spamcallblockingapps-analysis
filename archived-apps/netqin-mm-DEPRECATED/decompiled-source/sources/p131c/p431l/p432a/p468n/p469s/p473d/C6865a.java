package p131c.p431l.p432a.p468n.p469s.p473d;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
/* renamed from: c.l.a.n.s.d.a */
/* loaded from: classes2-dex2jar.jar:c/l/a/n/s/d/a.class */
public class C6865a {
    /* renamed from: a */
    public static int m19517a() {
        return Build.VERSION.SDK_INT;
    }

    /* renamed from: a */
    public static boolean m19516a(Context context) {
        NetworkInfo networkInfo;
        try {
            networkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception e) {
            e.printStackTrace();
            networkInfo = null;
        }
        return networkInfo != null;
    }

    /* renamed from: b */
    public static boolean m19515b() {
        return m19517a() >= 8;
    }
}
