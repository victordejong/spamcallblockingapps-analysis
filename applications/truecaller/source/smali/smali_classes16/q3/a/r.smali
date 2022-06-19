.class public final Lq3/a/r;
.super Lq3/a/r1;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0096\u0002R\u0014\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlinx/coroutines/ChildContinuation;",
        "Lkotlinx/coroutines/JobCancellingNode;",
        "child",
        "Lkotlinx/coroutines/CancellableContinuationImpl;",
        "(Lkotlinx/coroutines/CancellableContinuationImpl;)V",
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
.field public final e:Lq3/a/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/o<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq3/a/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/o<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lq3/a/r1;-><init>()V

    .line 2
    iput-object p1, p0, Lq3/a/r;->e:Lq3/a/o;

    return-void
.end method


# virtual methods
.method public O(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lq3/a/r;->e:Lq3/a/o;

    invoke-virtual {p0}, Lq3/a/t1;->P()Lq3/a/u1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lq3/a/o;->v(Lq3/a/p1;)Ljava/lang/Throwable;

    move-result-object v0

    .line 2
    iget v1, p1, Lq3/a/r0;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p1}, Lq3/a/o;->B()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    iget-object v1, p1, Lq3/a/o;->d:Ls1/w/d;

    check-cast v1, Lq3/a/y2/i;

    .line 5
    invoke-virtual {v1, v0}, Lq3/a/y2/i;->l(Ljava/lang/Throwable;)Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    invoke-virtual {p1, v0}, Lq3/a/o;->m(Ljava/lang/Throwable;)Z

    .line 7
    invoke-virtual {p1}, Lq3/a/o;->s()V

    :goto_2
    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lq3/a/r;->O(Ljava/lang/Throwable;)V

    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
