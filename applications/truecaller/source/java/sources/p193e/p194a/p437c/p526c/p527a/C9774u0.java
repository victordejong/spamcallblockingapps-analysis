package p193e.p194a.p437c.p526c.p527a;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.c.c.a.u0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/u0.class */
public final class C9774u0 extends AbstractC25649a {
    public C9774u0() {
        super(52, 53);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        C22128a.m8565u0(abstractC26147b, "database", "\n            ALTER TABLE sms_backup_table\n            ADD COLUMN confidence_score REAL NOT NULL DEFAULT 0.0\n            ", "\n            ALTER TABLE sms_backup_table\n            ADD COLUMN no_of_words INTEGER NOT NULL DEFAULT 0\n            ");
    }
}
