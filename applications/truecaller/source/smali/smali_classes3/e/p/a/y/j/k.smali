.class public final Le/p/a/y/j/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/p/a/y/j/k$d;,
        Le/p/a/y/j/k$b;,
        Le/p/a/y/j/k$c;
    }
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public final c:I

.field public final d:Le/p/a/y/j/d;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/p/a/y/j/l;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/p/a/y/j/l;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le/p/a/y/j/k$c;

.field public final h:Le/p/a/y/j/k$b;

.field public final i:Le/p/a/y/j/k$d;

.field public final j:Le/p/a/y/j/k$d;

.field public k:Le/p/a/y/j/a;


# direct methods
.method public constructor <init>(ILe/p/a/y/j/d;ZZLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le/p/a/y/j/d;",
            "ZZ",
            "Ljava/util/List<",
            "Le/p/a/y/j/l;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Le/p/a/y/j/k;->a:J

    .line 3
    new-instance v0, Le/p/a/y/j/k$d;

    invoke-direct {v0, p0}, Le/p/a/y/j/k$d;-><init>(Le/p/a/y/j/k;)V

    iput-object v0, p0, Le/p/a/y/j/k;->i:Le/p/a/y/j/k$d;

    .line 4
    new-instance v0, Le/p/a/y/j/k$d;

    invoke-direct {v0, p0}, Le/p/a/y/j/k$d;-><init>(Le/p/a/y/j/k;)V

    iput-object v0, p0, Le/p/a/y/j/k;->j:Le/p/a/y/j/k$d;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Le/p/a/y/j/k;->k:Le/p/a/y/j/a;

    const-string v1, "connection == null"

    .line 6
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "requestHeaders == null"

    .line 7
    invoke-static {p5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iput p1, p0, Le/p/a/y/j/k;->c:I

    .line 9
    iput-object p2, p0, Le/p/a/y/j/k;->d:Le/p/a/y/j/d;

    .line 10
    iget-object p1, p2, Le/p/a/y/j/d;->n:Le/p/a/y/j/t;

    const/high16 v1, 0x10000

    invoke-virtual {p1, v1}, Le/p/a/y/j/t;->b(I)I

    move-result p1

    int-to-long v2, p1

    iput-wide v2, p0, Le/p/a/y/j/k;->b:J

    .line 11
    new-instance p1, Le/p/a/y/j/k$c;

    iget-object p2, p2, Le/p/a/y/j/d;->m:Le/p/a/y/j/t;

    invoke-virtual {p2, v1}, Le/p/a/y/j/t;->b(I)I

    move-result p2

    int-to-long v1, p2

    invoke-direct {p1, p0, v1, v2, v0}, Le/p/a/y/j/k$c;-><init>(Le/p/a/y/j/k;JLe/p/a/y/j/k$a;)V

    iput-object p1, p0, Le/p/a/y/j/k;->g:Le/p/a/y/j/k$c;

    .line 12
    new-instance p2, Le/p/a/y/j/k$b;

    invoke-direct {p2, p0}, Le/p/a/y/j/k$b;-><init>(Le/p/a/y/j/k;)V

    iput-object p2, p0, Le/p/a/y/j/k;->h:Le/p/a/y/j/k$b;

    .line 13
    iput-boolean p4, p1, Le/p/a/y/j/k$c;->e:Z

    .line 14
    iput-boolean p3, p2, Le/p/a/y/j/k$b;->c:Z

    .line 15
    iput-object p5, p0, Le/p/a/y/j/k;->e:Ljava/util/List;

    return-void
.end method

.method public static a(Le/p/a/y/j/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Le/p/a/y/j/k;->g:Le/p/a/y/j/k$c;

    .line 3
    iget-boolean v1, v0, Le/p/a/y/j/k$c;->e:Z

    if-nez v1, :cond_1

    .line 4
    iget-boolean v0, v0, Le/p/a/y/j/k$c;->d:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Le/p/a/y/j/k;->h:Le/p/a/y/j/k$b;

    .line 6
    iget-boolean v1, v0, Le/p/a/y/j/k$b;->c:Z

    if-nez v1, :cond_0

    .line 7
    iget-boolean v0, v0, Le/p/a/y/j/k$b;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0}, Le/p/a/y/j/k;->i()Z

    move-result v1

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 10
    sget-object v0, Le/p/a/y/j/a;->o:Le/p/a/y/j/a;

    invoke-virtual {p0, v0}, Le/p/a/y/j/k;->c(Le/p/a/y/j/a;)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    .line 11
    iget-object v0, p0, Le/p/a/y/j/k;->d:Le/p/a/y/j/d;

    iget p0, p0, Le/p/a/y/j/k;->c:I

    invoke-virtual {v0, p0}, Le/p/a/y/j/d;->k(I)Le/p/a/y/j/k;

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b(Le/p/a/y/j/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/p/a/y/j/k;->h:Le/p/a/y/j/k$b;

    .line 2
    iget-boolean v1, v0, Le/p/a/y/j/k$b;->b:Z

    if-nez v1, :cond_2

    .line 3
    iget-boolean v0, v0, Le/p/a/y/j/k$b;->c:Z

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Le/p/a/y/j/k;->k:Le/p/a/y/j/a;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream was reset: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Le/p/a/y/j/k;->k:Le/p/a/y/j/a;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "stream finished"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "stream closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public c(Le/p/a/y/j/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Le/p/a/y/j/k;->d(Le/p/a/y/j/a;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/p/a/y/j/k;->d:Le/p/a/y/j/d;

    iget v1, p0, Le/p/a/y/j/k;->c:I

    .line 3
    iget-object v0, v0, Le/p/a/y/j/d;->r:Le/p/a/y/j/c;

    invoke-interface {v0, v1, p1}, Le/p/a/y/j/c;->T(ILe/p/a/y/j/a;)V

    return-void
.end method

.method public final d(Le/p/a/y/j/a;)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Le/p/a/y/j/k;->k:Le/p/a/y/j/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Le/p/a/y/j/k;->g:Le/p/a/y/j/k$c;

    .line 5
    iget-boolean v0, v0, Le/p/a/y/j/k$c;->e:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Le/p/a/y/j/k;->h:Le/p/a/y/j/k$b;

    .line 7
    iget-boolean v0, v0, Le/p/a/y/j/k$b;->c:Z

    if-eqz v0, :cond_1

    .line 8
    monitor-exit p0

    return v1

    .line 9
    :cond_1
    iput-object p1, p0, Le/p/a/y/j/k;->k:Le/p/a/y/j/a;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object p1, p0, Le/p/a/y/j/k;->d:Le/p/a/y/j/d;

    iget v0, p0, Le/p/a/y/j/k;->c:I

    invoke-virtual {p1, v0}, Le/p/a/y/j/d;->k(I)Le/p/a/y/j/k;

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public e(Le/p/a/y/j/a;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Le/p/a/y/j/k;->d(Le/p/a/y/j/a;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/p/a/y/j/k;->d:Le/p/a/y/j/d;

    iget v1, p0, Le/p/a/y/j/k;->c:I

    invoke-virtual {v0, v1, p1}, Le/p/a/y/j/d;->E(ILe/p/a/y/j/a;)V

    return-void
.end method

.method public declared-synchronized f()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/p/a/y/j/l;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/p/a/y/j/k;->i:Le/p/a/y/j/k$d;

    invoke-virtual {v0}, Lv3/b;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :goto_0
    :try_start_1
    iget-object v0, p0, Le/p/a/y/j/k;->f:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/p/a/y/j/k;->k:Le/p/a/y/j/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    .line 3
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4
    :catch_0
    :try_start_3
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5
    :cond_0
    :try_start_4
    iget-object v0, p0, Le/p/a/y/j/k;->i:Le/p/a/y/j/k$d;

    invoke-virtual {v0}, Le/p/a/y/j/k$d;->l()V

    .line 6
    iget-object v0, p0, Le/p/a/y/j/k;->f:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    .line 7
    :cond_1
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/p/a/y/j/k;->k:Le/p/a/y/j/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 8
    iget-object v1, p0, Le/p/a/y/j/k;->i:Le/p/a/y/j/k$d;

    invoke-virtual {v1}, Le/p/a/y/j/k$d;->l()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()Lv3/z;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Le/p/a/y/j/k;->f:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Le/p/a/y/j/k;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Le/p/a/y/j/k;->h:Le/p/a/y/j/k$b;

    return-object v0

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public h()Z
    .locals 4

    .line 1
    iget v0, p0, Le/p/a/y/j/k;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    iget-object v3, p0, Le/p/a/y/j/k;->d:Le/p/a/y/j/d;

    iget-boolean v3, v3, Le/p/a/y/j/d;->b:Z

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public declared-synchronized i()Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/p/a/y/j/k;->k:Le/p/a/y/j/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return v1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Le/p/a/y/j/k;->g:Le/p/a/y/j/k$c;

    .line 4
    iget-boolean v2, v0, Le/p/a/y/j/k$c;->e:Z

    if-nez v2, :cond_1

    .line 5
    iget-boolean v0, v0, Le/p/a/y/j/k$c;->d:Z

    if-eqz v0, :cond_3

    .line 6
    :cond_1
    iget-object v0, p0, Le/p/a/y/j/k;->h:Le/p/a/y/j/k$b;

    .line 7
    iget-boolean v2, v0, Le/p/a/y/j/k$b;->c:Z

    if-nez v2, :cond_2

    .line 8
    iget-boolean v0, v0, Le/p/a/y/j/k$b;->b:Z

    if-eqz v0, :cond_3

    .line 9
    :cond_2
    iget-object v0, p0, Le/p/a/y/j/k;->f:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 10
    monitor-exit p0

    return v1

    :cond_3
    const/4 v0, 0x1

    .line 11
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Le/p/a/y/j/k;->g:Le/p/a/y/j/k$c;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Le/p/a/y/j/k$c;->e:Z

    .line 4
    invoke-virtual {p0}, Le/p/a/y/j/k;->i()Z

    move-result v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Le/p/a/y/j/k;->d:Le/p/a/y/j/d;

    iget v1, p0, Le/p/a/y/j/k;->c:I

    invoke-virtual {v0, v1}, Le/p/a/y/j/d;->k(I)Le/p/a/y/j/k;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
