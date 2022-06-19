.class public Lcom/truecaller/insights/database/InsightsDb_Impl$a;
.super Ln3/c0/x$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/insights/database/InsightsDb_Impl;->createOpenHelper(Ln3/c0/h;)Ln3/e0/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/insights/database/InsightsDb_Impl;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/database/InsightsDb_Impl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/database/InsightsDb_Impl$a;->a:Lcom/truecaller/insights/database/InsightsDb_Impl;

    invoke-direct {p0, p2}, Ln3/c0/x$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Ln3/e0/a/b;)V
    .locals 4

    const-string v0, "CREATE TABLE IF NOT EXISTS `parsed_data_object_table` (`messageID` INTEGER NOT NULL, `d` TEXT NOT NULL, `k` TEXT NOT NULL, `p` TEXT NOT NULL, `c` TEXT NOT NULL, `o` TEXT NOT NULL, `f` TEXT NOT NULL, `g` TEXT NOT NULL, `s` TEXT NOT NULL, `account_model_id` INTEGER, `val1` TEXT NOT NULL, `val2` TEXT NOT NULL, `val3` TEXT NOT NULL, `val4` TEXT NOT NULL, `val5` TEXT NOT NULL, `datetime` TEXT NOT NULL, `address` TEXT NOT NULL, `date` TEXT NOT NULL, `msg_date` INTEGER NOT NULL, `dff_val1` TEXT NOT NULL, `dff_val2` TEXT NOT NULL, `dff_val3` TEXT NOT NULL, `dff_val4` TEXT NOT NULL, `dff_val5` TEXT NOT NULL, `active` INTEGER NOT NULL, `state` TEXT NOT NULL, `synthetic_record_id` INTEGER, `deleted` INTEGER NOT NULL, `created_at` INTEGER NOT NULL, `spam_category` INTEGER NOT NULL, PRIMARY KEY(`messageID`), FOREIGN KEY(`account_model_id`) REFERENCES `account_model_table`(`id`) ON UPDATE NO ACTION ON DELETE NO ACTION )"

    const-string v1, "CREATE INDEX IF NOT EXISTS `index_parsed_data_object_table_d` ON `parsed_data_object_table` (`d`)"

    const-string v2, "CREATE INDEX IF NOT EXISTS `index_parsed_data_object_table_account_model_id` ON `parsed_data_object_table` (`account_model_id`)"

    const-string v3, "CREATE INDEX IF NOT EXISTS `index_parsed_data_object_table_synthetic_record_id` ON `parsed_data_object_table` (`synthetic_record_id`)"

    .line 1
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_parsed_data_object_table_msg_date` ON `parsed_data_object_table` (`msg_date`)"

    const-string v1, "CREATE TABLE IF NOT EXISTS `sms_backup_table` (`messageID` INTEGER NOT NULL, `address` TEXT NOT NULL, `message` TEXT NOT NULL, `date` INTEGER NOT NULL, `transport` INTEGER NOT NULL, `parseFailed` INTEGER NOT NULL, `errorMessage` TEXT NOT NULL, `retryCount` INTEGER NOT NULL, `deleted` INTEGER NOT NULL, `created_at` INTEGER NOT NULL, `updateCategory` TEXT, `classified_by` INTEGER NOT NULL, `conversationId` INTEGER NOT NULL, `spam_category` INTEGER NOT NULL, `confidence_score` REAL NOT NULL, `no_of_words` INTEGER NOT NULL, PRIMARY KEY(`messageID`))"

    const-string v2, "CREATE INDEX IF NOT EXISTS `index_sms_backup_table_address` ON `sms_backup_table` (`address`)"

    const-string v3, "CREATE TABLE IF NOT EXISTS `account_model_table` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `created_at` INTEGER NOT NULL, `address` TEXT, `account_type` TEXT, `account_number` TEXT, `balance` REAL NOT NULL, `active` INTEGER NOT NULL, `record_count` INTEGER NOT NULL, `update_stamp` INTEGER, `root_account` INTEGER NOT NULL, `normalized_name` TEXT)"

    .line 2
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_account_model_table_address_account_number_id` ON `account_model_table` (`address`, `account_number`, `id`)"

    const-string v1, "CREATE INDEX IF NOT EXISTS `index_account_model_table_address_account_number` ON `account_model_table` (`address`, `account_number`)"

    const-string v2, "CREATE TABLE IF NOT EXISTS `account_relation_model` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `from_account` INTEGER, `to_account` INTEGER, `transaction_count` INTEGER NOT NULL, `created_at` INTEGER, FOREIGN KEY(`to_account`) REFERENCES `account_model_table`(`id`) ON UPDATE NO ACTION ON DELETE NO ACTION , FOREIGN KEY(`from_account`) REFERENCES `account_model_table`(`id`) ON UPDATE NO ACTION ON DELETE NO ACTION )"

    const-string v3, "CREATE INDEX IF NOT EXISTS `index_account_relation_model_from_account` ON `account_relation_model` (`from_account`)"

    .line 3
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_account_relation_model_to_account` ON `account_relation_model` (`to_account`)"

    const-string v1, "CREATE TABLE IF NOT EXISTS `account_mapping_rule_model` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `to_account` INTEGER, `from_account` INTEGER, `from_address` TEXT, `to_address` TEXT, `created_at` INTEGER, FOREIGN KEY(`to_account`) REFERENCES `account_model_table`(`id`) ON UPDATE NO ACTION ON DELETE NO ACTION , FOREIGN KEY(`from_account`) REFERENCES `account_model_table`(`id`) ON UPDATE NO ACTION ON DELETE NO ACTION )"

    const-string v2, "CREATE INDEX IF NOT EXISTS `index_account_mapping_rule_model_from_address_to_address` ON `account_mapping_rule_model` (`from_address`, `to_address`)"

    const-string v3, "CREATE INDEX IF NOT EXISTS `index_account_mapping_rule_model_from_account` ON `account_mapping_rule_model` (`from_account`)"

    .line 4
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_account_mapping_rule_model_to_account` ON `account_mapping_rule_model` (`to_account`)"

    const-string v1, "CREATE TABLE IF NOT EXISTS `link_prune_table` (`parent_id` INTEGER NOT NULL, `child_id` INTEGER NOT NULL, `link_type` TEXT NOT NULL, `created_at` INTEGER NOT NULL, PRIMARY KEY(`parent_id`, `child_id`), FOREIGN KEY(`parent_id`) REFERENCES `parsed_data_object_table`(`messageID`) ON UPDATE NO ACTION ON DELETE NO ACTION , FOREIGN KEY(`child_id`) REFERENCES `parsed_data_object_table`(`messageID`) ON UPDATE NO ACTION ON DELETE NO ACTION )"

    const-string v2, "CREATE INDEX IF NOT EXISTS `index_link_prune_table_parent_id` ON `link_prune_table` (`parent_id`)"

    const-string v3, "CREATE INDEX IF NOT EXISTS `index_link_prune_table_child_id` ON `link_prune_table` (`child_id`)"

    .line 5
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `states_table` (`owner` TEXT NOT NULL, `last_updated_at` INTEGER NOT NULL, `last_updated_data` TEXT, `created_at` INTEGER NOT NULL, PRIMARY KEY(`owner`))"

    const-string v1, "CREATE TABLE IF NOT EXISTS `analytics_events` (`feature` TEXT NOT NULL, `event_category` TEXT NOT NULL, `event_info` TEXT NOT NULL, `context` TEXT NOT NULL, `action_type` TEXT NOT NULL, `action_info` TEXT NOT NULL, `event_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `created_at` INTEGER NOT NULL, `consumed` INTEGER NOT NULL)"

    const-string v2, "CREATE TABLE IF NOT EXISTS `analytics_property_maps` (`parent_event_id` INTEGER NOT NULL, `key` TEXT NOT NULL, `value` TEXT NOT NULL, `property_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `created_at` INTEGER NOT NULL, FOREIGN KEY(`parent_event_id`) REFERENCES `analytics_events`(`event_id`) ON UPDATE NO ACTION ON DELETE NO ACTION )"

    const-string v3, "CREATE INDEX IF NOT EXISTS `index_analytics_property_maps_parent_event_id_event_id` ON `analytics_property_maps` (`parent_event_id`)"

    .line 6
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `insights_reminders` (`uniqueRefId` TEXT NOT NULL, `vendorName` TEXT NOT NULL, `due_date` INTEGER NOT NULL, `generated_date` INTEGER NOT NULL, `image_url` TEXT, `times_notified` INTEGER NOT NULL, `is_dismissed` INTEGER NOT NULL, `category` TEXT NOT NULL, `meta` TEXT, `created_at` INTEGER NOT NULL, `is_notification_pending` INTEGER NOT NULL, PRIMARY KEY(`uniqueRefId`))"

    const-string v1, "CREATE INDEX IF NOT EXISTS `index_insights_reminders_uniqueRefId` ON `insights_reminders` (`uniqueRefId`)"

    const-string v2, "CREATE INDEX IF NOT EXISTS `index_insights_reminders_vendorName` ON `insights_reminders` (`vendorName`)"

    const-string v3, "CREATE INDEX IF NOT EXISTS `index_insights_reminders_category` ON `insights_reminders` (`category`)"

    .line 7
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `action_state` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `message_id` INTEGER NOT NULL, `domain` TEXT NOT NULL, `state` INTEGER NOT NULL, `origin` TEXT NOT NULL, `created_at` INTEGER NOT NULL, `last_updated_at` INTEGER NOT NULL, `extra` TEXT NOT NULL)"

    const-string v1, "CREATE UNIQUE INDEX IF NOT EXISTS `index_action_state_message_id_origin` ON `action_state` (`message_id`, `origin`)"

    const-string v2, "CREATE TABLE IF NOT EXISTS `categorizer_probability` (`word` TEXT NOT NULL, `probHam` REAL, `probSpam` REAL, `tfHam` REAL, `tfSpam` REAL, `idfHam` REAL, `idfSpam` REAL, PRIMARY KEY(`word`))"

    const-string v3, "CREATE VIRTUAL TABLE IF NOT EXISTS `sms_message_fts` USING FTS4(`message` TEXT NOT NULL, `address` TEXT NOT NULL, content=`sms_backup_table`)"

    .line 8
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_sms_message_fts_BEFORE_UPDATE BEFORE UPDATE ON `sms_backup_table` BEGIN DELETE FROM `sms_message_fts` WHERE `docid`=OLD.`rowid`; END"

    const-string v1, "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_sms_message_fts_BEFORE_DELETE BEFORE DELETE ON `sms_backup_table` BEGIN DELETE FROM `sms_message_fts` WHERE `docid`=OLD.`rowid`; END"

    const-string v2, "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_sms_message_fts_AFTER_UPDATE AFTER UPDATE ON `sms_backup_table` BEGIN INSERT INTO `sms_message_fts`(`docid`, `message`, `address`) VALUES (NEW.`rowid`, NEW.`message`, NEW.`address`); END"

    const-string v3, "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_sms_message_fts_AFTER_INSERT AFTER INSERT ON `sms_backup_table` BEGIN INSERT INTO `sms_message_fts`(`docid`, `message`, `address`) VALUES (NEW.`rowid`, NEW.`message`, NEW.`address`); END"

    .line 9
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `reclassified_message` (`message_body` TEXT NOT NULL, `from_category` TEXT NOT NULL, `to_category` TEXT NOT NULL, `model_version` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `created_at` INTEGER NOT NULL)"

    const-string v1, "CREATE VIRTUAL TABLE IF NOT EXISTS `pdo_fts` USING FTS4(`d` TEXT NOT NULL, `k` TEXT NOT NULL, `p` TEXT NOT NULL, `c` TEXT NOT NULL, `o` TEXT NOT NULL, `f` TEXT NOT NULL, `g` TEXT NOT NULL, `s` TEXT NOT NULL, `val1` TEXT NOT NULL, `val2` TEXT NOT NULL, `val3` TEXT NOT NULL, `val4` TEXT NOT NULL, `val5` TEXT NOT NULL, `address` TEXT NOT NULL, `dff_val1` TEXT NOT NULL, `dff_val2` TEXT NOT NULL, `dff_val3` TEXT NOT NULL, `dff_val4` TEXT NOT NULL, `dff_val5` TEXT NOT NULL, content=`parsed_data_object_table`)"

    const-string v2, "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_pdo_fts_BEFORE_UPDATE BEFORE UPDATE ON `parsed_data_object_table` BEGIN DELETE FROM `pdo_fts` WHERE `docid`=OLD.`rowid`; END"

    const-string v3, "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_pdo_fts_BEFORE_DELETE BEFORE DELETE ON `parsed_data_object_table` BEGIN DELETE FROM `pdo_fts` WHERE `docid`=OLD.`rowid`; END"

    .line 10
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_pdo_fts_AFTER_UPDATE AFTER UPDATE ON `parsed_data_object_table` BEGIN INSERT INTO `pdo_fts`(`docid`, `d`, `k`, `p`, `c`, `o`, `f`, `g`, `s`, `val1`, `val2`, `val3`, `val4`, `val5`, `address`, `dff_val1`, `dff_val2`, `dff_val3`, `dff_val4`, `dff_val5`) VALUES (NEW.`rowid`, NEW.`d`, NEW.`k`, NEW.`p`, NEW.`c`, NEW.`o`, NEW.`f`, NEW.`g`, NEW.`s`, NEW.`val1`, NEW.`val2`, NEW.`val3`, NEW.`val4`, NEW.`val5`, NEW.`address`, NEW.`dff_val1`, NEW.`dff_val2`, NEW.`dff_val3`, NEW.`dff_val4`, NEW.`dff_val5`); END"

    const-string v1, "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_pdo_fts_AFTER_INSERT AFTER INSERT ON `parsed_data_object_table` BEGIN INSERT INTO `pdo_fts`(`docid`, `d`, `k`, `p`, `c`, `o`, `f`, `g`, `s`, `val1`, `val2`, `val3`, `val4`, `val5`, `address`, `dff_val1`, `dff_val2`, `dff_val3`, `dff_val4`, `dff_val5`) VALUES (NEW.`rowid`, NEW.`d`, NEW.`k`, NEW.`p`, NEW.`c`, NEW.`o`, NEW.`f`, NEW.`g`, NEW.`s`, NEW.`val1`, NEW.`val2`, NEW.`val3`, NEW.`val4`, NEW.`val5`, NEW.`address`, NEW.`dff_val1`, NEW.`dff_val2`, NEW.`dff_val3`, NEW.`dff_val4`, NEW.`dff_val5`); END"

    const-string v2, "CREATE TABLE IF NOT EXISTS `feedback` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `created_at` INTEGER NOT NULL, `feedback_type` TEXT NOT NULL, `feedback_value` TEXT NOT NULL, `entity_id` INTEGER NOT NULL, `sender` TEXT, `body` TEXT NOT NULL, `parser_output` TEXT, `categorizer_output` TEXT, `parent_id` INTEGER NOT NULL)"

    const-string v3, "CREATE INDEX IF NOT EXISTS `index_entity_id` ON `feedback` (`entity_id`)"

    .line 11
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `sender_info` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `sender` TEXT NOT NULL, `sender_name` TEXT, `sender_type` TEXT, `smart_features_status` TEXT, `grammars_enabled` TEXT NOT NULL, `source_type` TEXT NOT NULL, `country_code` TEXT)"

    const-string v1, "CREATE INDEX IF NOT EXISTS `index_sender` ON `sender_info` (`sender`)"

    const-string v2, "CREATE TABLE IF NOT EXISTS `aggregate_analytics_events` (`feature` TEXT NOT NULL, `event_category` TEXT NOT NULL, `event_info` TEXT NOT NULL, `context` TEXT NOT NULL, `action_type` TEXT NOT NULL, `action_info` TEXT NOT NULL, `event_date` INTEGER NOT NULL, `counts` INTEGER NOT NULL, `agg_event_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `created_at` INTEGER NOT NULL, `consumed` INTEGER NOT NULL)"

    const-string v3, "CREATE TABLE IF NOT EXISTS `sender_resolution_table` (`sender` TEXT NOT NULL, `sender_name` TEXT, `sender_icon_uri` TEXT, `created_at` INTEGER NOT NULL, `last_updated_at` INTEGER NOT NULL, PRIMARY KEY(`sender`))"

    .line 12
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_sender_name` ON `sender_resolution_table` (`sender_name`)"

    .line 13
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 14
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'bdd3ef8f4b0524f2c4c637b896d776da\')"

    .line 15
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    return-void
.end method

.method public dropAllTables(Ln3/e0/a/b;)V
    .locals 4

    const-string v0, "DROP TABLE IF EXISTS `parsed_data_object_table`"

    const-string v1, "DROP TABLE IF EXISTS `sms_backup_table`"

    const-string v2, "DROP TABLE IF EXISTS `account_model_table`"

    const-string v3, "DROP TABLE IF EXISTS `account_relation_model`"

    .line 1
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `account_mapping_rule_model`"

    const-string v1, "DROP TABLE IF EXISTS `link_prune_table`"

    const-string v2, "DROP TABLE IF EXISTS `states_table`"

    const-string v3, "DROP TABLE IF EXISTS `analytics_events`"

    .line 2
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `analytics_property_maps`"

    const-string v1, "DROP TABLE IF EXISTS `insights_reminders`"

    const-string v2, "DROP TABLE IF EXISTS `action_state`"

    const-string v3, "DROP TABLE IF EXISTS `categorizer_probability`"

    .line 3
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `sms_message_fts`"

    const-string v1, "DROP TABLE IF EXISTS `reclassified_message`"

    const-string v2, "DROP TABLE IF EXISTS `pdo_fts`"

    const-string v3, "DROP TABLE IF EXISTS `feedback`"

    .line 4
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `sender_info`"

    .line 5
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `aggregate_analytics_events`"

    .line 6
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `sender_resolution_table`"

    .line 7
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl$a;->a:Lcom/truecaller/insights/database/InsightsDb_Impl;

    .line 9
    iget-object v0, v0, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 11
    iget-object v2, p0, Lcom/truecaller/insights/database/InsightsDb_Impl$a;->a:Lcom/truecaller/insights/database/InsightsDb_Impl;

    .line 12
    iget-object v2, v2, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    .line 13
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/c0/q$b;

    invoke-virtual {v2, p1}, Ln3/c0/q$b;->b(Ln3/e0/a/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreate(Ln3/e0/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl$a;->a:Lcom/truecaller/insights/database/InsightsDb_Impl;

    .line 2
    iget-object v0, v0, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/truecaller/insights/database/InsightsDb_Impl$a;->a:Lcom/truecaller/insights/database/InsightsDb_Impl;

    .line 5
    iget-object v2, v2, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    .line 6
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/c0/q$b;

    invoke-virtual {v2, p1}, Ln3/c0/q$b;->a(Ln3/e0/a/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOpen(Ln3/e0/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl$a;->a:Lcom/truecaller/insights/database/InsightsDb_Impl;

    .line 2
    iput-object p1, v0, Ln3/c0/q;->mDatabase:Ln3/e0/a/b;

    const-string v0, "PRAGMA foreign_keys = ON"

    .line 3
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl$a;->a:Lcom/truecaller/insights/database/InsightsDb_Impl;

    .line 5
    invoke-virtual {v0, p1}, Ln3/c0/q;->internalInitInvalidationTracker(Ln3/e0/a/b;)V

    .line 6
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl$a;->a:Lcom/truecaller/insights/database/InsightsDb_Impl;

    .line 7
    iget-object v0, v0, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    iget-object v2, p0, Lcom/truecaller/insights/database/InsightsDb_Impl$a;->a:Lcom/truecaller/insights/database/InsightsDb_Impl;

    .line 10
    iget-object v2, v2, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    .line 11
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/c0/q$b;

    invoke-virtual {v2, p1}, Ln3/c0/q$b;->c(Ln3/e0/a/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPostMigrate(Ln3/e0/a/b;)V
    .locals 4

    const-string v0, "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_sms_message_fts_BEFORE_UPDATE BEFORE UPDATE ON `sms_backup_table` BEGIN DELETE FROM `sms_message_fts` WHERE `docid`=OLD.`rowid`; END"

    const-string v1, "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_sms_message_fts_BEFORE_DELETE BEFORE DELETE ON `sms_backup_table` BEGIN DELETE FROM `sms_message_fts` WHERE `docid`=OLD.`rowid`; END"

    const-string v2, "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_sms_message_fts_AFTER_UPDATE AFTER UPDATE ON `sms_backup_table` BEGIN INSERT INTO `sms_message_fts`(`docid`, `message`, `address`) VALUES (NEW.`rowid`, NEW.`message`, NEW.`address`); END"

    const-string v3, "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_sms_message_fts_AFTER_INSERT AFTER INSERT ON `sms_backup_table` BEGIN INSERT INTO `sms_message_fts`(`docid`, `message`, `address`) VALUES (NEW.`rowid`, NEW.`message`, NEW.`address`); END"

    .line 1
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_pdo_fts_BEFORE_UPDATE BEFORE UPDATE ON `parsed_data_object_table` BEGIN DELETE FROM `pdo_fts` WHERE `docid`=OLD.`rowid`; END"

    const-string v1, "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_pdo_fts_BEFORE_DELETE BEFORE DELETE ON `parsed_data_object_table` BEGIN DELETE FROM `pdo_fts` WHERE `docid`=OLD.`rowid`; END"

    const-string v2, "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_pdo_fts_AFTER_UPDATE AFTER UPDATE ON `parsed_data_object_table` BEGIN INSERT INTO `pdo_fts`(`docid`, `d`, `k`, `p`, `c`, `o`, `f`, `g`, `s`, `val1`, `val2`, `val3`, `val4`, `val5`, `address`, `dff_val1`, `dff_val2`, `dff_val3`, `dff_val4`, `dff_val5`) VALUES (NEW.`rowid`, NEW.`d`, NEW.`k`, NEW.`p`, NEW.`c`, NEW.`o`, NEW.`f`, NEW.`g`, NEW.`s`, NEW.`val1`, NEW.`val2`, NEW.`val3`, NEW.`val4`, NEW.`val5`, NEW.`address`, NEW.`dff_val1`, NEW.`dff_val2`, NEW.`dff_val3`, NEW.`dff_val4`, NEW.`dff_val5`); END"

    const-string v3, "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_pdo_fts_AFTER_INSERT AFTER INSERT ON `parsed_data_object_table` BEGIN INSERT INTO `pdo_fts`(`docid`, `d`, `k`, `p`, `c`, `o`, `f`, `g`, `s`, `val1`, `val2`, `val3`, `val4`, `val5`, `address`, `dff_val1`, `dff_val2`, `dff_val3`, `dff_val4`, `dff_val5`) VALUES (NEW.`rowid`, NEW.`d`, NEW.`k`, NEW.`p`, NEW.`c`, NEW.`o`, NEW.`f`, NEW.`g`, NEW.`s`, NEW.`val1`, NEW.`val2`, NEW.`val3`, NEW.`val4`, NEW.`val5`, NEW.`address`, NEW.`dff_val1`, NEW.`dff_val2`, NEW.`dff_val3`, NEW.`dff_val4`, NEW.`dff_val5`); END"

    .line 2
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPreMigrate(Ln3/e0/a/b;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ln3/c0/h0/b;->a(Ln3/e0/a/b;)V

    return-void
.end method

.method public onValidateSchema(Ln3/e0/a/b;)Ln3/c0/x$b;
    .locals 56

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v4, "messageID"

    const-string v5, "INTEGER"

    const/4 v6, 0x1

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v2

    move v7, v10

    invoke-direct/range {v3 .. v9}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "messageID"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v8, "d"

    const-string v9, "TEXT"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "d"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v6, "k"

    const-string v7, "TEXT"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "k"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v7, "p"

    const-string v8, "TEXT"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "p"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v8, "c"

    const-string v9, "TEXT"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "c"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v9, "o"

    const-string v10, "TEXT"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "o"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v10, "f"

    const-string v11, "TEXT"

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "f"

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v11, "g"

    const-string v12, "TEXT"

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "g"

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v12, "s"

    const-string v13, "TEXT"

    const/4 v14, 0x1

    const/16 v18, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v11, v2

    move/from16 v15, v18

    invoke-direct/range {v11 .. v17}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v11, "s"

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v16, "account_model_id"

    const-string v17, "INTEGER"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object v15, v2

    invoke-direct/range {v15 .. v21}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "account_model_id"

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v14, "val1"

    const-string v15, "TEXT"

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object v13, v2

    invoke-direct/range {v13 .. v19}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v13, "val1"

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v15, "val2"

    const-string v16, "TEXT"

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v14, v2

    invoke-direct/range {v14 .. v20}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v14, "val2"

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v16, "val3"

    const-string v17, "TEXT"

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v2

    invoke-direct/range {v15 .. v21}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v15, "val3"

    invoke-virtual {v1, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v17, "val4"

    const-string v18, "TEXT"

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v16, v13

    const-string v13, "val4"

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v18, "val5"

    const-string v19, "TEXT"

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v23}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v17, v13

    const-string v13, "val5"

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v19, "datetime"

    const-string v20, "TEXT"

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v24}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v18, v13

    const-string v13, "datetime"

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v20, "address"

    const-string v21, "TEXT"

    const/4 v13, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x1

    move-object/from16 v19, v2

    move/from16 v22, v13

    move/from16 v23, v26

    move-object/from16 v24, v27

    move/from16 v25, v28

    invoke-direct/range {v19 .. v25}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v13, "address"

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v23, "date"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    const/16 v19, 0x1

    move/from16 v25, v19

    invoke-direct/range {v22 .. v28}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v19, v14

    const-string v14, "date"

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v21, "msg_date"

    const-string v22, "INTEGER"

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v20, v15

    const-string v15, "msg_date"

    invoke-virtual {v1, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v22, "dff_val1"

    const-string v23, "TEXT"

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v27}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v21, v8

    const-string v8, "dff_val1"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v23, "dff_val2"

    const-string v24, "TEXT"

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v22, v8

    const-string v8, "dff_val2"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v24, "dff_val3"

    const-string v25, "TEXT"

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v23, v8

    const-string v8, "dff_val3"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v25, "dff_val4"

    const-string v26, "TEXT"

    const/16 v27, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x1

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v24, v8

    const-string v8, "dff_val4"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v26, "dff_val5"

    const-string v27, "TEXT"

    const/4 v8, 0x1

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x1

    move-object/from16 v25, v2

    move/from16 v28, v8

    move/from16 v29, v35

    move-object/from16 v30, v36

    move/from16 v31, v37

    invoke-direct/range {v25 .. v31}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "dff_val5"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v29, "active"

    const-string v30, "INTEGER"

    move-object/from16 v28, v2

    const/4 v8, 0x1

    move/from16 v31, v8

    move/from16 v32, v35

    move-object/from16 v33, v36

    move/from16 v34, v37

    invoke-direct/range {v28 .. v34}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "active"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v29, "state"

    const-string v30, "TEXT"

    move-object/from16 v28, v2

    const/4 v8, 0x1

    move/from16 v31, v8

    invoke-direct/range {v28 .. v34}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "state"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v29, "synthetic_record_id"

    const-string v30, "INTEGER"

    const/16 v31, 0x0

    move-object/from16 v28, v2

    invoke-direct/range {v28 .. v34}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "synthetic_record_id"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v29, "deleted"

    const-string v30, "INTEGER"

    const/4 v8, 0x1

    move-object/from16 v28, v2

    move/from16 v31, v8

    invoke-direct/range {v28 .. v34}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "deleted"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v29, "created_at"

    const-string v30, "INTEGER"

    move-object/from16 v28, v2

    const/4 v8, 0x1

    move/from16 v31, v8

    invoke-direct/range {v28 .. v34}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "created_at"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v29, "spam_category"

    const-string v30, "INTEGER"

    move-object/from16 v28, v2

    const/16 v25, 0x1

    move/from16 v31, v25

    invoke-direct/range {v28 .. v34}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v25, v9

    const-string v9, "spam_category"

    move-object/from16 v26, v10

    const/4 v10, 0x1

    invoke-static {v1, v9, v2, v10}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v2

    .line 32
    new-instance v9, Ln3/c0/h0/e$b;

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v31

    const-string v10, "id"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v32

    const-string v28, "account_model_table"

    const-string v29, "NO ACTION"

    const-string v30, "NO ACTION"

    move-object/from16 v27, v9

    invoke-direct/range {v27 .. v32}, Ln3/c0/h0/e$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v9, Ljava/util/HashSet;

    move-object/from16 v27, v11

    const/4 v11, 0x4

    invoke-direct {v9, v11}, Ljava/util/HashSet;-><init>(I)V

    .line 34
    new-instance v11, Ln3/c0/h0/e$d;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v28

    move-object/from16 v29, v7

    invoke-static/range {v28 .. v28}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v28, v6

    const-string v6, "index_parsed_data_object_table_d"

    move-object/from16 v30, v5

    const/4 v5, 0x0

    invoke-direct {v11, v6, v5, v7}, Ln3/c0/h0/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v9, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v6, Ln3/c0/h0/e$d;

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const-string v11, "index_parsed_data_object_table_account_model_id"

    invoke-direct {v6, v11, v5, v7}, Ln3/c0/h0/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v9, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v6, Ln3/c0/h0/e$d;

    const-string v7, "synthetic_record_id"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const-string v11, "index_parsed_data_object_table_synthetic_record_id"

    invoke-direct {v6, v11, v5, v7}, Ln3/c0/h0/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v9, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v6, Ln3/c0/h0/e$d;

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const-string v11, "index_parsed_data_object_table_msg_date"

    invoke-direct {v6, v11, v5, v7}, Ln3/c0/h0/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v9, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v6, Ln3/c0/h0/e;

    const-string v7, "parsed_data_object_table"

    invoke-direct {v6, v7, v1, v2, v9}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "parsed_data_object_table"

    .line 39
    invoke-static {v0, v1}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 40
    invoke-virtual {v6, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v7, "\n Found:\n"

    if-nez v2, :cond_0

    .line 41
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "parsed_data_object_table(com.truecaller.insights.models.pdo.ParsedDataObject).\n Expected:\n"

    invoke-static {v2, v6, v7, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 42
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 43
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v6, 0x1

    const/16 v35, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/16 v34, 0x1

    const/4 v12, 0x0

    const/4 v15, 0x1

    const-string v32, "messageID"

    const-string v33, "INTEGER"

    move-object/from16 v31, v2

    move-object/from16 v36, v12

    move/from16 v37, v15

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v43, 0x1

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x1

    const-string v37, "address"

    const-string v38, "TEXT"

    move-object/from16 v36, v2

    move/from16 v39, v43

    move/from16 v40, v45

    move-object/from16 v41, v46

    move/from16 v42, v47

    invoke-direct/range {v36 .. v42}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v55, 0x0

    const/16 v38, 0x1

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x1

    const-string v49, "message"

    const-string v50, "TEXT"

    move-object/from16 v48, v2

    move/from16 v51, v38

    move/from16 v52, v39

    move-object/from16 v53, v40

    move/from16 v54, v41

    invoke-direct/range {v48 .. v54}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "message"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v32, "date"

    const-string v33, "INTEGER"

    move-object/from16 v31, v2

    move/from16 v34, v43

    move/from16 v35, v45

    move-object/from16 v36, v46

    move/from16 v37, v47

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v32, "transport"

    const-string v33, "INTEGER"

    move-object/from16 v31, v2

    move/from16 v34, v38

    move/from16 v35, v39

    move-object/from16 v36, v40

    move/from16 v37, v41

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "transport"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v32, "parseFailed"

    const-string v33, "INTEGER"

    move-object/from16 v31, v2

    move/from16 v34, v43

    move/from16 v35, v45

    move-object/from16 v36, v46

    move/from16 v37, v47

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "parseFailed"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v32, "errorMessage"

    const-string v33, "TEXT"

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "errorMessage"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v32, "retryCount"

    const-string v33, "INTEGER"

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "retryCount"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v32, "deleted"

    const-string v33, "INTEGER"

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "deleted"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v32, "created_at"

    const-string v33, "INTEGER"

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v37, "updateCategory"

    const-string v38, "TEXT"

    move-object/from16 v36, v2

    move/from16 v40, v44

    move-object/from16 v41, v12

    move/from16 v42, v15

    invoke-direct/range {v36 .. v42}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "updateCategory"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v5, 0x1

    const-string v37, "classified_by"

    const-string v38, "INTEGER"

    move-object/from16 v36, v2

    move/from16 v39, v5

    invoke-direct/range {v36 .. v42}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v14, "classified_by"

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v37, "conversationId"

    const-string v38, "INTEGER"

    move-object/from16 v36, v2

    invoke-direct/range {v36 .. v42}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v14, "conversationId"

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v37, "spam_category"

    const-string v38, "INTEGER"

    move-object/from16 v36, v2

    invoke-direct/range {v36 .. v42}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v14, "spam_category"

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v37, "confidence_score"

    const-string v38, "REAL"

    move-object/from16 v36, v2

    invoke-direct/range {v36 .. v42}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "confidence_score"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v32, "no_of_words"

    const-string v33, "INTEGER"

    move-object/from16 v31, v2

    move/from16 v34, v6

    move/from16 v35, v55

    move-object/from16 v36, v9

    move/from16 v37, v11

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "no_of_words"

    const/4 v6, 0x0

    invoke-static {v1, v5, v2, v6}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v2

    .line 59
    new-instance v5, Ljava/util/HashSet;

    const/4 v9, 0x1

    invoke-direct {v5, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 60
    new-instance v9, Ln3/c0/h0/e$d;

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v12, "index_sms_backup_table_address"

    invoke-direct {v9, v12, v6, v11}, Ln3/c0/h0/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v6, Ln3/c0/h0/e;

    const-string v9, "sms_backup_table"

    invoke-direct {v6, v9, v1, v2, v5}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "sms_backup_table"

    .line 62
    invoke-static {v0, v1}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 63
    invoke-virtual {v6, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 64
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "sms_backup_table(com.truecaller.insights.models.pdo.SmsBackup).\n Expected:\n"

    invoke-static {v2, v6, v7, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 65
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 66
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v35, 0x1

    const/4 v6, 0x0

    const/16 v37, 0x1

    const/16 v34, 0x1

    const-string v32, "id"

    const-string v33, "INTEGER"

    move-object/from16 v31, v2

    move-object/from16 v36, v6

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v41, 0x1

    const/16 v35, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x1

    const-string v39, "created_at"

    const-string v40, "INTEGER"

    move-object/from16 v38, v2

    invoke-direct/range {v38 .. v44}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x1

    const-string v50, "address"

    const-string v51, "TEXT"

    move-object/from16 v49, v2

    invoke-direct/range {v49 .. v55}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v9, 0x0

    const/16 v39, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x1

    const-string v37, "account_type"

    const-string v38, "TEXT"

    move-object/from16 v36, v2

    move/from16 v40, v11

    move-object/from16 v41, v12

    move/from16 v42, v14

    invoke-direct/range {v36 .. v42}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v15, "account_type"

    invoke-virtual {v1, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v37, "account_number"

    const-string v38, "TEXT"

    move-object/from16 v36, v2

    move/from16 v39, v9

    invoke-direct/range {v36 .. v42}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "account_number"

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v15, 0x1

    const/16 v31, 0x1

    const-string v41, "balance"

    const-string v42, "REAL"

    move-object/from16 v40, v2

    move/from16 v43, v31

    move/from16 v44, v11

    move-object/from16 v45, v12

    move/from16 v46, v14

    invoke-direct/range {v40 .. v46}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "balance"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v41, "active"

    const-string v42, "INTEGER"

    move-object/from16 v40, v2

    invoke-direct/range {v40 .. v46}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "active"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v41, "record_count"

    const-string v42, "INTEGER"

    move-object/from16 v40, v2

    move/from16 v43, v15

    invoke-direct/range {v40 .. v46}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "record_count"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v43, 0x0

    const-string v41, "update_stamp"

    const-string v42, "INTEGER"

    move-object/from16 v40, v2

    invoke-direct/range {v40 .. v46}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "update_stamp"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v43, 0x1

    const-string v41, "root_account"

    const-string v42, "INTEGER"

    move-object/from16 v40, v2

    invoke-direct/range {v40 .. v46}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "root_account"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v34, 0x0

    const-string v32, "normalized_name"

    const-string v33, "TEXT"

    move-object/from16 v31, v2

    move-object/from16 v36, v6

    const/4 v5, 0x1

    move/from16 v37, v5

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "normalized_name"

    const/4 v6, 0x0

    invoke-static {v1, v5, v2, v6}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v2

    .line 77
    new-instance v5, Ljava/util/HashSet;

    const/4 v11, 0x2

    invoke-direct {v5, v11}, Ljava/util/HashSet;-><init>(I)V

    .line 78
    new-instance v12, Ln3/c0/h0/e$d;

    filled-new-array {v13, v9, v10}, [Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const-string v15, "index_account_model_table_address_account_number_id"

    invoke-direct {v12, v15, v6, v14}, Ln3/c0/h0/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v5, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v12, Ln3/c0/h0/e$d;

    filled-new-array {v13, v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v14, "index_account_model_table_address_account_number"

    invoke-direct {v12, v14, v6, v9}, Ln3/c0/h0/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v5, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v6, Ln3/c0/h0/e;

    const-string v9, "account_model_table"

    invoke-direct {v6, v9, v1, v2, v5}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "account_model_table"

    .line 81
    invoke-static {v0, v1}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 82
    invoke-virtual {v6, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 83
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "account_model_table(com.truecaller.insights.models.enrichment.accounts.InsightsAccountModel).\n Expected:\n"

    invoke-static {v2, v6, v7, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 84
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 85
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v34, 0x1

    const/16 v35, 0x1

    const/16 v41, 0x0

    const/16 v42, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v32, "id"

    const-string v33, "INTEGER"

    move-object/from16 v31, v2

    move-object/from16 v36, v5

    move/from16 v37, v6

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x1

    const-string v50, "from_account"

    const-string v51, "INTEGER"

    move-object/from16 v49, v2

    invoke-direct/range {v49 .. v55}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "from_account"

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v40, 0x0

    const/4 v12, 0x0

    const-string v50, "to_account"

    const-string v51, "INTEGER"

    move-object/from16 v49, v2

    move/from16 v53, v12

    move-object/from16 v54, v5

    move/from16 v55, v6

    invoke-direct/range {v49 .. v55}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v14, "to_account"

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v52, 0x1

    const-string v50, "transaction_count"

    const-string v51, "INTEGER"

    move-object/from16 v49, v2

    invoke-direct/range {v49 .. v55}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "transaction_count"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v39, 0x0

    const-string v37, "created_at"

    const-string v38, "INTEGER"

    move-object/from16 v36, v2

    invoke-direct/range {v36 .. v42}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-static {v1, v8, v2, v11}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v2

    .line 90
    new-instance v5, Ln3/c0/h0/e$b;

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v35

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    const-string v32, "account_model_table"

    const-string v33, "NO ACTION"

    const-string v34, "NO ACTION"

    move-object/from16 v31, v5

    invoke-direct/range {v31 .. v36}, Ln3/c0/h0/e$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v5, Ln3/c0/h0/e$b;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v41

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v42

    const-string v38, "account_model_table"

    const-string v39, "NO ACTION"

    const-string v40, "NO ACTION"

    move-object/from16 v37, v5

    invoke-direct/range {v37 .. v42}, Ln3/c0/h0/e$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v11}, Ljava/util/HashSet;-><init>(I)V

    .line 93
    new-instance v6, Ln3/c0/h0/e$d;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v12, "index_account_relation_model_from_account"

    const/4 v15, 0x0

    invoke-direct {v6, v12, v15, v11}, Ln3/c0/h0/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v6, Ln3/c0/h0/e$d;

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v12, "index_account_relation_model_to_account"

    invoke-direct {v6, v12, v15, v11}, Ln3/c0/h0/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v6, Ln3/c0/h0/e;

    const-string v11, "account_relation_model"

    invoke-direct {v6, v11, v1, v2, v5}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "account_relation_model"

    .line 96
    invoke-static {v0, v1}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 97
    invoke-virtual {v6, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 98
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "account_relation_model(com.truecaller.insights.models.enrichment.accounts.InsightsAccountRelationModel).\n Expected:\n"

    invoke-static {v2, v6, v7, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 99
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 100
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v34, 0x1

    const/16 v35, 0x1

    const/16 v41, 0x0

    const/16 v42, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v32, "id"

    const-string v33, "INTEGER"

    move-object/from16 v31, v2

    move-object/from16 v36, v5

    move/from16 v37, v6

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x1

    const-string v50, "to_account"

    const-string v51, "INTEGER"

    move-object/from16 v49, v2

    invoke-direct/range {v49 .. v55}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x1

    const-string v32, "from_account"

    const-string v33, "INTEGER"

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v50, "from_address"

    const-string v51, "TEXT"

    move-object/from16 v49, v2

    move/from16 v52, v11

    move/from16 v53, v12

    move-object/from16 v54, v5

    move/from16 v55, v6

    invoke-direct/range {v49 .. v55}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v15, "from_address"

    invoke-virtual {v1, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v50, "to_address"

    const-string v51, "TEXT"

    move-object/from16 v49, v2

    invoke-direct/range {v49 .. v55}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "to_address"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v37, "created_at"

    const-string v38, "INTEGER"

    move-object/from16 v36, v2

    invoke-direct/range {v36 .. v42}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const/4 v5, 0x2

    invoke-static {v1, v8, v2, v5}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v2

    .line 106
    new-instance v5, Ln3/c0/h0/e$b;

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v35

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    const-string v32, "account_model_table"

    const-string v33, "NO ACTION"

    const-string v34, "NO ACTION"

    move-object/from16 v31, v5

    invoke-direct/range {v31 .. v36}, Ln3/c0/h0/e$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v5, Ln3/c0/h0/e$b;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v41

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v42

    const-string v38, "account_model_table"

    const-string v39, "NO ACTION"

    const-string v40, "NO ACTION"

    move-object/from16 v37, v5

    invoke-direct/range {v37 .. v42}, Ln3/c0/h0/e$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v5, Ljava/util/HashSet;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 109
    new-instance v6, Ln3/c0/h0/e$d;

    const-string v11, "from_address"

    const-string v12, "to_address"

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v12, "index_account_mapping_rule_model_from_address_to_address"

    const/4 v15, 0x0

    invoke-direct {v6, v12, v15, v11}, Ln3/c0/h0/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v6, Ln3/c0/h0/e$d;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v11, "index_account_mapping_rule_model_from_account"

    invoke-direct {v6, v11, v15, v9}, Ln3/c0/h0/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v6, Ln3/c0/h0/e$d;

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v11, "index_account_mapping_rule_model_to_account"

    invoke-direct {v6, v11, v15, v9}, Ln3/c0/h0/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v6, Ln3/c0/h0/e;

    const-string v9, "account_mapping_rule_model"

    invoke-direct {v6, v9, v1, v2, v5}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "account_mapping_rule_model"

    .line 113
    invoke-static {v0, v1}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 114
    invoke-virtual {v6, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 115
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "account_mapping_rule_model(com.truecaller.insights.models.enrichment.accounts.InsightsAccountMappingRuleModel).\n Expected:\n"

    invoke-static {v2, v6, v7, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 116
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 117
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v5, 0x1

    const/16 v35, 0x1

    const/4 v6, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v14, 0x1

    const-string v32, "parent_id"

    const-string v33, "INTEGER"

    move-object/from16 v31, v2

    move/from16 v34, v11

    move-object/from16 v36, v12

    move/from16 v37, v14

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v15, "parent_id"

    invoke-virtual {v1, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v40, 0x2

    const-string v37, "child_id"

    const-string v38, "INTEGER"

    move-object/from16 v36, v2

    move/from16 v39, v11

    move-object/from16 v41, v12

    move/from16 v42, v14

    invoke-direct/range {v36 .. v42}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "child_id"

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v35, 0x0

    const/16 v40, 0x0

    const-string v37, "link_type"

    const-string v38, "TEXT"

    move-object/from16 v36, v2

    invoke-direct/range {v36 .. v42}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v11, "link_type"

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v32, "created_at"

    const-string v33, "INTEGER"

    move-object/from16 v31, v2

    move/from16 v34, v5

    move-object/from16 v36, v6

    const/4 v5, 0x1

    move/from16 v37, v5

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const/4 v5, 0x2

    invoke-static {v1, v8, v2, v5}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v2

    .line 121
    new-instance v5, Ln3/c0/h0/e$b;

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v35

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    const-string v32, "parsed_data_object_table"

    const-string v33, "NO ACTION"

    const-string v34, "NO ACTION"

    move-object/from16 v31, v5

    invoke-direct/range {v31 .. v36}, Ln3/c0/h0/e$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v5, Ln3/c0/h0/e$b;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v41

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v42

    const-string v38, "parsed_data_object_table"

    const-string v39, "NO ACTION"

    const-string v40, "NO ACTION"

    move-object/from16 v37, v5

    invoke-direct/range {v37 .. v42}, Ln3/c0/h0/e$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v3, Ljava/util/HashSet;

    const/4 v5, 0x2

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 124
    new-instance v5, Ln3/c0/h0/e$d;

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v11, "index_link_prune_table_parent_id"

    const/4 v12, 0x0

    invoke-direct {v5, v11, v12, v6}, Ln3/c0/h0/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v5, Ln3/c0/h0/e$d;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v9, "index_link_prune_table_child_id"

    invoke-direct {v5, v9, v12, v6}, Ln3/c0/h0/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v5, Ln3/c0/h0/e;

    const-string v6, "link_prune_table"

    invoke-direct {v5, v6, v1, v2, v3}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "link_prune_table"

    .line 127
    invoke-static {v0, v1}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 128
    invoke-virtual {v5, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 129
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "link_prune_table(com.truecaller.insights.models.enrichment.linking.LinkPruneMap).\n Expected:\n"

    invoke-static {v2, v5, v7, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 130
    :cond_5
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 131
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v3, 0x1

    const/16 v35, 0x1

    const/16 v41, 0x0

    const/16 v42, 0x1

    const/16 v34, 0x1

    const/16 v48, 0x0

    const/16 v49, 0x1

    const-string v32, "owner"

    const-string v33, "TEXT"

    move-object/from16 v31, v2

    move-object/from16 v36, v48

    move/from16 v37, v49

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "owner"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v40, 0x0

    const/16 v47, 0x0

    const-string v32, "last_updated_at"

    const-string v33, "INTEGER"

    move-object/from16 v31, v2

    move/from16 v34, v3

    move/from16 v35, v47

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "last_updated_at"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v46, 0x0

    const-string v44, "last_updated_data"

    const-string v45, "TEXT"

    move-object/from16 v43, v2

    invoke-direct/range {v43 .. v49}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "last_updated_data"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v39, 0x1

    const-string v37, "created_at"

    const-string v38, "INTEGER"

    move-object/from16 v36, v2

    invoke-direct/range {v36 .. v42}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const/4 v5, 0x0

    invoke-static {v1, v8, v2, v5}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v2

    .line 135
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 136
    new-instance v5, Ln3/c0/h0/e;

    const-string v9, "states_table"

    invoke-direct {v5, v9, v1, v2, v6}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "states_table"

    .line 137
    invoke-static {v0, v1}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 138
    invoke-virtual {v5, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 139
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "states_table(com.truecaller.insights.models.states.InsightState).\n Expected:\n"

    invoke-static {v2, v5, v7, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 140
    :cond_6
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 141
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x1

    const-string v32, "feature"

    const-string v33, "TEXT"

    move-object/from16 v31, v2

    move/from16 v34, v12

    move/from16 v35, v14

    move-object/from16 v36, v38

    move/from16 v37, v39

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v11, "feature"

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v32, "event_category"

    const-string v33, "TEXT"

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v11, "event_category"

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v32, "event_info"

    const-string v33, "TEXT"

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v11, "event_info"

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v32, "context"

    const-string v33, "TEXT"

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v11, "context"

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v32, "action_type"

    const-string v33, "TEXT"

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v11, "action_type"

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v32, "action_info"

    const-string v33, "TEXT"

    move-object/from16 v31, v2

    move/from16 v35, v6

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "action_info"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v35, 0x1

    const-string v32, "event_id"

    const-string v33, "INTEGER"

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "event_id"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v35, 0x0

    const-string v32, "created_at"

    const-string v33, "INTEGER"

    move-object/from16 v31, v2

    move/from16 v34, v5

    move-object/from16 v36, v9

    const/4 v5, 0x1

    move/from16 v37, v5

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v40, 0x1

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x1

    const-string v38, "consumed"

    const-string v39, "INTEGER"

    move-object/from16 v37, v2

    invoke-direct/range {v37 .. v43}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "consumed"

    const/4 v6, 0x0

    invoke-static {v1, v5, v2, v6}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v2

    .line 150
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 151
    new-instance v6, Ln3/c0/h0/e;

    const-string v9, "analytics_events"

    invoke-direct {v6, v9, v1, v2, v5}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "analytics_events"

    .line 152
    invoke-static {v0, v1}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 153
    invoke-virtual {v6, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 154
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "analytics_events(com.truecaller.insights.models.analytics.SimpleAnalyticsModel).\n Expected:\n"

    invoke-static {v2, v6, v7, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 155
    :cond_7
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 156
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x1

    const-string v32, "parent_event_id"

    const-string v33, "INTEGER"

    move-object/from16 v31, v2

    move/from16 v34, v12

    move/from16 v35, v14

    move-object/from16 v36, v38

    move/from16 v37, v39

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v11, "parent_event_id"

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v32, "key"

    const-string v33, "TEXT"

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v14, "key"

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v32, "value"

    const-string v33, "TEXT"

    move-object/from16 v31, v2

    move/from16 v35, v6

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "value"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v35, 0x1

    const-string v32, "property_id"

    const-string v33, "INTEGER"

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "property_id"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v35, 0x0

    const-string v32, "created_at"

    const-string v33, "INTEGER"

    move-object/from16 v31, v2

    move/from16 v34, v5

    move-object/from16 v36, v9

    const/4 v5, 0x1

    move/from16 v37, v5

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const/4 v5, 0x1

    invoke-static {v1, v8, v2, v5}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v2

    .line 161
    new-instance v5, Ln3/c0/h0/e$b;

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v35

    const-string v6, "event_id"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    const-string v32, "analytics_events"

    const-string v33, "NO ACTION"

    const-string v34, "NO ACTION"

    move-object/from16 v31, v5

    invoke-direct/range {v31 .. v36}, Ln3/c0/h0/e$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v5, Ljava/util/HashSet;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 163
    new-instance v6, Ln3/c0/h0/e$d;

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v11, "index_analytics_property_maps_parent_event_id_event_id"

    const/4 v12, 0x0

    invoke-direct {v6, v11, v12, v9}, Ln3/c0/h0/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v6, Ln3/c0/h0/e;

    const-string v9, "analytics_property_maps"

    invoke-direct {v6, v9, v1, v2, v5}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "analytics_property_maps"

    .line 165
    invoke-static {v0, v1}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 166
    invoke-virtual {v6, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 167
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "analytics_property_maps(com.truecaller.insights.models.analytics.AnalyticsPropertyMapsModel).\n Expected:\n"

    invoke-static {v2, v6, v7, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 168
    :cond_8
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 169
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v5, 0x1

    const/16 v35, 0x1

    const/16 v41, 0x0

    const/16 v42, 0x1

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x1

    const-string v32, "uniqueRefId"

    const-string v33, "TEXT"

    move-object/from16 v31, v2

    move/from16 v34, v6

    move-object/from16 v36, v9

    move/from16 v37, v11

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "uniqueRefId"

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v40, 0x0

    const/4 v12, 0x0

    const-string v44, "vendorName"

    const-string v45, "TEXT"

    move-object/from16 v43, v2

    move/from16 v46, v6

    move/from16 v47, v12

    move-object/from16 v48, v9

    move/from16 v49, v11

    invoke-direct/range {v43 .. v49}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v14, "vendorName"

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v44, "due_date"

    const-string v45, "INTEGER"

    move-object/from16 v43, v2

    invoke-direct/range {v43 .. v49}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "due_date"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v32, "generated_date"

    const-string v33, "INTEGER"

    move-object/from16 v31, v2

    move/from16 v34, v5

    move/from16 v35, v12

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "generated_date"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v46, 0x0

    const-string v44, "image_url"

    const-string v45, "TEXT"

    move-object/from16 v43, v2

    invoke-direct/range {v43 .. v49}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "image_url"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v44, "times_notified"

    const-string v45, "INTEGER"

    move-object/from16 v43, v2

    move/from16 v46, v6

    invoke-direct/range {v43 .. v49}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v14, "times_notified"

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v44, "is_dismissed"

    const-string v45, "INTEGER"

    move-object/from16 v43, v2

    invoke-direct/range {v43 .. v49}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "is_dismissed"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v44, "category"

    const-string v45, "TEXT"

    move-object/from16 v43, v2

    move/from16 v46, v5

    invoke-direct/range {v43 .. v49}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "category"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v46, 0x0

    const-string v44, "meta"

    const-string v45, "TEXT"

    move-object/from16 v43, v2

    invoke-direct/range {v43 .. v49}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "meta"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v39, 0x1

    const-string v37, "created_at"

    const-string v38, "INTEGER"

    move-object/from16 v36, v2

    invoke-direct/range {v36 .. v42}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v46, 0x1

    const-string v44, "is_notification_pending"

    const-string v45, "INTEGER"

    move-object/from16 v43, v2

    invoke-direct/range {v43 .. v49}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "is_notification_pending"

    const/4 v6, 0x0

    invoke-static {v1, v5, v2, v6}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v2

    .line 180
    new-instance v5, Ljava/util/HashSet;

    const/4 v9, 0x3

    invoke-direct {v5, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 181
    new-instance v9, Ln3/c0/h0/e$d;

    const-string v11, "uniqueRefId"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v12, "index_insights_reminders_uniqueRefId"

    invoke-direct {v9, v12, v6, v11}, Ln3/c0/h0/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v9, Ln3/c0/h0/e$d;

    const-string v11, "vendorName"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v12, "index_insights_reminders_vendorName"

    invoke-direct {v9, v12, v6, v11}, Ln3/c0/h0/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v9, Ln3/c0/h0/e$d;

    const-string v11, "category"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v12, "index_insights_reminders_category"

    invoke-direct {v9, v12, v6, v11}, Ln3/c0/h0/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v6, Ln3/c0/h0/e;

    const-string v9, "insights_reminders"

    invoke-direct {v6, v9, v1, v2, v5}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "insights_reminders"

    .line 185
    invoke-static {v0, v1}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 186
    invoke-virtual {v6, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 187
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "insights_reminders(com.truecaller.insights.models.InsightsReminder).\n Expected:\n"

    invoke-static {v2, v6, v7, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 188
    :cond_9
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 189
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v5, 0x1

    const/16 v35, 0x1

    const/16 v39, 0x1

    const/16 v41, 0x0

    const/16 v42, 0x1

    const-string v32, "id"

    const-string v33, "INTEGER"

    move-object/from16 v31, v2

    move/from16 v34, v39

    move-object/from16 v36, v41

    move/from16 v37, v42

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v40, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v38, 0x1

    const-string v44, "message_id"

    const-string v45, "INTEGER"

    move-object/from16 v43, v2

    move/from16 v46, v11

    move/from16 v47, v12

    move-object/from16 v48, v14

    move/from16 v49, v38

    invoke-direct/range {v43 .. v49}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "message_id"

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v9, 0x0

    const-string v32, "domain"

    const-string v33, "TEXT"

    move-object/from16 v31, v2

    move/from16 v34, v11

    move/from16 v35, v12

    move-object/from16 v36, v14

    move/from16 v37, v38

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "domain"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v32, "state"

    const-string v33, "INTEGER"

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "state"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v32, "origin"

    const-string v33, "TEXT"

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "origin"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v32, "created_at"

    const-string v33, "INTEGER"

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v37, "last_updated_at"

    const-string v38, "INTEGER"

    move-object/from16 v36, v2

    invoke-direct/range {v36 .. v42}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v32, "extra"

    const-string v33, "TEXT"

    move-object/from16 v31, v2

    move/from16 v34, v5

    move/from16 v35, v9

    const/4 v5, 0x0

    move-object/from16 v36, v5

    const/4 v5, 0x1

    move/from16 v37, v5

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "extra"

    const/4 v6, 0x0

    invoke-static {v1, v5, v2, v6}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v2

    .line 197
    new-instance v5, Ljava/util/HashSet;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 198
    new-instance v9, Ln3/c0/h0/e$d;

    const-string v11, "message_id"

    const-string v12, "origin"

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v12, "index_action_state_message_id_origin"

    invoke-direct {v9, v12, v6, v11}, Ln3/c0/h0/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v6, Ln3/c0/h0/e;

    const-string v9, "action_state"

    invoke-direct {v6, v9, v1, v2, v5}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "action_state"

    .line 200
    invoke-static {v0, v1}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 201
    invoke-virtual {v6, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 202
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "action_state(com.truecaller.insights.models.smartcards.ActionStateEntity).\n Expected:\n"

    invoke-static {v2, v6, v7, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 203
    :cond_a
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 204
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v34, 0x1

    const/16 v35, 0x1

    const/16 v41, 0x0

    const/16 v42, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v32, "word"

    const-string v33, "TEXT"

    move-object/from16 v31, v2

    move-object/from16 v36, v5

    move/from16 v37, v6

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "word"

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v44, "probHam"

    const-string v45, "REAL"

    move-object/from16 v43, v2

    move/from16 v46, v9

    move/from16 v47, v11

    move-object/from16 v48, v5

    move/from16 v49, v6

    invoke-direct/range {v43 .. v49}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "probHam"

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v44, "probSpam"

    const-string v45, "REAL"

    move-object/from16 v43, v2

    invoke-direct/range {v43 .. v49}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "probSpam"

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v44, "tfHam"

    const-string v45, "REAL"

    move-object/from16 v43, v2

    invoke-direct/range {v43 .. v49}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "tfHam"

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v44, "tfSpam"

    const-string v45, "REAL"

    move-object/from16 v43, v2

    invoke-direct/range {v43 .. v49}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "tfSpam"

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v44, "idfHam"

    const-string v45, "REAL"

    move-object/from16 v43, v2

    invoke-direct/range {v43 .. v49}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "idfHam"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v37, "idfSpam"

    const-string v38, "REAL"

    move-object/from16 v36, v2

    invoke-direct/range {v36 .. v42}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "idfSpam"

    const/4 v6, 0x0

    invoke-static {v1, v5, v2, v6}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v2

    .line 211
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 212
    new-instance v6, Ln3/c0/h0/e;

    const-string v9, "categorizer_probability"

    invoke-direct {v6, v9, v1, v2, v5}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "categorizer_probability"

    .line 213
    invoke-static {v0, v1}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 214
    invoke-virtual {v6, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 215
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "categorizer_probability(com.truecaller.insights.models.categorizer.CategorizerWordProb).\n Expected:\n"

    invoke-static {v2, v6, v7, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 216
    :cond_b
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    const-string v2, "message"

    .line 217
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {v1, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v2, Ln3/c0/h0/c;

    const-string v5, "sms_message_fts"

    const-string v6, "CREATE VIRTUAL TABLE IF NOT EXISTS `sms_message_fts` USING FTS4(`message` TEXT NOT NULL, `address` TEXT NOT NULL, content=`sms_backup_table`)"

    invoke-direct {v2, v5, v1, v6}, Ln3/c0/h0/c;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)V

    const-string v1, "sms_message_fts"

    .line 220
    invoke-static {v0, v1}, Ln3/c0/h0/c;->b(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/c;

    move-result-object v1

    .line 221
    invoke-virtual {v2, v1}, Ln3/c0/h0/c;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 222
    new-instance v0, Ln3/c0/x$b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sms_message_fts(com.truecaller.insights.models.search.SmsMessagesFTS).\n Expected:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 223
    :cond_c
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 224
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x1

    const-string v32, "message_body"

    const-string v33, "TEXT"

    move-object/from16 v31, v2

    move/from16 v34, v12

    move/from16 v35, v14

    move-object/from16 v36, v38

    move/from16 v37, v39

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v11, "message_body"

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v32, "from_category"

    const-string v33, "TEXT"

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v11, "from_category"

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v32, "to_category"

    const-string v33, "TEXT"

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v11, "to_category"

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v32, "model_version"

    const-string v33, "INTEGER"

    move-object/from16 v31, v2

    move/from16 v35, v6

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "model_version"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v35, 0x1

    const-string v32, "id"

    const-string v33, "INTEGER"

    move-object/from16 v31, v2

    move/from16 v34, v5

    move-object/from16 v36, v9

    const/4 v5, 0x1

    move/from16 v37, v5

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v40, 0x1

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x1

    const-string v38, "created_at"

    const-string v39, "INTEGER"

    move-object/from16 v37, v2

    invoke-direct/range {v37 .. v43}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const/4 v5, 0x0

    invoke-static {v1, v8, v2, v5}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v2

    .line 230
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 231
    new-instance v5, Ln3/c0/h0/e;

    const-string v9, "reclassified_message"

    invoke-direct {v5, v9, v1, v2, v6}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "reclassified_message"

    .line 232
    invoke-static {v0, v1}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 233
    invoke-virtual {v5, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 234
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "reclassified_message(com.truecaller.insights.models.categorizer.ReclassifiedMessage).\n Expected:\n"

    invoke-static {v2, v5, v7, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 235
    :cond_d
    new-instance v1, Ljava/util/HashSet;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 236
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v30

    .line 237
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v28

    .line 238
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v29

    .line 239
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v21

    move-object/from16 v4, v25

    move-object/from16 v5, v26

    move-object/from16 v6, v27

    .line 240
    invoke-static {v1, v2, v4, v5, v6}, Le/d/c/a/a;->U0(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v16

    move-object/from16 v6, v17

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    .line 241
    invoke-static {v1, v2, v4, v5, v6}, Le/d/c/a/a;->U0(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v18

    move-object/from16 v4, v22

    move-object/from16 v5, v23

    .line 242
    invoke-static {v1, v2, v13, v4, v5}, Le/d/c/a/a;->U0(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v24

    .line 243
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "dff_val4"

    .line 244
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "dff_val5"

    .line 245
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v2, Ln3/c0/h0/c;

    const-string v4, "pdo_fts"

    const-string v5, "CREATE VIRTUAL TABLE IF NOT EXISTS `pdo_fts` USING FTS4(`d` TEXT NOT NULL, `k` TEXT NOT NULL, `p` TEXT NOT NULL, `c` TEXT NOT NULL, `o` TEXT NOT NULL, `f` TEXT NOT NULL, `g` TEXT NOT NULL, `s` TEXT NOT NULL, `val1` TEXT NOT NULL, `val2` TEXT NOT NULL, `val3` TEXT NOT NULL, `val4` TEXT NOT NULL, `val5` TEXT NOT NULL, `address` TEXT NOT NULL, `dff_val1` TEXT NOT NULL, `dff_val2` TEXT NOT NULL, `dff_val3` TEXT NOT NULL, `dff_val4` TEXT NOT NULL, `dff_val5` TEXT NOT NULL, content=`parsed_data_object_table`)"

    invoke-direct {v2, v4, v1, v5}, Ln3/c0/h0/c;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)V

    const-string v1, "pdo_fts"

    .line 247
    invoke-static {v0, v1}, Ln3/c0/h0/c;->b(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/c;

    move-result-object v1

    .line 248
    invoke-virtual {v2, v1}, Ln3/c0/h0/c;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 249
    new-instance v0, Ln3/c0/x$b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pdo_fts(com.truecaller.insights.models.search.PdoFts).\n Expected:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 250
    :cond_e
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 251
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v4, 0x1

    const/16 v20, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x1

    const-string v17, "id"

    const-string v18, "INTEGER"

    move-object/from16 v16, v2

    move/from16 v19, v5

    move-object/from16 v21, v6

    move/from16 v22, v9

    invoke-direct/range {v16 .. v22}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v31, 0x1

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x1

    const-string v29, "created_at"

    const-string v30, "INTEGER"

    move-object/from16 v28, v2

    invoke-direct/range {v28 .. v34}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v25, 0x0

    const/4 v11, 0x0

    const-string v29, "feedback_type"

    const-string v30, "TEXT"

    move-object/from16 v28, v2

    move/from16 v31, v5

    move/from16 v32, v11

    move-object/from16 v33, v6

    move/from16 v34, v9

    invoke-direct/range {v28 .. v34}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "feedback_type"

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v29, "feedback_value"

    const-string v30, "TEXT"

    move-object/from16 v28, v2

    invoke-direct/range {v28 .. v34}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "feedback_value"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v17, "entity_id"

    const-string v18, "INTEGER"

    move-object/from16 v16, v2

    move/from16 v19, v4

    move/from16 v20, v11

    invoke-direct/range {v16 .. v22}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "entity_id"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v31, 0x0

    const-string v29, "sender"

    const-string v30, "TEXT"

    move-object/from16 v28, v2

    invoke-direct/range {v28 .. v34}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "sender"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v31, 0x1

    const-string v29, "body"

    const-string v30, "TEXT"

    move-object/from16 v28, v2

    invoke-direct/range {v28 .. v34}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "body"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v5, 0x0

    const/16 v31, 0x0

    const-string v29, "parser_output"

    const-string v30, "TEXT"

    move-object/from16 v28, v2

    invoke-direct/range {v28 .. v34}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "parser_output"

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v29, "categorizer_output"

    const-string v30, "TEXT"

    move-object/from16 v28, v2

    move/from16 v31, v5

    invoke-direct/range {v28 .. v34}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "categorizer_output"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v24, 0x1

    const-string v22, "parent_id"

    const-string v23, "INTEGER"

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v27}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const/4 v5, 0x0

    invoke-static {v1, v15, v2, v5}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v2

    .line 261
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 262
    new-instance v9, Ln3/c0/h0/e$d;

    const-string v11, "entity_id"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v12, "index_entity_id"

    invoke-direct {v9, v12, v5, v11}, Ln3/c0/h0/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v6, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance v5, Ln3/c0/h0/e;

    const-string v9, "feedback"

    invoke-direct {v5, v9, v1, v2, v6}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "feedback"

    .line 264
    invoke-static {v0, v1}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 265
    invoke-virtual {v5, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 266
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "feedback(com.truecaller.insights.models.feedback.InsightsFeedbackEntity).\n Expected:\n"

    invoke-static {v2, v5, v7, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 267
    :cond_f
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 268
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v12, "id"

    const-string v13, "INTEGER"

    move-object v11, v2

    move-object/from16 v16, v5

    move/from16 v17, v6

    invoke-direct/range {v11 .. v17}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1

    const-string v24, "sender"

    const-string v25, "TEXT"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v9, 0x0

    const/16 v20, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v24, "sender_name"

    const-string v25, "TEXT"

    move-object/from16 v23, v2

    move/from16 v26, v10

    move/from16 v27, v11

    move-object/from16 v28, v5

    move/from16 v29, v6

    invoke-direct/range {v23 .. v29}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "sender_name"

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v24, "sender_type"

    const-string v25, "TEXT"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "sender_type"

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v24, "smart_features_status"

    const-string v25, "TEXT"

    move-object/from16 v23, v2

    move/from16 v26, v9

    invoke-direct/range {v23 .. v29}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "smart_features_status"

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v9, 0x1

    const/16 v26, 0x1

    const-string v24, "grammars_enabled"

    const-string v25, "TEXT"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "grammars_enabled"

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v24, "source_type"

    const-string v25, "TEXT"

    move-object/from16 v23, v2

    move/from16 v26, v9

    invoke-direct/range {v23 .. v29}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "source_type"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v19, 0x0

    const-string v17, "country_code"

    const-string v18, "TEXT"

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "country_code"

    const/4 v6, 0x0

    invoke-static {v1, v5, v2, v6}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v2

    .line 276
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 277
    new-instance v9, Ln3/c0/h0/e$d;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const-string v11, "index_sender"

    invoke-direct {v9, v11, v6, v10}, Ln3/c0/h0/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v6, Ln3/c0/h0/e;

    const-string v9, "sender_info"

    invoke-direct {v6, v9, v1, v2, v5}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "sender_info"

    .line 279
    invoke-static {v0, v1}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 280
    invoke-virtual {v6, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 281
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "sender_info(com.truecaller.insights.models.senders.SenderInfoEntity).\n Expected:\n"

    invoke-static {v2, v6, v7, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 282
    :cond_10
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 283
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const-string v14, "feature"

    const-string v15, "TEXT"

    move-object v13, v2

    invoke-direct/range {v13 .. v19}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v11, "feature"

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v11, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const-string v14, "event_category"

    const-string v15, "TEXT"

    move-object v13, v2

    move/from16 v16, v11

    move/from16 v17, v20

    move-object/from16 v18, v21

    move/from16 v19, v22

    invoke-direct/range {v13 .. v19}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v13, "event_category"

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v14, "event_info"

    const-string v15, "TEXT"

    move-object v13, v2

    invoke-direct/range {v13 .. v19}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v13, "event_info"

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v14, "context"

    const-string v15, "TEXT"

    move-object v13, v2

    invoke-direct/range {v13 .. v19}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v13, "context"

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v14, "action_type"

    const-string v15, "TEXT"

    move-object v13, v2

    invoke-direct/range {v13 .. v19}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v13, "action_type"

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v14, "action_info"

    const-string v15, "TEXT"

    move-object v13, v2

    invoke-direct/range {v13 .. v19}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v13, "action_info"

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v14, "event_date"

    const-string v15, "INTEGER"

    move-object v13, v2

    invoke-direct/range {v13 .. v19}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v11, "event_date"

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v11, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x1

    const-string v14, "counts"

    const-string v15, "INTEGER"

    move-object v13, v2

    move/from16 v16, v11

    move/from16 v17, v6

    move-object/from16 v18, v20

    move/from16 v19, v21

    invoke-direct/range {v13 .. v19}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "counts"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v17, 0x1

    const-string v14, "agg_event_id"

    const-string v15, "INTEGER"

    move-object v13, v2

    invoke-direct/range {v13 .. v19}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "agg_event_id"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v17, 0x0

    const-string v14, "created_at"

    const-string v15, "INTEGER"

    move-object v13, v2

    move/from16 v16, v5

    move-object/from16 v18, v9

    move/from16 v19, v10

    invoke-direct/range {v13 .. v19}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const-string v19, "consumed"

    const-string v20, "INTEGER"

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v24}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "consumed"

    const/4 v6, 0x0

    invoke-static {v1, v5, v2, v6}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v2

    .line 294
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 295
    new-instance v6, Ln3/c0/h0/e;

    const-string v9, "aggregate_analytics_events"

    invoke-direct {v6, v9, v1, v2, v5}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "aggregate_analytics_events"

    .line 296
    invoke-static {v0, v1}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 297
    invoke-virtual {v6, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 298
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "aggregate_analytics_events(com.truecaller.insights.models.analytics.AggregatedAnalyticsEventModel).\n Expected:\n"

    invoke-static {v2, v6, v7, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 299
    :cond_11
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 300
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v5, 0x1

    const/16 v17, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x1

    const-string v14, "sender"

    const-string v15, "TEXT"

    move-object v13, v2

    move/from16 v16, v5

    invoke-direct/range {v13 .. v19}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v28, 0x0

    const/16 v17, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x1

    const-string v26, "sender_name"

    const-string v27, "TEXT"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v35, 0x0

    const/16 v22, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x1

    const-string v33, "sender_icon_uri"

    const-string v34, "TEXT"

    move-object/from16 v32, v2

    invoke-direct/range {v32 .. v38}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "sender_icon_uri"

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v21, 0x1

    const-string v19, "created_at"

    const-string v20, "INTEGER"

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v24}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v14, "last_updated_at"

    const-string v15, "INTEGER"

    move-object v13, v2

    move-object/from16 v18, v4

    move/from16 v19, v6

    invoke-direct/range {v13 .. v19}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v2

    .line 305
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 306
    new-instance v5, Ln3/c0/h0/e$d;

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v8, "index_sender_name"

    invoke-direct {v5, v8, v4, v6}, Ln3/c0/h0/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 307
    new-instance v4, Ln3/c0/h0/e;

    const-string v5, "sender_resolution_table"

    invoke-direct {v4, v5, v1, v2, v3}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "sender_resolution_table"

    .line 308
    invoke-static {v0, v1}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v0

    .line 309
    invoke-virtual {v4, v0}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 310
    new-instance v1, Ln3/c0/x$b;

    const-string v2, "sender_resolution_table(com.truecaller.insights.models.senders.resolution.SenderResolutionEntity).\n Expected:\n"

    invoke-static {v2, v4, v7, v0}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v1

    .line 311
    :cond_12
    new-instance v0, Ln3/c0/x$b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method
