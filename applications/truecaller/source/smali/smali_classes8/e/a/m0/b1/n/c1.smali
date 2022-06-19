.class public final Le/a/m0/b1/n/c1;
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

    const-string v0, "\n                UPDATE msg_conversations\n                SET split_criteria = CASE \n                WHEN (white_list_count OR blacklist_count OR has_outgoing_messages OR tc_group_id IS NOT NULL) = 1 THEN 0\n                WHEN (type NOT IN (2, 3)\n                    OR history_events_count\n                    OR phonebook_count\n                    OR (top_spammer_count = 1 AND type NOT IN (2, 3)))\n                    = 1 THEN 2\n                ELSE 1 END\n            "

    .line 1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
