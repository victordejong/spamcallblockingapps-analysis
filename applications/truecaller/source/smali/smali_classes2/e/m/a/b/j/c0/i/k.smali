.class public final synthetic Le/m/a/b/j/c0/i/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/b/j/c0/i/h0$b;


# instance fields
.field public final synthetic a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Le/m/a/b/j/c0/i/k;->a:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-wide v0, p0, Le/m/a/b/j/c0/i/k;->a:J

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1"

    .line 1
    invoke-virtual {p1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance v2, Le/m/a/b/j/c0/i/c;

    invoke-direct {v2, v0, v1}, Le/m/a/b/j/c0/i/c;-><init>(J)V

    .line 2
    invoke-static {p1, v2}, Le/m/a/b/j/c0/i/h0;->J(Landroid/database/Cursor;Le/m/a/b/j/c0/i/h0$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/a/b/j/a0/a/f;

    return-object p1
.end method
