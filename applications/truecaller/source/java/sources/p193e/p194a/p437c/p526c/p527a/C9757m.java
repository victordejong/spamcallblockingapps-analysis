package p193e.p194a.p437c.p526c.p527a;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.c.c.a.m */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/m.class */
public final class C9757m extends AbstractC25649a {
    public C9757m() {
        super(20, 21);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        C22128a.m8565u0(abstractC26147b, "database", "   CREATE TABLE `action_state` (\n   `id` INTEGER NOT NULL,\n   `message_id` INTEGER NOT NULL UNIQUE,\n   `domain` TEXT NOT NULL,\n   `state` INTEGER NOT NULL,\n   `extra` TEXT NOT NULL,\n`created_at` INTEGER NOT NULL,\n   `last_updated_at` INTEGER NOT NULL,\n   PRIMARY KEY(`id`)\n       )", "CREATE UNIQUE INDEX `index_action_state_message_id`\nON action_state(message_id)");
    }
}
