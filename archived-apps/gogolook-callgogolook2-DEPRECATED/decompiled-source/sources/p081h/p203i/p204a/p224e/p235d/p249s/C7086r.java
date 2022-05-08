package p081h.p203i.p204a.p224e.p235d.p249s;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import p081h.p203i.p204a.p224e.p235d.C6801h;
import p081h.p203i.p204a.p224e.p235d.p251t.C7097c;
/* renamed from: h.i.a.e.d.s.r */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/s/r.class */
public final class C7086r {
    /* renamed from: a */
    public static boolean m21116a(Context context, int i) {
        if (!m21115a(context, i, "com.google.android.gms")) {
            return false;
        }
        try {
            return C6801h.m21873a(context).m21872a(context.getPackageManager().getPackageInfo("com.google.android.gms", 64));
        } catch (PackageManager.NameNotFoundException e) {
            Log.isLoggable("UidVerifier", 3);
            return false;
        }
    }

    @TargetApi(19)
    /* renamed from: a */
    public static boolean m21115a(Context context, int i, String str) {
        return C7097c.m21085b(context).m21093a(i, str);
    }
}
