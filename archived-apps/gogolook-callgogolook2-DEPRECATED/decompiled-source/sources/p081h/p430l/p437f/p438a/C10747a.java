package p081h.p430l.p437f.p438a;

import android.os.Looper;
/* renamed from: h.l.f.a.a */
/* loaded from: classes2-dex2jar.jar:h/l/f/a/a.class */
public final class C10747a {
    /* renamed from: a */
    public static void m10740a() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("Must be invoked from the main thread.");
        }
    }
}
