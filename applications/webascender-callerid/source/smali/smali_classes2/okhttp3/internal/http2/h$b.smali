.class public final Lokhttp3/internal/http2/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private final f:Ln/f;

.field private final g:Ln/f;

.field private h:Z

.field private final i:J

.field private j:Z

.field final synthetic k:Lokhttp3/internal/http2/h;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/h;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/h$b;->k:Lokhttp3/internal/http2/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lokhttp3/internal/http2/h$b;->i:J

    iput-boolean p4, p0, Lokhttp3/internal/http2/h$b;->j:Z

    .line 2
    new-instance p1, Ln/f;

    invoke-direct {p1}, Ln/f;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/h$b;->f:Ln/f;

    .line 3
    new-instance p1, Ln/f;

    invoke-direct {p1}, Ln/f;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/h$b;->g:Ln/f;

    return-void
.end method

.method private final g(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->k:Lokhttp3/internal/http2/h;

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

    const-string v1, "Thread "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "Thread.currentThread()"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MUST NOT hold lock on "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->k:Lokhttp3/internal/http2/h;

    invoke-virtual {v0}, Lokhttp3/internal/http2/h;->g()Lokhttp3/internal/http2/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/e;->y1(J)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/h$b;->h:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/h$b;->j:Z

    return v0
.end method

.method public final c(Ln/h;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->k:Lokhttp3/internal/http2/h;

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

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_a

    .line 4
    iget-object v2, p0, Lokhttp3/internal/http2/h$b;->k:Lokhttp3/internal/http2/h;

    monitor-enter v2

    .line 5
    :try_start_0
    iget-boolean v3, p0, Lokhttp3/internal/http2/h$b;->j:Z

    .line 6
    iget-object v4, p0, Lokhttp3/internal/http2/h$b;->g:Ln/f;

    invoke-virtual {v4}, Ln/f;->p0()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, Lokhttp3/internal/http2/h$b;->i:J

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmp-long v10, v4, v6

    if-lez v10, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 7
    :goto_1
    sget-object v5, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    monitor-exit v2

    if-eqz v4, :cond_3

    .line 9
    invoke-interface {p1, p2, p3}, Ln/h;->H0(J)V

    .line 10
    iget-object p1, p0, Lokhttp3/internal/http2/h$b;->k:Lokhttp3/internal/http2/h;

    sget-object p2, Lokhttp3/internal/http2/a;->FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/a;

    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/h;->f(Lokhttp3/internal/http2/a;)V

    return-void

    :cond_3
    if-eqz v3, :cond_4

    .line 11
    invoke-interface {p1, p2, p3}, Ln/h;->H0(J)V

    return-void

    .line 12
    :cond_4
    iget-object v2, p0, Lokhttp3/internal/http2/h$b;->f:Ln/f;

    invoke-interface {p1, v2, p2, p3}, Ln/d0;->read(Ln/f;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_9

    sub-long/2addr p2, v2

    .line 13
    iget-object v2, p0, Lokhttp3/internal/http2/h$b;->k:Lokhttp3/internal/http2/h;

    monitor-enter v2

    .line 14
    :try_start_1
    iget-boolean v3, p0, Lokhttp3/internal/http2/h$b;->h:Z

    if-eqz v3, :cond_5

    .line 15
    iget-object v3, p0, Lokhttp3/internal/http2/h$b;->f:Ln/f;

    invoke-virtual {v3}, Ln/f;->p0()J

    move-result-wide v3

    .line 16
    iget-object v5, p0, Lokhttp3/internal/http2/h$b;->f:Ln/f;

    invoke-virtual {v5}, Ln/f;->a()V

    goto :goto_4

    .line 17
    :cond_5
    iget-object v3, p0, Lokhttp3/internal/http2/h$b;->g:Ln/f;

    invoke-virtual {v3}, Ln/f;->p0()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    .line 18
    :goto_2
    iget-object v3, p0, Lokhttp3/internal/http2/h$b;->g:Ln/f;

    iget-object v4, p0, Lokhttp3/internal/http2/h$b;->f:Ln/f;

    invoke-virtual {v3, v4}, Ln/f;->C0(Ln/d0;)J

    if-eqz v8, :cond_8

    .line 19
    iget-object v3, p0, Lokhttp3/internal/http2/h$b;->k:Lokhttp3/internal/http2/h;

    if-eqz v3, :cond_7

    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    goto :goto_3

    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    :goto_3
    move-wide v3, v0

    .line 21
    :goto_4
    monitor-exit v2

    cmp-long v2, v3, v0

    if-lez v2, :cond_1

    .line 22
    invoke-direct {p0, v3, v4}, Lokhttp3/internal/http2/h$b;->g(J)V

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 23
    monitor-exit v2

    throw p1

    .line 24
    :cond_9
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    .line 25
    monitor-exit v2

    throw p1

    :cond_a
    return-void
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->k:Lokhttp3/internal/http2/h;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lokhttp3/internal/http2/h$b;->h:Z

    .line 3
    iget-object v1, p0, Lokhttp3/internal/http2/h$b;->g:Ln/f;

    invoke-virtual {v1}, Ln/f;->p0()J

    move-result-wide v1

    .line 4
    iget-object v3, p0, Lokhttp3/internal/http2/h$b;->g:Ln/f;

    invoke-virtual {v3}, Ln/f;->a()V

    .line 5
    iget-object v3, p0, Lokhttp3/internal/http2/h$b;->k:Lokhttp3/internal/http2/h;

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 7
    sget-object v3, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    .line 9
    invoke-direct {p0, v1, v2}, Lokhttp3/internal/http2/h$b;->g(J)V

    .line 10
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->k:Lokhttp3/internal/http2/h;

    invoke-virtual {v0}, Lokhttp3/internal/http2/h;->b()V

    return-void

    .line 11
    :cond_1
    :try_start_1
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0

    throw v1
.end method

.method public final e(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lokhttp3/internal/http2/h$b;->j:Z

    return-void
.end method

.method public final f(Lm/x;)V
    .locals 0

    return-void
.end method

.method public read(Ln/f;J)J
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    const-string v4, "sink"

    invoke-static {v0, v4}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-ltz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_c

    .line 1
    :goto_1
    iget-object v8, v1, Lokhttp3/internal/http2/h$b;->k:Lokhttp3/internal/http2/h;

    monitor-enter v8

    .line 2
    :try_start_0
    iget-object v9, v1, Lokhttp3/internal/http2/h$b;->k:Lokhttp3/internal/http2/h;

    invoke-virtual {v9}, Lokhttp3/internal/http2/h;->m()Lokhttp3/internal/http2/h$c;

    move-result-object v9

    invoke-virtual {v9}, Ln/d;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v9, v1, Lokhttp3/internal/http2/h$b;->k:Lokhttp3/internal/http2/h;

    invoke-virtual {v9}, Lokhttp3/internal/http2/h;->h()Lokhttp3/internal/http2/a;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v9, :cond_3

    .line 4
    iget-object v9, v1, Lokhttp3/internal/http2/h$b;->k:Lokhttp3/internal/http2/h;

    invoke-virtual {v9}, Lokhttp3/internal/http2/h;->i()Ljava/io/IOException;

    move-result-object v9

    if-eqz v9, :cond_1

    goto :goto_2

    :cond_1
    new-instance v9, Lokhttp3/internal/http2/StreamResetException;

    iget-object v11, v1, Lokhttp3/internal/http2/h$b;->k:Lokhttp3/internal/http2/h;

    invoke-virtual {v11}, Lokhttp3/internal/http2/h;->h()Lokhttp3/internal/http2/a;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-direct {v9, v11}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/a;)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    :cond_3
    move-object v9, v10

    .line 5
    :goto_2
    :try_start_2
    iget-boolean v11, v1, Lokhttp3/internal/http2/h$b;->h:Z

    if-nez v11, :cond_b

    .line 6
    iget-object v11, v1, Lokhttp3/internal/http2/h$b;->g:Ln/f;

    invoke-virtual {v11}, Ln/f;->p0()J

    move-result-wide v11

    const-wide/16 v13, -0x1

    cmp-long v15, v11, v6

    if-lez v15, :cond_4

    .line 7
    iget-object v11, v1, Lokhttp3/internal/http2/h$b;->g:Ln/f;

    invoke-virtual {v11}, Ln/f;->p0()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v11, v0, v4, v5}, Ln/f;->read(Ln/f;J)J

    move-result-wide v4

    .line 8
    iget-object v11, v1, Lokhttp3/internal/http2/h$b;->k:Lokhttp3/internal/http2/h;

    invoke-virtual {v11}, Lokhttp3/internal/http2/h;->l()J

    move-result-wide v16

    add-long v6, v16, v4

    invoke-virtual {v11, v6, v7}, Lokhttp3/internal/http2/h;->A(J)V

    .line 9
    iget-object v6, v1, Lokhttp3/internal/http2/h$b;->k:Lokhttp3/internal/http2/h;

    invoke-virtual {v6}, Lokhttp3/internal/http2/h;->l()J

    move-result-wide v6

    iget-object v11, v1, Lokhttp3/internal/http2/h$b;->k:Lokhttp3/internal/http2/h;

    invoke-virtual {v11}, Lokhttp3/internal/http2/h;->k()J

    move-result-wide v16

    sub-long v6, v6, v16

    if-nez v9, :cond_6

    .line 10
    iget-object v11, v1, Lokhttp3/internal/http2/h$b;->k:Lokhttp3/internal/http2/h;

    invoke-virtual {v11}, Lokhttp3/internal/http2/h;->g()Lokhttp3/internal/http2/e;

    move-result-object v11

    invoke-virtual {v11}, Lokhttp3/internal/http2/e;->q0()Lokhttp3/internal/http2/m;

    move-result-object v11

    invoke-virtual {v11}, Lokhttp3/internal/http2/m;->c()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-long v10, v11

    cmp-long v17, v6, v10

    if-ltz v17, :cond_6

    .line 11
    iget-object v10, v1, Lokhttp3/internal/http2/h$b;->k:Lokhttp3/internal/http2/h;

    invoke-virtual {v10}, Lokhttp3/internal/http2/h;->g()Lokhttp3/internal/http2/e;

    move-result-object v10

    iget-object v11, v1, Lokhttp3/internal/http2/h$b;->k:Lokhttp3/internal/http2/h;

    invoke-virtual {v11}, Lokhttp3/internal/http2/h;->j()I

    move-result v11

    invoke-virtual {v10, v11, v6, v7}, Lokhttp3/internal/http2/e;->E1(IJ)V

    .line 12
    iget-object v6, v1, Lokhttp3/internal/http2/h$b;->k:Lokhttp3/internal/http2/h;

    invoke-virtual {v6}, Lokhttp3/internal/http2/h;->l()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lokhttp3/internal/http2/h;->z(J)V

    goto :goto_3

    .line 13
    :cond_4
    iget-boolean v4, v1, Lokhttp3/internal/http2/h$b;->j:Z

    if-nez v4, :cond_5

    if-nez v9, :cond_5

    .line 14
    iget-object v4, v1, Lokhttp3/internal/http2/h$b;->k:Lokhttp3/internal/http2/h;

    invoke-virtual {v4}, Lokhttp3/internal/http2/h;->D()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v4, v13

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    move-wide v4, v13

    :cond_6
    :goto_3
    const/4 v6, 0x0

    .line 15
    :goto_4
    :try_start_3
    iget-object v7, v1, Lokhttp3/internal/http2/h$b;->k:Lokhttp3/internal/http2/h;

    invoke-virtual {v7}, Lokhttp3/internal/http2/h;->m()Lokhttp3/internal/http2/h$c;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/internal/http2/h$c;->y()V

    .line 16
    sget-object v7, Lkotlin/r;->a:Lkotlin/r;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 17
    monitor-exit v8

    if-eqz v6, :cond_7

    const-wide/16 v6, 0x0

    goto/16 :goto_1

    :cond_7
    cmp-long v0, v4, v13

    if-eqz v0, :cond_8

    .line 18
    invoke-direct {v1, v4, v5}, Lokhttp3/internal/http2/h$b;->g(J)V

    return-wide v4

    :cond_8
    if-eqz v9, :cond_a

    if-nez v9, :cond_9

    .line 19
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0

    :cond_9
    throw v9

    :cond_a
    return-wide v13

    .line 20
    :cond_b
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string v2, "stream closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    .line 21
    :try_start_5
    iget-object v2, v1, Lokhttp3/internal/http2/h$b;->k:Lokhttp3/internal/http2/h;

    invoke-virtual {v2}, Lokhttp3/internal/http2/h;->m()Lokhttp3/internal/http2/h$c;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/internal/http2/h$c;->y()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    .line 22
    monitor-exit v8

    throw v0

    .line 23
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "byteCount < 0: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public timeout()Ln/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->k:Lokhttp3/internal/http2/h;

    invoke-virtual {v0}, Lokhttp3/internal/http2/h;->m()Lokhttp3/internal/http2/h$c;

    move-result-object v0

    return-object v0
.end method
