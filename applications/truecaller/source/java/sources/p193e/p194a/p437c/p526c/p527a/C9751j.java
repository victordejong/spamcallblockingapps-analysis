package p193e.p194a.p437c.p526c.p527a;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.c.c.a.j */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/j.class */
public final class C9751j extends AbstractC25649a {
    public C9751j() {
        super(18, 19);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        C22128a.m8565u0(abstractC26147b, "database", "DELETE FROM aggregation_queries", "ALTER TABLE aggregation_queries\nADD COLUMN periodicity\nTEXT NOT NULL DEFAULT DAILY");
    }
}
