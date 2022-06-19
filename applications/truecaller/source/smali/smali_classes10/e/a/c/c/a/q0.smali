.class public final Le/a/c/c/a/q0;
.super Ln3/c0/f0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x31

    const/16 v1, 0x32

    .line 1
    invoke-direct {p0, v0, v1}, Ln3/c0/f0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Ln3/e0/a/b;)V
    .locals 2

    const-string v0, "database"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "DROP VIEW IF EXISTS pdo_conv_view            "

    .line 1
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n            UPDATE sms_backup_table \n            SET transport = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    sget-object v1, Lcom/truecaller/insights/commons/model/Transport;->IM:Lcom/truecaller/insights/commons/model/Transport;

    invoke-virtual {v1}, Lcom/truecaller/insights/commons/model/Transport;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n            WHERE messageID IN (\n                SELECT message_id \n                FROM message_conversation_table \n                WHERE is_im = 1\n            )\n            "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ls1/f0/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE sms_backup_table RENAME TO temp_sms_backup_table"

    .line 6
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "DROP INDEX IF EXISTS index_sms_backup_table_address"

    .line 7
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `sms_backup_table` \n(\n    `messageID` INTEGER PRIMARY KEY NOT NULL,\n    `address` TEXT NOT NULL, \n    `message` TEXT NOT NULL,\n    `date` INTEGER NOT NULL,\n    `transport` INTEGER NOT NULL, \n    `parseFailed` INTEGER NOT NULL, \n    `errorMessage` TEXT NOT NULL, \n    `retryCount` INTEGER NOT NULL, \n    `deleted` INTEGER NOT NULL, \n    `created_at` INTEGER NOT NULL, \n    `updateCategory` TEXT, \n    `classified_by` INTEGER NOT NULL, \n    `conversationId` INTEGER NOT NULL, \n    `spam_category` INTEGER NOT NULL\n)"

    .line 8
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_sms_backup_table_address` ON `sms_backup_table` (`address`)"

    .line 9
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n                INSERT OR REPLACE INTO `sms_backup_table` (\n                    `messageID`,\n                    `address`,\n                    `message`,\n                    `date`,\n                    `transport`,\n                    `parseFailed`,\n                    `errorMessage`,\n                    `retryCount`,\n                    `deleted`,\n                    `created_at`,\n                    `updateCategory`,\n                    `classified_by`,\n                    `conversationId`,\n                    `spam_category`\n                ) SELECT `messageID`, \n                    `address`, \n                    `message`, \n                    IFNULL(`date`, strftime(\'%s\', \'now\')) \n                    AS `date`, \n                    IFNULL(`transport`, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    sget-object v1, Lcom/truecaller/insights/commons/model/Transport;->SMS:Lcom/truecaller/insights/commons/model/Transport;

    invoke-virtual {v1}, Lcom/truecaller/insights/commons/model/Transport;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") \n                    AS `transport`, \n                    IFNULL(`parseFailed`, 0) \n                    AS `parseFailed`,  \n                    IFNULL(`errorMessage`, \'\') \n                    AS `errorMessage`, \n                    IFNULL(`retryCount`, 0) \n                    AS `retryCount`, \n                    IFNULL(`deleted`, 0) \n                    AS `deleted`, \n                    IFNULL(`temp_sms_backup_table`.\n                    `created_at`, strftime(\'%s\', \'now\'))\n                     AS `created_at`, \n                    `updateCategory`, \n                    IFNULL(`classified_by`, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    sget-object v1, Lcom/truecaller/insights/models/pdo/ClassifierType;->DEFAULT:Lcom/truecaller/insights/models/pdo/ClassifierType;

    invoke-virtual {v1}, Lcom/truecaller/insights/models/pdo/ClassifierType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") \n                    AS `classified_by`, \n                    IFNULL(`conversationId`, -1) \n                    AS `conversationId`, \n                    IFNULL(`spam_category`, 1) \n                    AS `spam_category`\n                FROM `temp_sms_backup_table`\n                INNER JOIN `message_conversation_table` ON\n                `temp_sms_backup_table`.`messageID` = \n                `message_conversation_table`.`message_id`\n            "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Ls1/f0/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS temp_sms_backup_table"

    .line 15
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS message_conversation_table"

    .line 16
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    return-void
.end method
