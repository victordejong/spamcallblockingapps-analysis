.class public final Lq3/a/b3/d$a;
.super Lq3/a/b3/d$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/a/b3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u001d\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0004H\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\n\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0016R\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlinx/coroutines/sync/MutexImpl$LockCont;",
        "Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;",
        "Lkotlinx/coroutines/sync/MutexImpl;",
        "owner",
        "",
        "cont",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "",
        "(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V",
        "completeResumeLockWaiter",
        "token",
        "toString",
        "",
        "tryResumeLockWaiter",
        "kotlinx-coroutines-core"
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
.field public final e:Lq3/a/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/n<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Lq3/a/b3/d;


# direct methods
.method public constructor <init>(Lq3/a/b3/d;Ljava/lang/Object;Lq3/a/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lq3/a/n<",
            "-",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq3/a/b3/d$a;->f:Lq3/a/b3/d;

    .line 2
    invoke-direct {p0, p1, p2}, Lq3/a/b3/d$b;-><init>(Lq3/a/b3/d;Ljava/lang/Object;)V

    .line 3
    iput-object p3, p0, Lq3/a/b3/d$a;->e:Lq3/a/n;

    return-void
.end method


# virtual methods
.method public O(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/a/b3/d$a;->e:Lq3/a/n;

    invoke-interface {v0, p1}, Lq3/a/n;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public P()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lq3/a/b3/d$a;->e:Lq3/a/n;

    sget-object v1, Ls1/s;->a:Ls1/s;

    new-instance v2, Lq3/a/b3/d$a$a;

    iget-object v3, p0, Lq3/a/b3/d$a;->f:Lq3/a/b3/d;

    invoke-direct {v2, v3, p0}, Lq3/a/b3/d$a$a;-><init>(Lq3/a/b3/d;Lq3/a/b3/d$a;)V

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lq3/a/n;->w(Ljava/lang/Object;Ljava/lang/Object;Ls1/z/b/l;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "LockCont["

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lq3/a/b3/d$b;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lq3/a/b3/d$a;->e:Lq3/a/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lq3/a/b3/d$a;->f:Lq3/a/b3/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
