package p193e.p194a.p437c.p526c.p527a;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import s1.z.c.l;
/* renamed from: e.a.c.c.a.y */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/y.class */
public final class C9781y extends AbstractC25649a {
    public C9781y() {
        super(31, 32);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        l.e(abstractC26147b, "database");
        abstractC26147b.mo2668S0("UPDATE parsed_data_object_table \nSET active =  0 \nWHERE deleted = 1");
    }
}
