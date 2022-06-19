.class public final Le/j/s0;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"

# interfaces
.implements Le/j/t0;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B1\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000cH\u0002J\u0008\u0010\u0019\u001a\u00020\u0017H\u0016J\u0008\u0010\u001a\u001a\u00020\u0017H\u0002J\u0012\u0010\u001b\u001a\u00020\u00172\u0008\u0010\u001c\u001a\u0004\u0018\u00010\tH\u0016J\u0010\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J \u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020!H\u0016J\u0010\u0010\u001d\u001a\u00020\u00172\u0006\u0010#\u001a\u00020!H\u0016R\u001e\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/facebook/ProgressOutputStream;",
        "Ljava/io/FilterOutputStream;",
        "Lcom/facebook/RequestOutputStream;",
        "out",
        "Ljava/io/OutputStream;",
        "requests",
        "Lcom/facebook/GraphRequestBatch;",
        "progressMap",
        "",
        "Lcom/facebook/GraphRequest;",
        "Lcom/facebook/RequestProgress;",
        "maxProgress",
        "",
        "(Ljava/io/OutputStream;Lcom/facebook/GraphRequestBatch;Ljava/util/Map;J)V",
        "<set-?>",
        "batchProgress",
        "getBatchProgress",
        "()J",
        "currentRequestProgress",
        "lastReportedProgress",
        "getMaxProgress",
        "threshold",
        "addProgress",
        "",
        "size",
        "close",
        "reportBatchProgress",
        "setCurrentRequest",
        "request",
        "write",
        "buffer",
        "",
        "offset",
        "",
        "length",
        "oneByte",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Le/j/k0;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/GraphRequest;",
            "Le/j/u0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:J

.field public e:J

.field public f:J

.field public g:Le/j/u0;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Le/j/k0;Ljava/util/Map;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Le/j/k0;",
            "Ljava/util/Map<",
            "Lcom/facebook/GraphRequest;",
            "Le/j/u0;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "out"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requests"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressMap"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2
    iput-object p2, p0, Le/j/s0;->a:Le/j/k0;

    .line 3
    iput-object p3, p0, Le/j/s0;->b:Ljava/util/Map;

    .line 4
    iput-wide p4, p0, Le/j/s0;->c:J

    .line 5
    sget-object p1, Le/j/f0;->a:Le/j/f0;

    .line 6
    sget-object p1, Lcom/facebook/internal/r0;->a:Lcom/facebook/internal/r0;

    invoke-static {}, Lcom/facebook/internal/r0;->f()V

    .line 7
    sget-object p1, Le/j/f0;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    .line 8
    iput-wide p1, p0, Le/j/s0;->d:J

    return-void
.end method


# virtual methods
.method public b(Lcom/facebook/GraphRequest;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Le/j/s0;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/j/u0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Le/j/s0;->g:Le/j/u0;

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 2
    iget-object v0, p0, Le/j/s0;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/j/u0;

    .line 3
    invoke-virtual {v1}, Le/j/u0;->a()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Le/j/s0;->j()V

    return-void
.end method

.method public final d(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/j/s0;->g:Le/j/u0;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v1, v0, Le/j/u0;->d:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Le/j/u0;->d:J

    .line 3
    iget-wide v3, v0, Le/j/u0;->e:J

    iget-wide v5, v0, Le/j/u0;->c:J

    add-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    iget-wide v3, v0, Le/j/u0;->f:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 4
    :cond_1
    invoke-virtual {v0}, Le/j/u0;->a()V

    .line 5
    :cond_2
    :goto_0
    iget-wide v0, p0, Le/j/s0;->e:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Le/j/s0;->e:J

    .line 6
    iget-wide p1, p0, Le/j/s0;->f:J

    iget-wide v2, p0, Le/j/s0;->d:J

    add-long/2addr p1, v2

    cmp-long p1, v0, p1

    if-gez p1, :cond_3

    iget-wide p1, p0, Le/j/s0;->c:J

    cmp-long p1, v0, p1

    if-ltz p1, :cond_4

    .line 7
    :cond_3
    invoke-virtual {p0}, Le/j/s0;->j()V

    :cond_4
    return-void
.end method

.method public final j()V
    .locals 9

    .line 1
    iget-wide v0, p0, Le/j/s0;->e:J

    iget-wide v2, p0, Le/j/s0;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 2
    iget-object v0, p0, Le/j/s0;->a:Le/j/k0;

    .line 3
    iget-object v0, v0, Le/j/k0;->d:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/j/k0$a;

    .line 5
    instance-of v2, v1, Le/j/k0$b;

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, p0, Le/j/s0;->a:Le/j/k0;

    .line 7
    iget-object v2, v2, Le/j/k0;->a:Landroid/os/Handler;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 8
    :cond_1
    new-instance v3, Le/j/r;

    invoke-direct {v3, v1, p0}, Le/j/r;-><init>(Le/j/k0$a;Le/j/s0;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_0

    .line 9
    move-object v3, v1

    check-cast v3, Le/j/k0$b;

    iget-object v4, p0, Le/j/s0;->a:Le/j/k0;

    iget-wide v5, p0, Le/j/s0;->e:J

    iget-wide v7, p0, Le/j/s0;->c:J

    invoke-interface/range {v3 .. v8}, Le/j/k0$b;->b(Le/j/k0;JJ)V

    goto :goto_0

    .line 10
    :cond_2
    iget-wide v0, p0, Le/j/s0;->e:J

    iput-wide v0, p0, Le/j/s0;->f:J

    :cond_3
    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    const-wide/16 v0, 0x1

    .line 6
    invoke-virtual {p0, v0, v1}, Le/j/s0;->d(J)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "buffer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 2
    array-length p1, p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Le/j/s0;->d(J)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "buffer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long p1, p3

    .line 4
    invoke-virtual {p0, p1, p2}, Le/j/s0;->d(J)V

    return-void
.end method
