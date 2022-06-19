.class public final Le/a/m0/c1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m0/c1/h0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 4

    const-string v0, "\n    CREATE TABLE screened_calls (\n        id TEXT PRIMARY KEY,\n        to_number TEXT NOT NULL,\n        from_number TEXT NOT NULL,\n        created_at INTEGER NOT NULL,\n        duration INTEGER NOT NULL DEFAULT 0,\n        locale TEXT NOT NULL,\n        status TEXT NOT NULL,\n        is_voicemail INT NOT NULL DEFAULT 0,\n        originate_call_status TEXT,\n        spam_model_prediction TEXT,\n        intent TEXT\n    )\n"

    const-string v1, "\n    CREATE INDEX idx_screened_calls_created_at\n        ON screened_calls (created_at)\n"

    const-string v2, "\n    CREATE TABLE screened_call_messages (\n        id TEXT PRIMARY KEY,\n        call_id TEXT NOT NULL,\n        text TEXT NOT NULL,\n        type INTEGER NOT NULL,\n        created_at INTEGER NOT NULL,\n        selected_option INTEGER,\n        caller_action INTEGER\n    )\n"

    const-string v3, "\n    CREATE INDEX idx_screened_call_messages_call_id_created_at\n        ON screened_call_messages (call_id, created_at)\n"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Le/a/m0/c1/g0;->c(Le/a/m0/c1/h0;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public synthetic c()[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Le/a/m0/c1/g0;->b(Le/a/m0/c1/h0;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
