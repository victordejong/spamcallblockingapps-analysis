.class public final Landroidx/lifecycle/LifecycleController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln3/v/z;

.field public final b:Ln3/v/u;

.field public final c:Ln3/v/u$b;

.field public final d:Ln3/v/k;


# direct methods
.method public constructor <init>(Ln3/v/u;Ln3/v/u$b;Ln3/v/k;Lq3/a/p1;)V
    .locals 1

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minState"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatchQueue"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentJob"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/LifecycleController;->b:Ln3/v/u;

    iput-object p2, p0, Landroidx/lifecycle/LifecycleController;->c:Ln3/v/u$b;

    iput-object p3, p0, Landroidx/lifecycle/LifecycleController;->d:Ln3/v/k;

    .line 2
    new-instance p2, Landroidx/lifecycle/LifecycleController$observer$1;

    invoke-direct {p2, p0, p4}, Landroidx/lifecycle/LifecycleController$observer$1;-><init>(Landroidx/lifecycle/LifecycleController;Lq3/a/p1;)V

    iput-object p2, p0, Landroidx/lifecycle/LifecycleController;->a:Ln3/v/z;

    .line 3
    move-object p3, p1

    check-cast p3, Ln3/v/c0;

    .line 4
    iget-object p3, p3, Ln3/v/c0;->c:Ln3/v/u$b;

    .line 5
    sget-object v0, Ln3/v/u$b;->a:Ln3/v/u$b;

    if-ne p3, v0, :cond_0

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 6
    invoke-static {p4, p2, p1, p2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Landroidx/lifecycle/LifecycleController;->a()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Ln3/v/u;->a(Ln3/v/a0;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LifecycleController;->b:Ln3/v/u;

    iget-object v1, p0, Landroidx/lifecycle/LifecycleController;->a:Ln3/v/z;

    invoke-virtual {v0, v1}, Ln3/v/u;->b(Ln3/v/a0;)V

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/LifecycleController;->d:Ln3/v/k;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Ln3/v/k;->b:Z

    .line 4
    invoke-virtual {v0}, Ln3/v/k;->b()V

    return-void
.end method
