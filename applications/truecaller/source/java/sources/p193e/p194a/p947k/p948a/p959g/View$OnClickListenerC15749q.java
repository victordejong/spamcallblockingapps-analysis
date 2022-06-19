package p193e.p194a.p947k.p948a.p959g;

import android.view.View;
/* renamed from: e.a.k.a.g.q */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/g/q.class */
public final class View$OnClickListenerC15749q implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C15715f f44392a;

    public View$OnClickListenerC15749q(C15715f c15715f) {
        this.f44392a = c15715f;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C15757y c15757y = (C15757y) this.f44392a.m18448SA();
        if (!c15757y.m18378Hj()) {
            return;
        }
        AbstractC15756x abstractC15756x = (AbstractC15756x) c15757y.f57683a;
        boolean mo18403Yl = abstractC15756x != null ? abstractC15756x.mo18403Yl() : false;
        if (c15757y.m18377Ij().mo18032c()) {
            c15757y.m18377Ij().mo18023l();
            AbstractC15756x abstractC15756x2 = (AbstractC15756x) c15757y.f57683a;
            if (abstractC15756x2 != null) {
                abstractC15756x2.mo18412Lq(false);
            }
        } else if (c15757y.m18377Ij().mo18025j()) {
            AbstractC15756x abstractC15756x3 = (AbstractC15756x) c15757y.f57683a;
            if (abstractC15756x3 != null) {
                abstractC15756x3.mo18412Lq(!mo18403Yl);
            }
        } else {
            AbstractC15756x abstractC15756x4 = (AbstractC15756x) c15757y.f57683a;
            if (abstractC15756x4 != null) {
                abstractC15756x4.mo18412Lq(false);
            }
        }
        C15757y.m18346nk(c15757y, false, false, 3);
    }
}
