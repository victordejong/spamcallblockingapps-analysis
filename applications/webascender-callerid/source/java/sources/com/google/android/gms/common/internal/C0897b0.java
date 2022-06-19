package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.AbstractC0816d;
import com.google.android.gms.common.b;
import g.f.a.d.c.e.h;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
/* renamed from: com.google.android.gms.common.internal.b0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/b0.class */
public final class C0897b0 implements Handler.Callback {
    @NotOnlyInitialized

    /* renamed from: a */
    private final AbstractC0895a0 f3481a;

    /* renamed from: h */
    private final Handler f3488h;

    /* renamed from: b */
    private final ArrayList<AbstractC0816d.b> f3482b = new ArrayList<>();

    /* renamed from: c */
    private final ArrayList<AbstractC0816d.b> f3483c = new ArrayList<>();

    /* renamed from: d */
    private final ArrayList<AbstractC0816d.c> f3484d = new ArrayList<>();

    /* renamed from: e */
    private volatile boolean f3485e = false;

    /* renamed from: f */
    private final AtomicInteger f3486f = new AtomicInteger(0);

    /* renamed from: g */
    private boolean f3487g = false;

    /* renamed from: i */
    private final Object f3489i = new Object();

    public C0897b0(Looper looper, AbstractC0895a0 abstractC0895a0) {
        this.f3481a = abstractC0895a0;
        this.f3488h = new h(looper, this);
    }

    /* renamed from: a */
    public final void m3451a() {
        this.f3485e = false;
        this.f3486f.incrementAndGet();
    }

    /* renamed from: b */
    public final void m3450b(int i) {
        C0931r.m3314e(this.f3488h, "onUnintentionalDisconnection must only be called on the Handler thread");
        this.f3488h.removeMessages(1);
        synchronized (this.f3489i) {
            this.f3487g = true;
            ArrayList arrayList = new ArrayList(this.f3482b);
            int i2 = this.f3486f.get();
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                int i4 = i3 + 1;
                AbstractC0816d.b bVar = (AbstractC0816d.b) obj;
                if (!this.f3485e || this.f3486f.get() != i2) {
                    break;
                }
                i3 = i4;
                if (this.f3482b.contains(bVar)) {
                    bVar.m3613w(i);
                    i3 = i4;
                }
            }
            this.f3483c.clear();
            this.f3487g = false;
        }
    }

    /* renamed from: c */
    public final void m3449c(Bundle bundle) {
        C0931r.m3314e(this.f3488h, "onConnectionSuccess must only be called on the Handler thread");
        synchronized (this.f3489i) {
            C0931r.m3305n(!this.f3487g);
            this.f3488h.removeMessages(1);
            this.f3487g = true;
            C0931r.m3305n(this.f3483c.size() == 0);
            ArrayList arrayList = new ArrayList(this.f3482b);
            int i = this.f3486f.get();
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                int i3 = i2 + 1;
                AbstractC0816d.b bVar = (AbstractC0816d.b) obj;
                if (!this.f3485e || !this.f3481a.m3454b() || this.f3486f.get() != i) {
                    break;
                }
                i2 = i3;
                if (!this.f3483c.contains(bVar)) {
                    bVar.m3614F(bundle);
                    i2 = i3;
                }
            }
            this.f3483c.clear();
            this.f3487g = false;
        }
    }

    /* renamed from: d */
    public final void m3448d(b bVar) {
        C0931r.m3314e(this.f3488h, "onConnectionFailure must only be called on the Handler thread");
        this.f3488h.removeMessages(1);
        synchronized (this.f3489i) {
            ArrayList arrayList = new ArrayList(this.f3484d);
            int i = this.f3486f.get();
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                int i3 = i2 + 1;
                AbstractC0816d.c cVar = (AbstractC0816d.c) obj;
                if (this.f3485e && this.f3486f.get() == i) {
                    i2 = i3;
                    if (this.f3484d.contains(cVar)) {
                        cVar.m3552B(bVar);
                        i2 = i3;
                    }
                }
                return;
            }
        }
    }

    /* renamed from: e */
    public final void m3447e(AbstractC0816d.b bVar) {
        C0931r.m3308k(bVar);
        synchronized (this.f3489i) {
            if (this.f3482b.contains(bVar)) {
                String valueOf = String.valueOf(bVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 62);
                sb.append("registerConnectionCallbacks(): listener ");
                sb.append(valueOf);
                sb.append(" is already registered");
                Log.w("GmsClientEvents", sb.toString());
            } else {
                this.f3482b.add(bVar);
            }
        }
        if (this.f3481a.m3454b()) {
            Handler handler = this.f3488h;
            handler.sendMessage(handler.obtainMessage(1, bVar));
        }
    }

    /* renamed from: f */
    public final void m3446f(AbstractC0816d.c cVar) {
        C0931r.m3308k(cVar);
        synchronized (this.f3489i) {
            if (this.f3484d.contains(cVar)) {
                String valueOf = String.valueOf(cVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 67);
                sb.append("registerConnectionFailedListener(): listener ");
                sb.append(valueOf);
                sb.append(" is already registered");
                Log.w("GmsClientEvents", sb.toString());
            } else {
                this.f3484d.add(cVar);
            }
        }
    }

    /* renamed from: g */
    public final void m3445g() {
        this.f3485e = true;
    }

    /* renamed from: h */
    public final void m3444h(AbstractC0816d.c cVar) {
        C0931r.m3308k(cVar);
        synchronized (this.f3489i) {
            if (!this.f3484d.remove(cVar)) {
                String valueOf = String.valueOf(cVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 57);
                sb.append("unregisterConnectionFailedListener(): listener ");
                sb.append(valueOf);
                sb.append(" not found");
                Log.w("GmsClientEvents", sb.toString());
            }
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i != 1) {
            StringBuilder sb = new StringBuilder(45);
            sb.append("Don't know how to handle message: ");
            sb.append(i);
            Log.wtf("GmsClientEvents", sb.toString(), new Exception());
            return false;
        }
        AbstractC0816d.b bVar = (AbstractC0816d.b) message.obj;
        synchronized (this.f3489i) {
            if (this.f3485e && this.f3481a.m3454b() && this.f3482b.contains(bVar)) {
                bVar.m3614F(this.f3481a.m3453v());
            }
        }
        return true;
    }
}
