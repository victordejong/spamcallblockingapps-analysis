package p193e.p194a.p852i.p908w;

import android.content.Context;
/* renamed from: e.a.i.w.e */
/* loaded from: classes3-dex2jar.jar:e/a/i/w/e.class */
public final class C15248e {

    /* renamed from: a */
    public static AbstractC15247d f43402a;

    /* renamed from: a */
    public static AbstractC15247d m19004a(Context context) {
        AbstractC15247d abstractC15247d;
        synchronized (C15248e.class) {
            try {
                if (f43402a == null) {
                    f43402a = new f(context);
                }
                abstractC15247d = f43402a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return abstractC15247d;
    }
}
