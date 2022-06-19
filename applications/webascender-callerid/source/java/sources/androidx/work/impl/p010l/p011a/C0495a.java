package androidx.work.impl.p010l.p011a;

import androidx.work.AbstractC0541m;
import androidx.work.AbstractC0548t;
import androidx.work.impl.p015n.C0513p;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.work.impl.l.a.a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/l/a/a.class */
public class C0495a {

    /* renamed from: d */
    static final String f2557d = AbstractC0541m.m4305f("DelayedWorkTracker");

    /* renamed from: a */
    final b f2558a;

    /* renamed from: b */
    private final AbstractC0548t f2559b;

    /* renamed from: c */
    private final Map<String, Runnable> f2560c = new HashMap();

    /* renamed from: androidx.work.impl.l.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/l/a/a$a.class */
    class RunnableC0496a implements Runnable {

        /* renamed from: f */
        final /* synthetic */ C0513p f2561f;

        RunnableC0496a(C0513p c0513p) {
            C0495a.this = r4;
            this.f2561f = c0513p;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC0541m.m4308c().m4310a(C0495a.f2557d, String.format("Scheduling work %s", this.f2561f.f2594a), new Throwable[0]);
            C0495a.this.f2558a.a(new C0513p[]{this.f2561f});
        }
    }

    public C0495a(b bVar, AbstractC0548t abstractC0548t) {
        this.f2558a = bVar;
        this.f2559b = abstractC0548t;
    }

    /* renamed from: a */
    public void m4443a(C0513p c0513p) {
        Runnable remove = this.f2560c.remove(c0513p.f2594a);
        if (remove != null) {
            this.f2559b.m4301b(remove);
        }
        RunnableC0496a runnableC0496a = new RunnableC0496a(c0513p);
        this.f2560c.put(c0513p.f2594a, runnableC0496a);
        long currentTimeMillis = System.currentTimeMillis();
        this.f2559b.m4302a(c0513p.m4407a() - currentTimeMillis, runnableC0496a);
    }

    /* renamed from: b */
    public void m4442b(String str) {
        Runnable remove = this.f2560c.remove(str);
        if (remove != null) {
            this.f2559b.m4301b(remove);
        }
    }
}
