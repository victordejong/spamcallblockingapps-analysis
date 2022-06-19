.class public final Le/a/m0/c1/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m0/c1/h0;


# instance fields
.field public final a:Le/a/m0/b1/j;


# direct methods
.method public constructor <init>(Le/a/m0/c1/i0;Le/a/m0/b1/j;)V
    .locals 1

    const-string v0, "threadStatsCalculator"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "migrationHelperV72"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/m0/c1/j0;->a:Le/a/m0/b1/j;

    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 2

    const-string v0, "\n    CREATE TABLE msg_thread_stats (\n    latest_message_id INTEGER,\n    latest_message_status INTEGER,\n    latest_message_media_count INTEGER DEFAULT(0),\n    latest_message_media_type TEXT,\n    unread_messages_count INTEGER DEFAULT(0),\n    latest_sim_token TEXT DEFAULT(\'-1\'),\n    date_sorting INTEGER DEFAULT(0),\n    snippet_text TEXT DEFAULT(\'\'),\n    is_rich_text_snippet INTEGER DEFAULT(0),\n    actions_dismissed INTEGER DEFAULT(0),\n    filter INTEGER NOT NULL,\n    latest_message_raw_status INTEGER DEFAULT(0),\n    latest_message_delivery_status INTEGER DEFAULT(0),\n    latest_message_read_status INTEGER DEFAULT(0),\n    latest_message_transport INTEGER DEFAULT(0),\n    conversation_id INTEGER NOT NULL REFERENCES msg_conversations (_id) ON DELETE CASCADE,\n    latest_message_sequence_number INTEGER NOT NULL DEFAULT(0),\n    marked_unread INTEGER NOT NULL DEFAULT(0),\n    pinned_date INTEGER NOT NULL DEFAULT(0),\n    archived_date INTEGER NOT NULL DEFAULT(0),\n    latest_message_date_sent INTEGER DEFAULT(0),\n    latest_message_history_type INTEGER DEFAULT(-1),\n    latest_message_history_action INTEGER DEFAULT(-1),\n    latest_message_history_filter_source TEXT,\n    latest_message_mentions TEXT,\n    history_events_count INTEGER DEFAULT(0),\n    UNIQUE(filter, conversation_id) ON CONFLICT REPLACE)\n"

    const-string v1, "CREATE INDEX idx_msg_thread_stats_latest_message_id ON msg_thread_stats (latest_message_id)"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p4, "context"

    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "db"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x48

    if-gt p3, p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/m0/c1/j0;->a:Le/a/m0/b1/j;

    invoke-virtual {p1, p2, p3}, Le/a/m0/b1/j;->b(Landroid/database/sqlite/SQLiteDatabase;I)V

    :cond_0
    const/16 p1, 0x51

    if-gt p3, p1, :cond_1

    const-string p1, "ALTER TABLE msg_thread_stats ADD COLUMN latest_message_raw_status INTEGER DEFAULT (0)"

    .line 2
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "ALTER TABLE msg_thread_stats ADD COLUMN latest_message_delivery_status INTEGER DEFAULT (0)"

    .line 3
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "ALTER TABLE msg_thread_stats ADD COLUMN latest_message_read_status INTEGER DEFAULT (0)"

    .line 4
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "ALTER TABLE msg_thread_stats ADD COLUMN latest_message_transport INTEGER DEFAULT (0)"

    .line 5
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c()[Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ls1/z/c/f0;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ls1/z/c/f0;-><init>(I)V

    const-string v1, "\n            CREATE TRIGGER trigger_thread_stats_on_conversation_insert\n                AFTER INSERT\n                ON msg_conversations\n            BEGIN\n                INSERT OR IGNORE\n                    INTO msg_thread_stats (conversation_id, filter, history_events_count)\n                    VALUES (new._id, 1, new.history_events_count);\n            END\n        "

    const-string v2, "\n            CREATE TRIGGER trigger_thread_stats_on_conversation_blacklist_count_update\n                AFTER UPDATE OF blacklist_count\n                ON msg_conversations\n                WHEN new.blacklist_count > 0\n            BEGIN\n                UPDATE msg_thread_stats\n                    SET pinned_date = 0\n                    WHERE pinned_date != 0 \n                    AND conversation_id = new._id;\n            END\n        "

    const-string v3, "\n            CREATE TRIGGER trigger_thread_stats_on_history_events_count_conversation_update\n                AFTER UPDATE OF history_events_count\n                ON msg_conversations\n            BEGIN UPDATE msg_thread_stats\n                SET history_events_count = new.history_events_count\n                WHERE new._id = msg_thread_stats.conversation_id;\n            END\n        "

    .line 2
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ls1/z/c/f0;->a(Ljava/lang/Object;)V

    const-string v2, "\n            CREATE TRIGGER trigger_thread_stats_on_message_insert\n                AFTER INSERT\n                ON msg_messages\n            BEGIN\n                \n    INSERT OR IGNORE\n        INTO msg_thread_stats (conversation_id, filter)\n        VALUES (new.conversation_id, new.category);\n    UPDATE msg_thread_stats\n        SET latest_message_id = new._id\n        WHERE \n    (new.conversation_id = conversation_id\n    AND filter IN (new.category, 1) AND new.transport != 5)\n\n            AND (new.sequence_number > latest_message_sequence_number\n                OR new.sequence_number = latest_message_sequence_number\n                AND new.date >= date_sorting\n                OR latest_message_id IS NULL);\n    UPDATE msg_thread_stats\n        SET unread_messages_count = unread_messages_count + (NOT new.read AND new.status & 1 == 0 AND new.transport != 5)\n        WHERE \n    (new.conversation_id = conversation_id\n    AND filter IN (new.category, 1) AND new.transport != 5)\n;\n\n            END\n        "

    const-string v3, "\n            CREATE TRIGGER trigger_thread_stats_on_message_category_update\n                AFTER UPDATE OF category, conversation_id\n                ON msg_messages\n            BEGIN\n                \n    INSERT OR IGNORE\n        INTO msg_thread_stats (conversation_id, filter)\n        VALUES (new.conversation_id, new.category);\n    UPDATE msg_thread_stats\n        SET latest_message_id = new._id\n        WHERE \n    (new.conversation_id = conversation_id\n    AND filter IN (new.category, 1) AND new.transport != 5)\n\n            AND (new.sequence_number > latest_message_sequence_number\n                OR new.sequence_number = latest_message_sequence_number\n                AND new.date >= date_sorting\n                OR latest_message_id IS NULL);\n    UPDATE msg_thread_stats\n        SET unread_messages_count = unread_messages_count + (NOT new.read AND new.status & 1 == 0 AND new.transport != 5)\n        WHERE \n    (new.conversation_id = conversation_id\n    AND filter IN (new.category, 1) AND new.transport != 5)\n;\n\n                \n    UPDATE msg_thread_stats\n        SET latest_message_id = \n    (SELECT _id\n        FROM msg_messages\n        WHERE transport != 5 AND msg_thread_stats.conversation_id = conversation_id\n            AND msg_thread_stats.filter IN (category, 1)\n        ORDER BY sequence_number DESC, date DESC, _id DESC\n        LIMIT 1)\n\n        WHERE latest_message_id = old._id;\n    UPDATE msg_thread_stats\n        SET unread_messages_count = unread_messages_count - (NOT old.read AND old.status & 1 == 0 AND old.transport != 5)\n        WHERE old.conversation_id = conversation_id\n            AND filter IN (old.category, 1);\n    DELETE\n        FROM msg_thread_stats\n        WHERE conversation_id = old.conversation_id AND latest_message_id IS NULL AND history_events_count < 1;\n\n            END\n        "

    const-string v4, "\n            CREATE TRIGGER trigger_thread_stats_on_message_sequence_number_update\n                AFTER UPDATE OF sequence_number, date\n                ON msg_messages\n            BEGIN\n                UPDATE msg_thread_stats\n                    SET latest_message_id = \n    (SELECT _id\n        FROM msg_messages\n        WHERE transport != 5 AND msg_thread_stats.conversation_id = conversation_id\n            AND msg_thread_stats.filter IN (category, 1)\n        ORDER BY sequence_number DESC, date DESC, _id DESC\n        LIMIT 1)\n\n                    WHERE \n    (new.conversation_id = conversation_id\n    AND filter IN (new.category, 1) AND new.transport != 5)\n;\n            END\n        "

    const-string v5, "\n            CREATE TRIGGER trigger_thread_stats_counts_on_message_update\n                AFTER UPDATE OF read, status\n                ON msg_messages\n            BEGIN\n                UPDATE msg_thread_stats\n                    SET unread_messages_count = unread_messages_count - (NOT old.read AND old.status & 1 == 0 AND old.transport != 5) + (NOT new.read AND new.status & 1 == 0 AND new.transport != 5)\n                    WHERE \n    (new.conversation_id = conversation_id\n    AND filter IN (new.category, 1) AND new.transport != 5)\n;\n            END\n        "

    const-string v6, "\n            CREATE TRIGGER trigger_thread_stats_on_message_update\n                AFTER UPDATE OF status, date_sent\n                ON msg_messages\n            BEGIN\n                UPDATE msg_thread_stats\n                    SET latest_message_status = new.status,\n                        latest_message_date_sent = new.date_sent\n                    WHERE new._id = latest_message_id;\n            END\n        "

    const-string v7, "\n            CREATE TRIGGER trigger_thread_stats_on_message_delete\n                AFTER DELETE\n                ON msg_messages\n            BEGIN\n                \n    UPDATE msg_thread_stats\n        SET latest_message_id = \n    (SELECT _id\n        FROM msg_messages\n        WHERE transport != 5 AND msg_thread_stats.conversation_id = conversation_id\n            AND msg_thread_stats.filter IN (category, 1)\n        ORDER BY sequence_number DESC, date DESC, _id DESC\n        LIMIT 1)\n\n        WHERE latest_message_id = old._id;\n    UPDATE msg_thread_stats\n        SET unread_messages_count = unread_messages_count - (NOT old.read AND old.status & 1 == 0 AND old.transport != 5)\n        WHERE old.conversation_id = conversation_id\n            AND filter IN (old.category, 1);\n    DELETE\n        FROM msg_thread_stats\n        WHERE conversation_id = old.conversation_id AND latest_message_id IS NULL AND history_events_count < 1;\n\n            END\n        "

    const-string v8, "\n            CREATE TRIGGER trigger_thread_stats_on_mentions_update\n                AFTER UPDATE OF info11\n                ON msg_messages\n            BEGIN\n                UPDATE msg_thread_stats\n                    SET latest_message_mentions = new.info11\n                    WHERE new._id = latest_message_id;\n            END\n        "

    .line 4
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Ls1/z/c/f0;->a(Ljava/lang/Object;)V

    const-string v1, "\n            CREATE TRIGGER trigger_thread_stats_on_thread_stats_update\n                AFTER UPDATE OF latest_message_id\n                ON msg_thread_stats\n            BEGIN\n                UPDATE msg_thread_stats\n                    SET date_sorting = (SELECT date\n                            FROM msg_messages\n                            WHERE _id = new.latest_message_id),\n                        latest_sim_token = (SELECT sim_token\n                            FROM msg_messages\n                            WHERE _id = new.latest_message_id),\n                        latest_message_status = (SELECT status\n                            FROM msg_messages\n                            WHERE _id = new.latest_message_id),\n                        snippet_text = (SELECT entity_info1\n                            FROM msg_entities\n                            WHERE message_id = new.latest_message_id\n                                AND type = \'text/plain\'),\n                        is_rich_text_snippet = (SELECT entity_info2\n                            FROM msg_entities\n                            WHERE message_id = new.latest_message_id\n                                AND type = \'text/plain\'),\n                        latest_message_media_count = (SELECT COUNT(*)\n                            FROM msg_entities\n                            WHERE message_id = new.latest_message_id\n                                AND type != \'text/plain\'),\n                        latest_message_media_type = (SELECT type\n                            FROM msg_entities\n                            WHERE message_id = new.latest_message_id\n                                AND type != \'text/plain\'\n                            LIMIT 1),\n                        latest_message_transport = (SELECT transport\n                            FROM msg_messages\n                            WHERE _id = new.latest_message_id),\n                        latest_message_raw_status = (SELECT IFNULL ((SELECT info2\n                            FROM msg_messages\n                            WHERE _id = new.latest_message_id AND transport = 0), 0)),\n                        latest_message_delivery_status = (SELECT IFNULL ((SELECT info1\n                            FROM msg_messages\n                            WHERE _id = new.latest_message_id AND transport = 2), 0)),\n                        latest_message_read_status = (SELECT IFNULL ((SELECT info2\n                            FROM msg_messages\n                            WHERE _id = new.latest_message_id AND transport = 2), 0)),\n                        latest_message_sequence_number = IFNULL((SELECT sequence_number\n                            FROM msg_messages\n                            WHERE _id = new.latest_message_id), 0),\n                        latest_message_date_sent = (SELECT date_sent\n                            FROM msg_messages\n                            WHERE _id = new.latest_message_id),\n                        latest_message_mentions = (SELECT info11\n                            FROM msg_messages\n                            WHERE _id = new.latest_message_id)\n                    WHERE conversation_id = new.conversation_id\n                        AND filter = new.filter;\n            END\n        "

    const-string v2, "\n            CREATE TRIGGER trigger_threads_stats_on_new_msg_insert\n                AFTER UPDATE OF latest_message_id\n                ON msg_thread_stats\n            BEGIN\n                UPDATE msg_thread_stats\n                    SET archived_date = 0\n                    WHERE conversation_id = new.conversation_id\n                        AND filter = new.filter;\n            END\n        "

    const-string v3, "\n            CREATE TRIGGER trigger_threads_stats_on_history_events_count_change\n                AFTER UPDATE OF history_events_count\n                ON msg_thread_stats\n                WHEN new.history_events_count > old.history_events_count\n            BEGIN\n                UPDATE msg_thread_stats\n                    SET archived_date = 0\n                    WHERE conversation_id = new.conversation_id\n                        AND filter = new.filter;\n            END\n        "

    .line 6
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ls1/z/c/f0;->a(Ljava/lang/Object;)V

    const-string v1, "\n            CREATE TRIGGER trigger_thread_stats_on_text_entity_insert\n                AFTER INSERT\n                ON msg_entities\n                WHEN new.type = \'text/plain\'\n            BEGIN\n                UPDATE msg_thread_stats\n                    SET snippet_text = new.entity_info1,\n                        is_rich_text_snippet = new.entity_info2\n                    WHERE latest_message_id = new.message_id;\n            END\n        "

    const-string v2, "\n            CREATE TRIGGER trigger_thread_stats_on_media_entity_insert\n                AFTER INSERT\n                ON msg_entities\n                WHEN new.type != \'text/plain\'\n            BEGIN\n                UPDATE msg_thread_stats\n                    SET latest_message_media_count = latest_message_media_count + 1,\n                        latest_message_media_type = new.type\n                    WHERE latest_message_id = new.message_id;\n            END\n        "

    const-string v3, "\n            CREATE TRIGGER trigger_thread_stats_on_media_entity_delete\n                AFTER DELETE\n                ON msg_entities\n                WHEN old.type != \'text/plain\'\n            BEGIN\n                UPDATE msg_thread_stats\n                    SET latest_message_media_count = latest_message_media_count - 1,\n                        latest_message_media_type = (SELECT type FROM msg_entities\n                        WHERE type != \'text/plain\' LIMIT 1)\n                    WHERE latest_message_id = old.message_id;\n            END\n        "

    const-string v4, "\n            CREATE TRIGGER trigger_thread_stats_on_text_entity_delete\n                AFTER DELETE\n                ON msg_entities\n                WHEN old.type = \'text/plain\'\n            BEGIN\n                UPDATE msg_thread_stats\n                    SET snippet_text = NULL\n                    WHERE latest_message_id = old.message_id;\n            END\n        "

    const-string v5, "\n            CREATE TRIGGER trigger_thread_stats_on_mentions_text_update\n                AFTER UPDATE OF entity_info1\n                ON msg_entities\n            BEGIN\n                UPDATE msg_thread_stats\n                    SET snippet_text = new.entity_info1\n                    WHERE new.message_id = latest_message_id AND new.type = \'text/plain\';\n            END\n        "

    .line 8
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ls1/z/c/f0;->a(Ljava/lang/Object;)V

    const-string v1, "\n            CREATE TRIGGER trigger_thread_stats_on_im_receipt_update\n                AFTER UPDATE OF info1, info2\n                ON msg_messages\n                WHEN new.transport = 2\n            BEGIN\n                UPDATE msg_thread_stats\n                    SET latest_message_delivery_status = new.info1,\n                        latest_message_read_status = new.info2,\n                        latest_message_transport = 2,\n                        latest_message_raw_status = 0\n                    WHERE latest_message_id = new._id;\n            END\n        "

    const-string v2, "\n            CREATE TRIGGER trigger_thread_stats_on_sms_report_update\n                AFTER UPDATE OF info2\n                ON msg_messages\n                WHEN new.transport = 0\n            BEGIN\n                UPDATE msg_thread_stats\n                    SET latest_message_raw_status = new.info2,\n                        latest_message_transport = 0,\n                        latest_message_delivery_status = 0,\n                        latest_message_read_status = 0\n                    WHERE latest_message_id = new._id;\n            END\n        "

    const-string v3, "\n            CREATE TRIGGER trigger_thread_stats_on_reactions_update\n                AFTER UPDATE OF info9\n                ON msg_messages\n                WHEN new.transport = 2\n            BEGIN\n                UPDATE msg_thread_stats\n                    SET archived_date = 0\n                    WHERE conversation_id = new.conversation_id;\n            END\n        "

    .line 10
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ls1/z/c/f0;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ls1/z/c/f0;->b()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 12
    iget-object v0, v0, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
