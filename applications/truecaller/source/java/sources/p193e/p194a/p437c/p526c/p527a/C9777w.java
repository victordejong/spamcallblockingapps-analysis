package p193e.p194a.p437c.p526c.p527a;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.c.a.w */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/w.class */
public final class C9777w extends AbstractC25649a {
    public C9777w() {
        super(2, 3);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        l.e(abstractC26147b, "database");
        abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `pdo`");
        abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS `pdo` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `messageID` INTEGER NOT NULL, `d` TEXT NOT NULL, `k` TEXT NOT NULL, `p` TEXT NOT NULL, `c` TEXT NOT NULL, `o` TEXT NOT NULL, `f` TEXT NOT NULL, `g` TEXT NOT NULL, `s` TEXT NOT NULL,`account_model_id` INTEGER ,`state` TEXT NOT NULL DEFAULT '' , `val1` TEXT NOT NULL, `val2` TEXT NOT NULL, `val3` TEXT NOT NULL, `val4` TEXT NOT NULL, `val5` TEXT NOT NULL, `datetime` TEXT NOT NULL, `address` TEXT NOT NULL, `msgdatetime` TEXT NOT NULL, `date` TEXT NOT NULL, `msgdate` TEXT NOT NULL, `dff_val1` TEXT NOT NULL, `dff_val2` TEXT NOT NULL, `dff_val3` TEXT NOT NULL, `dff_val4` TEXT NOT NULL, `dff_val5` TEXT NOT NULL, `active` INTEGER NOT NULL, `created_at` INTEGER NOT NULL, CONSTRAINT fk_account_model FOREIGN KEY (account_model_id) REFERENCES account_model_table(id) )");
        abstractC26147b.mo2668S0("INSERT INTO `pdo` SELECT `id`, `messageID`, `d`, `k`, `p`, `c`, `o`, `f`, `g`, `s`, null AS `account_model_id`, \"\" AS `state`, `val1`, `val2`, `val3`, `val4`, `val5`, `datetime`, `address`, `msgdatetime`, `date`, `msgdate`, `dff_val1`, `dff_val2`, `dff_val3`, `dff_val4`, `dff_val5`, `active`, `created_at` FROM `parsed_data_object_table`");
        abstractC26147b.mo2668S0("DROP TABLE `parsed_data_object_table`");
        abstractC26147b.mo2668S0("ALTER TABLE `pdo` RENAME TO `parsed_data_object_table`");
        C22128a.m8561v0(abstractC26147b, "CREATE  INDEX IF NOT EXISTS `index_parsed_data_object_table_d` ON `parsed_data_object_table` (`d`)", "CREATE  INDEX IF NOT EXISTS `index_parsed_data_object_table_acc_model_id` ON `parsed_data_object_table` (`account_model_id`)", "CREATE TABLE IF NOT EXISTS `account_model_table` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `created_at` INTEGER NOT NULL, `address` TEXT, `account_type` TEXT, `account_number` TEXT, `balance` REAL NOT NULL, `active` INTEGER NOT NULL, `record_count` INTEGER NOT NULL, `update_stamp` INTEGER, `root_account` INTEGER NOT NULL, `normalized_name` TEXT)", "CREATE INDEX IF NOT EXISTS`index_account_model_table_address_account_number_id` ON `account_model_table` (`address`, `account_number`, `id`)");
        C22128a.m8561v0(abstractC26147b, "CREATE INDEX IF NOT EXISTS`index_account_model_table_address_account_number` ON `account_model_table` (`address`, `account_number`)", "CREATE TABLE IF NOT EXISTS `account_relation_model` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `from_account` INTEGER, `to_account` INTEGER, `transaction_count` INTEGER NOT NULL, `created_at` INTEGER , FOREIGN KEY(`to_account`) REFERENCES `account_model_table`(`id`) , FOREIGN KEY(`from_account`) REFERENCES `account_model_table`(`id`) )", "CREATE INDEX IF NOT EXISTS `index_account_relation_model_from_account` ON `account_relation_model` (`from_account`)", "CREATE INDEX IF NOT EXISTS `index_account_relation_model_to_account` ON `account_relation_model` (`to_account`)");
        C22128a.m8561v0(abstractC26147b, "CREATE TABLE IF NOT EXISTS `account_mapping_rule_model` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `to_account` INTEGER, `from_account` INTEGER, `from_address` TEXT, `to_address` TEXT, `created_at` INTEGER, FOREIGN KEY(`to_account`) REFERENCES `account_model_table`(`id`) , FOREIGN KEY(`from_account`) REFERENCES `account_model_table`(`id`) )", "CREATE  INDEX IF NOT EXISTS`index_account_mapping_rule_model_from_address_to_address` ON `account_mapping_rule_model` (`from_address`, `to_address`)", "CREATE  INDEX IF NOT EXISTS`index_account_mapping_rule_model_from_account` ON `account_mapping_rule_model` (`from_account`)", "CREATE  INDEX IF NOT EXISTS`index_account_mapping_rule_model_to_account` ON `account_mapping_rule_model` (`to_account`)");
    }
}
