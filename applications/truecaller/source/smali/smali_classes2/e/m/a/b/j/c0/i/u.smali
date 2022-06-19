.class public final synthetic Le/m/a/b/j/c0/i/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/b/j/c0/i/j0$a;


# static fields
.field public static final synthetic a:Le/m/a/b/j/c0/i/u;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/a/b/j/c0/i/u;

    invoke-direct {v0}, Le/m/a/b/j/c0/i/u;-><init>()V

    sput-object v0, Le/m/a/b/j/c0/i/u;->a:Le/m/a/b/j/c0/i/u;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    sget-object v0, Le/m/a/b/j/c0/i/j0;->c:Ljava/lang/String;

    const-string v0, "DROP TABLE IF EXISTS log_event_dropped"

    .line 2
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE log_event_dropped (log_source VARCHAR(45) NOT NULL,reason INTEGER NOT NULL,events_dropped_count BIGINT NOT NULL,PRIMARY KEY(log_source, reason))"

    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE global_log_event_state (last_metrics_upload_ms BIGINT PRIMARY KEY)"

    .line 4
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5
    sget-object v0, Le/m/a/b/j/c0/i/j0;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
