.class public final Le/a/m0/c1/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12

    const-string v0, "db"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n           CREATE TEMP TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "msg_thread_stats_temp"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n           AS\n           SELECT conversation_id, filter, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    sget-object v2, Le/a/m0/a1$n;->a:[Ljava/lang/String;

    const-string v11, "MODIFIABLE_COLUMNS"

    invoke-static {v2, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3f

    move-object v3, v2

    invoke-static/range {v3 .. v10}, Le/q/f/a/d/a;->M1([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n           FROM msg_thread_stats;\n           CREATE INDEX idx_"

    const-string v5, " ON "

    invoke-static {v0, v3, v4, v1, v5}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (conversation_id, filter)\n        "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DELETE FROM msg_thread_stats"

    .line 6
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "\n            INSERT INTO msg_thread_stats (\n                filter,\n                conversation_id,\n                unread_messages_count)\n            SELECT\n                filter,\n                conversation_id,\n                SUM(NOT read)\n            FROM (SELECT *, category AS filter FROM msg_messages\n                UNION\n                SELECT *, 1 AS filter FROM msg_messages\n                )\n            GROUP BY conversation_id, filter\n            "

    .line 7
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "\n            UPDATE msg_thread_stats\n                SET\n                    latest_message_id = (SELECT _id\n                        FROM msg_messages\n                        WHERE transport != 5 AND msg_thread_stats.conversation_id = conversation_id\n                            AND msg_thread_stats.filter IN (category, 1)\n                        ORDER BY sequence_number DESC, date DESC, _id DESC\n                        LIMIT 1) \n        "

    .line 8
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "\n            UPDATE msg_thread_stats SET history_events_count = \n                (SELECT history_events_count FROM msg_conversations \n                    WHERE _id = msg_thread_stats.conversation_id)\n        "

    .line 9
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 10
    invoke-static {v2, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    array-length v0, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, v2, v3

    const-string v5, "\n                UPDATE msg_thread_stats\n                SET "

    const-string v6, " = IFNULL((SELECT "

    const-string v7, "\n                    FROM "

    .line 12
    invoke-static {v5, v4, v6, v4, v7}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n                    WHERE msg_thread_stats.conversation_id = conversation_id\n                        AND msg_thread_stats.filter = filter), "

    const-string v7, ")\n            "

    .line 13
    invoke-static {v5, v1, v6, v4, v7}, Le/d/c/a/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "DROP TABLE msg_thread_stats_temp"

    .line 15
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
