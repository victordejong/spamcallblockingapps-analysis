package androidx.work.impl.utils.p016n;

import java.util.concurrent.locks.LockSupport;
/* renamed from: androidx.work.impl.utils.n.a$i */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/n/a$i.class */
public final class a$i {

    /* renamed from: c */
    static final a$i f2668c = new a$i(false);

    /* renamed from: a */
    volatile Thread f2669a;

    /* renamed from: b */
    volatile a$i f2670b;

    a$i() {
        a.k.m4322e(this, Thread.currentThread());
    }

    a$i(boolean z) {
    }

    /* renamed from: a */
    void m4321a(a$i a_i) {
        a.k.m4323d(this, a_i);
    }

    /* renamed from: b */
    void m4320b() {
        Thread thread = this.f2669a;
        if (thread != null) {
            this.f2669a = null;
            LockSupport.unpark(thread);
        }
    }
}
