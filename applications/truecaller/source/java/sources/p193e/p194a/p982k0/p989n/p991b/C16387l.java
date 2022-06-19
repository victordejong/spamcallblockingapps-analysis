package p193e.p194a.p982k0.p989n.p991b;

import java.util.TimerTask;
import p193e.p194a.p982k0.p989n.p992c.AbstractC16399g;
/* renamed from: e.a.k0.n.b.l */
/* loaded from: classes7-dex2jar.jar:e/a/k0/n/b/l.class */
public final class C16387l extends TimerTask {

    /* renamed from: a */
    public final /* synthetic */ C16380k f46081a;

    public C16387l(C16380k c16380k) {
        this.f46081a = c16380k;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        if (this.f46081a.f46070k.getCallState() == 0) {
            AbstractC16399g abstractC16399g = this.f46081a.f46062c;
            if (abstractC16399g != null) {
                abstractC16399g.mo17455A5();
            }
            this.f46081a.mo17490c();
        }
    }
}
