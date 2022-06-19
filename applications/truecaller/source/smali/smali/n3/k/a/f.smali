.class public Ln3/k/a/f;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Ln3/v/b0;
.implements Ln3/k/i/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/k/a/f$a;
    }
.end annotation


# instance fields
.field private mExtraDataMap:Ln3/g/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/h<",
            "Ljava/lang/Class<",
            "+",
            "Ln3/k/a/f$a;",
            ">;",
            "Ln3/k/a/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private mLifecycleRegistry:Ln3/v/c0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    new-instance v0, Ln3/g/h;

    invoke-direct {v0}, Ln3/g/h;-><init>()V

    iput-object v0, p0, Ln3/k/a/f;->mExtraDataMap:Ln3/g/h;

    .line 3
    new-instance v0, Ln3/v/c0;

    invoke-direct {v0, p0}, Ln3/v/c0;-><init>(Ln3/v/b0;)V

    iput-object v0, p0, Ln3/k/a/f;->mLifecycleRegistry:Ln3/v/c0;

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Ln3/k/i/f;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-static {p0, v0, p0, p1}, Ln3/k/i/f;->b(Ln3/k/i/f$a;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Ln3/k/i/f;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getExtraData(Ljava/lang/Class;)Ln3/k/a/f$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ln3/k/a/f$a;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/k/a/f;->mExtraDataMap:Ln3/g/h;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Ln3/g/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Ln3/k/a/f$a;

    return-object p1
.end method

.method public getLifecycle()Ln3/v/u;
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Ln3/v/r0;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/k/a/f;->mLifecycleRegistry:Ln3/v/c0;

    sget-object v1, Ln3/v/u$b;->c:Ln3/v/u$b;

    const-string v2, "markState"

    .line 2
    invoke-virtual {v0, v2}, Ln3/v/c0;->d(Ljava/lang/String;)V

    const-string v2, "setCurrentState"

    .line 3
    invoke-virtual {v0, v2}, Ln3/v/c0;->d(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Ln3/v/c0;->g(Ln3/v/u$b;)V

    .line 5
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public putExtraData(Ln3/k/a/f$a;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/k/a/f;->mExtraDataMap:Ln3/g/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
