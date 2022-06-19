.class public Le/a/r2/o$b;
.super Le/a/r2/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r2/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic d:Le/a/r2/o;


# direct methods
.method public constructor <init>(Le/a/r2/o;Landroid/os/Looper;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/r2/o$b;->d:Le/a/r2/o;

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p2, p3, p4, p1}, Le/a/r2/c;-><init>(Landroid/os/Looper;JLandroid/os/PowerManager$WakeLock;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/r2/o$b;->d:Le/a/r2/o;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 2
    iget-object v2, v0, Le/a/r2/o;->f:Le/a/r2/c;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v3, v0, Le/a/r2/o;->f:Le/a/r2/c;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    .line 5
    iput-object v2, v0, Le/a/r2/o;->f:Le/a/r2/c;

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
