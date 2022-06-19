package androidx.core.p005os;

import android.os.Build;
import android.os.CancellationSignal;
/* renamed from: androidx.core.os.a */
/* loaded from: classes-dex2jar.jar:androidx/core/os/a.class */
public final class C0226a {

    /* renamed from: a */
    private boolean f1339a;

    /* renamed from: b */
    private AbstractC0227a f1340b;

    /* renamed from: c */
    private Object f1341c;

    /* renamed from: d */
    private boolean f1342d;

    /* renamed from: androidx.core.os.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/os/a$a.class */
    public interface AbstractC0227a {
        /* renamed from: a */
        void m5946a();
    }

    /* renamed from: d */
    private void m5947d() {
        while (this.f1342d) {
            try {
                wait();
            } catch (InterruptedException e) {
            }
        }
    }

    /* renamed from: a */
    public void m5950a() {
        synchronized (this) {
            if (this.f1339a) {
                return;
            }
            this.f1339a = true;
            this.f1342d = true;
            AbstractC0227a abstractC0227a = this.f1340b;
            Object obj = this.f1341c;
            if (abstractC0227a != null) {
                try {
                    abstractC0227a.m5946a();
                } catch (Throwable th) {
                    synchronized (this) {
                        this.f1342d = false;
                        notifyAll();
                        throw th;
                    }
                }
            }
            if (obj != null && Build.VERSION.SDK_INT >= 16) {
                ((CancellationSignal) obj).cancel();
            }
            synchronized (this) {
                this.f1342d = false;
                notifyAll();
            }
        }
    }

    /* renamed from: b */
    public boolean m5949b() {
        boolean z;
        synchronized (this) {
            z = this.f1339a;
        }
        return z;
    }

    /* renamed from: c */
    public void m5948c(AbstractC0227a abstractC0227a) {
        synchronized (this) {
            m5947d();
            if (this.f1340b == abstractC0227a) {
                return;
            }
            this.f1340b = abstractC0227a;
            if (!this.f1339a || abstractC0227a == null) {
                return;
            }
            abstractC0227a.m5946a();
        }
    }
}
