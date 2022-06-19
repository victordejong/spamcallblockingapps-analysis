.class public final Le/j/r0;
.super Ljava/io/OutputStream;
.source "SourceFile"

# interfaces
.implements Le/j/t0;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\t0\u0016J\u0012\u0010\u0017\u001a\u00020\u00122\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J \u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u000bH\u0016J\u0010\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u000bH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\t0\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/facebook/ProgressNoopOutputStream;",
        "Ljava/io/OutputStream;",
        "Lcom/facebook/RequestOutputStream;",
        "callbackHandler",
        "Landroid/os/Handler;",
        "(Landroid/os/Handler;)V",
        "currentRequest",
        "Lcom/facebook/GraphRequest;",
        "currentRequestProgress",
        "Lcom/facebook/RequestProgress;",
        "<set-?>",
        "",
        "maxProgress",
        "getMaxProgress",
        "()I",
        "progressMap",
        "",
        "addProgress",
        "",
        "size",
        "",
        "getProgressMap",
        "",
        "setCurrentRequest",
        "write",
        "buffer",
        "",
        "offset",
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
.field public final a:Landroid/os/Handler;

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

.field public c:Lcom/facebook/GraphRequest;

.field public d:Le/j/u0;

.field public e:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    iput-object p1, p0, Le/j/r0;->a:Landroid/os/Handler;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Le/j/r0;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public b(Lcom/facebook/GraphRequest;)V
    .locals 1

    .line 1
    iput-object p1, p0, Le/j/r0;->c:Lcom/facebook/GraphRequest;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Le/j/r0;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/j/u0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Le/j/r0;->d:Le/j/u0;

    return-void
.end method

.method public final d(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/j/r0;->c:Lcom/facebook/GraphRequest;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Le/j/r0;->d:Le/j/u0;

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Le/j/u0;

    iget-object v2, p0, Le/j/r0;->a:Landroid/os/Handler;

    invoke-direct {v1, v2, v0}, Le/j/u0;-><init>(Landroid/os/Handler;Lcom/facebook/GraphRequest;)V

    .line 4
    iput-object v1, p0, Le/j/r0;->d:Le/j/u0;

    .line 5
    iget-object v2, p0, Le/j/r0;->b:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    iget-object v0, p0, Le/j/r0;->d:Le/j/u0;

    if-nez v0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget-wide v1, v0, Le/j/u0;->f:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Le/j/u0;->f:J

    .line 8
    :goto_0
    iget v0, p0, Le/j/r0;->e:I

    long-to-int p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Le/j/r0;->e:I

    return-void
.end method

.method public write(I)V
    .locals 2

    const-wide/16 v0, 0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Le/j/r0;->d(J)V

    return-void
.end method

.method public write([B)V
    .locals 2

    const-string v0, "buffer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length p1, p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Le/j/r0;->d(J)V

    return-void
.end method

.method public write([BII)V
    .locals 0

    const-string p2, "buffer"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long p1, p3

    .line 2
    invoke-virtual {p0, p1, p2}, Le/j/r0;->d(J)V

    return-void
.end method
