.class public final Le/a/m0/b1/m/a;
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

    const/16 v0, 0x48

    return v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 0

    const-string p2, "db"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS msg_thread_stats"

    .line 1
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "\n    CREATE TABLE msg_thread_stats (\n    latest_message_id INTEGER,\n    latest_message_status INTEGER,\n    latest_message_media_count INTEGER DEFAULT(0),\n    latest_message_media_type TEXT,\n    unread_messages_count INTEGER DEFAULT(0),\n    latest_sim_token TEXT DEFAULT(\'-1\'),\n    date_sorting INTEGER DEFAULT(0),\n    snippet_text TEXT DEFAULT(\'\'),\n    actions_dismissed INTEGER DEFAULT(0),\n    filter INTEGER NOT NULL,\n    conversation_id INTEGER NOT NULL REFERENCES msg_conversations (_id) ON DELETE CASCADE,\n    UNIQUE(filter, conversation_id) ON CONFLICT REPLACE)\n"

    .line 2
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "CREATE INDEX idx_msg_thread_stats_latest_message_id ON msg_thread_stats (latest_message_id)"

    .line 3
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "\n            UPDATE msg_messages\n                SET category = CASE category\n                    WHEN 1 THEN 2\n                    WHEN 2 THEN 3\n                    ELSE IFNULL(category, 2)\n                END\n        "

    .line 4
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "\n            UPDATE msg_messages\n                SET category = 2\n                WHERE status = 3\n        "

    .line 5
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "\n            INSERT INTO msg_thread_stats (\n                latest_message_id,\n                latest_message_status,\n                unread_messages_count,\n                latest_sim_token,\n                date_sorting,\n                filter,\n                conversation_id)\n            SELECT\n                _id,\n                status,\n                SUM(NOT read),\n                sim_token,\n                date,\n                filter,\n                conversation_id\n            FROM (SELECT *, category AS filter FROM msg_messages\n                UNION\n                SELECT *, 1 AS filter FROM msg_messages)\n            GROUP BY conversation_id, filter\n            ORDER BY date DESC\n            "

    .line 6
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "\n            UPDATE msg_thread_stats\n                SET latest_message_media_count = (SELECT COUNT(*)\n                FROM msg_entities\n                WHERE message_id = latest_message_id\n                    AND type != \'text/plain\'),\n            latest_message_media_type = (SELECT type\n                FROM msg_entities\n                WHERE message_id = latest_message_id\n                    AND type != \'text/plain\'\n                LIMIT 1),\n            snippet_text = (SELECT content\n                FROM msg_entities\n                WHERE message_id = latest_message_id\n                    AND type = \'text/plain\')\n            "

    .line 7
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "\n            DELETE\n            FROM msg_conversations\n            WHERE _id NOT IN (SELECT DISTINCT conversation_id FROM msg_messages)\n        "

    .line 8
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
