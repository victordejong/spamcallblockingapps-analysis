.class public final Lokhttp3/internal/http2/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final f:Ln/f;

.field private g:Lm/x;

.field private h:Z

.field private i:Z

.field final synthetic j:Lokhttp3/internal/http2/h;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/h;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lokhttp3/internal/http2/h$a;->i:Z

    .line 2
    new-instance p1, Ln/f;

    invoke-direct {p1}, Ln/f;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/h$a;->f:Ln/f;

    return-void
.end method

.method private final a(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    invoke-virtual {v1}, Lokhttp3/internal/http2/h;->s()Lokhttp3/internal/http2/h$c;

    move-result-object v1

    invoke-virtual {v1}, Ln/d;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :goto_0
    :try_start_1
    iget-object v1, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    invoke-virtual {v1}, Lokhttp3/internal/http2/h;->r()J

    move-result-wide v1

    iget-object v3, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    invoke-virtual {v3}, Lokhttp3/internal/http2/h;->q()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    iget-boolean v1, p0, Lokhttp3/internal/http2/h$a;->i:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lokhttp3/internal/http2/h$a;->h:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    invoke-virtual {v1}, Lokhttp3/internal/http2/h;->h()Lokhttp3/internal/http2/a;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    invoke-virtual {v1}, Lokhttp3/internal/http2/h;->D()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 5
    :cond_0
    :try_start_2
    iget-object v1, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    invoke-virtual {v1}, Lokhttp3/internal/http2/h;->s()Lokhttp3/internal/http2/h$c;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/http2/h$c;->y()V

    .line 6
    iget-object v1, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    invoke-virtual {v1}, Lokhttp3/internal/http2/h;->c()V

    .line 7
    iget-object v1, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    invoke-virtual {v1}, Lokhttp3/internal/http2/h;->q()J

    move-result-wide v1

    iget-object v3, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    invoke-virtual {v3}, Lokhttp3/internal/http2/h;->r()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, p0, Lokhttp3/internal/http2/h$a;->f:Ln/f;

    invoke-virtual {v3}, Ln/f;->p0()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 8
    iget-object v1, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    invoke-virtual {v1}, Lokhttp3/internal/http2/h;->r()J

    move-result-wide v2

    add-long/2addr v2, v9

    invoke-virtual {v1, v2, v3}, Lokhttp3/internal/http2/h;->B(J)V

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lokhttp3/internal/http2/h$a;->f:Ln/f;

    invoke-virtual {p1}, Ln/f;->p0()J

    move-result-wide v1

    cmp-long p1, v9, v1

    if-nez p1, :cond_1

    iget-object p1, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    invoke-virtual {p1}, Lokhttp3/internal/http2/h;->h()Lokhttp3/internal/http2/a;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    const/4 v7, 0x0

    .line 10
    :goto_1
    sget-object p1, Lkotlin/r;->a:Lkotlin/r;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 11
    monitor-exit v0

    .line 12
    iget-object p1, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    invoke-virtual {p1}, Lokhttp3/internal/http2/h;->s()Lokhttp3/internal/http2/h$c;

    move-result-object p1

    invoke-virtual {p1}, Ln/d;->r()V

    .line 13
    :try_start_3
    iget-object p1, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    invoke-virtual {p1}, Lokhttp3/internal/http2/h;->g()Lokhttp3/internal/http2/e;

    move-result-object v5

    iget-object p1, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    invoke-virtual {p1}, Lokhttp3/internal/http2/h;->j()I

    move-result v6

    iget-object v8, p0, Lokhttp3/internal/http2/h$a;->f:Ln/f;

    invoke-virtual/range {v5 .. v10}, Lokhttp3/internal/http2/e;->z1(IZLn/f;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    iget-object p1, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    invoke-virtual {p1}, Lokhttp3/internal/http2/h;->s()Lokhttp3/internal/http2/h$c;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/internal/http2/h$c;->y()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    invoke-virtual {v0}, Lokhttp3/internal/http2/h;->s()Lokhttp3/internal/http2/h$c;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/http2/h$c;->y()V

    throw p1

    :catchall_1
    move-exception p1

    .line 15
    :try_start_4
    iget-object v1, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    invoke-virtual {v1}, Lokhttp3/internal/http2/h;->s()Lokhttp3/internal/http2/h$c;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/http2/h$c;->y()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 16
    monitor-exit v0

    throw p1
.end method


# virtual methods
.method public B0(Ln/f;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    .line 2
    sget-boolean v1, Lm/k0/b;->g:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Thread "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    const-string v1, "Thread.currentThread()"

    invoke-static {p3, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " MUST NOT hold lock on "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/http2/h$a;->f:Ln/f;

    invoke-virtual {v0, p1, p2, p3}, Ln/f;->B0(Ln/f;J)V

    .line 5
    :goto_1
    iget-object p1, p0, Lokhttp3/internal/http2/h$a;->f:Ln/f;

    invoke-virtual {p1}, Ln/f;->p0()J

    move-result-wide p1

    const-wide/16 v0, 0x4000

    cmp-long p3, p1, v0

    if-ltz p3, :cond_2

    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lokhttp3/internal/http2/h$a;->a(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/h$a;->h:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/h$a;->i:Z

    return v0
.end method

.method public close()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    .line 2
    sget-boolean v1, Lm/k0/b;->g:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "Thread.currentThread()"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " MUST NOT hold lock on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-boolean v1, p0, Lokhttp3/internal/http2/h$a;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    monitor-exit v0

    return-void

    .line 6
    :cond_2
    :try_start_1
    iget-object v1, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    invoke-virtual {v1}, Lokhttp3/internal/http2/h;->h()Lokhttp3/internal/http2/a;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 7
    :goto_1
    sget-object v4, Lkotlin/r;->a:Lkotlin/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    monitor-exit v0

    .line 9
    iget-object v0, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    invoke-virtual {v0}, Lokhttp3/internal/http2/h;->o()Lokhttp3/internal/http2/h$a;

    move-result-object v0

    iget-boolean v0, v0, Lokhttp3/internal/http2/h$a;->i:Z

    if-nez v0, :cond_a

    .line 10
    iget-object v0, p0, Lokhttp3/internal/http2/h$a;->f:Ln/f;

    invoke-virtual {v0}, Ln/f;->p0()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 11
    :goto_2
    iget-object v4, p0, Lokhttp3/internal/http2/h$a;->g:Lm/x;

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_8

    .line 12
    :goto_4
    iget-object v0, p0, Lokhttp3/internal/http2/h$a;->f:Ln/f;

    invoke-virtual {v0}, Ln/f;->p0()J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-lez v0, :cond_6

    .line 13
    invoke-direct {p0, v2}, Lokhttp3/internal/http2/h$a;->a(Z)V

    goto :goto_4

    .line 14
    :cond_6
    iget-object v0, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    invoke-virtual {v0}, Lokhttp3/internal/http2/h;->g()Lokhttp3/internal/http2/e;

    move-result-object v0

    iget-object v2, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    invoke-virtual {v2}, Lokhttp3/internal/http2/h;->j()I

    move-result v2

    iget-object v4, p0, Lokhttp3/internal/http2/h$a;->g:Lm/x;

    if-eqz v4, :cond_7

    invoke-static {v4}, Lm/k0/b;->L(Lm/x;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v4}, Lokhttp3/internal/http2/e;->A1(IZLjava/util/List;)V

    goto :goto_6

    :cond_7
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0

    :cond_8
    if-eqz v0, :cond_9

    .line 15
    :goto_5
    iget-object v0, p0, Lokhttp3/internal/http2/h$a;->f:Ln/f;

    invoke-virtual {v0}, Ln/f;->p0()J

    move-result-wide v0

    cmp-long v2, v0, v6

    if-lez v2, :cond_a

    .line 16
    invoke-direct {p0, v3}, Lokhttp3/internal/http2/h$a;->a(Z)V

    goto :goto_5

    :cond_9
    if-eqz v1, :cond_a

    .line 17
    iget-object v0, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    invoke-virtual {v0}, Lokhttp3/internal/http2/h;->g()Lokhttp3/internal/http2/e;

    move-result-object v4

    iget-object v0, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    invoke-virtual {v0}, Lokhttp3/internal/http2/h;->j()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lokhttp3/internal/http2/e;->z1(IZLn/f;J)V

    .line 18
    :cond_a
    :goto_6
    iget-object v0, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    monitor-enter v0

    .line 19
    :try_start_2
    iput-boolean v3, p0, Lokhttp3/internal/http2/h$a;->h:Z

    .line 20
    sget-object v1, Lkotlin/r;->a:Lkotlin/r;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    monitor-exit v0

    .line 22
    iget-object v0, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    invoke-virtual {v0}, Lokhttp3/internal/http2/h;->g()Lokhttp3/internal/http2/e;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/http2/e;->flush()V

    .line 23
    iget-object v0, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    invoke-virtual {v0}, Lokhttp3/internal/http2/h;->b()V

    return-void

    :catchall_0
    move-exception v1

    .line 24
    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v1

    .line 25
    monitor-exit v0

    throw v1
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    .line 2
    sget-boolean v1, Lm/k0/b;->g:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "Thread.currentThread()"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " MUST NOT hold lock on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    invoke-virtual {v1}, Lokhttp3/internal/http2/h;->c()V

    .line 6
    sget-object v1, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v0

    .line 8
    :goto_1
    iget-object v0, p0, Lokhttp3/internal/http2/h$a;->f:Ln/f;

    invoke-virtual {v0}, Ln/f;->p0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lokhttp3/internal/http2/h$a;->a(Z)V

    .line 10
    iget-object v0, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    invoke-virtual {v0}, Lokhttp3/internal/http2/h;->g()Lokhttp3/internal/http2/e;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/http2/e;->flush()V

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0

    throw v1
.end method

.method public timeout()Ln/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/h$a;->j:Lokhttp3/internal/http2/h;

    invoke-virtual {v0}, Lokhttp3/internal/http2/h;->s()Lokhttp3/internal/http2/h$c;

    move-result-object v0

    return-object v0
.end method
