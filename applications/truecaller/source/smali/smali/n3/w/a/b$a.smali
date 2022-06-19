.class public Ln3/w/a/b$a;
.super Ln3/v/k0;
.source "SourceFile"

# interfaces
.implements Ln3/w/b/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/w/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ln3/v/k0<",
        "TD;>;",
        "Ln3/w/b/b$b<",
        "TD;>;"
    }
.end annotation


# instance fields
.field public final l:I

.field public final m:Landroid/os/Bundle;

.field public final n:Ln3/w/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/w/b/b<",
            "TD;>;"
        }
    .end annotation
.end field

.field public o:Ln3/v/b0;

.field public p:Ln3/w/a/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/w/a/b$b<",
            "TD;>;"
        }
    .end annotation
.end field

.field public q:Ln3/w/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/w/b/b<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroid/os/Bundle;Ln3/w/b/b;Ln3/w/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Ln3/w/b/b<",
            "TD;>;",
            "Ln3/w/b/b<",
            "TD;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ln3/v/k0;-><init>()V

    .line 2
    iput p1, p0, Ln3/w/a/b$a;->l:I

    .line 3
    iput-object p2, p0, Ln3/w/a/b$a;->m:Landroid/os/Bundle;

    .line 4
    iput-object p3, p0, Ln3/w/a/b$a;->n:Ln3/w/b/b;

    .line 5
    iput-object p4, p0, Ln3/w/a/b$a;->q:Ln3/w/b/b;

    .line 6
    invoke-virtual {p3, p1, p0}, Ln3/w/b/b;->registerListener(ILn3/w/b/b$b;)V

    return-void
.end method


# virtual methods
.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/w/a/b$a;->n:Ln3/w/b/b;

    invoke-virtual {v0}, Ln3/w/b/b;->startLoading()V

    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/w/a/b$a;->n:Ln3/w/b/b;

    invoke-virtual {v0}, Ln3/w/b/b;->stopLoading()V

    return-void
.end method

.method public k(Ln3/v/l0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/v/l0<",
            "-TD;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/lifecycle/LiveData;->k(Ln3/v/l0;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Ln3/w/a/b$a;->o:Ln3/v/b0;

    .line 3
    iput-object p1, p0, Ln3/w/a/b$a;->p:Ln3/w/a/b$b;

    return-void
.end method

.method public l(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Ln3/v/k0;->l(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Ln3/w/a/b$a;->q:Ln3/w/b/b;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ln3/w/b/b;->reset()V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Ln3/w/a/b$a;->q:Ln3/w/b/b;

    :cond_0
    return-void
.end method

.method public m(Z)Ln3/w/b/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ln3/w/b/b<",
            "TD;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/w/a/b$a;->n:Ln3/w/b/b;

    invoke-virtual {v0}, Ln3/w/b/b;->cancelLoad()Z

    .line 2
    iget-object v0, p0, Ln3/w/a/b$a;->n:Ln3/w/b/b;

    invoke-virtual {v0}, Ln3/w/b/b;->abandon()V

    .line 3
    iget-object v0, p0, Ln3/w/a/b$a;->p:Ln3/w/a/b$b;

    if-eqz v0, :cond_0

    .line 4
    invoke-super {p0, v0}, Landroidx/lifecycle/LiveData;->k(Ln3/v/l0;)V

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Ln3/w/a/b$a;->o:Ln3/v/b0;

    .line 6
    iput-object v1, p0, Ln3/w/a/b$a;->p:Ln3/w/a/b$b;

    if-eqz p1, :cond_0

    .line 7
    iget-boolean v1, v0, Ln3/w/a/b$b;->c:Z

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, v0, Ln3/w/a/b$b;->b:Ln3/w/a/a$a;

    iget-object v2, v0, Ln3/w/a/b$b;->a:Ln3/w/b/b;

    invoke-interface {v1, v2}, Ln3/w/a/a$a;->onLoaderReset(Ln3/w/b/b;)V

    .line 9
    :cond_0
    iget-object v1, p0, Ln3/w/a/b$a;->n:Ln3/w/b/b;

    invoke-virtual {v1, p0}, Ln3/w/b/b;->unregisterListener(Ln3/w/b/b$b;)V

    if-eqz v0, :cond_1

    .line 10
    iget-boolean v0, v0, Ln3/w/a/b$b;->c:Z

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    .line 11
    :cond_2
    iget-object p1, p0, Ln3/w/a/b$a;->n:Ln3/w/b/b;

    invoke-virtual {p1}, Ln3/w/b/b;->reset()V

    .line 12
    iget-object p1, p0, Ln3/w/a/b$a;->q:Ln3/w/b/b;

    return-object p1

    .line 13
    :cond_3
    iget-object p1, p0, Ln3/w/a/b$a;->n:Ln3/w/b/b;

    return-object p1
.end method

.method public n()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/w/a/b$a;->o:Ln3/v/b0;

    .line 2
    iget-object v1, p0, Ln3/w/a/b$a;->p:Ln3/w/a/b$b;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 3
    invoke-super {p0, v1}, Landroidx/lifecycle/LiveData;->k(Ln3/v/l0;)V

    .line 4
    invoke-virtual {p0, v0, v1}, Landroidx/lifecycle/LiveData;->f(Ln3/v/b0;Ln3/v/l0;)V

    :cond_0
    return-void
.end method

.method public o(Ln3/w/b/b;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/w/b/b<",
            "TD;>;TD;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2
    invoke-super {p0, p2}, Ln3/v/k0;->l(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Ln3/w/a/b$a;->q:Ln3/w/b/b;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Ln3/w/b/b;->reset()V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Ln3/w/a/b$a;->q:Ln3/w/b/b;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p2}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public p(Ln3/v/b0;Ln3/w/a/a$a;)Ln3/w/b/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/v/b0;",
            "Ln3/w/a/a$a<",
            "TD;>;)",
            "Ln3/w/b/b<",
            "TD;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ln3/w/a/b$b;

    iget-object v1, p0, Ln3/w/a/b$a;->n:Ln3/w/b/b;

    invoke-direct {v0, v1, p2}, Ln3/w/a/b$b;-><init>(Ln3/w/b/b;Ln3/w/a/a$a;)V

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/LiveData;->f(Ln3/v/b0;Ln3/v/l0;)V

    .line 3
    iget-object p2, p0, Ln3/w/a/b$a;->p:Ln3/w/a/b$b;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0, p2}, Ln3/w/a/b$a;->k(Ln3/v/l0;)V

    .line 5
    :cond_0
    iput-object p1, p0, Ln3/w/a/b$a;->o:Ln3/v/b0;

    .line 6
    iput-object v0, p0, Ln3/w/a/b$a;->p:Ln3/w/a/b$b;

    .line 7
    iget-object p1, p0, Ln3/w/a/b$a;->n:Ln3/w/b/b;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x40

    const-string v1, "LoaderInfo{"

    .line 1
    invoke-static {v0, v1}, Le/d/c/a/a;->x(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget v1, p0, Ln3/w/a/b$a;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Ln3/w/a/b$a;->n:Ln3/w/b/b;

    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->j(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
