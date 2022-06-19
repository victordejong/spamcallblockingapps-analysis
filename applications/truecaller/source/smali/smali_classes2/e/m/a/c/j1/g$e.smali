.class public Le/m/a/c/j1/g$e;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/j1/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/j1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

.field public final b:Le/m/a/c/j1/j;

.field public final c:Le/m/a/c/j1/i;

.field public final d:Z

.field public final e:I

.field public volatile f:Le/m/a/c/j1/g$c;

.field public volatile g:Z

.field public h:Ljava/lang/Throwable;

.field public i:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;Le/m/a/c/j1/j;Le/m/a/c/j1/i;ZILe/m/a/c/j1/g$c;Le/m/a/c/j1/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/j1/g$e;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    .line 3
    iput-object p2, p0, Le/m/a/c/j1/g$e;->b:Le/m/a/c/j1/j;

    .line 4
    iput-object p3, p0, Le/m/a/c/j1/g$e;->c:Le/m/a/c/j1/i;

    .line 5
    iput-boolean p4, p0, Le/m/a/c/j1/g$e;->d:Z

    .line 6
    iput p5, p0, Le/m/a/c/j1/g$e;->e:I

    .line 7
    iput-object p6, p0, Le/m/a/c/j1/g$e;->f:Le/m/a/c/j1/g$c;

    const-wide/16 p1, -0x1

    .line 8
    iput-wide p1, p0, Le/m/a/c/j1/g$e;->i:J

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Le/m/a/c/j1/g$e;->f:Le/m/a/c/j1/g$c;

    .line 2
    :cond_0
    iget-boolean p1, p0, Le/m/a/c/j1/g$e;->g:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Le/m/a/c/j1/g$e;->g:Z

    .line 4
    iget-object p1, p0, Le/m/a/c/j1/g$e;->b:Le/m/a/c/j1/j;

    invoke-interface {p1}, Le/m/a/c/j1/j;->cancel()V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 8

    .line 1
    :try_start_0
    iget-boolean v0, p0, Le/m/a/c/j1/g$e;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/m/a/c/j1/g$e;->b:Le/m/a/c/j1/j;

    invoke-interface {v0}, Le/m/a/c/j1/j;->remove()V

    goto :goto_1

    :cond_0
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    move v3, v2

    .line 3
    :cond_1
    :goto_0
    iget-boolean v4, p0, Le/m/a/c/j1/g$e;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_4

    .line 4
    :try_start_1
    iget-object v4, p0, Le/m/a/c/j1/g$e;->b:Le/m/a/c/j1/j;

    invoke-interface {v4, p0}, Le/m/a/c/j1/j;->a(Le/m/a/c/j1/j$a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 5
    :try_start_2
    iget-boolean v5, p0, Le/m/a/c/j1/g$e;->g:Z

    if-nez v5, :cond_1

    .line 6
    iget-object v5, p0, Le/m/a/c/j1/g$e;->c:Le/m/a/c/j1/i;

    iget-wide v5, v5, Le/m/a/c/j1/i;->a:J

    cmp-long v7, v5, v0

    if-eqz v7, :cond_2

    move v3, v2

    move-wide v0, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 7
    iget v5, p0, Le/m/a/c/j1/g$e;->e:I

    if-gt v3, v5, :cond_3

    add-int/lit8 v4, v3, -0x1

    mul-int/lit16 v4, v4, 0x3e8

    const/16 v5, 0x1388

    .line 8
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-long v4, v4

    .line 9
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 10
    :cond_3
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 11
    iput-object v0, p0, Le/m/a/c/j1/g$e;->h:Ljava/lang/Throwable;

    .line 12
    :cond_4
    :goto_1
    iget-object v0, p0, Le/m/a/c/j1/g$e;->f:Le/m/a/c/j1/g$c;

    if-eqz v0, :cond_5

    const/16 v1, 0x9

    .line 13
    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    return-void
.end method
