package p193e.p194a.p372b0.p373a.p386s;

import com.truecaller.common.p156ui.C3700R;
import p193e.p194a.p1129p5.AbstractC19233h0;
import s1.z.c.l;
/* renamed from: e.a.b0.a.s.a */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/s/a.class */
public class C8329a extends AbstractC8331c {

    /* renamed from: b */
    public C8330b f25638b;

    /* renamed from: c */
    public boolean f25639c;

    /* renamed from: d */
    public final AbstractC19233h0 f25640d;

    public C8329a(AbstractC19233h0 abstractC19233h0) {
        l.e(abstractC19233h0, "resourceProvider");
        this.f25640d = abstractC19233h0;
    }

    @Override // p193e.p194a.p372b0.p373a.p386s.AbstractC8331c
    /* renamed from: Hj */
    public void mo24304Hj(boolean z) {
        this.f25639c = z;
        m28667Ij(this.f25638b);
    }

    /* renamed from: Ij */
    public final void m28667Ij(C8330b c8330b) {
        this.f25638b = c8330b;
        if (c8330b == null || this.f25639c) {
            AbstractC8332d abstractC8332d = (AbstractC8332d) this.f57683a;
            if (abstractC8332d == null) {
                return;
            }
            abstractC8332d.mo28666c(false);
            return;
        }
        AbstractC8332d abstractC8332d2 = (AbstractC8332d) this.f57683a;
        if (abstractC8332d2 != null) {
            abstractC8332d2.mo28666c(true);
            abstractC8332d2.setBackgroundColor(this.f25640d.mo13758l(c8330b.f25643c ? C3700R.attr.tcx_availabilityOnCallBackgroundColor : C3700R.attr.tcx_availabilityNormalBackgroundColor));
        }
        if (c8330b.f25643c) {
            AbstractC8332d abstractC8332d3 = (AbstractC8332d) this.f57683a;
            if (abstractC8332d3 == null) {
                return;
            }
            abstractC8332d3.setOnCallIconVisibility(true);
            abstractC8332d3.setTextVisibility(false);
            abstractC8332d3.setSilentIconVisibility(false);
        } else if (c8330b.f25641a == null) {
            AbstractC8332d abstractC8332d4 = (AbstractC8332d) this.f57683a;
            if (abstractC8332d4 == null) {
                return;
            }
            abstractC8332d4.mo28666c(false);
        } else {
            AbstractC8332d abstractC8332d5 = (AbstractC8332d) this.f57683a;
            if (abstractC8332d5 == null) {
                return;
            }
            abstractC8332d5.mo28665f(!c8330b.f25642b);
            abstractC8332d5.setText(c8330b.f25641a);
            abstractC8332d5.setTextVisibility(true);
            abstractC8332d5.setOnCallIconVisibility(false);
            abstractC8332d5.setSilentIconVisibility(c8330b.f25642b);
        }
    }
}
