.class public Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
.super Landroidx/lifecycle/LiveData$c;
.source "SourceFile"

# interfaces
.implements Ln3/v/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LifecycleBoundObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "TT;>.c;",
        "Ln3/v/z;"
    }
.end annotation


# instance fields
.field public final e:Ln3/v/b0;

.field public final synthetic f:Landroidx/lifecycle/LiveData;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveData;Ln3/v/b0;Ln3/v/l0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/v/b0;",
            "Ln3/v/l0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->f:Landroidx/lifecycle/LiveData;

    .line 2
    invoke-direct {p0, p1, p3}, Landroidx/lifecycle/LiveData$c;-><init>(Landroidx/lifecycle/LiveData;Ln3/v/l0;)V

    .line 3
    iput-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Ln3/v/b0;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Ln3/v/b0;

    invoke-interface {v0}, Ln3/v/b0;->getLifecycle()Ln3/v/u;

    move-result-object v0

    check-cast v0, Ln3/v/c0;

    const-string v1, "removeObserver"

    .line 2
    invoke-virtual {v0, v1}, Ln3/v/c0;->d(Ljava/lang/String;)V

    .line 3
    iget-object v0, v0, Ln3/v/c0;->b:Ln3/c/a/b/a;

    invoke-virtual {v0, p0}, Ln3/c/a/b/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Ln3/v/b0;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Ln3/v/b0;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c7(Ln3/v/b0;Ln3/v/u$a;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Ln3/v/b0;

    invoke-interface {p1}, Ln3/v/b0;->getLifecycle()Ln3/v/u;

    move-result-object p1

    check-cast p1, Ln3/v/c0;

    .line 2
    iget-object p1, p1, Ln3/v/c0;->c:Ln3/v/u$b;

    .line 3
    sget-object p2, Ln3/v/u$b;->a:Ln3/v/u$b;

    if-ne p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->f:Landroidx/lifecycle/LiveData;

    iget-object p2, p0, Landroidx/lifecycle/LiveData$c;->a:Ln3/v/l0;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->k(Ln3/v/l0;)V

    return-void

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eq p2, p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->d()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/lifecycle/LiveData$c;->a(Z)V

    .line 6
    iget-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Ln3/v/b0;

    invoke-interface {p2}, Ln3/v/b0;->getLifecycle()Ln3/v/u;

    move-result-object p2

    check-cast p2, Ln3/v/c0;

    .line 7
    iget-object p2, p2, Ln3/v/c0;->c:Ln3/v/u$b;

    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Ln3/v/b0;

    invoke-interface {v0}, Ln3/v/b0;->getLifecycle()Ln3/v/u;

    move-result-object v0

    check-cast v0, Ln3/v/c0;

    .line 2
    iget-object v0, v0, Ln3/v/c0;->c:Ln3/v/u$b;

    .line 3
    sget-object v1, Ln3/v/u$b;->d:Ln3/v/u$b;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
