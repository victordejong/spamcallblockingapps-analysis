.class public final Le/a/m0/b1/d;
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

    const/16 v0, 0x42

    return v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 2

    const-string p2, "db"

    const-string v0, "\n               ALTER TABLE msg_conversations ADD COLUMN has_spam_messages INTEGER DEFAULT(0)\n            "

    const-string v1, "\n           CREATE TABLE msg_thread_stats (\n           latest_message_id INTEGER,\n           latest_message_status INTEGER,\n           latest_message_entities_types TEXT DEFAULT(\'\'),\n           unread_messages_count INTEGER DEFAULT(0),\n           latest_sim_token TEXT DEFAULT(\'-1\'),\n           date_sorting INTEGER,\n           snippet_text TEXT DEFAULT(\'\'),\n           actions_dismissed INTEGER DEFAULT(0),\n           filter INTEGER NOT NULL,\n           conversation_id INTEGER NOT NULL REFERENCES msg_conversations (_id) ON DELETE CASCADE,\n           UNIQUE(filter, conversation_id) ON CONFLICT REPLACE)\n        "

    invoke-static {p1, p2, v0, v1}, Le/d/c/a/a;->s0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
