.class public final Ln3/d0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln3/d0/c;

.field public final b:Ln3/d0/a;


# direct methods
.method public constructor <init>(Ln3/d0/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/d0/b;->a:Ln3/d0/c;

    .line 3
    new-instance p1, Ln3/d0/a;

    invoke-direct {p1}, Ln3/d0/a;-><init>()V

    iput-object p1, p0, Ln3/d0/b;->b:Ln3/d0/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/d0/b;->a:Ln3/d0/c;

    invoke-interface {v0}, Ln3/v/b0;->getLifecycle()Ln3/v/u;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Ln3/v/c0;

    .line 3
    iget-object v1, v1, Ln3/v/c0;->c:Ln3/v/u$b;

    .line 4
    sget-object v2, Ln3/v/u$b;->b:Ln3/v/u$b;

    if-ne v1, v2, :cond_2

    .line 5
    new-instance v1, Landroidx/savedstate/Recreator;

    iget-object v2, p0, Ln3/d0/b;->a:Ln3/d0/c;

    invoke-direct {v1, v2}, Landroidx/savedstate/Recreator;-><init>(Ln3/d0/c;)V

    invoke-virtual {v0, v1}, Ln3/v/u;->a(Ln3/v/a0;)V

    .line 6
    iget-object v1, p0, Ln3/d0/b;->b:Ln3/d0/a;

    .line 7
    iget-boolean v2, v1, Ln3/d0/a;->c:Z

    if-nez v2, :cond_1

    if-eqz p1, :cond_0

    const-string v2, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    .line 8
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, v1, Ln3/d0/a;->b:Landroid/os/Bundle;

    .line 9
    :cond_0
    new-instance p1, Landroidx/savedstate/SavedStateRegistry$1;

    invoke-direct {p1, v1}, Landroidx/savedstate/SavedStateRegistry$1;-><init>(Ln3/d0/a;)V

    invoke-virtual {v0, p1}, Ln3/v/u;->a(Ln3/v/a0;)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, v1, Ln3/d0/a;->c:Z

    return-void

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SavedStateRegistry was already restored."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Restarter must be created only during owner\'s initialization stage"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/d0/b;->b:Ln3/d0/a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v2, v0, Ln3/d0/a;->b:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 6
    :cond_0
    iget-object v0, v0, Ln3/d0/a;->a:Ln3/c/a/b/b;

    .line 7
    invoke-virtual {v0}, Ln3/c/a/b/b;->b()Ln3/c/a/b/b$d;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ln3/c/a/b/b$d;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v0}, Ln3/c/a/b/b$d;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/d0/a$b;

    invoke-interface {v2}, Ln3/d0/a$b;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const-string v0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
