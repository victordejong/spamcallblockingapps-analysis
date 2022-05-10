package p012b.p027c.p028a.p029a;

import java.util.concurrent.Executor;
/* renamed from: b.c.a.a.a */
/* loaded from: classes-dex2jar.jar:b/c/a/a/a.class */
public class C0744a extends AbstractC0749c {

    /* renamed from: c */
    public static volatile C0744a f3599c;

    /* renamed from: a */
    public AbstractC0749c f3600a;

    /* renamed from: b */
    public AbstractC0749c f3601b;

    /* renamed from: b.c.a.a.a$a */
    /* loaded from: classes-dex2jar.jar:b/c/a/a/a$a.class */
    public static final class ExecutorC0745a implements Executor {
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            C0744a.m36148b().mo36145b(runnable);
        }
    }

    /* renamed from: b.c.a.a.a$b */
    /* loaded from: classes-dex2jar.jar:b/c/a/a/a$b.class */
    public static final class ExecutorC0746b implements Executor {
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            C0744a.m36148b().mo36146a(runnable);
        }
    }

    static {
        new ExecutorC0745a();
        new ExecutorC0746b();
    }

    public C0744a() {
        C0747b bVar = new C0747b();
        this.f3601b = bVar;
        this.f3600a = bVar;
    }

    /* renamed from: b */
    public static C0744a m36148b() {
        if (f3599c != null) {
            return f3599c;
        }
        synchronized (C0744a.class) {
            try {
                if (f3599c == null) {
                    f3599c = new C0744a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f3599c;
    }

    @Override // p012b.p027c.p028a.p029a.AbstractC0749c
    /* renamed from: a */
    public void mo36146a(Runnable runnable) {
        this.f3600a.mo36146a(runnable);
    }

    @Override // p012b.p027c.p028a.p029a.AbstractC0749c
    /* renamed from: a */
    public boolean mo36147a() {
        return this.f3600a.mo36147a();
    }

    @Override // p012b.p027c.p028a.p029a.AbstractC0749c
    /* renamed from: b */
    public void mo36145b(Runnable runnable) {
        this.f3600a.mo36145b(runnable);
    }
}
