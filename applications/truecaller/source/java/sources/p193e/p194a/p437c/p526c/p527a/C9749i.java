package p193e.p194a.p437c.p526c.p527a;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import s1.z.c.l;
/* renamed from: e.a.c.c.a.i */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/i.class */
public final class C9749i extends AbstractC25649a {
    public C9749i() {
        super(17, 18);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        l.e(abstractC26147b, "database");
        abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS `categorizer_probability`\n (`word` TEXT NOT NULL,\n  `probHam` REAL,\n  `probSpam` REAL,\n  `tfHam` REAL,\n  `tfSpam` REAL,\n  `idfHam` REAL,\n  `idfSpam` REAL,\n  PRIMARY KEY(`word`))");
    }
}
