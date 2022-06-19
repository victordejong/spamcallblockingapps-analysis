.class public final Le/a/c/c/a/o0;
.super Ln3/c0/f0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x2f

    const/16 v1, 0x30

    .line 1
    invoke-direct {p0, v0, v1}, Ln3/c0/f0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Ln3/e0/a/b;)V
    .locals 4

    const-string v0, "database"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "DROP VIEW pdo_conv_view"

    .line 1
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "DELETE FROM parsed_data_object_table WHERE messageID < 0"

    .line 2
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "UPDATE parsed_data_object_table \n    SET synthetic_record_id = NULL \n    WHERE synthetic_record_id IS NOT NULL"

    .line 3
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "ORIGINAL"

    .line 4
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "UPDATE parsed_data_object_table SET state = ? WHERE state != ?"

    .line 5
    invoke-interface {p1, v1, v0}, Ln3/e0/a/b;->c1(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "DROP TABLE link_prune_table"

    .line 6
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "INSIGHTS.LINKING"

    const-string v1, "INSIGHTS.PRUNING"

    .line 7
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "DELETE FROM states_table WHERE owner IN (?, ?)"

    .line 8
    invoke-interface {p1, v1, v0}, Ln3/e0/a/b;->c1(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "ALTER TABLE parsed_data_object_table RENAME TO parsed_data_object_temp_table"

    const-string v1, "CREATE TABLE IF NOT EXISTS `parsed_data_object_table` (\n`messageID` INTEGER PRIMARY KEY NOT NULL,\n`d` TEXT NOT NULL,\n`k` TEXT NOT NULL,\n`p` TEXT NOT NULL,\n`c` TEXT NOT NULL,\n`o` TEXT NOT NULL,\n`f` TEXT NOT NULL,\n`g` TEXT NOT NULL,\n`s` TEXT NOT NULL,\n`account_model_id` INTEGER,\n`val1` TEXT NOT NULL,\n`val2` TEXT NOT NULL,\n`val3` TEXT NOT NULL,\n`val4` TEXT NOT NULL,\n`val5` TEXT NOT NULL,\n`datetime` TEXT NOT NULL,\n`address` TEXT NOT NULL,\n`msgdatetime` TEXT NOT NULL,\n`msgdate` TEXT NOT NULL,\n`date` TEXT NOT NULL,\n`dff_val1` TEXT NOT NULL,\n`dff_val2` TEXT NOT NULL,\n`dff_val3` TEXT NOT NULL,\n`dff_val4` TEXT NOT NULL,\n`dff_val5` TEXT NOT NULL,\n`active` INTEGER NOT NULL,\n`state` TEXT NOT NULL,\n`synthetic_record_id` INTEGER,\n`deleted` INTEGER NOT NULL,\n`created_at` INTEGER NOT NULL,\n`spam_category` INTEGER NOT NULL,\nFOREIGN KEY(`account_model_id`) REFERENCES `account_model_table`(`id`))"

    const-string v2, "INSERT OR REPLACE INTO parsed_data_object_table (\n `messageID`,\n `d`, \n `k`, \n `p`, \n `c`, \n `o`, \n `f`, \n `g`, \n `s`, \n `account_model_id`, \n `val1`, \n `val2`, \n `val3`, \n `val4`, \n `val5`, \n `datetime`, \n `address`, \n `msgdatetime`,\n `msgdate`,\n `date`,\n `dff_val1`,\n `dff_val2`,\n `dff_val3`,\n `dff_val4`,\n `dff_val5`,\n `active`,\n `state`,\n `synthetic_record_id`, \n `deleted`,\n `created_at`,\n `spam_category`) \n SELECT \n `messageID`,\n `d`, \n `k`, \n `p`, \n `c`, \n `o`, \n `f`, \n `g`, \n `s`, \n `account_model_id`, \n `val1`, \n `val2`, \n `val3`, \n `val4`, \n `val5`, \n `datetime`, \n `address`, \n `msgdatetime`,\n `msgdate`,\n `date`,\n `dff_val1`,\n `dff_val2`,\n `dff_val3`,\n `dff_val4`,\n `dff_val5`,\n `active`,\n `state`,\n `synthetic_record_id`, \n `deleted`,\n `created_at`,\n `spam_category`\nFROM parsed_data_object_temp_table"

    const-string v3, "CREATE TABLE link_prune_table (parent_id INTEGER NOT NULL, child_id INTEGER NOT NULL, link_type TEXT NOT NULL, created_at INTEGER NOT NULL, PRIMARY KEY (parent_id, child_id), FOREIGN KEY (parent_id) REFERENCES parsed_data_object_table (messageID), FOREIGN KEY (child_id) REFERENCES parsed_data_object_table (messageID))"

    .line 9
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS index_link_prune_table_parent_id ON link_prune_table (parent_id)"

    const-string v1, "CREATE INDEX IF NOT EXISTS index_link_prune_table_child_id ON link_prune_table (child_id)"

    const-string v2, "DROP TABLE parsed_data_object_temp_table"

    const-string v3, "CREATE INDEX IF NOT EXISTS `index_parsed_data_object_table_d` ON `parsed_data_object_table` (`d`)"

    .line 10
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_parsed_data_object_table_account_model_id` ON `parsed_data_object_table` (`account_model_id`)"

    .line 11
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_parsed_data_object_table_synthetic_record_id` ON `parsed_data_object_table` (`synthetic_record_id`)"

    .line 12
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW `pdo_conv_view` AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SELECT p.*, message_conversation_table.conversation_id, message_conversation_table.is_im FROM ( SELECT * \n            FROM parsed_data_object_table AS p  WHERE messageid <> - 1 AND deleted = 0 UNION ALL SELECT pt.messageID as messageID, pdo.d, pdo.k,\n            pdo.p, pdo.c, pdo.o, pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, pdo.val2, pdo.val3, pdo.val4,\n            pdo.val5, pdo.datetime, pdo.address, pdo.msgdatetime, pdo.date, pdo.msgdate, pdo.dff_val1, pdo.dff_val2,\n            pdo.dff_val3, pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted,\n            pdo.created_at, pdo.spam_category FROM ( SELECT * FROM parsed_data_object_table WHERE messageid = - 1 \n            AND deleted = 0 ) AS pdo LEFT JOIN ( SELECT synthetic_record_id, Max(messageid) AS messageID FROM \n            parsed_data_object_table WHERE synthetic_record_id IS NOT NULL GROUP BY 1 ) AS pt \n            ON pdo.messageID = pt.synthetic_record_id ) AS p LEFT JOIN message_conversation_table \n            ON p.messageid = message_conversation_table.message_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    return-void
.end method
