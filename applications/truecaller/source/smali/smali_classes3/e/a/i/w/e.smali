.class public final Le/a/i/w/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Le/a/i/w/d;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;)Le/a/i/w/d;
    .locals 2

    const-class v0, Le/a/i/w/e;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Le/a/i/w/e;->a:Le/a/i/w/d;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Le/a/i/w/f;

    invoke-direct {v1, p0}, Le/a/i/w/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Le/a/i/w/e;->a:Le/a/i/w/d;

    .line 3
    :cond_0
    sget-object p0, Le/a/i/w/e;->a:Le/a/i/w/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
