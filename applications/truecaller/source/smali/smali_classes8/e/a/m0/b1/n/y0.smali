.class public final Le/a/m0/b1/n/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m0/b1/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ALTER TABLE msg_thread_stats ADD COLUMN latest_message_history_type INTEGER DEFAULT (-1)"

    .line 1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE msg_thread_stats ADD COLUMN latest_message_history_action INTEGER DEFAULT (-1)"

    .line 2
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE msg_thread_stats ADD COLUMN latest_message_history_filter_source TEXT"

    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "\n            UPDATE msg_thread_stats \n                SET latest_message_history_type = \n                    IFNULL ((SELECT info2 FROM msg_messages WHERE _id = latest_message_id AND transport = 5), -1)\n        "

    .line 4
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "\n            UPDATE msg_thread_stats \n                SET latest_message_history_action = \n                    IFNULL ((SELECT info5 FROM msg_messages WHERE _id = latest_message_id AND transport = 5), -1)\n        "

    .line 5
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "\n            UPDATE msg_thread_stats \n                SET latest_message_history_filter_source =\n                    (SELECT info6 FROM msg_messages WHERE _id = latest_message_id AND transport = 5)    \n        "

    .line 6
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
