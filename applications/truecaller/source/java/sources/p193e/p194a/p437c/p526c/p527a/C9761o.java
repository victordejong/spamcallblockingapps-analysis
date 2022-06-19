package p193e.p194a.p437c.p526c.p527a;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import s1.z.c.l;
/* renamed from: e.a.c.c.a.o */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/o.class */
public final class C9761o extends AbstractC25649a {
    public C9761o() {
        super(22, 23);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        l.e(abstractC26147b, "database");
        abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS `reclassified_message`\n (`message_body` TEXT NOT NULL,\n  `from_category` TEXT NOT NULL,\n  `to_category` TEXT NOT NULL,\n  `model_version` INTEGER NOT NULL,\n  `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,\n  `created_at` INTEGER NOT NULL)");
    }
}
