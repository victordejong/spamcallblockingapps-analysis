.class public final Le/a/m0/b1/c;
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

    const/16 v0, 0x40

    return v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 1

    const-string p2, "db"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "ALTER TABLE msg_conversations ADD COLUMN phonebook_count INTEGER DEFAULT (0)"

    .line 1
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "ALTER TABLE msg_conversations ADD COLUMN white_list_count INTEGER DEFAULT (0)"

    .line 2
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "ALTER TABLE msg_conversations ADD COLUMN blacklist_count INTEGER DEFAULT (0)"

    .line 3
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "ALTER TABLE msg_conversations ADD COLUMN top_spammer_count INTEGER DEFAULT (0)"

    .line 4
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "ALTER TABLE msg_conversations ADD COLUMN split_criteria INTEGER DEFAULT (0)"

    .line 5
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "\n                UPDATE msg_conversations\n                SET has_outgoing_messages = (SELECT COUNT(*)\n                    FROM msg_messages\n                    WHERE (status & 3) = 1\n                    AND conversation_id = msg_conversations._id)\n            "

    .line 6
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "phonebook_count"

    .line 7
    invoke-virtual {p0, p1, p2, p2}, Le/a/m0/b1/c;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "white_list_count"

    const-string v0, "filter_action = 2"

    .line 8
    invoke-virtual {p0, p1, p2, v0}, Le/a/m0/b1/c;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "blacklist_count"

    const-string v0, "filter_action = 1"

    .line 9
    invoke-virtual {p0, p1, p2, v0}, Le/a/m0/b1/c;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "top_spammer_count"

    const-string v0, "is_top_spammer"

    .line 10
    invoke-virtual {p0, p1, p2, v0}, Le/a/m0/b1/c;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "\n                UPDATE msg_conversations\n                SET split_criteria = CASE phonebook_count OR white_list_count OR blacklist_count OR top_spammer_count OR has_outgoing_messages\n                    WHEN 1 THEN 0\n                    ELSE 1 END\n            "

    .line 11
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "\n                UPDATE msg_conversations\n                SET "

    const-string v1, " = (SELECT SUM("

    const-string v2, ")\n                    FROM msg_participants\n                    WHERE msg_participants._id IN (SELECT participant_id\n                        FROM msg_conversation_participants\n                        WHERE conversation_id = msg_conversations._id))\n            "

    .line 1
    invoke-static {v0, p2, v1, p3, v2}, Le/d/c/a/a;->E2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
