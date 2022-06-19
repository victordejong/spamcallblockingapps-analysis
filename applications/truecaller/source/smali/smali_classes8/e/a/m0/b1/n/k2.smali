.class public final Le/a/m0/b1/n/k2;
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

    const-string v1, "CREATE TABLE screened_calls (\n    id TEXT PRIMARY KEY,\n    to_number TEXT NOT NULL,\n    from_number TEXT NOT NULL,\n    created_at INTEGER NOT NULL,\n    duration INTEGER NOT NULL DEFAULT 0,\n    locale TEXT NOT NULL,\n    status TEXT NOT NULL,\n    is_voicemail INT NOT NULL DEFAULT 0,\n    originate_call_status TEXT,\n    spam_model_prediction TEXT,\n    intent TEXT\n)"

    const-string v2, "CREATE INDEX idx_screened_calls_created_at\n    ON screened_calls (created_at)"

    invoke-static {p1, v0, v1, v2}, Le/d/c/a/a;->s0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
