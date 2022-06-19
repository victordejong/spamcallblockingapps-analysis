.class public final Le/a/m0/c1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m0/c1/h0;


# instance fields
.field public final a:Le/a/m0/b1/j;

.field public final b:Le/a/m0/b1/j;

.field public final c:Le/a/m0/b1/j;

.field public final d:Le/a/m0/b1/j;

.field public final e:Le/a/m0/b1/j;


# direct methods
.method public constructor <init>(Le/a/m0/b1/j;Le/a/m0/b1/j;Le/a/m0/b1/j;Le/a/m0/b1/j;Le/a/m0/b1/j;)V
    .locals 1

    const-string v0, "migrationHelperV11"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "migrationHelperV58"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "migrationHelperV64"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "migrationHelperV66"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "migrationHelperV68"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/m0/c1/h;->a:Le/a/m0/b1/j;

    iput-object p2, p0, Le/a/m0/c1/h;->b:Le/a/m0/b1/j;

    iput-object p3, p0, Le/a/m0/c1/h;->c:Le/a/m0/b1/j;

    iput-object p4, p0, Le/a/m0/c1/h;->d:Le/a/m0/b1/j;

    iput-object p5, p0, Le/a/m0/c1/h;->e:Le/a/m0/b1/j;

    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE msg_conversations (_id INTEGER PRIMARY KEY AUTOINCREMENT, type INTEGER DEFAULT(0), tc_group_id TEXT, has_outgoing_messages INTEGER DEFAULT(0), phonebook_count INTEGER DEFAULT(0), white_list_count INTEGER DEFAULT(0), blacklist_count INTEGER DEFAULT(0), top_spammer_count INTEGER DEFAULT(0), has_spam_messages INTEGER DEFAULT(0), split_criteria INTEGER DEFAULT(0), preferred_transport INTEGER DEFAULT(3), history_events_count INTEGER DEFAULT(0), scheduled_messages_count INTEGER DEFAULT(0), hidden_number INTEGER NOT NULL DEFAULT(0), load_events_mode INTEGER NOT NULL DEFAULT(0), hidden_number_prompt_state INTEGER NOT NULL DEFAULT(0), is_spam INTEGER DEFAULT(0), outgoing_messages_only_count INTEGER DEFAULT(0), muted INTEGER NOT NULL DEFAULT(0), sound_uri TEXT)"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p4, "context"

    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "db"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0xb

    if-gt p3, p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/m0/c1/h;->a:Le/a/m0/b1/j;

    invoke-virtual {p1, p2, p3}, Le/a/m0/b1/j;->c(Landroid/database/sqlite/SQLiteDatabase;I)V

    :cond_0
    const/16 p1, 0x22

    if-gt p3, p1, :cond_1

    const-string p1, "ALTER TABLE msg_conversations ADD COLUMN hidden_number_status INTEGER DEFAULT (2)"

    .line 2
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    const/16 p1, 0x2e

    if-gt p3, p1, :cond_2

    const-string p1, "ALTER TABLE msg_conversations ADD COLUMN filter INTEGER DEFAULT (0)"

    .line 3
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    const/16 p1, 0x3a

    if-gt p3, p1, :cond_3

    .line 4
    iget-object p1, p0, Le/a/m0/c1/h;->b:Le/a/m0/b1/j;

    invoke-virtual {p1, p2, p3}, Le/a/m0/b1/j;->c(Landroid/database/sqlite/SQLiteDatabase;I)V

    :cond_3
    const/16 p1, 0x40

    if-gt p3, p1, :cond_4

    .line 5
    iget-object p1, p0, Le/a/m0/c1/h;->c:Le/a/m0/b1/j;

    invoke-virtual {p1, p2, p3}, Le/a/m0/b1/j;->c(Landroid/database/sqlite/SQLiteDatabase;I)V

    :cond_4
    const/16 p1, 0x42

    if-gt p3, p1, :cond_5

    .line 6
    iget-object p1, p0, Le/a/m0/c1/h;->d:Le/a/m0/b1/j;

    invoke-virtual {p1, p2, p3}, Le/a/m0/b1/j;->c(Landroid/database/sqlite/SQLiteDatabase;I)V

    :cond_5
    const/16 p1, 0x44

    if-gt p3, p1, :cond_6

    .line 7
    iget-object p1, p0, Le/a/m0/c1/h;->e:Le/a/m0/b1/j;

    invoke-virtual {p1, p2, p3}, Le/a/m0/b1/j;->c(Landroid/database/sqlite/SQLiteDatabase;I)V

    :cond_6
    const/16 p1, 0x47

    if-gt p3, p1, :cond_7

    const-string p1, "ALTER TABLE msg_conversations ADD COLUMN preferred_transport INTEGER DEFAULT (3)"

    .line 8
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public c()[Ljava/lang/String;
    .locals 12

    .line 1
    new-instance v0, Ls1/z/c/f0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ls1/z/c/f0;-><init>(I)V

    const-string v2, "\n            CREATE TRIGGER trigger_conversation_outgoing_message_count_on_message_insert\n                AFTER INSERT\n                ON msg_messages\n            BEGIN UPDATE msg_conversations\n                SET has_outgoing_messages = has_outgoing_messages + ((new.status & 3) = 1),\n                    outgoing_messages_only_count = outgoing_messages_only_count + \n                        ((new.status & 3) = 1 AND new.transport != 5)\n                WHERE _id = new.conversation_id;\n            END\n        "

    const-string v3, "\n            CREATE TRIGGER trigger_conversation_outgoing_message_count_on_message_update\n                AFTER UPDATE OF status\n                ON msg_messages\n            BEGIN UPDATE msg_conversations\n                SET has_outgoing_messages = has_outgoing_messages - ((old.status & 3) = 1) + ((new.status & 3) = 1),\n                    outgoing_messages_only_count = outgoing_messages_only_count \n                        - ((old.status & 3) = 1 AND old.transport != 5) \n                        + ((new.status & 3) = 1 AND new.transport != 5)\n                WHERE _id = new.conversation_id;\n            END\n        "

    const-string v4, "\n            CREATE TRIGGER trigger_conversation_outgoing_message_count_on_message_delete\n                AFTER DELETE\n                ON msg_messages\n            BEGIN UPDATE msg_conversations\n                SET has_outgoing_messages = has_outgoing_messages - ((old.status & 3) = 1),\n                    outgoing_messages_only_count = outgoing_messages_only_count - \n                        ((old.status & 3) = 1 AND old.transport != 5)\n                WHERE _id = old.conversation_id;\n            END\n        "

    const-string v5, "\n            CREATE TRIGGER trigger_conversation_history_events_count_on_message_insert\n                AFTER INSERT\n                ON msg_messages\n            BEGIN UPDATE msg_conversations\n                SET history_events_count = history_events_count + (new.transport = 5)\n                WHERE _id = new.conversation_id;\n            END\n        "

    const-string v6, "\n            CREATE TRIGGER trigger_conversation_history_events_count_on_message_delete\n                AFTER DELETE\n                ON msg_messages\n            BEGIN UPDATE msg_conversations\n                SET history_events_count = history_events_count - (old.transport = 5)\n                WHERE _id = old.conversation_id;\n            END\n        "

    const-string v7, "\n            CREATE TRIGGER trigger_conversation_delete_on_message_delete\n                AFTER DELETE\n                ON msg_messages\n                WHEN (SELECT NOT EXISTS (\n                    SELECT 1\n                    FROM msg_messages\n                    WHERE conversation_id = old.conversation_id))\n            BEGIN DELETE FROM msg_conversations\n                WHERE _id = old.conversation_id;\n            END\n        "

    const-string v8, "\n            CREATE TRIGGER trigger_conversation_delete_on_message_conversation_id_update\n                AFTER UPDATE OF conversation_id\n                ON msg_messages\n                WHEN (SELECT NOT EXISTS (\n                    SELECT 1\n                    FROM msg_messages\n                    WHERE conversation_id = old.conversation_id))\n            BEGIN DELETE FROM msg_conversations\n                WHERE _id = old.conversation_id;\n            END\n        "

    const-string v9, "\n            CREATE TRIGGER trigger_scheduled_messages_count_on_message_insert\n                AFTER INSERT\n                ON msg_messages\n            BEGIN UPDATE msg_conversations\n                SET scheduled_messages_count = scheduled_messages_count + \n                    ((new.status & 128) = 128)\n                WHERE _id = new.conversation_id;\n            END\n        "

    const-string v10, "\n            CREATE TRIGGER trigger_scheduled_messages_count_on_message_delete\n                AFTER DELETE\n                ON msg_messages\n            BEGIN UPDATE msg_conversations\n                SET scheduled_messages_count = scheduled_messages_count - \n                    ((old.status & 128) = 128)\n                WHERE _id = old.conversation_id;\n            END\n        "

    const-string v11, "\n            CREATE TRIGGER trigger_scheduled_messages_count_on_message_update\n                AFTER UPDATE OF status\n                ON msg_messages\n            BEGIN UPDATE msg_conversations\n                SET scheduled_messages_count = scheduled_messages_count - \n                    (\n                        (old.status & 128) = 128 AND\n                        (new.status & 128) != 128\n                    )\n                WHERE _id = old.conversation_id;\n            END\n        "

    .line 2
    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ls1/z/c/f0;->a(Ljava/lang/Object;)V

    const-string v1, "\n            CREATE TRIGGER trigger_conversation_counts_on_conversation_participant_insert\n                AFTER INSERT\n                ON msg_conversation_participants\n            BEGIN UPDATE msg_conversations\n                SET phonebook_count = phonebook_count + (SELECT phonebook_count\n                        FROM msg_participants\n                        WHERE _id = new.participant_id),\n                    blacklist_count = blacklist_count + (SELECT filter_action = 1\n                        FROM msg_participants\n                        WHERE _id = new.participant_id),\n                    white_list_count = white_list_count + (SELECT filter_action = 2\n                        FROM msg_participants\n                        WHERE _id = new.participant_id),\n                    top_spammer_count = top_spammer_count + (SELECT is_top_spammer\n                        FROM msg_participants\n                        WHERE _id = new.participant_id),\n                    is_spam = (SELECT is_spam\n                        FROM msg_participants\n                        WHERE _id = new.participant_id)\n                WHERE _id = new.conversation_id;\n            END\n        "

    const-string v2, "\n            CREATE TRIGGER trigger_conversation_counts_on_participant_update\n                AFTER UPDATE OF phonebook_count, filter_action, is_top_spammer, is_spam\n                ON msg_participants\n            BEGIN UPDATE msg_conversations\n                SET phonebook_count = phonebook_count - old.phonebook_count + new.phonebook_count,\n                    blacklist_count = blacklist_count - (old.filter_action = 1) + (new.filter_action = 1),\n                    white_list_count = white_list_count - (old.filter_action = 2) + (new.filter_action = 2),\n                    top_spammer_count = top_spammer_count - old.is_top_spammer + new.is_top_spammer,\n                    is_spam = new.is_spam\n                WHERE _id IN (SELECT conversation_id\n                    FROM msg_conversation_participants\n                    WHERE participant_id = new._id);\n            END\n        "

    const-string v3, "\n            CREATE TRIGGER trigger_conversation_counts_on_conversation_participant_delete\n                AFTER DELETE\n                ON msg_conversation_participants\n            BEGIN UPDATE msg_conversations\n                SET phonebook_count = phonebook_count - (SELECT phonebook_count\n                        FROM msg_participants\n                        WHERE _id = old.participant_id),\n                    blacklist_count = blacklist_count - (SELECT filter_action = 1\n                        FROM msg_participants\n                        WHERE _id = old.participant_id),\n                    white_list_count = white_list_count - (SELECT filter_action = 2\n                        FROM msg_participants\n                        WHERE _id = old.participant_id),\n                    top_spammer_count = top_spammer_count - (SELECT is_top_spammer\n                        FROM msg_participants\n                        WHERE _id = old.participant_id),\n                    is_spam = (SELECT is_spam\n                        FROM msg_participants\n                        WHERE _id = old.participant_id)    \n                WHERE _id = old.conversation_id;\n            END\n        "

    .line 4
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Ls1/z/c/f0;->a(Ljava/lang/Object;)V

    const-string v1, "\n            CREATE TRIGGER trigger_conversation_split_criteria_on_conversation_insert\n                AFTER INSERT\n                ON msg_conversations\n            \n       BEGIN UPDATE msg_conversations\n                SET split_criteria = CASE\n                WHEN (white_list_count OR blacklist_count OR has_outgoing_messages OR tc_group_id IS NOT NULL\n                    OR ((top_spammer_count = 1 OR is_spam = 1) AND type NOT IN (2, 3)))\n                    = 1 THEN 0\n                WHEN (type NOT IN (2, 3)\n                    OR history_events_count\n                    OR phonebook_count)\n                    = 1 THEN 2\n                ELSE 1 END\n                WHERE _id = new._id;\n            END\n    \n        "

    const-string v2, "\n            CREATE TRIGGER trigger_conversation_split_criteria_on_conversation_update\n                AFTER UPDATE OF phonebook_count, white_list_count, blacklist_count, top_spammer_count, has_outgoing_messages, tc_group_id, type, \n                history_events_count, is_spam\n                ON msg_conversations\n            \n       BEGIN UPDATE msg_conversations\n                SET split_criteria = CASE\n                WHEN (white_list_count OR blacklist_count OR has_outgoing_messages OR tc_group_id IS NOT NULL\n                    OR ((top_spammer_count = 1 OR is_spam = 1) AND type NOT IN (2, 3)))\n                    = 1 THEN 0\n                WHEN (type NOT IN (2, 3)\n                    OR history_events_count\n                    OR phonebook_count)\n                    = 1 THEN 2\n                ELSE 1 END\n                WHERE _id = new._id;\n            END\n    \n        "

    .line 6
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ls1/z/c/f0;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ls1/z/c/f0;->b()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 8
    iget-object v0, v0, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
