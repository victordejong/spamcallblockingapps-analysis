package p193e.p194a.p437c.p526c.p527a;

import com.truecaller.insights.models.pdo.ClassifierType;
import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import s1.f0.n;
import s1.z.c.l;
/* renamed from: e.a.c.c.a.k0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/k0.class */
public final class C9754k0 extends AbstractC25649a {
    public C9754k0() {
        super(43, 44);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        l.e(abstractC26147b, "database");
        abstractC26147b.mo2668S0("\n            ALTER TABLE sms_backup_table\n            ADD COLUMN classified_by INTEGER NOT NULL DEFAULT " + ClassifierType.DEFAULT.getValue() + "\n            ");
        abstractC26147b.mo2668S0(n.c("\n                UPDATE sms_backup_table\n                SET classified_by = " + ClassifierType.MODEL.getValue() + "\n                WHERE updateCategory IS NOT NULL\n            "));
    }
}
