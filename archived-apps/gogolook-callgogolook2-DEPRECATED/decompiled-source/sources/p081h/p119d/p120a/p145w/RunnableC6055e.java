package p081h.p119d.p120a.p145w;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p081h.p119d.p120a.p145w.p146i.AbstractC6063c;
import p081h.p119d.p120a.p145w.p147j.AbstractC6079i;
import p081h.p119d.p120a.p149y.C6096h;
/* renamed from: h.d.a.w.e */
/* loaded from: classes-dex2jar.jar:h/d/a/w/e.class */
public class RunnableC6055e<T, R> implements AbstractFutureC6050a<R>, Runnable {

    /* renamed from: l */
    public static final C6056a f15092l = new C6056a();

    /* renamed from: a */
    public final Handler f15093a;

    /* renamed from: b */
    public final int f15094b;

    /* renamed from: c */
    public final int f15095c;

    /* renamed from: d */
    public final boolean f15096d;

    /* renamed from: e */
    public final C6056a f15097e;

    /* renamed from: f */
    public R f15098f;

    /* renamed from: g */
    public AbstractC6053c f15099g;

    /* renamed from: h */
    public boolean f15100h;

    /* renamed from: i */
    public Exception f15101i;

    /* renamed from: j */
    public boolean f15102j;

    /* renamed from: k */
    public boolean f15103k;

    /* renamed from: h.d.a.w.e$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/w/e$a.class */
    public static class C6056a {
        /* renamed from: a */
        public void m23947a(Object obj) {
            obj.notifyAll();
        }

        /* renamed from: a */
        public void m23946a(Object obj, long j) throws InterruptedException {
            obj.wait(j);
        }
    }

    public RunnableC6055e(Handler handler, int i, int i2) {
        this(handler, i, i2, true, f15092l);
    }

    public RunnableC6055e(Handler handler, int i, int i2, boolean z, C6056a aVar) {
        this.f15093a = handler;
        this.f15094b = i;
        this.f15095c = i2;
        this.f15096d = z;
        this.f15097e = aVar;
    }

    @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6082k
    /* renamed from: a */
    public AbstractC6053c mo23907a() {
        return this.f15099g;
    }

    /* renamed from: a */
    public final R m23949a(Long l) throws ExecutionException, InterruptedException, TimeoutException {
        synchronized (this) {
            if (this.f15096d) {
                C6096h.m23865a();
            }
            if (this.f15100h) {
                throw new CancellationException();
            } else if (this.f15103k) {
                throw new ExecutionException(this.f15101i);
            } else if (this.f15102j) {
                return this.f15098f;
            } else {
                if (l == null) {
                    this.f15097e.m23946a(this, 0L);
                } else if (l.longValue() > 0) {
                    this.f15097e.m23946a(this, l.longValue());
                }
                if (Thread.interrupted()) {
                    throw new InterruptedException();
                } else if (this.f15103k) {
                    throw new ExecutionException(this.f15101i);
                } else if (this.f15100h) {
                    throw new CancellationException();
                } else if (this.f15102j) {
                    return this.f15098f;
                } else {
                    throw new TimeoutException();
                }
            }
        }
    }

    @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6082k
    /* renamed from: a */
    public void mo6306a(Drawable drawable) {
    }

    @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6082k
    /* renamed from: a */
    public void mo23906a(AbstractC6053c cVar) {
        this.f15099g = cVar;
    }

    @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6082k
    /* renamed from: a */
    public void mo23905a(AbstractC6079i iVar) {
        iVar.mo23913a(this.f15094b, this.f15095c);
    }

    @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6082k
    /* renamed from: a */
    public void mo2453a(Exception exc, Drawable drawable) {
        synchronized (this) {
            this.f15103k = true;
            this.f15101i = exc;
            this.f15097e.m23947a(this);
        }
    }

    @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6082k
    /* renamed from: a */
    public void mo2507a(R r, AbstractC6063c<? super R> cVar) {
        synchronized (this) {
            this.f15102j = true;
            this.f15098f = r;
            this.f15097e.m23947a(this);
        }
    }

    /* renamed from: b */
    public void m23948b() {
        this.f15093a.post(this);
    }

    @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6082k
    /* renamed from: b */
    public void mo23908b(Drawable drawable) {
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        synchronized (this) {
            if (this.f15100h) {
                return true;
            }
            boolean z2 = !isDone();
            if (z2) {
                this.f15100h = true;
                if (z) {
                    m23948b();
                }
                this.f15097e.m23947a(this);
            }
            return z2;
        }
    }

    @Override // java.util.concurrent.Future
    public R get() throws InterruptedException, ExecutionException {
        try {
            return m23949a((Long) null);
        } catch (TimeoutException e) {
            throw new AssertionError(e);
        }
    }

    @Override // java.util.concurrent.Future
    public R get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return m23949a(Long.valueOf(timeUnit.toMillis(j)));
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        boolean z;
        synchronized (this) {
            z = this.f15100h;
        }
        return z;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        boolean z;
        synchronized (this) {
            if (!this.f15100h) {
                if (!this.f15102j) {
                    z = false;
                }
            }
            z = true;
        }
        return z;
    }

    @Override // p081h.p119d.p120a.p142t.AbstractC6031h
    public void onDestroy() {
    }

    @Override // p081h.p119d.p120a.p142t.AbstractC6031h
    public void onStart() {
    }

    @Override // p081h.p119d.p120a.p142t.AbstractC6031h
    public void onStop() {
    }

    @Override // java.lang.Runnable
    public void run() {
        AbstractC6053c cVar = this.f15099g;
        if (cVar != null) {
            cVar.clear();
            cancel(false);
        }
    }
}
