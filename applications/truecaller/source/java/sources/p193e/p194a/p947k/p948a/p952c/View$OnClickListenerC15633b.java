package p193e.p194a.p947k.p948a.p952c;

import android.view.View;
import s1.z.c.l;
/* renamed from: e.a.k.a.c.b */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/c/b.class */
public final class View$OnClickListenerC15633b implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C15628a f44172a;

    public View$OnClickListenerC15633b(C15628a c15628a) {
        this.f44172a = c15628a;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C15637f c15637f = this.f44172a.f44165e;
        if (c15637f == null) {
            l.l("presenter");
            throw null;
        }
        AbstractC15636e abstractC15636e = (AbstractC15636e) c15637f.f57683a;
        if (abstractC15636e == null) {
            return;
        }
        abstractC15636e.mo18560t();
    }
}
