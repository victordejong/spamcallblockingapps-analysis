.class Landroidx/fragment/app/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/savedstate/c;


# instance fields
.field private f:Landroidx/lifecycle/o;

.field private g:Landroidx/savedstate/b;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/fragment/app/c0;->f:Landroidx/lifecycle/o;

    .line 3
    iput-object v0, p0, Landroidx/fragment/app/c0;->g:Landroidx/savedstate/b;

    return-void
.end method


# virtual methods
.method a(Landroidx/lifecycle/h$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->f:Landroidx/lifecycle/o;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->h(Landroidx/lifecycle/h$b;)V

    return-void
.end method

.method b()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->f:Landroidx/lifecycle/o;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/lifecycle/o;

    invoke-direct {v0, p0}, Landroidx/lifecycle/o;-><init>(Landroidx/lifecycle/n;)V

    iput-object v0, p0, Landroidx/fragment/app/c0;->f:Landroidx/lifecycle/o;

    .line 3
    invoke-static {p0}, Landroidx/savedstate/b;->a(Landroidx/savedstate/c;)Landroidx/savedstate/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/c0;->g:Landroidx/savedstate/b;

    :cond_0
    return-void
.end method

.method c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->f:Landroidx/lifecycle/o;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method d(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->g:Landroidx/savedstate/b;

    invoke-virtual {v0, p1}, Landroidx/savedstate/b;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method e(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->g:Landroidx/savedstate/b;

    invoke-virtual {v0, p1}, Landroidx/savedstate/b;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method f(Landroidx/lifecycle/h$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->f:Landroidx/lifecycle/o;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->o(Landroidx/lifecycle/h$c;)V

    return-void
.end method

.method public getLifecycle()Landroidx/lifecycle/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->b()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/c0;->f:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->g:Landroidx/savedstate/b;

    invoke-virtual {v0}, Landroidx/savedstate/b;->b()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v0

    return-object v0
.end method
