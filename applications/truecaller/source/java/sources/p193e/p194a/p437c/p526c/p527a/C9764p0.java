package p193e.p194a.p437c.p526c.p527a;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.c.a.p0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/p0.class */
public final class C9764p0 extends AbstractC25649a {
    public C9764p0() {
        super(48, 49);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        l.e(abstractC26147b, "database");
        abstractC26147b.mo2668S0("DROP VIEW pdo_conv_view");
        abstractC26147b.mo2668S0("ALTER TABLE parsed_data_object_table\nRENAME TO parsed_data_object_temp_table");
        abstractC26147b.mo2668S0("DROP TABLE link_prune_table");
        abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS `parsed_data_object_table` (\n`messageID` INTEGER NOT NULL, \n`d` TEXT NOT NULL, \n`k` TEXT NOT NULL, \n`p` TEXT NOT NULL, \n`c` TEXT NOT NULL, \n`o` TEXT NOT NULL, \n`f` TEXT NOT NULL, \n`g` TEXT NOT NULL, \n`s` TEXT NOT NULL, \n`account_model_id` INTEGER, \n`val1` TEXT NOT NULL, \n`val2` TEXT NOT NULL, \n`val3` TEXT NOT NULL, \n`val4` TEXT NOT NULL, \n`val5` TEXT NOT NULL, \n`datetime` TEXT NOT NULL, \n`address` TEXT NOT NULL, \n`date` TEXT NOT NULL, \n`msg_date` INTEGER NOT NULL, \n`dff_val1` TEXT NOT NULL, \n`dff_val2` TEXT NOT NULL, \n`dff_val3` TEXT NOT NULL, \n`dff_val4` TEXT NOT NULL, \n`dff_val5` TEXT NOT NULL, \n`active` INTEGER NOT NULL, \n`state` TEXT NOT NULL, \n`synthetic_record_id` INTEGER, \n`deleted` INTEGER NOT NULL, \n`created_at` INTEGER NOT NULL, \n`spam_category` INTEGER NOT NULL, \nPRIMARY KEY(`messageID`), \nFOREIGN KEY(`account_model_id`) REFERENCES `account_model_table`(`id`))");
        try {
            abstractC26147b.mo2668S0("INSERT OR REPLACE INTO parsed_data_object_table (\n`messageID`, `d`, `k`, `p`, `c`, `o`, `f`, `g`, `s`, `account_model_id`, `val1`, `val2`, `val3`, `val4`, `val5`, `datetime`, `address`, \n`msg_date`, `date`, `dff_val1`, `dff_val2`, `dff_val3`, `dff_val4`, `dff_val5`, `active`, `state`, `synthetic_record_id`, \n`deleted`, `created_at`, `spam_category`) \nSELECT `messageID`, `d`, `k`, `p`, `c`, `o`, `f`, `g`, `s`, `account_model_id`, `val1`, `val2`, `val3`, `val4`, `val5`, `datetime`, \n`address`, strftime('%s', `msgdatetime`) * 1000 as `msg_date`, `date`, `dff_val1`, `dff_val2`, `dff_val3`, \n`dff_val4`, `dff_val5`, \n`active`, \n`state`, \n`synthetic_record_id`, `deleted`, `created_at`, `spam_category` \nFROM parsed_data_object_temp_table WHERE msg_date NOT NULL");
        } catch (Exception e) {
            e.getMessage();
        }
        C22128a.m8561v0(abstractC26147b, "DROP TABLE parsed_data_object_temp_table", "CREATE TABLE link_prune_table (\n    parent_id INTEGER NOT NULL,                \n    child_id INTEGER NOT NULL,                 \n    link_type TEXT NOT NULL, \n    created_at INTEGER NOT NULL, \n    PRIMARY KEY (\n    parent_id, \n    child_id\n    ), \n    FOREIGN KEY (\n    parent_id\n    ) REFERENCES parsed_data_object_table (messageID), \n    FOREIGN KEY (\n    child_id\n    ) REFERENCES parsed_data_object_table (messageID))", "CREATE INDEX IF NOT EXISTS index_link_prune_table_parent_id ON link_prune_table (parent_id)", "CREATE INDEX IF NOT EXISTS index_link_prune_table_child_id ON link_prune_table (child_id)");
        C22128a.m8561v0(abstractC26147b, "CREATE INDEX IF NOT EXISTS `index_parsed_data_object_table_d` ON `parsed_data_object_table` (`d`)", "CREATE INDEX IF NOT EXISTS `index_parsed_data_object_table_account_model_id` ON `parsed_data_object_table` (`account_model_id`)", "CREATE INDEX IF NOT EXISTS `index_parsed_data_object_table_synthetic_record_id` ON `parsed_data_object_table` (`synthetic_record_id`)", "CREATE INDEX IF NOT EXISTS `index_parsed_data_object_table_msg_date` ON `parsed_data_object_table` (`msg_date`)");
        abstractC26147b.mo2668S0("     CREATE VIEW `pdo_conv_view` AS SELECT p.*, message_conversation_table.conversation_id, message_conversation_table.is_im FROM ( SELECT * \nFROM parsed_data_object_table AS p  WHERE messageid <> - 1 AND deleted = 0 UNION ALL SELECT pt.messageID as messageID, pdo.d, pdo.k,\npdo.p, pdo.c, pdo.o, pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, pdo.val2, pdo.val3, pdo.val4,\npdo.val5, pdo.datetime, pdo.address, pdo.msg_date, pdo.date, pdo.dff_val1, pdo.dff_val2,\npdo.dff_val3, pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted,\npdo.created_at, pdo.spam_category FROM ( SELECT * FROM parsed_data_object_table WHERE messageid = - 1 \nAND deleted = 0 ) AS pdo LEFT JOIN ( SELECT synthetic_record_id, Max(messageid) AS messageID FROM \nparsed_data_object_table WHERE synthetic_record_id IS NOT NULL GROUP BY 1 ) AS pt \nON pdo.messageID = pt.synthetic_record_id ) AS p LEFT JOIN message_conversation_table \nON p.messageid = message_conversation_table.message_id\n");
    }
}
