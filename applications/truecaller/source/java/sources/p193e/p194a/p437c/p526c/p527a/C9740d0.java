package p193e.p194a.p437c.p526c.p527a;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import s1.z.c.l;
/* renamed from: e.a.c.c.a.d0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/d0.class */
public final class C9740d0 extends AbstractC25649a {
    public C9740d0() {
        super(37, 38);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        l.e(abstractC26147b, "database");
        abstractC26147b.mo2668S0("\n            CREATE VIEW `pdo_conv_view` AS SELECT p.*, message_conversation_table.conversation_id FROM ( SELECT * FROM parsed_data_object_table AS p \nWHERE messageid <> - 1 AND deleted = 0 UNION ALL SELECT pdo.id, pt.messageID as messageID, pdo.d, pdo.k,\npdo.p, pdo.c, pdo.o, pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, pdo.val2, pdo.val3, pdo.val4,\npdo.val5, pdo.datetime, pdo.address, pdo.msgdatetime, pdo.date, pdo.msgdate, pdo.dff_val1, pdo.dff_val2,\npdo.dff_val3, pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted,\npdo.created_at, pdo.spam_category FROM ( SELECT * FROM parsed_data_object_table WHERE messageid = - 1 \nAND deleted = 0 ) AS pdo LEFT JOIN ( SELECT synthetic_record_id, Max(messageid) AS messageID FROM \nparsed_data_object_table WHERE synthetic_record_id IS NOT NULL GROUP BY 1 ) AS pt \nON pdo.id = pt.synthetic_record_id ) AS p LEFT JOIN message_conversation_table \nON p.messageid = message_conversation_table.message_id\n    \n            ");
    }
}
