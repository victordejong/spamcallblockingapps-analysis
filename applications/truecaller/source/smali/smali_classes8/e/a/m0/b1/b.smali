.class public final Le/a/m0/b1/b;
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

    const/16 v0, 0x3a

    return v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 0

    const-string p2, "db"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "\n            CREATE TEMPORARY TABLE temp_conversations_table AS SELECT\n            c._id AS _id,\n            c.type AS type,\n            c.tc_group_id AS tc_group_id,\n            c.latest_message_id AS latest_message_id,\n            c.latest_message_status AS latest_message_status,\n            GROUP_CONCAT(e.type,\'|\') AS latest_message_entities_types,\n            c.latest_sim_token AS latest_sim_token,\n            c.date_sorting AS date_sorting,\n            c.unread_messages_count AS unread_messages_count,\n            c.snippet_text AS snippet_text,\n            c.actions_dismissed AS actions_dismissed,\n            c.has_outgoing_messages AS has_outgoing_messages,\n            c.filter AS filter,\n            c.hidden_number_status AS hidden_number_status\n            FROM msg_conversations c LEFT JOIN msg_entities e ON c.latest_message_id = e.message_id\n            GROUP BY c._id\n        "

    .line 1
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "\n            DROP TABLE msg_conversations\n        "

    .line 2
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "\n            CREATE TABLE msg_conversations (\n            _id INTEGER PRIMARY KEY AUTOINCREMENT,\n            type INTEGER DEFAULT(0),\n            tc_group_id TEXT,\n            latest_message_id INTEGER,\n            latest_message_status INTEGER,\n            latest_message_entities_types TEXT DEFAULT(\'\'),\n            latest_sim_token TEXT DEFAULT(\'-1\'),\n            date_sorting INTEGER,\n            unread_messages_count INTEGER DEFAULT(0),\n            snippet_text TEXT DEFAULT(\'\'),\n            actions_dismissed INTEGER DEFAULT(0),\n            has_outgoing_messages INTEGER DEFAULT(0),\n            filter INTEGER DEFAULT(0),\n            hidden_number_status INTEGER DEFAULT(2))\n        "

    .line 3
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "\n           INSERT INTO msg_conversations SELECT * FROM temp_conversations_table\n        "

    .line 4
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "\n            DROP TABLE temp_conversations_table\n        "

    .line 5
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
