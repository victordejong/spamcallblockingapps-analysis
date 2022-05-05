package androidx.core.p032c;

import android.os.Build;
import android.os.CancellationSignal;
/* renamed from: androidx.core.c.a */
/* loaded from: classes-dex2jar.jar:androidx/core/c/a.class */
public final class C0624a {

    /* renamed from: a */
    private boolean f2880a;

    /* renamed from: b */
    private Object f2881b;

    /* renamed from: c */
    private boolean f2882c;

    /* renamed from: a */
    public final boolean m8691a() {
        boolean z;
        synchronized (this) {
            z = this.f2880a;
        }
        return z;
    }

    /* renamed from: b */
    public final void m8690b() {
        synchronized (this) {
            if (!this.f2880a) {
                this.f2880a = true;
                this.f2882c = true;
                Object obj = this.f2881b;
                if (obj != null) {
                    try {
                        if (Build.VERSION.SDK_INT >= 16) {
                            ((CancellationSignal) obj).cancel();
                        }
                    } catch (Throwable th) {
                        synchronized (this) {
                            this.f2882c = false;
                            notifyAll();
                            throw th;
                        }
                    }
                }
                synchronized (this) {
                    this.f2882c = false;
                    notifyAll();
                }
            }
        }
    }

    /* renamed from: c */
    public final Object m8689c() {
        Object obj;
        if (Build.VERSION.SDK_INT < 16) {
            return null;
        }
        synchronized (this) {
            if (this.f2881b == null) {
                this.f2881b = new CancellationSignal();
                if (this.f2880a) {
                    ((CancellationSignal) this.f2881b).cancel();
                }
            }
            obj = this.f2881b;
        }
        return obj;
    }
}
