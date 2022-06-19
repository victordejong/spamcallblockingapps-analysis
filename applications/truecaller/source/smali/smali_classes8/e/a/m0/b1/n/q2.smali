.class public final Le/a/m0/b1/n/q2;
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
    .locals 3

    const-string v0, "db"

    const-string v1, "\n            CREATE TABLE msg_history_transport_info (\n                _id INTEGER PRIMARY KEY AUTOINCREMENT,\n                raw_id INTEGER NOT NULL,\n                call_log_id INTEGER DEFAULT NULL,\n                message_id INTEGER NOT NULL REFERENCES msg_messages (_id) ON DELETE CASCADE,\n                type INTEGER DEFAULT(0),\n                features INTEGER,\n                number_type TEXT\n            )\n        "

    const-string v2, "\n            CREATE INDEX idx_msg_history_transport_info_message_id ON msg_history_transport_info(message_id)\n        "

    invoke-static {p1, v0, v1, v2}, Le/d/c/a/a;->s0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
