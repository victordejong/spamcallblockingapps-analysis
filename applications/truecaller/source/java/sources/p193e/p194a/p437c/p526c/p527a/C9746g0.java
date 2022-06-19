package p193e.p194a.p437c.p526c.p527a;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import s1.z.c.l;
/* renamed from: e.a.c.c.a.g0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/g0.class */
public final class C9746g0 extends AbstractC25649a {
    public C9746g0() {
        super(3, 4);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        l.e(abstractC26147b, "database");
        abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS message_conversation_table ( id INTEGER NOT NULL, message_id INTEGER NOT NULL, conversation_id INTEGER NOT NULL, created_at INTEGER NOT NULL, PRIMARY KEY (id), FOREIGN KEY (id) REFERENCES parsed_data_object_table (id))");
        abstractC26147b.mo2668S0("CREATE INDEX IF NOT EXISTS `index_message_conversation_table_id` ON `message_conversation_table` (`id`)");
        abstractC26147b.mo2668S0("CREATE INDEX IF NOT EXISTS `index_message_conversation_table_conversation_id` ON `message_conversation_table` (`conversation_id`)");
    }
}
