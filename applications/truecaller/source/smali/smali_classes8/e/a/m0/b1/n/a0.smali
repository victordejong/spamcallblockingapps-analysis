.class public final Le/a/m0/b1/n/a0;
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

    const-string v0, "ALTER TABLE msg_messages ADD COLUMN group_id_day INTEGER NOT NULL DEFAULT(-1)"

    .line 1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE msg_messages ADD COLUMN group_id_minute INTEGER NOT NULL DEFAULT(-1)"

    .line 2
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE msg_conversations ADD COLUMN history_events_count INTEGER DEFAULT(0)"

    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "\n                UPDATE msg_conversations SET history_events_count = (SELECT COUNT() FROM msg_messages WHERE conversation_id=msg_conversations._id AND transport=5)\n            "

    .line 4
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "\n                UPDATE msg_conversations SET split_criteria = CASE \n                    type != 2 OR \n                    history_events_count > 0 OR \n                    phonebook_count OR \n                    white_list_count OR \n                    blacklist_count OR \n                    (top_spammer_count = 1 AND type != 2) OR \n                    has_outgoing_messages OR \n                    tc_group_id IS NOT NULL\n                WHEN 1 THEN 0 ELSE 1 END\n            "

    .line 5
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
