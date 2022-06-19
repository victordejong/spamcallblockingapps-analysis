.class public final Le/a/m0/b1/e;
.super Le/a/m0/b1/j;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/m0/b1/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x44

    return v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 0

    const-string p2, "db"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "\n            INSERT OR IGNORE INTO msg_thread_stats (\n            conversation_id,\n            filter,\n            latest_message_id,\n            latest_message_status,\n            latest_message_entities_types,\n            latest_sim_token,\n            date_sorting,\n            actions_dismissed,\n            snippet_text,\n            unread_messages_count\n            )\n            SELECT\n            _id,\n            1,\n            latest_message_id,\n            latest_message_status,\n            latest_message_entities_types,\n            latest_sim_token,\n            date_sorting,\n            actions_dismissed,\n            snippet_text,\n            unread_messages_count\n            FROM msg_conversations\n        "

    .line 1
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "\n\t        CREATE TEMPORARY TABLE temp_conversations_table AS SELECT\n             _id,\n            type,\n            tc_group_id,\n            has_outgoing_messages,\n\t\t\tphonebook_count,\n\t\t\twhite_list_count,\n\t\t\tblacklist_count,\n\t\t\ttop_spammer_count,\n\t\t\tsplit_criteria,\n\t\t\thas_spam_messages\n            FROM msg_conversations\n        "

    .line 2
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "\n            DROP TABLE msg_conversations\n        "

    .line 3
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "\n           CREATE TABLE msg_conversations(\n           _id INTEGER PRIMARY KEY AUTOINCREMENT,\n           type INTEGER DEFAULT(0),\n           tc_group_id TEXT,\n           has_outgoing_messages INTEGER DEFAULT(0),\n           phonebook_count INTEGER DEFAULT(0),\n           white_list_count INTEGER DEFAULT(0),\n           blacklist_count INTEGER DEFAULT(0),\n           top_spammer_count INTEGER DEFAULT(0),\n           split_criteria INTEGER DEFAULT(0),\n           has_spam_messages INTEGER DEFAULT(0)\n           )\n        "

    .line 4
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "\n           INSERT INTO msg_conversations SELECT * FROM temp_conversations_table\n        "

    .line 5
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "\n            DROP TABLE temp_conversations_table\n        "

    .line 6
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
