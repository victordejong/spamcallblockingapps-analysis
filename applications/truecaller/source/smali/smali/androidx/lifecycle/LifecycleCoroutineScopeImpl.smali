.class public final Landroidx/lifecycle/LifecycleCoroutineScopeImpl;
.super Ln3/v/w;
.source "SourceFile"

# interfaces
.implements Ln3/v/z;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\n\u0012\u0006\u0010\u0014\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001f\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u001c\u0010\u000e\u001a\u00020\n8\u0010@\u0010X\u0090\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\u000b\u0010\rR\u001c\u0010\u0014\u001a\u00020\u000f8\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/lifecycle/LifecycleCoroutineScopeImpl;",
        "Ln3/v/w;",
        "Ln3/v/z;",
        "Ln3/v/b0;",
        "source",
        "Ln3/v/u$a;",
        "event",
        "Ls1/s;",
        "c7",
        "(Ln3/v/b0;Ln3/v/u$a;)V",
        "Ln3/v/u;",
        "a",
        "Ln3/v/u;",
        "()Ln3/v/u;",
        "lifecycle",
        "Ls1/w/f;",
        "b",
        "Ls1/w/f;",
        "getCoroutineContext",
        "()Ls1/w/f;",
        "coroutineContext",
        "<init>",
        "(Ln3/v/u;Ls1/w/f;)V",
        "lifecycle-runtime-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Ln3/v/u;

.field public final b:Ls1/w/f;


# direct methods
.method public constructor <init>(Ln3/v/u;Ls1/w/f;)V
    .locals 1

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ln3/v/w;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->a:Ln3/v/u;

    iput-object p2, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->b:Ls1/w/f;

    .line 2
    check-cast p1, Ln3/v/c0;

    .line 3
    iget-object p1, p1, Ln3/v/c0;->c:Ln3/v/u$b;

    .line 4
    sget-object v0, Ln3/v/u$b;->a:Ln3/v/u$b;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 5
    invoke-static {p2, v0, p1, v0}, Ls1/a/a/a/v0/f/d;->R(Ls1/w/f;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ln3/v/u;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->a:Ln3/v/u;

    return-object v0
.end method

.method public c7(Ln3/v/b0;Ln3/v/u$a;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->a:Ln3/v/u;

    .line 2
    check-cast p1, Ln3/v/c0;

    .line 3
    iget-object p1, p1, Ln3/v/c0;->c:Ln3/v/u$b;

    .line 4
    sget-object p2, Ln3/v/u$b;->a:Ln3/v/u$b;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-gtz p1, :cond_0

    .line 5
    iget-object p1, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->a:Ln3/v/u;

    .line 6
    check-cast p1, Ln3/v/c0;

    const-string p2, "removeObserver"

    .line 7
    invoke-virtual {p1, p2}, Ln3/v/c0;->d(Ljava/lang/String;)V

    .line 8
    iget-object p1, p1, Ln3/v/c0;->b:Ln3/c/a/b/a;

    invoke-virtual {p1, p0}, Ln3/c/a/b/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->b:Ls1/w/f;

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 10
    invoke-static {p1, v0, p2, v0}, Ls1/a/a/a/v0/f/d;->R(Ls1/w/f;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->b:Ls1/w/f;

    return-object v0
.end method
