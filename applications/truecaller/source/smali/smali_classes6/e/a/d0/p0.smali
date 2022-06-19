.class public Le/a/d0/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 7

    .line 1
    const-class v0, Le/a/d0/p0;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Le/a/d0/p0;->a:Ljava/lang/String;

    .line 3
    sget-wide v2, Le/a/d0/p0;->b:J

    const/4 v4, 0x0

    .line 4
    sput-object v4, Le/a/d0/p0;->a:Ljava/lang/String;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0x4b0

    add-long/2addr v2, v5

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    cmp-long v0, v2, v5

    if-gez v0, :cond_0

    move-object v1, v4

    :cond_0
    if-nez v1, :cond_1

    .line 7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
