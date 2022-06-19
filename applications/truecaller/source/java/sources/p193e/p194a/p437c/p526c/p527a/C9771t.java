package p193e.p194a.p437c.p526c.p527a;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.c.c.a.t */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/t.class */
public final class C9771t extends AbstractC25649a {
    public C9771t() {
        super(27, 28);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        C22128a.m8565u0(abstractC26147b, "database", "CREATE TABLE IF NOT EXISTS `feedback` \n(`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,\n`created_at` INTEGER NOT NULL,\n`feedback_type` TEXT NOT NULL,\n`feedback_value` TEXT NOT NULL,\n`entity_id` INTEGER NOT NULL,\n`sender` TEXT,\n`body` TEXT NOT NULL,\n`parser_output` TEXT,\n`categorizer_output` TEXT )", "CREATE INDEX IF NOT EXISTS `index_entity_id`\nON `feedback` (`entity_id`)");
    }
}
