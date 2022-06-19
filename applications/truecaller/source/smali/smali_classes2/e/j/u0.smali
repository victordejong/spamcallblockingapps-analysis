.class public final Le/j/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0008J\u000e\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0008J\u0006\u0010\u0014\u001a\u00020\u0011R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\r\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/facebook/RequestProgress;",
        "",
        "callbackHandler",
        "Landroid/os/Handler;",
        "request",
        "Lcom/facebook/GraphRequest;",
        "(Landroid/os/Handler;Lcom/facebook/GraphRequest;)V",
        "lastReportedProgress",
        "",
        "<set-?>",
        "maxProgress",
        "getMaxProgress",
        "()J",
        "progress",
        "getProgress",
        "threshold",
        "addProgress",
        "",
        "size",
        "addToMax",
        "reportProgress",
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
.field public final a:Landroid/os/Handler;

.field public final b:Lcom/facebook/GraphRequest;

.field public final c:J

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/GraphRequest;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/j/u0;->a:Landroid/os/Handler;

    iput-object p2, p0, Le/j/u0;->b:Lcom/facebook/GraphRequest;

    .line 3
    sget-object p1, Le/j/f0;->a:Le/j/f0;

    .line 4
    sget-object p1, Lcom/facebook/internal/r0;->a:Lcom/facebook/internal/r0;

    invoke-static {}, Lcom/facebook/internal/r0;->f()V

    .line 5
    sget-object p1, Le/j/f0;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    .line 6
    iput-wide p1, p0, Le/j/u0;->c:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    .line 1
    iget-wide v6, p0, Le/j/u0;->d:J

    iget-wide v0, p0, Le/j/u0;->e:J

    cmp-long v0, v6, v0

    if-lez v0, :cond_2

    .line 2
    iget-object v0, p0, Le/j/u0;->b:Lcom/facebook/GraphRequest;

    .line 3
    iget-object v8, v0, Lcom/facebook/GraphRequest;->h:Lcom/facebook/GraphRequest$b;

    .line 4
    iget-wide v9, p0, Le/j/u0;->f:J

    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-lez v0, :cond_2

    instance-of v0, v8, Lcom/facebook/GraphRequest$f;

    if-eqz v0, :cond_2

    .line 5
    iget-object v11, p0, Le/j/u0;->a:Landroid/os/Handler;

    if-nez v11, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v12, Le/j/s;

    move-object v0, v12

    move-object v1, v8

    move-wide v2, v6

    move-wide v4, v9

    invoke-direct/range {v0 .. v5}, Le/j/s;-><init>(Lcom/facebook/GraphRequest$b;JJ)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 6
    check-cast v8, Lcom/facebook/GraphRequest$f;

    invoke-interface {v8, v6, v7, v9, v10}, Lcom/facebook/GraphRequest$f;->b(JJ)V

    .line 7
    :cond_1
    iget-wide v0, p0, Le/j/u0;->d:J

    iput-wide v0, p0, Le/j/u0;->e:J

    :cond_2
    return-void
.end method
