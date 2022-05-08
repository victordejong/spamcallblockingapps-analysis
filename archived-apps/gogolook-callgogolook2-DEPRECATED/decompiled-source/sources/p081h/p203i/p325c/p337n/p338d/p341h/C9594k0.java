package p081h.p203i.p325c.p337n.p338d.p341h;

import java.util.concurrent.CountDownLatch;
import p081h.p203i.p204a.p224e.p293r.AbstractC9128a;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
/* renamed from: h.i.c.n.d.h.k0 */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k0.class */
public final /* synthetic */ class C9594k0 implements AbstractC9128a {

    /* renamed from: a */
    public final CountDownLatch f21854a;

    public C9594k0(CountDownLatch countDownLatch) {
        this.f21854a = countDownLatch;
    }

    /* renamed from: a */
    public static AbstractC9128a m14770a(CountDownLatch countDownLatch) {
        return new C9594k0(countDownLatch);
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9128a
    /* renamed from: a */
    public Object mo14017a(AbstractC9143h hVar) {
        return this.f21854a.countDown();
    }
}
