package p193e.p194a.p437c.p438a.p439a;

import p1727n3.p1744b0.p1745a.C25586h;
import p193e.p194a.p437c.p438a.p507p.p510c.AbstractC9460d;
import s1.z.c.l;
/* renamed from: e.a.c.a.a.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/a/c.class */
public final class C8686c extends C25586h.AbstractC25591e<AbstractC9460d> {
    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25591e
    public boolean areContentsTheSame(AbstractC9460d abstractC9460d, AbstractC9460d abstractC9460d2) {
        AbstractC9460d abstractC9460d3 = abstractC9460d;
        AbstractC9460d abstractC9460d4 = abstractC9460d2;
        l.e(abstractC9460d3, "oldItem");
        l.e(abstractC9460d4, "newItem");
        return l.a(abstractC9460d3, abstractC9460d4);
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25591e
    public boolean areItemsTheSame(AbstractC9460d abstractC9460d, AbstractC9460d abstractC9460d2) {
        AbstractC9460d abstractC9460d3 = abstractC9460d;
        AbstractC9460d abstractC9460d4 = abstractC9460d2;
        l.e(abstractC9460d3, "oldItem");
        l.e(abstractC9460d4, "newItem");
        return abstractC9460d3.f28701a == abstractC9460d4.f28701a;
    }
}
