package p081h.p203i.p204a.p224e.p235d.p240n;

import android.os.Looper;
import android.util.Log;
/* renamed from: h.i.a.e.d.n.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/c.class */
public final class C6967c {
    /* renamed from: a */
    public static void m21462a(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("null reference");
        }
    }

    /* renamed from: a */
    public static void m21461a(String str) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            String valueOf = String.valueOf(Thread.currentThread());
            String valueOf2 = String.valueOf(Looper.getMainLooper().getThread());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 57 + String.valueOf(valueOf2).length());
            sb.append("checkMainThread: current thread ");
            sb.append(valueOf);
            sb.append(" IS NOT the main thread ");
            sb.append(valueOf2);
            sb.append("!");
            Log.e("Asserts", sb.toString());
            throw new IllegalStateException(str);
        }
    }

    /* renamed from: b */
    public static void m21460b(String str) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            String valueOf = String.valueOf(Thread.currentThread());
            String valueOf2 = String.valueOf(Looper.getMainLooper().getThread());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 56 + String.valueOf(valueOf2).length());
            sb.append("checkNotMainThread: current thread ");
            sb.append(valueOf);
            sb.append(" IS the main thread ");
            sb.append(valueOf2);
            sb.append("!");
            Log.e("Asserts", sb.toString());
            throw new IllegalStateException(str);
        }
    }
}
