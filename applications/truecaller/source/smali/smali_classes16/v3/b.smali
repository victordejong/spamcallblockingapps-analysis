.class public Lv3/b;
.super Lv3/c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv3/b$b;,
        Lv3/b$a;
    }
.end annotation


# static fields
.field public static final h:J

.field public static final i:J

.field public static j:Lv3/b;

.field public static final k:Lv3/b$a;


# instance fields
.field public e:Z

.field public f:Lv3/b;

.field public g:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lv3/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv3/b$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lv3/b;->k:Lv3/b$a;

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lv3/b;->h:J

    .line 2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lv3/b;->i:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv3/c0;-><init>()V

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lv3/b;->e:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 2
    iget-wide v2, p0, Lv3/c0;->c:J

    .line 3
    iget-boolean v0, p0, Lv3/c0;->a:Z

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iput-boolean v1, p0, Lv3/b;->e:Z

    .line 5
    const-class v1, Lv3/b;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    sget-object v5, Lv3/b;->j:Lv3/b;

    if-nez v5, :cond_1

    .line 8
    new-instance v5, Lv3/b;

    invoke-direct {v5}, Lv3/b;-><init>()V

    .line 9
    sput-object v5, Lv3/b;->j:Lv3/b;

    .line 10
    new-instance v5, Lv3/b$b;

    invoke-direct {v5}, Lv3/b$b;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 11
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p0}, Lv3/c0;->c()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    add-long/2addr v2, v5

    .line 13
    iput-wide v2, p0, Lv3/b;->g:J

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    add-long/2addr v2, v5

    .line 14
    iput-wide v2, p0, Lv3/b;->g:J

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_8

    .line 15
    invoke-virtual {p0}, Lv3/c0;->c()J

    move-result-wide v2

    .line 16
    iput-wide v2, p0, Lv3/b;->g:J

    .line 17
    :goto_0
    iget-wide v2, p0, Lv3/b;->g:J

    sub-long/2addr v2, v5

    .line 18
    sget-object v0, Lv3/b;->j:Lv3/b;

    if-eqz v0, :cond_7

    .line 19
    :goto_1
    iget-object v4, v0, Lv3/b;->f:Lv3/b;

    if-eqz v4, :cond_5

    .line 20
    iget-wide v7, v4, Lv3/b;->g:J

    sub-long/2addr v7, v5

    cmp-long v7, v2, v7

    if-gez v7, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, v4

    goto :goto_1

    .line 21
    :cond_5
    :goto_2
    iput-object v4, p0, Lv3/b;->f:Lv3/b;

    .line 22
    iput-object p0, v0, Lv3/b;->f:Lv3/b;

    .line 23
    sget-object v2, Lv3/b;->j:Lv3/b;

    if-ne v0, v2, :cond_6

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_6
    monitor-exit v1

    return-void

    .line 26
    :cond_7
    :try_start_1
    invoke-static {}, Ls1/z/c/l;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    throw v0

    .line 27
    :cond_8
    :try_start_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 28
    monitor-exit v1

    throw v0

    :cond_9
    const-string v0, "Unbalanced enter/exit"

    .line 29
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final i()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lv3/b;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iput-boolean v1, p0, Lv3/b;->e:Z

    .line 3
    const-class v0, Lv3/b;

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v2, Lv3/b;->j:Lv3/b;

    :goto_0
    if-eqz v2, :cond_2

    .line 6
    iget-object v3, v2, Lv3/b;->f:Lv3/b;

    if-ne v3, p0, :cond_1

    .line 7
    iget-object v3, p0, Lv3/b;->f:Lv3/b;

    .line 8
    iput-object v3, v2, Lv3/b;->f:Lv3/b;

    const/4 v2, 0x0

    .line 9
    iput-object v2, p0, Lv3/b;->f:Lv3/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit v0

    goto :goto_1

    :cond_1
    move-object v2, v3

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 11
    monitor-exit v0

    :goto_1
    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public j(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public k()V
    .locals 0

    return-void
.end method
