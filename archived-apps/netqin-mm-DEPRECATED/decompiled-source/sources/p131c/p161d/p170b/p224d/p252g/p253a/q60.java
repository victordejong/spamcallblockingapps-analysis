package p131c.p161d.p170b.p224d.p252g.p253a;

import java.io.PrintWriter;
import java.util.List;
/* renamed from: c.d.b.d.g.a.q60 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/q60.class */
public final class q60 extends n60 {

    /* renamed from: a */
    public final p60 f14592a = new p60();

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.n60
    /* renamed from: a */
    public final void mo12541a(Throwable th, PrintWriter printWriter) {
        th.printStackTrace(printWriter);
        List<Throwable> a = this.f14592a.m26596a(th, false);
        if (a != null) {
            synchronized (a) {
                try {
                    for (Throwable th2 : a) {
                        printWriter.print("Suppressed: ");
                        th2.printStackTrace(printWriter);
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.n60
    /* renamed from: a */
    public final void mo12540a(Throwable th, Throwable th2) {
        if (th2 == th) {
            throw new IllegalArgumentException("Self suppression is not allowed.", th2);
        } else if (th2 != null) {
            this.f14592a.m26596a(th, true).add(th2);
        } else {
            throw new NullPointerException("The suppressed exception cannot be null.");
        }
    }
}
