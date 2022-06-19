.class public final Le/a/m0/b1/n/r2;
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

    const-string v1, "CREATE TABLE msg_im_unsupported_events (\n                _id INTEGER PRIMARY KEY AUTOINCREMENT,\n                event BLOB NOT NULL,\n                api_version INTEGER DEFAULT(0))"

    const-string v2, "CREATE INDEX idx_msg_im_unsupported_events_api_version\n                ON msg_im_unsupported_events (api_version)"

    invoke-static {p1, v0, v1, v2}, Le/d/c/a/a;->s0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
