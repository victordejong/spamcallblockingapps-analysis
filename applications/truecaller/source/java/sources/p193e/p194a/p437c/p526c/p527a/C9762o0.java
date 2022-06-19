package p193e.p194a.p437c.p526c.p527a;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.c.a.o0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/o0.class */
public final class C9762o0 extends AbstractC25649a {
    public C9762o0() {
        super(47, 48);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        l.e(abstractC26147b, "database");
        abstractC26147b.mo2668S0("DROP VIEW pdo_conv_view");
        abstractC26147b.mo2668S0("DELETE FROM parsed_data_object_table WHERE messageID < 0");
        abstractC26147b.mo2668S0("UPDATE parsed_data_object_table \n    SET synthetic_record_id = NULL \n    WHERE synthetic_record_id IS NOT NULL");
        abstractC26147b.mo2662c1("UPDATE parsed_data_object_table SET state = ? WHERE state != ?", new String[]{"ORIGINAL", "ORIGINAL"});
        abstractC26147b.mo2668S0("DROP TABLE link_prune_table");
        abstractC26147b.mo2662c1("DELETE FROM states_table WHERE owner IN (?, ?)", new String[]{"INSIGHTS.LINKING", "INSIGHTS.PRUNING"});
        C22128a.m8561v0(abstractC26147b, "ALTER TABLE parsed_data_object_table RENAME TO parsed_data_object_temp_table", "CREATE TABLE IF NOT EXISTS `parsed_data_object_table` (\n`messageID` INTEGER PRIMARY KEY NOT NULL,\n`d` TEXT NOT NULL,\n`k` TEXT NOT NULL,\n`p` TEXT NOT NULL,\n`c` TEXT NOT NULL,\n`o` TEXT NOT NULL,\n`f` TEXT NOT NULL,\n`g` TEXT NOT NULL,\n`s` TEXT NOT NULL,\n`account_model_id` INTEGER,\n`val1` TEXT NOT NULL,\n`val2` TEXT NOT NULL,\n`val3` TEXT NOT NULL,\n`val4` TEXT NOT NULL,\n`val5` TEXT NOT NULL,\n`datetime` TEXT NOT NULL,\n`address` TEXT NOT NULL,\n`msgdatetime` TEXT NOT NULL,\n`msgdate` TEXT NOT NULL,\n`date` TEXT NOT NULL,\n`dff_val1` TEXT NOT NULL,\n`dff_val2` TEXT NOT NULL,\n`dff_val3` TEXT NOT NULL,\n`dff_val4` TEXT NOT NULL,\n`dff_val5` TEXT NOT NULL,\n`active` INTEGER NOT NULL,\n`state` TEXT NOT NULL,\n`synthetic_record_id` INTEGER,\n`deleted` INTEGER NOT NULL,\n`created_at` INTEGER NOT NULL,\n`spam_category` INTEGER NOT NULL,\nFOREIGN KEY(`account_model_id`) REFERENCES `account_model_table`(`id`))", "INSERT OR REPLACE INTO parsed_data_object_table (\n `messageID`,\n `d`, \n `k`, \n `p`, \n `c`, \n `o`, \n `f`, \n `g`, \n `s`, \n `account_model_id`, \n `val1`, \n `val2`, \n `val3`, \n `val4`, \n `val5`, \n `datetime`, \n `address`, \n `msgdatetime`,\n `msgdate`,\n `date`,\n `dff_val1`,\n `dff_val2`,\n `dff_val3`,\n `dff_val4`,\n `dff_val5`,\n `active`,\n `state`,\n `synthetic_record_id`, \n `deleted`,\n `created_at`,\n `spam_category`) \n SELECT \n `messageID`,\n `d`, \n `k`, \n `p`, \n `c`, \n `o`, \n `f`, \n `g`, \n `s`, \n `account_model_id`, \n `val1`, \n `val2`, \n `val3`, \n `val4`, \n `val5`, \n `datetime`, \n `address`, \n `msgdatetime`,\n `msgdate`,\n `date`,\n `dff_val1`,\n `dff_val2`,\n `dff_val3`,\n `dff_val4`,\n `dff_val5`,\n `active`,\n `state`,\n `synthetic_record_id`, \n `deleted`,\n `created_at`,\n `spam_category`\nFROM parsed_data_object_temp_table", "CREATE TABLE link_prune_table (parent_id INTEGER NOT NULL, child_id INTEGER NOT NULL, link_type TEXT NOT NULL, created_at INTEGER NOT NULL, PRIMARY KEY (parent_id, child_id), FOREIGN KEY (parent_id) REFERENCES parsed_data_object_table (messageID), FOREIGN KEY (child_id) REFERENCES parsed_data_object_table (messageID))");
        C22128a.m8561v0(abstractC26147b, "CREATE INDEX IF NOT EXISTS index_link_prune_table_parent_id ON link_prune_table (parent_id)", "CREATE INDEX IF NOT EXISTS index_link_prune_table_child_id ON link_prune_table (child_id)", "DROP TABLE parsed_data_object_temp_table", "CREATE INDEX IF NOT EXISTS `index_parsed_data_object_table_d` ON `parsed_data_object_table` (`d`)");
        abstractC26147b.mo2668S0("CREATE INDEX IF NOT EXISTS `index_parsed_data_object_table_account_model_id` ON `parsed_data_object_table` (`account_model_id`)");
        abstractC26147b.mo2668S0("CREATE INDEX IF NOT EXISTS `index_parsed_data_object_table_synthetic_record_id` ON `parsed_data_object_table` (`synthetic_record_id`)");
        abstractC26147b.mo2668S0("CREATE VIEW `pdo_conv_view` AS SELECT p.*, message_conversation_table.conversation_id, message_conversation_table.is_im FROM ( SELECT * \n            FROM parsed_data_object_table AS p  WHERE messageid <> - 1 AND deleted = 0 UNION ALL SELECT pt.messageID as messageID, pdo.d, pdo.k,\n            pdo.p, pdo.c, pdo.o, pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, pdo.val2, pdo.val3, pdo.val4,\n            pdo.val5, pdo.datetime, pdo.address, pdo.msgdatetime, pdo.date, pdo.msgdate, pdo.dff_val1, pdo.dff_val2,\n            pdo.dff_val3, pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted,\n            pdo.created_at, pdo.spam_category FROM ( SELECT * FROM parsed_data_object_table WHERE messageid = - 1 \n            AND deleted = 0 ) AS pdo LEFT JOIN ( SELECT synthetic_record_id, Max(messageid) AS messageID FROM \n            parsed_data_object_table WHERE synthetic_record_id IS NOT NULL GROUP BY 1 ) AS pt \n            ON pdo.messageID = pt.synthetic_record_id ) AS p LEFT JOIN message_conversation_table \n            ON p.messageid = message_conversation_table.message_id");
    }
}
