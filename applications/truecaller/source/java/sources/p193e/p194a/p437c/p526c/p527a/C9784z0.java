package p193e.p194a.p437c.p526c.p527a;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import s1.z.c.l;
/* renamed from: e.a.c.c.a.z0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/z0.class */
public final class C9784z0 extends AbstractC25649a {
    public C9784z0() {
        super(7, 8);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        l.e(abstractC26147b, "database");
        abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS pay_transactions_table ( id INTEGER NOT NULL, vendor TEXT NOT NULL, ref_id TEXT NOT NULL, type TEXT NOT NULL, sub_type TEXT, account_number TEXT NOT NULL, bill_amount REAL, aux_bill_amount REAL, amount_paid REAL, due_date INTEGER, generated_date INTEGER, payment_date INTEGER, status TEXT NOT NULL, created_at INTEGER NOT NULL, PRIMARY KEY (id))");
        abstractC26147b.mo2668S0("CREATE INDEX IF NOT EXISTS `index_pay_transactions_table_id` ON `pay_transactions_table` (`id`)");
        abstractC26147b.mo2668S0("CREATE INDEX IF NOT EXISTS `index_pay_transactions_table_type` ON `pay_transactions_table` (`type`)");
        abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS pdo_to_pay_map ( id INTEGER NOT NULL, pay_id INTEGER NOT NULL, pdo_id INTEGER NOT NULL, created_at INTEGER NOT NULL, PRIMARY KEY (id) FOREIGN KEY (pay_id) REFERENCES pay_transactions_table (id) FOREIGN KEY (pdo_id) REFERENCES parsed_data_object_table (id))");
        abstractC26147b.mo2668S0("CREATE INDEX IF NOT EXISTS `index_pdo_to_pay_map_id` ON `pdo_to_pay_map` (`id`)");
        abstractC26147b.mo2668S0("CREATE INDEX IF NOT EXISTS `index_pdo_to_pay_map_pdo_id` ON `pdo_to_pay_map` (`pdo_id`)");
    }
}
