package p193e.p194a.p437c.p526c.p527a;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.c.c.a.v0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/v0.class */
public final class C9776v0 extends AbstractC25649a {
    public C9776v0() {
        super(53, 54);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        C22128a.m8565u0(abstractC26147b, "database", "DELETE FROM parsed_data_object_table WHERE deleted = 1", "DELETE FROM sms_backup_table WHERE deleted = 1");
    }
}
