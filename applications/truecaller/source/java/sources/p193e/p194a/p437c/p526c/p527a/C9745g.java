package p193e.p194a.p437c.p526c.p527a;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import s1.z.c.l;
/* renamed from: e.a.c.c.a.g */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/g.class */
public final class C9745g extends AbstractC25649a {
    public C9745g() {
        super(15, 16);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        l.e(abstractC26147b, "database");
        abstractC26147b.mo2668S0("ALTER TABLE sms_backup_table \nADD COLUMN transport\nINTEGER NOT NULL DEFAULT -1");
        abstractC26147b.mo2668S0("ALTER TABLE sms_backup_table \nADD COLUMN deleted\nINTEGER NOT NULL DEFAULT 0");
        abstractC26147b.mo2668S0("ALTER TABLE parsed_data_object_table \nADD COLUMN deleted\nINTEGER NOT NULL DEFAULT 0");
    }
}
