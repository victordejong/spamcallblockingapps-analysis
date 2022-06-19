package p193e.p194a.p437c.p438a.p480j.p483c;

import p1727n3.p1744b0.p1745a.C25586h;
import p193e.p194a.p437c.p438a.p480j.p482b.AbstractC9135d;
import s1.z.c.l;
/* renamed from: e.a.c.a.j.c.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/c/b.class */
public final class C9143b extends C25586h.AbstractC25591e<AbstractC9135d> {
    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25591e
    public boolean areContentsTheSame(AbstractC9135d abstractC9135d, AbstractC9135d abstractC9135d2) {
        AbstractC9135d abstractC9135d3 = abstractC9135d;
        AbstractC9135d abstractC9135d4 = abstractC9135d2;
        l.e(abstractC9135d3, "oldItem");
        l.e(abstractC9135d4, "newItem");
        return l.a(abstractC9135d3, abstractC9135d4);
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25591e
    public boolean areItemsTheSame(AbstractC9135d abstractC9135d, AbstractC9135d abstractC9135d2) {
        AbstractC9135d abstractC9135d3 = abstractC9135d;
        AbstractC9135d abstractC9135d4 = abstractC9135d2;
        l.e(abstractC9135d3, "oldItem");
        l.e(abstractC9135d4, "newItem");
        return abstractC9135d3.mo27848a() == abstractC9135d4.mo27848a();
    }
}
