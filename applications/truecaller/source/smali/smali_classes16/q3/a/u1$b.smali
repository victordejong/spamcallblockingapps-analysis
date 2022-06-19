.class public final Lq3/a/u1$b;
.super Lq3/a/t1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/a/u1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlinx/coroutines/JobSupport$ChildCompletion;",
        "Lkotlinx/coroutines/JobNode;",
        "parent",
        "Lkotlinx/coroutines/JobSupport;",
        "state",
        "Lkotlinx/coroutines/JobSupport$Finishing;",
        "child",
        "Lkotlinx/coroutines/ChildHandleNode;",
        "proposedUpdate",
        "",
        "(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V",
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
.field public final e:Lq3/a/u1;

.field public final f:Lq3/a/u1$c;

.field public final g:Lq3/a/t;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lq3/a/u1;Lq3/a/u1$c;Lq3/a/t;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq3/a/t1;-><init>()V

    .line 2
    iput-object p1, p0, Lq3/a/u1$b;->e:Lq3/a/u1;

    .line 3
    iput-object p2, p0, Lq3/a/u1$b;->f:Lq3/a/u1$c;

    .line 4
    iput-object p3, p0, Lq3/a/u1$b;->g:Lq3/a/t;

    .line 5
    iput-object p4, p0, Lq3/a/u1$b;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public O(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lq3/a/u1$b;->e:Lq3/a/u1;

    iget-object v0, p0, Lq3/a/u1$b;->f:Lq3/a/u1$c;

    iget-object v1, p0, Lq3/a/u1$b;->g:Lq3/a/t;

    iget-object v2, p0, Lq3/a/u1$b;->h:Ljava/lang/Object;

    .line 2
    sget-object v3, Lq3/a/u1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    invoke-virtual {p1, v1}, Lq3/a/u1;->d0(Lq3/a/y2/m;)Lq3/a/t;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1, v0, v1, v2}, Lq3/a/u1;->r0(Lq3/a/u1$c;Lq3/a/t;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1, v0, v2}, Lq3/a/u1;->M(Lq3/a/u1$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Lq3/a/u1;->z(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lq3/a/u1$b;->O(Ljava/lang/Throwable;)V

    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
