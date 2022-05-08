package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.Status;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6829g;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6833i;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6835k;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6836l;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6951z1;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6896l2;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6927t1;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC7007n;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p259j.p265f.HandlerC7537i;
@KeepName
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/BasePendingResult.class */
public abstract class BasePendingResult<R extends AbstractC6835k> extends AbstractC6829g<R> {

    /* renamed from: p */
    public static final ThreadLocal<Boolean> f6518p = new C6896l2();

    /* renamed from: a */
    public final Object f6519a;

    /* renamed from: b */
    public final HandlerC3560a<R> f6520b;

    /* renamed from: c */
    public final WeakReference<AbstractC6825f> f6521c;

    /* renamed from: d */
    public final CountDownLatch f6522d;

    /* renamed from: e */
    public final ArrayList<AbstractC6829g.AbstractC6830a> f6523e;

    /* renamed from: f */
    public AbstractC6836l<? super R> f6524f;

    /* renamed from: g */
    public final AtomicReference<AbstractC6951z1> f6525g;

    /* renamed from: h */
    public R f6526h;

    /* renamed from: i */
    public Status f6527i;

    /* renamed from: j */
    public volatile boolean f6528j;

    /* renamed from: k */
    public boolean f6529k;

    /* renamed from: l */
    public boolean f6530l;

    /* renamed from: m */
    public AbstractC7007n f6531m;

    /* renamed from: n */
    public volatile C6927t1<R> f6532n;

    /* renamed from: o */
    public boolean f6533o;

    /* renamed from: com.google.android.gms.common.api.internal.BasePendingResult$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/BasePendingResult$a.class */
    public static class HandlerC3560a<R extends AbstractC6835k> extends HandlerC7537i {
        public HandlerC3560a(Looper looper) {
            super(looper);
        }

        /* renamed from: a */
        public final void m31973a(AbstractC6836l<? super R> lVar, R r) {
            sendMessage(obtainMessage(1, new Pair(lVar, r)));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                Pair pair = (Pair) message.obj;
                AbstractC6836l lVar = (AbstractC6836l) pair.first;
                AbstractC6835k kVar = (AbstractC6835k) pair.second;
                try {
                    lVar.mo21564a(kVar);
                } catch (RuntimeException e) {
                    BasePendingResult.m31978c(kVar);
                    throw e;
                }
            } else if (i != 2) {
                StringBuilder sb = new StringBuilder(45);
                sb.append("Don't know how to handle message: ");
                sb.append(i);
                Log.wtf("BasePendingResult", sb.toString(), new Exception());
            } else {
                ((BasePendingResult) message.obj).m31981b(Status.f6512g);
            }
        }
    }

    /* renamed from: com.google.android.gms.common.api.internal.BasePendingResult$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/BasePendingResult$b.class */
    public final class C3561b {
        public C3561b() {
        }

        public /* synthetic */ C3561b(BasePendingResult basePendingResult, C6896l2 l2Var) {
            this();
        }

        public final void finalize() throws Throwable {
            BasePendingResult.m31978c(BasePendingResult.this.f6526h);
            super.finalize();
        }
    }

    @Deprecated
    public BasePendingResult() {
        this.f6519a = new Object();
        this.f6522d = new CountDownLatch(1);
        this.f6523e = new ArrayList<>();
        this.f6525g = new AtomicReference<>();
        this.f6533o = false;
        this.f6520b = new HandlerC3560a<>(Looper.getMainLooper());
        this.f6521c = new WeakReference<>(null);
    }

    public BasePendingResult(AbstractC6825f fVar) {
        this.f6519a = new Object();
        this.f6522d = new CountDownLatch(1);
        this.f6523e = new ArrayList<>();
        this.f6525g = new AtomicReference<>();
        this.f6533o = false;
        this.f6520b = new HandlerC3560a<>(fVar != null ? fVar.mo21636f() : Looper.getMainLooper());
        this.f6521c = new WeakReference<>(fVar);
    }

    /* renamed from: c */
    public static void m31978c(AbstractC6835k kVar) {
        if (kVar instanceof AbstractC6833i) {
            try {
                ((AbstractC6833i) kVar).release();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(kVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                sb.append("Unable to release ");
                sb.append(valueOf);
                sb.toString();
            }
        }
    }

    @NonNull
    /* renamed from: a */
    public abstract R mo17894a(Status status);

    /* renamed from: a */
    public void m31987a() {
        synchronized (this.f6519a) {
            if (!this.f6529k && !this.f6528j) {
                if (this.f6531m != null) {
                    try {
                        this.f6531m.cancel();
                    } catch (RemoteException e) {
                    }
                }
                m31978c(this.f6526h);
                this.f6529k = true;
                m31980b((BasePendingResult<R>) mo17894a(Status.f6513h));
            }
        }
    }

    /* renamed from: a */
    public final void m31985a(AbstractC6829g.AbstractC6830a aVar) {
        C7021t.m21285a(aVar != null, "Callback cannot be null.");
        synchronized (this.f6519a) {
            if (m31977d()) {
                aVar.mo21567a(this.f6527i);
            } else {
                this.f6523e.add(aVar);
            }
        }
    }

    /* renamed from: a */
    public final void m31984a(R r) {
        synchronized (this.f6519a) {
            if (this.f6530l || this.f6529k) {
                m31978c(r);
                return;
            }
            m31977d();
            boolean z = true;
            C7021t.m21281b(!m31977d(), "Results have already been set");
            if (this.f6528j) {
                z = false;
            }
            C7021t.m21281b(z, "Result has already been consumed");
            m31980b((BasePendingResult<R>) r);
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6829g
    /* renamed from: a */
    public final void mo21817a(AbstractC6836l<? super R> lVar) {
        synchronized (this.f6519a) {
            if (lVar == null) {
                this.f6524f = null;
                return;
            }
            boolean z = true;
            C7021t.m21281b(!this.f6528j, "Result has already been consumed.");
            if (this.f6532n != null) {
                z = false;
            }
            C7021t.m21281b(z, "Cannot set callbacks if then() has been called.");
            if (!m31979c()) {
                if (m31977d()) {
                    this.f6520b.m31973a(lVar, m31982b());
                } else {
                    this.f6524f = lVar;
                }
            }
        }
    }

    /* renamed from: a */
    public final void m31983a(AbstractC6951z1 z1Var) {
        this.f6525g.set(z1Var);
    }

    /* renamed from: b */
    public final R m31982b() {
        R r;
        synchronized (this.f6519a) {
            C7021t.m21281b(!this.f6528j, "Result has already been consumed.");
            C7021t.m21281b(m31977d(), "Result is not ready.");
            r = this.f6526h;
            this.f6526h = null;
            this.f6524f = null;
            this.f6528j = true;
        }
        AbstractC6951z1 andSet = this.f6525g.getAndSet(null);
        if (andSet != null) {
            andSet.mo21469a(this);
        }
        return r;
    }

    /* renamed from: b */
    public final void m31981b(Status status) {
        synchronized (this.f6519a) {
            if (!m31977d()) {
                m31984a((BasePendingResult<R>) mo17894a(status));
                this.f6530l = true;
            }
        }
    }

    /* renamed from: b */
    public final void m31980b(R r) {
        this.f6526h = r;
        this.f6531m = null;
        this.f6522d.countDown();
        this.f6527i = this.f6526h.mo21814b();
        if (this.f6529k) {
            this.f6524f = null;
        } else if (this.f6524f != null) {
            this.f6520b.removeMessages(2);
            this.f6520b.m31973a(this.f6524f, m31982b());
        } else if (this.f6526h instanceof AbstractC6833i) {
            new C3561b(this, null);
        }
        ArrayList<AbstractC6829g.AbstractC6830a> arrayList = this.f6523e;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            AbstractC6829g.AbstractC6830a aVar = arrayList.get(i);
            i++;
            aVar.mo21567a(this.f6527i);
        }
        this.f6523e.clear();
    }

    /* renamed from: c */
    public boolean m31979c() {
        boolean z;
        synchronized (this.f6519a) {
            z = this.f6529k;
        }
        return z;
    }

    /* renamed from: d */
    public final boolean m31977d() {
        return this.f6522d.getCount() == 0;
    }

    /* renamed from: e */
    public final Integer m31976e() {
        return null;
    }

    /* renamed from: f */
    public final boolean m31975f() {
        boolean c;
        synchronized (this.f6519a) {
            if (this.f6521c.get() == null || !this.f6533o) {
                m31987a();
            }
            c = m31979c();
        }
        return c;
    }

    /* renamed from: g */
    public final void m31974g() {
        this.f6533o = this.f6533o || f6518p.get().booleanValue();
    }
}
