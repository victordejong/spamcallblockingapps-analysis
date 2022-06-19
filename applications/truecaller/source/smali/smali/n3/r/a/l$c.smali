.class public Ln3/r/a/l$c;
.super Ln3/r/a/u;
.source "SourceFile"

# interfaces
.implements Ln3/v/c1;
.implements Ln3/a/c;
.implements Ln3/a/e/c;
.implements Ln3/r/a/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/r/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/r/a/u<",
        "Ln3/r/a/l;",
        ">;",
        "Ln3/v/c1;",
        "Ln3/a/c;",
        "Ln3/a/e/c;",
        "Ln3/r/a/z;"
    }
.end annotation


# instance fields
.field public final synthetic e:Ln3/r/a/l;


# direct methods
.method public constructor <init>(Ln3/r/a/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/r/a/l$c;->e:Ln3/r/a/l;

    .line 2
    invoke-direct {p0, p1}, Ln3/r/a/u;-><init>(Ln3/r/a/l;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ln3/r/a/l$c;->e:Ln3/r/a/l;

    invoke-virtual {p1, p2}, Ln3/r/a/l;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public b(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/r/a/l$c;->e:Ln3/r/a/l;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/r/a/l$c;->e:Ln3/r/a/l;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p2, p0, Ln3/r/a/l$c;->e:Ln3/r/a/l;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3, p4}, Ln3/r/a/l;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/r/a/l$c;->e:Ln3/r/a/l;

    return-object v0
.end method

.method public f()Landroid/view/LayoutInflater;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/r/a/l$c;->e:Ln3/r/a/l;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Ln3/r/a/l$c;->e:Ln3/r/a/l;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public g(Landroidx/fragment/app/Fragment;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Ln3/r/a/l$c;->e:Ln3/r/a/l;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/r/a/l$c;->e:Ln3/r/a/l;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object v0

    return-object v0
.end method

.method public getLifecycle()Ln3/v/u;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/r/a/l$c;->e:Ln3/r/a/l;

    iget-object v0, v0, Ln3/r/a/l;->mFragmentLifecycleRegistry:Ln3/v/c0;

    return-object v0
.end method

.method public getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/r/a/l$c;->e:Ln3/r/a/l;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public getViewModelStore()Ln3/v/b1;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/r/a/l$c;->e:Ln3/r/a/l;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getViewModelStore()Ln3/v/b1;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/r/a/l$c;->e:Ln3/r/a/l;

    .line 2
    sget v1, Ln3/k/a/b;->c:I

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/r/a/l$c;->e:Ln3/r/a/l;

    invoke-virtual {v0}, Ln3/r/a/l;->supportInvalidateOptionsMenu()V

    return-void
.end method
