package androidx.p016a.p017a.p018a;

import java.util.concurrent.Executor;
/* renamed from: androidx.a.a.a.a */
/* loaded from: classes-dex2jar.jar:androidx/a/a/a/a.class */
public class C0225a extends AbstractC0230f {

    /* renamed from: a */
    private static volatile C0225a f494a;

    /* renamed from: d */
    private static final Executor f495d = new ExecutorC0226b();

    /* renamed from: e */
    private static final Executor f496e = new ExecutorC0227c();

    /* renamed from: c */
    private AbstractC0230f f498c = new C0228d();

    /* renamed from: b */
    private AbstractC0230f f497b = this.f498c;

    private C0225a() {
    }

    /* renamed from: a */
    public static C0225a m9980a() {
        if (f494a != null) {
            return f494a;
        }
        synchronized (C0225a.class) {
            try {
                if (f494a == null) {
                    f494a = new C0225a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f494a;
    }

    @Override // androidx.p016a.p017a.p018a.AbstractC0230f
    /* renamed from: a */
    public final void mo9979a(Runnable runnable) {
        this.f497b.mo9979a(runnable);
    }

    @Override // androidx.p016a.p017a.p018a.AbstractC0230f
    /* renamed from: b */
    public final void mo9977b(Runnable runnable) {
        this.f497b.mo9977b(runnable);
    }

    @Override // androidx.p016a.p017a.p018a.AbstractC0230f
    /* renamed from: b */
    public final boolean mo9978b() {
        return this.f497b.mo9978b();
    }
}
