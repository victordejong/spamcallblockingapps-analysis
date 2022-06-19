package p193e.p194a.p437c.p438a.p456d.p470g;

import android.view.View;
import java.util.List;
import java.util.Objects;
import n3.v.i0;
import p193e.p194a.p437c.p438a.p456d.p457a.C8869a;
import p193e.p194a.p437c.p438a.p456d.p462e.C8926a;
import p193e.p194a.p437c.p438a.p479i.C9116j;
import p193e.p194a.p437c.p438a.p493l.C9234a;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.c.a.d.g.j */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/d/g/j.class */
public final class View$OnClickListenerC8954j implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C8948h f27244a;

    public View$OnClickListenerC8954j(C8948h c8948h) {
        this.f27244a = c8948h;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C8948h c8948h = this.f27244a;
        if (c8948h.f27234d) {
            C8869a m27926OA = C8948h.m27926OA(c8948h);
            List<C9234a> list = this.f27244a.f27233c;
            Objects.requireNonNull(m27926OA);
            l.e(list, "accounts");
            if (!l.a(list, m27926OA.f27029g)) {
                m27926OA.f27032j = true;
                m27926OA.f27029g.clear();
                m27926OA.f27029g.addAll(list);
                List<C9234a> list2 = (List) m27926OA.f27027e.m42869d();
                if (list2 != null) {
                    i0<List<C9234a>> i0Var = m27926OA.f27027e;
                    l.d(list2, "it");
                    i0Var.mo1001j(m27926OA.m27992c(list2));
                }
            }
        }
        C8869a m27926OA2 = C8948h.m27926OA(this.f27244a);
        if (m27926OA2.f27032j) {
            m27926OA2.m27991d();
            C9116j c9116j = m27926OA2.f27035m;
            C8926a c8926a = C8926a.f27196e;
            c9116j.m27867a(C8926a.f27192a);
            m27926OA2.f27028f.mo1000l(i.S0(m27926OA2.f27029g));
        }
        this.f27244a.dismiss();
    }
}
