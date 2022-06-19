package p193e.p194a.p437c.p526c.p527a;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.c.c.a.n */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/n.class */
public final class C9759n extends AbstractC25649a {
    public C9759n() {
        super(21, 22);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        C22128a.m8565u0(abstractC26147b, "database", "CREATE VIRTUAL TABLE IF NOT EXISTS `sms_message_fts` \nUSING FTS4(`message`, `address`, \ncontent=`sms_backup_table`)", "INSERT INTO sms_message_fts(sms_message_fts) VALUES ('rebuild')");
    }
}
