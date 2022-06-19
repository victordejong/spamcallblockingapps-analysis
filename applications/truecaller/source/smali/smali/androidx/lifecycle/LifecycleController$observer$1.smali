.class public final Landroidx/lifecycle/LifecycleController$observer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/LifecycleController;-><init>(Ln3/v/u;Ln3/v/u$b;Ln3/v/k;Lq3/a/p1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "Ln3/v/b0;",
        "source",
        "Ln3/v/u$a;",
        "<anonymous parameter 1>",
        "Ls1/s;",
        "c7",
        "(Ln3/v/b0;Ln3/v/u$a;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/lifecycle/LifecycleController;

.field public final synthetic b:Lq3/a/p1;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleController;Lq3/a/p1;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/LifecycleController$observer$1;->a:Landroidx/lifecycle/LifecycleController;

    iput-object p2, p0, Landroidx/lifecycle/LifecycleController$observer$1;->b:Lq3/a/p1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c7(Ln3/v/b0;Ln3/v/u$a;)V
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ln3/v/b0;->getLifecycle()Ln3/v/u;

    move-result-object p2

    const-string v0, "source.lifecycle"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ln3/v/c0;

    .line 2
    iget-object p2, p2, Ln3/v/c0;->c:Ln3/v/u$b;

    .line 3
    sget-object v1, Ln3/v/u$b;->a:Ln3/v/u$b;

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    .line 4
    iget-object p1, p0, Landroidx/lifecycle/LifecycleController$observer$1;->a:Landroidx/lifecycle/LifecycleController;

    iget-object p2, p0, Landroidx/lifecycle/LifecycleController$observer$1;->b:Lq3/a/p1;

    const/4 v0, 0x0

    .line 5
    invoke-static {p2, v0, v2, v0}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 6
    invoke-virtual {p1}, Landroidx/lifecycle/LifecycleController;->a()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p1}, Ln3/v/b0;->getLifecycle()Ln3/v/u;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ln3/v/c0;

    .line 8
    iget-object p1, p1, Ln3/v/c0;->c:Ln3/v/u$b;

    .line 9
    iget-object p2, p0, Landroidx/lifecycle/LifecycleController$observer$1;->a:Landroidx/lifecycle/LifecycleController;

    .line 10
    iget-object p2, p2, Landroidx/lifecycle/LifecycleController;->c:Ln3/v/u$b;

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-gez p1, :cond_1

    .line 12
    iget-object p1, p0, Landroidx/lifecycle/LifecycleController$observer$1;->a:Landroidx/lifecycle/LifecycleController;

    .line 13
    iget-object p1, p1, Landroidx/lifecycle/LifecycleController;->d:Ln3/v/k;

    .line 14
    iput-boolean v2, p1, Ln3/v/k;->a:Z

    goto :goto_0

    .line 15
    :cond_1
    iget-object p1, p0, Landroidx/lifecycle/LifecycleController$observer$1;->a:Landroidx/lifecycle/LifecycleController;

    .line 16
    iget-object p1, p1, Landroidx/lifecycle/LifecycleController;->d:Ln3/v/k;

    .line 17
    iget-boolean p2, p1, Ln3/v/k;->a:Z

    if-nez p2, :cond_2

    goto :goto_0

    .line 18
    :cond_2
    iget-boolean p2, p1, Ln3/v/k;->b:Z

    xor-int/2addr p2, v2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    .line 19
    iput-boolean p2, p1, Ln3/v/k;->a:Z

    .line 20
    invoke-virtual {p1}, Ln3/v/k;->b()V

    :goto_0
    return-void

    .line 21
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot resume a finished dispatcher"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
