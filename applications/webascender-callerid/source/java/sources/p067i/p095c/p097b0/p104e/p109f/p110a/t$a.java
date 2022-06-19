package p067i.p095c.p097b0.p104e.p109f.p110a;

import i.c.b0.c.a;
import i.c.b0.e.k.j;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import p067i.p095c.p097b0.p101b.AbstractC2146g;
import p067i.p095c.p097b0.p101b.AbstractC2150i;
/* renamed from: i.c.b0.e.f.a.t$a */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/a/t$a.class */
final class t$a implements Runnable {

    /* renamed from: f */
    private final AtomicBoolean f5880f;

    /* renamed from: g */
    final a f5881g;

    /* renamed from: h */
    final AbstractC2146g f5882h;

    /* renamed from: i */
    final /* synthetic */ t f5883i;

    t$a(t tVar, AtomicBoolean atomicBoolean, a aVar, AbstractC2146g abstractC2146g) {
        this.f5883i = tVar;
        this.f5880f = atomicBoolean;
        this.f5881g = aVar;
        this.f5882h = abstractC2146g;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f5880f.compareAndSet(false, true)) {
            this.f5881g.d();
            AbstractC2150i abstractC2150i = this.f5883i.j;
            if (abstractC2150i != null) {
                abstractC2150i.m86a(new a(this));
                return;
            }
            AbstractC2146g abstractC2146g = this.f5882h;
            t tVar = this.f5883i;
            abstractC2146g.onError(new TimeoutException(j.f(tVar.g, tVar.h)));
        }
    }
}
