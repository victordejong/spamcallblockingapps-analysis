package p193e.p194a.p437c.p526c.p527a;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import s1.z.c.l;
/* renamed from: e.a.c.c.a.r */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/r.class */
public final class C9767r extends AbstractC25649a {
    public C9767r() {
        super(25, 26);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        l.e(abstractC26147b, "database");
        abstractC26147b.mo2668S0("DROP INDEX IF EXISTS `index_action_state_message_id`");
        abstractC26147b.mo2668S0("\n            CREATE UNIQUE INDEX IF NOT EXISTS `index_action_state_message_id_origin` \n            ON `action_state` (`message_id`, `origin`)\n            ");
        abstractC26147b.mo2668S0("\n            REPLACE INTO action_state (message_id, domain, state, \n            created_at, last_updated_at, origin, extra)\n            SELECT coalesce(act.message_id,pt.id), coalesce(act.domain,pt.type), 2, coalesce(act.created_at,pt.created_at),\n            coalesce(act.last_updated_at,pt.last_updated_at) , coalesce(act.origin,'BBPS'), strftime(\"%s\", \"now\", \"+1 day\") * 1000\n            from pay_transactions_table as pt LEFT JOIN action_state as act on pt.id = act.message_id\n            WHERE status == 'success' and type = 'Bill'\n        ");
    }
}
