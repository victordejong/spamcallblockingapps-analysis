package p193e.p194a.p437c.p438a.p480j.p483c;

import p1727n3.p1744b0.p1745a.C25586h;
import p193e.p194a.p437c.p438a.p480j.p482b.C9141j;
import s1.z.c.l;
/* renamed from: e.a.c.a.j.c.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/c/e.class */
public final class C9146e extends C25586h.AbstractC25591e<C9141j> {
    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25591e
    public boolean areContentsTheSame(C9141j c9141j, C9141j c9141j2) {
        C9141j c9141j3 = c9141j;
        C9141j c9141j4 = c9141j2;
        l.e(c9141j3, "oldItem");
        l.e(c9141j4, "newItem");
        return l.a(c9141j3, c9141j4);
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25591e
    public boolean areItemsTheSame(C9141j c9141j, C9141j c9141j2) {
        C9141j c9141j3 = c9141j;
        C9141j c9141j4 = c9141j2;
        l.e(c9141j3, "oldItem");
        l.e(c9141j4, "newItem");
        return c9141j3.f27849b == c9141j4.f27849b;
    }
}
