.class public final Lp3/a/o1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/z;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/o1/a$d;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lv3/f;

.field public final c:Lp3/a/n1/l2;

.field public final d:Lp3/a/o1/b$a;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Lv3/z;

.field public i:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lp3/a/n1/l2;Lp3/a/o1/b$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lp3/a/o1/a;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Lv3/f;

    invoke-direct {v0}, Lv3/f;-><init>()V

    iput-object v0, p0, Lp3/a/o1/a;->b:Lv3/f;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lp3/a/o1/a;->e:Z

    .line 5
    iput-boolean v0, p0, Lp3/a/o1/a;->f:Z

    .line 6
    iput-boolean v0, p0, Lp3/a/o1/a;->g:Z

    const-string v0, "executor"

    .line 7
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lp3/a/n1/l2;

    iput-object p1, p0, Lp3/a/o1/a;->c:Lp3/a/n1/l2;

    const-string p1, "exceptionHandler"

    .line 8
    invoke-static {p2, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lp3/a/o1/b$a;

    iput-object p2, p0, Lp3/a/o1/a;->d:Lp3/a/o1/b$a;

    return-void
.end method


# virtual methods
.method public b(Lv3/z;Ljava/net/Socket;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/o1/a;->h:Lv3/z;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "AsyncSink\'s becomeConnected should only be called once."

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    const-string v0, "sink"

    .line 2
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lp3/a/o1/a;->h:Lv3/z;

    const-string p1, "socket"

    .line 3
    invoke-static {p2, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lp3/a/o1/a;->i:Ljava/net/Socket;

    return-void
.end method

.method public close()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lp3/a/o1/a;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lp3/a/o1/a;->g:Z

    .line 3
    iget-object v0, p0, Lp3/a/o1/a;->c:Lp3/a/n1/l2;

    new-instance v1, Lp3/a/o1/a$c;

    invoke-direct {v1, p0}, Lp3/a/o1/a$c;-><init>(Lp3/a/o1/a;)V

    .line 4
    iget-object v2, v0, Lp3/a/n1/l2;->b:Ljava/util/Queue;

    const-string v3, "\'r\' must not be null."

    invoke-static {v1, v3}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v0, v1}, Lp3/a/n1/l2;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lp3/a/o1/a;->g:Z

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lp3/c/c;->a:Lp3/c/a;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :try_start_0
    iget-object v1, p0, Lp3/a/o1/a;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-boolean v2, p0, Lp3/a/o1/a;->f:Z

    if-eqz v2, :cond_0

    .line 6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 8
    :try_start_2
    iput-boolean v2, p0, Lp3/a/o1/a;->f:Z

    .line 9
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10
    :try_start_3
    iget-object v1, p0, Lp3/a/o1/a;->c:Lp3/a/n1/l2;

    new-instance v2, Lp3/a/o1/a$b;

    invoke-direct {v2, p0}, Lp3/a/o1/a$b;-><init>(Lp3/a/o1/a;)V

    .line 11
    iget-object v3, v1, Lp3/a/n1/l2;->b:Ljava/util/Queue;

    const-string v4, "\'r\' must not be null."

    invoke-static {v2, v4}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {v1, v2}, Lp3/a/n1/l2;->c(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 14
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 15
    :goto_0
    sget-object v1, Lp3/c/c;->a:Lp3/c/a;

    .line 16
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    throw v0

    .line 18
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h1(Lv3/f;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    .line 1
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lp3/a/o1/a;->g:Z

    if-nez v0, :cond_2

    .line 3
    sget-object v0, Lp3/c/c;->a:Lp3/c/a;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :try_start_0
    iget-object v1, p0, Lp3/a/o1/a;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    iget-object v2, p0, Lp3/a/o1/a;->b:Lv3/f;

    invoke-virtual {v2, p1, p2, p3}, Lv3/f;->h1(Lv3/f;J)V

    .line 7
    iget-boolean p1, p0, Lp3/a/o1/a;->e:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lp3/a/o1/a;->f:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lp3/a/o1/a;->b:Lv3/f;

    invoke-virtual {p1}, Lv3/f;->j()J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lp3/a/o1/a;->e:Z

    .line 9
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :try_start_2
    iget-object p1, p0, Lp3/a/o1/a;->c:Lp3/a/n1/l2;

    new-instance p2, Lp3/a/o1/a$a;

    invoke-direct {p2, p0}, Lp3/a/o1/a$a;-><init>(Lp3/a/o1/a;)V

    .line 11
    iget-object p3, p1, Lp3/a/n1/l2;->b:Ljava/util/Queue;

    const-string v1, "\'r\' must not be null."

    invoke-static {p2, v1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {p1, p2}, Lp3/a/n1/l2;->c(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 15
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_1
    move-exception p1

    .line 16
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 17
    :goto_1
    sget-object p2, Lp3/c/c;->a:Lp3/c/a;

    .line 18
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    throw p1

    .line 20
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i()Lv3/c0;
    .locals 1

    .line 1
    sget-object v0, Lv3/c0;->d:Lv3/c0;

    return-object v0
.end method
