.class public final Lq3/a/i2;
.super Lq3/a/t1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lq3/a/t1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u00020\u0003B:\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0005\u0012\"\u0010\u0006\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u0008\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\nJ\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002R/\u0010\u0006\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u0008\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0007X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0010"
    }
    d2 = {
        "Lkotlinx/coroutines/SelectAwaitOnCompletion;",
        "T",
        "R",
        "Lkotlinx/coroutines/JobNode;",
        "select",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V",
        "Lkotlin/jvm/functions/Function2;",
        "invoke",
        "",
        "cause",
        "",
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
.field public final e:Lq3/a/a3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/a3/c<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final f:Ls1/z/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/p<",
            "TT;",
            "Ls1/w/d<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq3/a/a3/c;Ls1/z/b/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/a3/c<",
            "-TR;>;",
            "Ls1/z/b/p<",
            "-TT;-",
            "Ls1/w/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lq3/a/t1;-><init>()V

    .line 2
    iput-object p1, p0, Lq3/a/i2;->e:Lq3/a/a3/c;

    .line 3
    iput-object p2, p0, Lq3/a/i2;->f:Ls1/z/b/p;

    return-void
.end method


# virtual methods
.method public O(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lq3/a/i2;->e:Lq3/a/a3/c;

    invoke-interface {p1}, Lq3/a/a3/c;->v()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lq3/a/t1;->P()Lq3/a/u1;

    move-result-object p1

    iget-object v0, p0, Lq3/a/i2;->e:Lq3/a/a3/c;

    iget-object v1, p0, Lq3/a/i2;->f:Ls1/z/b/p;

    .line 3
    invoke-virtual {p1}, Lq3/a/u1;->V()Ljava/lang/Object;

    move-result-object p1

    .line 4
    instance-of v2, p1, Lq3/a/a0;

    if-eqz v2, :cond_0

    .line 5
    check-cast p1, Lq3/a/a0;

    iget-object p1, p1, Lq3/a/a0;->a:Ljava/lang/Throwable;

    invoke-interface {v0, p1}, Lq3/a/a3/c;->z(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lq3/a/v1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0}, Lq3/a/a3/c;->y()Ls1/w/d;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v1, p1, v0, v2, v3}, Ls1/a/a/a/v0/f/d;->v3(Ls1/z/b/p;Ljava/lang/Object;Ls1/w/d;Ls1/z/b/l;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lq3/a/i2;->O(Ljava/lang/Throwable;)V

    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
