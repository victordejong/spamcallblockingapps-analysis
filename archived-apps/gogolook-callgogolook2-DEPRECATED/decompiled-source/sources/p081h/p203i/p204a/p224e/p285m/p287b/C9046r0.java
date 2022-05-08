package p081h.p203i.p204a.p224e.p285m.p287b;

import java.util.concurrent.BlockingQueue;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.m.b.r0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/r0.class */
public final class C9046r0 extends Thread {

    /* renamed from: a */
    public final Object f20581a = new Object();

    /* renamed from: b */
    public final BlockingQueue<C9040q0<?>> f20582b;

    /* renamed from: c */
    public final /* synthetic */ C9028o0 f20583c;

    public C9046r0(C9028o0 o0Var, String str, BlockingQueue<C9040q0<?>> blockingQueue) {
        this.f20583c = o0Var;
        C7021t.m21290a(str);
        C7021t.m21290a(blockingQueue);
        this.f20582b = blockingQueue;
        setName(str);
    }

    /* renamed from: a */
    public final void m16330a() {
        synchronized (this.f20581a) {
            this.f20581a.notifyAll();
        }
    }

    /* renamed from: a */
    public final void m16329a(InterruptedException interruptedException) {
        this.f20583c.mo16178c().m16372v().m16337a(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
    }

    /* JADX WARN: Removed duplicated region for block: B:84:0x00ad A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.C9046r0.run():void");
    }
}
