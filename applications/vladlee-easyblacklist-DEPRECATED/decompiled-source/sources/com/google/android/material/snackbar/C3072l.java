package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.ConnectionResult;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.material.snackbar.l */
/* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/l.class */
final class C3072l {

    /* renamed from: a */
    private static C3072l f18538a;

    /* renamed from: b */
    private final Object f18539b = new Object();

    /* renamed from: c */
    private final Handler f18540c = new Handler(Looper.getMainLooper(), new C3075m(this));

    /* renamed from: d */
    private C3074b f18541d;

    /* renamed from: e */
    private C3074b f18542e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.snackbar.l$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/l$a.class */
    public interface AbstractC3073a {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.snackbar.l$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/l$b.class */
    public static final class C3074b {

        /* renamed from: a */
        final WeakReference<AbstractC3073a> f18543a;

        /* renamed from: b */
        int f18544b;

        /* renamed from: c */
        boolean f18545c;

        /* renamed from: a */
        final boolean m908a(AbstractC3073a aVar) {
            return aVar != null && this.f18543a.get() == aVar;
        }
    }

    private C3072l() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static C3072l m920a() {
        if (f18538a == null) {
            f18538a = new C3072l();
        }
        return f18538a;
    }

    /* renamed from: b */
    private boolean m916b(C3074b bVar) {
        if (bVar.f18543a.get() == null) {
            return false;
        }
        this.f18540c.removeCallbacksAndMessages(bVar);
        return true;
    }

    /* renamed from: c */
    private void m914c(C3074b bVar) {
        if (bVar.f18544b != -2) {
            int i = 2750;
            if (bVar.f18544b > 0) {
                i = bVar.f18544b;
            } else if (bVar.f18544b == -1) {
                i = ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED;
            }
            this.f18540c.removeCallbacksAndMessages(bVar);
            Handler handler = this.f18540c;
            handler.sendMessageDelayed(Message.obtain(handler, 0, bVar), i);
        }
    }

    /* renamed from: g */
    private boolean m910g(AbstractC3073a aVar) {
        C3074b bVar = this.f18541d;
        return bVar != null && bVar.m908a(aVar);
    }

    /* renamed from: h */
    private boolean m909h(AbstractC3073a aVar) {
        C3074b bVar = this.f18542e;
        return bVar != null && bVar.m908a(aVar);
    }

    /* renamed from: a */
    public final void m919a(AbstractC3073a aVar) {
        C3074b bVar;
        synchronized (this.f18539b) {
            if (m910g(aVar)) {
                bVar = this.f18541d;
            } else if (m909h(aVar)) {
                bVar = this.f18542e;
            }
            m916b(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m918a(C3074b bVar) {
        synchronized (this.f18539b) {
            if (this.f18541d == bVar || this.f18542e == bVar) {
                m916b(bVar);
            }
        }
    }

    /* renamed from: b */
    public final void m917b(AbstractC3073a aVar) {
        synchronized (this.f18539b) {
            if (m910g(aVar)) {
                this.f18541d = null;
                if (!(this.f18542e == null || this.f18542e == null)) {
                    this.f18541d = this.f18542e;
                    this.f18542e = null;
                    if (this.f18541d.f18543a.get() == null) {
                        this.f18541d = null;
                    }
                }
            }
        }
    }

    /* renamed from: c */
    public final void m915c(AbstractC3073a aVar) {
        synchronized (this.f18539b) {
            if (m910g(aVar)) {
                m914c(this.f18541d);
            }
        }
    }

    /* renamed from: d */
    public final void m913d(AbstractC3073a aVar) {
        synchronized (this.f18539b) {
            if (m910g(aVar) && !this.f18541d.f18545c) {
                this.f18541d.f18545c = true;
                this.f18540c.removeCallbacksAndMessages(this.f18541d);
            }
        }
    }

    /* renamed from: e */
    public final void m912e(AbstractC3073a aVar) {
        synchronized (this.f18539b) {
            if (m910g(aVar) && this.f18541d.f18545c) {
                this.f18541d.f18545c = false;
                m914c(this.f18541d);
            }
        }
    }

    /* renamed from: f */
    public final boolean m911f(AbstractC3073a aVar) {
        boolean z;
        synchronized (this.f18539b) {
            if (!m910g(aVar) && !m909h(aVar)) {
                z = false;
            }
            z = true;
        }
        return z;
    }
}
