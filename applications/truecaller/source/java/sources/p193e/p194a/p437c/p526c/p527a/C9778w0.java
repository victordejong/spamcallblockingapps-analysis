package p193e.p194a.p437c.p526c.p527a;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.c.c.a.w0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/w0.class */
public final class C9778w0 extends AbstractC25649a {
    public C9778w0() {
        super(54, 55);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        C22128a.m8565u0(abstractC26147b, "database", "CREATE TABLE IF NOT EXISTS sender_resolution_table (\n    sender TEXT PRIMARY KEY NOT NULL,\n    sender_name TEXT,\n    sender_icon_uri TEXT,\n    created_at INTEGER NOT NULL,\n    last_updated_at INTEGER NOT NULL\n)", "CREATE INDEX IF NOT EXISTS `index_sender_name` ON `sender_resolution_table` \n(`sender_name`)");
    }
}
