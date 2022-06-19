package p193e.p194a.p437c.p526c.p527a;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.c.c.a.b1 */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/b1.class */
public final class C9736b1 extends AbstractC25649a {
    public C9736b1() {
        super(9, 10);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        C22128a.m8565u0(abstractC26147b, "database", "ALTER TABLE pay_transactions_table ADD COLUMN last_updated_at INTEGER NOT NULL DEFAULT 0", "CREATE UNIQUE INDEX IF NOT EXISTS `index_pay_transactions_table_ref_id` ON `pay_transactions_table` (`ref_id`)");
    }
}
