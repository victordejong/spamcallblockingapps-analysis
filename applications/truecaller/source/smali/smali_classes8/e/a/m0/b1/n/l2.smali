.class public final Le/a/m0/b1/n/l2;
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

    const-string v1, "CREATE TABLE screened_call_messages (\n    id TEXT PRIMARY KEY,\n    call_id TEXT NOT NULL,\n    text TEXT NOT NULL,\n    type INTEGER NOT NULL,\n    created_at INTEGER NOT NULL,\n    selected_option INTEGER,\n    caller_action INTEGER\n)"

    const-string v2, "CREATE INDEX idx_screened_call_messages_call_id_created_at\n    ON screened_call_messages (call_id, created_at)"

    invoke-static {p1, v0, v1, v2}, Le/d/c/a/a;->s0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
