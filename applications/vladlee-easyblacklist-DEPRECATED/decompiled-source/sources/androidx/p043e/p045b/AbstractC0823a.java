package androidx.p043e.p045b;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import androidx.core.p032c.C0625b;
import androidx.core.p036f.C0688g;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
/* renamed from: androidx.e.b.a */
/* loaded from: classes-dex2jar.jar:androidx/e/b/a.class */
public abstract class AbstractC0823a<D> extends C0826c<D> {

    /* renamed from: a */
    volatile AbstractC0823a<D>.RunnableC0824a f3384a;

    /* renamed from: b */
    volatile AbstractC0823a<D>.RunnableC0824a f3385b;

    /* renamed from: c */
    long f3386c;

    /* renamed from: d */
    long f3387d;

    /* renamed from: e */
    Handler f3388e;

    /* renamed from: f */
    private final Executor f3389f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.e.b.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/e/b/a$a.class */
    public final class RunnableC0824a extends AbstractC0829d<Void, Void, D> implements Runnable {

        /* renamed from: a */
        boolean f3390a;

        /* renamed from: f */
        private final CountDownLatch f3392f = new CountDownLatch(1);

        RunnableC0824a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c */
        public D mo7956a() {
            try {
                return (D) AbstractC0823a.this.mo7977d();
            } catch (C0625b e) {
                if (this.f3415d.get()) {
                    return null;
                }
                throw e;
            }
        }

        @Override // androidx.p043e.p045b.AbstractC0829d
        /* renamed from: a */
        protected final void mo7955a(D d) {
            try {
                AbstractC0823a.this.m7982b(this, d);
            } finally {
                this.f3392f.countDown();
            }
        }

        @Override // androidx.p043e.p045b.AbstractC0829d
        /* renamed from: b */
        protected final void mo7952b(D d) {
            try {
                AbstractC0823a.this.m7983a((AbstractC0823a<RunnableC0824a>.RunnableC0824a) this, (RunnableC0824a) d);
            } finally {
                this.f3392f.countDown();
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f3390a = false;
            AbstractC0823a.this.m7981c();
        }
    }

    public AbstractC0823a(Context context) {
        this(context, AbstractC0829d.f3412c);
    }

    private AbstractC0823a(Context context, Executor executor) {
        super(context);
        this.f3387d = -10000L;
        this.f3389f = executor;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.p043e.p045b.C0826c
    /* renamed from: a */
    public final void mo7974a() {
        super.mo7974a();
        m7963j();
        this.f3384a = new RunnableC0824a();
        m7981c();
    }

    /* renamed from: a */
    final void m7983a(AbstractC0823a<D>.RunnableC0824a aVar, D d) {
        mo7978a((AbstractC0823a<D>) d);
        if (this.f3385b == aVar) {
            if (this.f3408u) {
                m7958o();
            }
            this.f3387d = SystemClock.uptimeMillis();
            this.f3385b = null;
            m7981c();
        }
    }

    /* renamed from: a */
    public void mo7978a(D d) {
    }

    @Override // androidx.p043e.p045b.C0826c
    @Deprecated
    /* renamed from: a */
    public void mo7971a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.mo7971a(str, fileDescriptor, printWriter, strArr);
        if (this.f3384a != null) {
            printWriter.print(str);
            printWriter.print("mTask=");
            printWriter.print(this.f3384a);
            printWriter.print(" waiting=");
            printWriter.println(this.f3384a.f3390a);
        }
        if (this.f3385b != null) {
            printWriter.print(str);
            printWriter.print("mCancellingTask=");
            printWriter.print(this.f3385b);
            printWriter.print(" waiting=");
            printWriter.println(this.f3385b.f3390a);
        }
        if (this.f3386c != 0) {
            printWriter.print(str);
            printWriter.print("mUpdateThrottle=");
            C0688g.m8546a(this.f3386c, printWriter);
            printWriter.print(" mLastLoadCompleteTime=");
            C0688g.m8547a(this.f3387d, SystemClock.uptimeMillis(), printWriter);
            printWriter.println();
        }
    }

    /* renamed from: b */
    final void m7982b(AbstractC0823a<D>.RunnableC0824a aVar, D d) {
        if (this.f3384a != aVar) {
            m7983a((AbstractC0823a<AbstractC0823a<D>.RunnableC0824a>.RunnableC0824a) aVar, (AbstractC0823a<D>.RunnableC0824a) d);
        } else if (this.f3405r) {
            mo7978a((AbstractC0823a<D>) d);
        } else {
            this.f3408u = false;
            this.f3387d = SystemClock.uptimeMillis();
            this.f3384a = null;
            mo7969b(d);
        }
    }

    @Override // androidx.p043e.p045b.C0826c
    /* renamed from: b */
    protected final boolean mo7970b() {
        if (this.f3384a == null) {
            return false;
        }
        if (!this.f3404q) {
            this.f3407t = true;
        }
        if (this.f3385b != null) {
            if (this.f3384a.f3390a) {
                this.f3384a.f3390a = false;
                this.f3388e.removeCallbacks(this.f3384a);
            }
            this.f3384a = null;
            return false;
        } else if (this.f3384a.f3390a) {
            this.f3384a.f3390a = false;
            this.f3388e.removeCallbacks(this.f3384a);
            this.f3384a = null;
            return false;
        } else {
            boolean b = this.f3384a.m7953b();
            if (b) {
                this.f3385b = this.f3384a;
                mo7976e();
            }
            this.f3384a = null;
            return b;
        }
    }

    /* renamed from: c */
    final void m7981c() {
        if (this.f3385b == null && this.f3384a != null) {
            if (this.f3384a.f3390a) {
                this.f3384a.f3390a = false;
                this.f3388e.removeCallbacks(this.f3384a);
            }
            if (this.f3386c <= 0 || SystemClock.uptimeMillis() >= this.f3387d + this.f3386c) {
                this.f3384a.m7954a(this.f3389f);
                return;
            }
            this.f3384a.f3390a = true;
            this.f3388e.postAtTime(this.f3384a, this.f3387d + this.f3386c);
        }
    }

    /* renamed from: d */
    public abstract D mo7977d();

    /* renamed from: e */
    public void mo7976e() {
    }
}
