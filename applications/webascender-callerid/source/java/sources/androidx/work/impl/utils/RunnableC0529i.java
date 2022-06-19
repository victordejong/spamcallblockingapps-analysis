package androidx.work.impl.utils;

import androidx.work.AbstractC0541m;
import androidx.work.EnumC0550v;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.d;
import androidx.work.impl.j;
import androidx.work.impl.p015n.AbstractC0515q;
/* renamed from: androidx.work.impl.utils.i */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/i.class */
public class RunnableC0529i implements Runnable {

    /* renamed from: i */
    private static final String f2641i = AbstractC0541m.m4305f("StopWorkRunnable");

    /* renamed from: f */
    private final j f2642f;

    /* renamed from: g */
    private final String f2643g;

    /* renamed from: h */
    private final boolean f2644h;

    public RunnableC0529i(j jVar, String str, boolean z) {
        this.f2642f = jVar;
        this.f2643g = str;
        this.f2644h = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        WorkDatabase v = this.f2642f.v();
        d s = this.f2642f.s();
        AbstractC0515q B = v.B();
        v.m4811c();
        try {
            boolean g = s.g(this.f2643g);
            if (this.f2644h) {
                z = this.f2642f.s().m(this.f2643g);
            } else {
                if (!g && B.m4389m(this.f2643g) == EnumC0550v.RUNNING) {
                    B.m4400b(EnumC0550v.ENQUEUED, this.f2643g);
                }
                z = this.f2642f.s().n(this.f2643g);
            }
            AbstractC0541m.m4308c().m4310a(f2641i, String.format("StopWorkRunnable for %s; Processor.stopWork = %s", this.f2643g, Boolean.valueOf(z)), new Throwable[0]);
            v.m4796r();
        } finally {
            v.m4807g();
        }
    }
}
