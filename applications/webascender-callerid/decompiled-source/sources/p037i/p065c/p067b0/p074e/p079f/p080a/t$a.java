package p037i.p065c.p067b0.p074e.p079f.p080a;

import i.c.b0.c.a;
import i.c.b0.e.k.j;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import p037i.p065c.p067b0.p071b.AbstractC0478g;
import p037i.p065c.p067b0.p071b.AbstractC0482i;
/* renamed from: i.c.b0.e.f.a.t$a */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/a/t$a.class */
final class t$a implements Runnable {

    /* renamed from: f */
    private final AtomicBoolean f1201f;

    /* renamed from: g */
    final a f1202g;

    /* renamed from: h */
    final AbstractC0478g f1203h;

    /* renamed from: i */
    final /* synthetic */ t f1204i;

    t$a(t tVar, AtomicBoolean atomicBoolean, a aVar, AbstractC0478g gVar) {
        this.f1204i = tVar;
        this.f1201f = atomicBoolean;
        this.f1202g = aVar;
        this.f1203h = gVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f1201f.compareAndSet(false, true)) {
            this.f1202g.d();
            AbstractC0482i iVar = this.f1204i.j;
            if (iVar == null) {
                AbstractC0478g gVar = this.f1203h;
                t tVar = this.f1204i;
                gVar.onError(new TimeoutException(j.f(tVar.g, tVar.h)));
                return;
            }
            iVar.m86a(new a(this));
        }
    }
}
