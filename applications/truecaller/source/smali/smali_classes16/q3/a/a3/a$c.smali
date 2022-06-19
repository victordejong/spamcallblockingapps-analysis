.class public final Lq3/a/a3/a$c;
.super Lq3/a/y2/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/a/a3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0014\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016R\u0018\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlinx/coroutines/selects/SelectBuilderImpl$PairSelectOp;",
        "Lkotlinx/coroutines/internal/OpDescriptor;",
        "otherOp",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)V",
        "atomicOp",
        "Lkotlinx/coroutines/internal/AtomicOp;",
        "getAtomicOp",
        "()Lkotlinx/coroutines/internal/AtomicOp;",
        "perform",
        "",
        "affected",
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
.field public final a:Lq3/a/y2/m$c;


# direct methods
.method public constructor <init>(Lq3/a/y2/m$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq3/a/y2/s;-><init>()V

    .line 2
    iput-object p1, p0, Lq3/a/a3/a$c;->a:Lq3/a/y2/m$c;

    return-void
.end method


# virtual methods
.method public a()Lq3/a/y2/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/y2/d<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/a/a3/a$c;->a:Lq3/a/y2/m$c;

    invoke-virtual {v0}, Lq3/a/y2/m$c;->a()Lq3/a/y2/d;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectBuilderImpl<*>"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lq3/a/a3/a;

    .line 2
    iget-object v0, p0, Lq3/a/a3/a$c;->a:Lq3/a/y2/m$c;

    .line 3
    iget-object v1, v0, Lq3/a/y2/m$c;->c:Lq3/a/y2/m$a;

    invoke-virtual {v1, v0}, Lq3/a/y2/m$a;->e(Lq3/a/y2/m$c;)V

    .line 4
    iget-object v0, p0, Lq3/a/a3/a$c;->a:Lq3/a/y2/m$c;

    invoke-virtual {v0}, Lq3/a/y2/m$c;->a()Lq3/a/y2/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lq3/a/y2/d;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    iget-object v1, p0, Lq3/a/a3/a$c;->a:Lq3/a/y2/m$c;

    iget-object v1, v1, Lq3/a/y2/m$c;->c:Lq3/a/y2/m$a;

    goto :goto_0

    :cond_0
    sget-object v1, Lq3/a/a3/d;->a:Ljava/lang/Object;

    sget-object v1, Lq3/a/a3/d;->a:Ljava/lang/Object;

    .line 6
    :goto_0
    sget-object v2, Lq3/a/a3/a;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p1, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v0
.end method
