.class public final Lq3/a/w2/a$e;
.super Lq3/a/w2/y;
.source "SourceFile"

# interfaces
.implements Lq3/a/v0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/a/w2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lq3/a/w2/y<",
        "TE;>;",
        "Lq3/a/v0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000*\u0004\u0008\u0001\u0010\u0001*\u0004\u0008\u0002\u0010\u00022\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u00020\u0004BR\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0008\u0012$\u0010\t\u001a \u0008\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\n\u0012\u0006\u0010\r\u001a\u00020\u000e\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000fJ\u0015\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00028\u0002H\u0016\u00a2\u0006\u0002\u0010\u0014J\u0008\u0010\u0015\u001a\u00020\u0012H\u0016J#\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00172\u0006\u0010\u0013\u001a\u00028\u0002H\u0016\u00a2\u0006\u0002\u0010\u0019J\u0014\u0010\u001a\u001a\u00020\u00122\n\u0010\u001b\u001a\u0006\u0012\u0002\u0008\u00030\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u001eH\u0016J!\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010\u0013\u001a\u00028\u00022\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016\u00a2\u0006\u0002\u0010#R3\u0010\t\u001a \u0008\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\n8\u0006X\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0010R\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006$"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;",
        "R",
        "E",
        "Lkotlinx/coroutines/channels/Receive;",
        "Lkotlinx/coroutines/DisposableHandle;",
        "channel",
        "Lkotlinx/coroutines/channels/AbstractChannel;",
        "select",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "block",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/coroutines/Continuation;",
        "receiveMode",
        "",
        "(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;I)V",
        "Lkotlin/jvm/functions/Function2;",
        "completeResumeReceive",
        "",
        "value",
        "(Ljava/lang/Object;)V",
        "dispose",
        "resumeOnCancellationFun",
        "Lkotlin/Function1;",
        "",
        "(Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;",
        "resumeReceiveClosed",
        "closed",
        "Lkotlinx/coroutines/channels/Closed;",
        "toString",
        "",
        "tryResumeReceive",
        "Lkotlinx/coroutines/internal/Symbol;",
        "otherOp",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;",
        "(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;",
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
.field public final d:Lq3/a/w2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/a<",
            "TE;>;"
        }
    .end annotation
.end field

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
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final g:I


# direct methods
.method public constructor <init>(Lq3/a/w2/a;Lq3/a/a3/c;Ls1/z/b/p;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/w2/a<",
            "TE;>;",
            "Lq3/a/a3/c<",
            "-TR;>;",
            "Ls1/z/b/p<",
            "Ljava/lang/Object;",
            "-",
            "Ls1/w/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lq3/a/w2/y;-><init>()V

    .line 2
    iput-object p1, p0, Lq3/a/w2/a$e;->d:Lq3/a/w2/a;

    .line 3
    iput-object p2, p0, Lq3/a/w2/a$e;->e:Lq3/a/a3/c;

    .line 4
    iput-object p3, p0, Lq3/a/w2/a$e;->f:Ls1/z/b/p;

    .line 5
    iput p4, p0, Lq3/a/w2/a$e;->g:I

    return-void
.end method


# virtual methods
.method public O(Ljava/lang/Object;)Ls1/z/b/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ls1/z/b/l<",
            "Ljava/lang/Throwable;",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/a/w2/a$e;->d:Lq3/a/w2/a;

    iget-object v0, v0, Lq3/a/w2/c;->a:Ls1/z/b/l;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lq3/a/w2/a$e;->e:Lq3/a/a3/c;

    invoke-interface {v1}, Lq3/a/a3/c;->y()Ls1/w/d;

    move-result-object v1

    invoke-interface {v1}, Ls1/w/d;->getContext()Ls1/w/f;

    move-result-object v1

    .line 2
    new-instance v2, Lq3/a/y2/r;

    invoke-direct {v2, v0, p1, v1}, Lq3/a/y2/r;-><init>(Ls1/z/b/l;Ljava/lang/Object;Ls1/w/f;)V

    move-object p1, v2

    :goto_0
    return-object p1
.end method

.method public P(Lq3/a/w2/o;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/w2/o<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/a/w2/a$e;->e:Lq3/a/a3/c;

    invoke-interface {v0}, Lq3/a/a3/c;->v()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lq3/a/w2/a$e;->g:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lq3/a/w2/a$e;->f:Ls1/z/b/p;

    iget-object p1, p1, Lq3/a/w2/o;->d:Ljava/lang/Throwable;

    .line 4
    new-instance v1, Lq3/a/w2/m$a;

    invoke-direct {v1, p1}, Lq3/a/w2/m$a;-><init>(Ljava/lang/Throwable;)V

    .line 5
    new-instance p1, Lq3/a/w2/m;

    invoke-direct {p1, v1}, Lq3/a/w2/m;-><init>(Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lq3/a/w2/a$e;->e:Lq3/a/a3/c;

    invoke-interface {v1}, Lq3/a/a3/c;->y()Ls1/w/d;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v0, p1, v1, v2, v3}, Ls1/a/a/a/v0/f/d;->v3(Ls1/z/b/p;Ljava/lang/Object;Ls1/w/d;Ls1/z/b/l;I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lq3/a/w2/a$e;->e:Lq3/a/a3/c;

    invoke-virtual {p1}, Lq3/a/w2/o;->T()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {v0, p1}, Lq3/a/a3/c;->z(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq3/a/y2/m;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lq3/a/w2/a$e;->d:Lq3/a/w2/a;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/a/w2/a$e;->f:Ls1/z/b/p;

    .line 2
    iget v1, p0, Lq3/a/w2/a$e;->g:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    new-instance v1, Lq3/a/w2/m;

    invoke-direct {v1, p1}, Lq3/a/w2/m;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 4
    :goto_0
    iget-object v2, p0, Lq3/a/w2/a$e;->e:Lq3/a/a3/c;

    invoke-interface {v2}, Lq3/a/a3/c;->y()Ls1/w/d;

    move-result-object v2

    .line 5
    invoke-virtual {p0, p1}, Lq3/a/w2/a$e;->O(Ljava/lang/Object;)Ls1/z/b/l;

    move-result-object p1

    .line 6
    invoke-static {v0, v1, v2, p1}, Ls1/a/a/a/v0/f/d;->u3(Ls1/z/b/p;Ljava/lang/Object;Ls1/w/d;Ls1/z/b/l;)V

    return-void
.end method

.method public m(Ljava/lang/Object;Lq3/a/y2/m$c;)Lq3/a/y2/x;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lq3/a/y2/m$c;",
            ")",
            "Lq3/a/y2/x;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lq3/a/w2/a$e;->e:Lq3/a/a3/c;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lq3/a/a3/c;->i(Lq3/a/y2/m$c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq3/a/y2/x;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ReceiveSelect@"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ls1/a/a/a/v0/f/d;->p1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lq3/a/w2/a$e;->e:Lq3/a/a3/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",receiveMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lq3/a/w2/a$e;->g:I

    const/16 v2, 0x5d

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->I2(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
