.class public abstract Ln3/v/a;
.super Ln3/v/a1$c;
.source "SourceFile"


# instance fields
.field public final a:Ln3/d0/a;

.field public final b:Ln3/v/u;

.field public final c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ln3/d0/c;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/v/a1$c;-><init>()V

    .line 2
    invoke-interface {p1}, Ln3/d0/c;->getSavedStateRegistry()Ln3/d0/a;

    move-result-object v0

    iput-object v0, p0, Ln3/v/a;->a:Ln3/d0/a;

    .line 3
    invoke-interface {p1}, Ln3/v/b0;->getLifecycle()Ln3/v/u;

    move-result-object p1

    iput-object p1, p0, Ln3/v/a;->b:Ln3/v/u;

    .line 4
    iput-object p2, p0, Ln3/v/a;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a(Ln3/v/y0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/v/a;->a:Ln3/d0/a;

    iget-object v1, p0, Ln3/v/a;->b:Ln3/v/u;

    invoke-static {p1, v0, v1}, Landroidx/lifecycle/SavedStateHandleController;->a(Ln3/v/y0;Ln3/d0/a;Ln3/v/u;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Class;)Ln3/v/y0;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ln3/v/y0;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/v/a;->a:Ln3/d0/a;

    iget-object v1, p0, Ln3/v/a;->b:Ln3/v/u;

    iget-object v2, p0, Ln3/v/a;->c:Landroid/os/Bundle;

    invoke-static {v0, v1, p1, v2}, Landroidx/lifecycle/SavedStateHandleController;->c(Ln3/d0/a;Ln3/v/u;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandleController;

    move-result-object p1

    .line 2
    iget-object v0, p1, Landroidx/lifecycle/SavedStateHandleController;->c:Ln3/v/s0;

    .line 3
    move-object v1, p0

    check-cast v1, Lo3/b/a/c/b/d$a;

    .line 4
    iget-object v1, v1, Lo3/b/a/c/b/d$a;->d:Lo3/b/a/c/a/f;

    .line 5
    check-cast v1, Le/a/r1$t;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iput-object v0, v1, Le/a/r1$t;->c:Ln3/v/s0;

    .line 9
    const-class v2, Ln3/v/s0;

    invoke-static {v0, v2}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 10
    new-instance v0, Le/a/r1$u;

    iget-object v4, v1, Le/a/r1$t;->a:Le/a/r1;

    iget-object v5, v1, Le/a/r1$t;->b:Le/a/r1$d;

    new-instance v6, Le/a/c/a/p/a/b;

    invoke-direct {v6}, Le/a/c/a/p/a/b;-><init>()V

    iget-object v7, v1, Le/a/r1$t;->c:Ln3/v/s0;

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Le/a/r1$u;-><init>(Le/a/r1;Le/a/r1$d;Le/a/c/a/p/a/b;Ln3/v/s0;Le/a/h1;)V

    .line 11
    const-class v1, Lo3/b/a/c/b/d$b;

    .line 12
    invoke-static {v0, v1}, Le/q/f/a/d/a;->z0(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo3/b/a/c/b/d$b;

    .line 13
    invoke-interface {v0}, Lo3/b/a/c/b/d$b;->a()Ljava/util/Map;

    move-result-object v0

    .line 14
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln3/v/y0;

    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    .line 16
    invoke-virtual {p2, v0, p1}, Ln3/v/y0;->setTagIfAbsent(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Expected the @HiltViewModel-annotated class \'"

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' to be available in the multi-binding of @HiltViewModelMap but none was found."

    .line 18
    invoke-static {p2, v0, v1}, Le/d/c/a/a;->b2(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final create(Ljava/lang/Class;)Ln3/v/y0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ln3/v/y0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0, p1}, Ln3/v/a;->b(Ljava/lang/String;Ljava/lang/Class;)Ln3/v/y0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
