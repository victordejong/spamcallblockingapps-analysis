.class public Landroidx/lifecycle/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/d0$a;,
        Landroidx/lifecycle/d0$d;,
        Landroidx/lifecycle/d0$c;,
        Landroidx/lifecycle/d0$e;,
        Landroidx/lifecycle/d0$b;
    }
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/d0$b;

.field private final b:Landroidx/lifecycle/f0;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/f0;Landroidx/lifecycle/d0$b;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Landroidx/lifecycle/d0;->a:Landroidx/lifecycle/d0$b;

    .line 7
    iput-object p1, p0, Landroidx/lifecycle/d0;->b:Landroidx/lifecycle/f0;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/g0;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Landroidx/lifecycle/g0;->getViewModelStore()Landroidx/lifecycle/f0;

    move-result-object v0

    instance-of v1, p1, Landroidx/lifecycle/g;

    if-eqz v1, :cond_0

    .line 2
    check-cast p1, Landroidx/lifecycle/g;

    invoke-interface {p1}, Landroidx/lifecycle/g;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/d0$b;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Landroidx/lifecycle/d0$d;->b()Landroidx/lifecycle/d0$d;

    move-result-object p1

    .line 4
    :goto_0
    invoke-direct {p0, v0, p1}, Landroidx/lifecycle/d0;-><init>(Landroidx/lifecycle/f0;Landroidx/lifecycle/d0$b;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/b0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/b0;",
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
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/d0;->b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/b0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/b0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/b0;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/d0;->b:Landroidx/lifecycle/f0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/f0;->b(Ljava/lang/String;)Landroidx/lifecycle/b0;

    move-result-object v0

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object p1, p0, Landroidx/lifecycle/d0;->a:Landroidx/lifecycle/d0$b;

    instance-of p2, p1, Landroidx/lifecycle/d0$e;

    if-eqz p2, :cond_0

    .line 4
    check-cast p1, Landroidx/lifecycle/d0$e;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/d0$e;->b(Landroidx/lifecycle/b0;)V

    :cond_0
    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Landroidx/lifecycle/d0;->a:Landroidx/lifecycle/d0$b;

    instance-of v1, v0, Landroidx/lifecycle/d0$c;

    if-eqz v1, :cond_2

    .line 6
    check-cast v0, Landroidx/lifecycle/d0$c;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/d0$c;->c(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/b0;

    move-result-object p2

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {v0, p2}, Landroidx/lifecycle/d0$b;->a(Ljava/lang/Class;)Landroidx/lifecycle/b0;

    move-result-object p2

    .line 8
    :goto_0
    iget-object v0, p0, Landroidx/lifecycle/d0;->b:Landroidx/lifecycle/f0;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/f0;->d(Ljava/lang/String;Landroidx/lifecycle/b0;)V

    return-object p2
.end method
