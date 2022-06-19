.class public final Le/a/c/c/a/w;
.super Ln3/c0/f0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x3

    .line 1
    invoke-direct {p0, v0, v1}, Ln3/c0/f0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Ln3/e0/a/b;)V
    .locals 4

    const-string v0, "database"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `pdo`"

    .line 1
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `pdo` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `messageID` INTEGER NOT NULL, `d` TEXT NOT NULL, `k` TEXT NOT NULL, `p` TEXT NOT NULL, `c` TEXT NOT NULL, `o` TEXT NOT NULL, `f` TEXT NOT NULL, `g` TEXT NOT NULL, `s` TEXT NOT NULL,`account_model_id` INTEGER ,`state` TEXT NOT NULL DEFAULT \'\' , `val1` TEXT NOT NULL, `val2` TEXT NOT NULL, `val3` TEXT NOT NULL, `val4` TEXT NOT NULL, `val5` TEXT NOT NULL, `datetime` TEXT NOT NULL, `address` TEXT NOT NULL, `msgdatetime` TEXT NOT NULL, `date` TEXT NOT NULL, `msgdate` TEXT NOT NULL, `dff_val1` TEXT NOT NULL, `dff_val2` TEXT NOT NULL, `dff_val3` TEXT NOT NULL, `dff_val4` TEXT NOT NULL, `dff_val5` TEXT NOT NULL, `active` INTEGER NOT NULL, `created_at` INTEGER NOT NULL, CONSTRAINT fk_account_model FOREIGN KEY (account_model_id) REFERENCES account_model_table(id) )"

    .line 2
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "INSERT INTO `pdo` SELECT `id`, `messageID`, `d`, `k`, `p`, `c`, `o`, `f`, `g`, `s`, null AS `account_model_id`, \"\" AS `state`, `val1`, `val2`, `val3`, `val4`, `val5`, `datetime`, `address`, `msgdatetime`, `date`, `msgdate`, `dff_val1`, `dff_val2`, `dff_val3`, `dff_val4`, `dff_val5`, `active`, `created_at` FROM `parsed_data_object_table`"

    .line 3
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "DROP TABLE `parsed_data_object_table`"

    .line 4
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE `pdo` RENAME TO `parsed_data_object_table`"

    .line 5
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX IF NOT EXISTS `index_parsed_data_object_table_d` ON `parsed_data_object_table` (`d`)"

    const-string v1, "CREATE  INDEX IF NOT EXISTS `index_parsed_data_object_table_acc_model_id` ON `parsed_data_object_table` (`account_model_id`)"

    const-string v2, "CREATE TABLE IF NOT EXISTS `account_model_table` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `created_at` INTEGER NOT NULL, `address` TEXT, `account_type` TEXT, `account_number` TEXT, `balance` REAL NOT NULL, `active` INTEGER NOT NULL, `record_count` INTEGER NOT NULL, `update_stamp` INTEGER, `root_account` INTEGER NOT NULL, `normalized_name` TEXT)"

    const-string v3, "CREATE INDEX IF NOT EXISTS`index_account_model_table_address_account_number_id` ON `account_model_table` (`address`, `account_number`, `id`)"

    .line 6
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS`index_account_model_table_address_account_number` ON `account_model_table` (`address`, `account_number`)"

    const-string v1, "CREATE TABLE IF NOT EXISTS `account_relation_model` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `from_account` INTEGER, `to_account` INTEGER, `transaction_count` INTEGER NOT NULL, `created_at` INTEGER , FOREIGN KEY(`to_account`) REFERENCES `account_model_table`(`id`) , FOREIGN KEY(`from_account`) REFERENCES `account_model_table`(`id`) )"

    const-string v2, "CREATE INDEX IF NOT EXISTS `index_account_relation_model_from_account` ON `account_relation_model` (`from_account`)"

    const-string v3, "CREATE INDEX IF NOT EXISTS `index_account_relation_model_to_account` ON `account_relation_model` (`to_account`)"

    .line 7
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `account_mapping_rule_model` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `to_account` INTEGER, `from_account` INTEGER, `from_address` TEXT, `to_address` TEXT, `created_at` INTEGER, FOREIGN KEY(`to_account`) REFERENCES `account_model_table`(`id`) , FOREIGN KEY(`from_account`) REFERENCES `account_model_table`(`id`) )"

    const-string v1, "CREATE  INDEX IF NOT EXISTS`index_account_mapping_rule_model_from_address_to_address` ON `account_mapping_rule_model` (`from_address`, `to_address`)"

    const-string v2, "CREATE  INDEX IF NOT EXISTS`index_account_mapping_rule_model_from_account` ON `account_mapping_rule_model` (`from_account`)"

    const-string v3, "CREATE  INDEX IF NOT EXISTS`index_account_mapping_rule_model_to_account` ON `account_mapping_rule_model` (`to_account`)"

    .line 8
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
