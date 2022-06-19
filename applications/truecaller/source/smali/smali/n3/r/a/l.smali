.class public Ln3/r/a/l;
.super Landroidx/activity/ComponentActivity;
.source "SourceFile"

# interfaces
.implements Ln3/k/a/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/r/a/l$c;
    }
.end annotation


# static fields
.field public static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"


# instance fields
.field public mCreated:Z

.field public final mFragmentLifecycleRegistry:Ln3/v/c0;

.field public final mFragments:Ln3/r/a/s;

.field public mResumed:Z

.field public mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 2
    new-instance v0, Ln3/r/a/l$c;

    invoke-direct {v0, p0}, Ln3/r/a/l$c;-><init>(Ln3/r/a/l;)V

    .line 3
    new-instance v1, Ln3/r/a/s;

    const-string v2, "callbacks == null"

    invoke-static {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v1, v0}, Ln3/r/a/s;-><init>(Ln3/r/a/u;)V

    .line 4
    iput-object v1, p0, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    .line 5
    new-instance v0, Ln3/v/c0;

    invoke-direct {v0, p0}, Ln3/v/c0;-><init>(Ln3/v/b0;)V

    iput-object v0, p0, Ln3/r/a/l;->mFragmentLifecycleRegistry:Ln3/v/c0;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Ln3/r/a/l;->mStopped:Z

    .line 7
    invoke-direct {p0}, Ln3/r/a/l;->init()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 8
    invoke-direct {p0, p1}, Landroidx/activity/ComponentActivity;-><init>(I)V

    .line 9
    new-instance p1, Ln3/r/a/l$c;

    invoke-direct {p1, p0}, Ln3/r/a/l$c;-><init>(Ln3/r/a/l;)V

    .line 10
    new-instance v0, Ln3/r/a/s;

    const-string v1, "callbacks == null"

    invoke-static {p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p1}, Ln3/r/a/s;-><init>(Ln3/r/a/u;)V

    .line 11
    iput-object v0, p0, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    .line 12
    new-instance p1, Ln3/v/c0;

    invoke-direct {p1, p0}, Ln3/v/c0;-><init>(Ln3/v/b0;)V

    iput-object p1, p0, Ln3/r/a/l;->mFragmentLifecycleRegistry:Ln3/v/c0;

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Ln3/r/a/l;->mStopped:Z

    .line 14
    invoke-direct {p0}, Ln3/r/a/l;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Ln3/d0/a;

    move-result-object v0

    new-instance v1, Ln3/r/a/l$a;

    invoke-direct {v1, p0}, Ln3/r/a/l$a;-><init>(Ln3/r/a/l;)V

    const-string v2, "android:support:fragments"

    invoke-virtual {v0, v2, v1}, Ln3/d0/a;->b(Ljava/lang/String;Ln3/d0/a$b;)V

    .line 2
    new-instance v0, Ln3/r/a/l$b;

    invoke-direct {v0, p0}, Ln3/r/a/l$b;-><init>(Ln3/r/a/l;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Ln3/a/d/b;)V

    return-void
.end method

.method private static markState(Landroidx/fragment/app/FragmentManager;Ln3/v/u$b;)Z
    .locals 7

    .line 1
    sget-object v0, Ln3/v/u$b;->d:Ln3/v/u$b;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->Q()Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-nez v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    .line 6
    invoke-static {v4, p1}, Ln3/r/a/l;->markState(Landroidx/fragment/app/FragmentManager;Ln3/v/u$b;)Z

    move-result v4

    or-int/2addr v2, v4

    .line 7
    :cond_2
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Ln3/r/a/r0;

    const-string v5, "setCurrentState"

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    .line 8
    invoke-virtual {v4}, Ln3/r/a/r0;->b()V

    .line 9
    iget-object v4, v4, Ln3/r/a/r0;->b:Ln3/v/c0;

    .line 10
    iget-object v4, v4, Ln3/v/c0;->c:Ln3/v/u$b;

    .line 11
    invoke-virtual {v4, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-ltz v4, :cond_3

    move v4, v6

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    if-eqz v4, :cond_4

    .line 12
    iget-object v2, v3, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Ln3/r/a/r0;

    .line 13
    iget-object v2, v2, Ln3/r/a/r0;->b:Ln3/v/c0;

    .line 14
    invoke-virtual {v2, v5}, Ln3/v/c0;->d(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2, p1}, Ln3/v/c0;->g(Ln3/v/u$b;)V

    move v2, v6

    .line 16
    :cond_4
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Ln3/v/c0;

    .line 17
    iget-object v4, v4, Ln3/v/c0;->c:Ln3/v/u$b;

    .line 18
    invoke-virtual {v4, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-ltz v4, :cond_5

    move v4, v6

    goto :goto_2

    :cond_5
    move v4, v1

    :goto_2
    if-eqz v4, :cond_0

    .line 19
    iget-object v2, v3, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Ln3/v/c0;

    .line 20
    invoke-virtual {v2, v5}, Ln3/v/c0;->d(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2, p1}, Ln3/v/c0;->g(Ln3/v/u$b;)V

    move v2, v6

    goto :goto_0

    :cond_6
    return v2
.end method


# virtual methods
.method public final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    .line 2
    iget-object v0, v0, Ln3/r/a/s;->a:Ln3/r/a/u;

    iget-object v0, v0, Ln3/r/a/u;->d:Landroidx/fragment/app/FragmentManager;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->f:Ln3/r/a/v;

    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, Ln3/r/a/v;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    .line 4
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    iget-boolean v1, p0, Ln3/r/a/l;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    iget-boolean v1, p0, Ln3/r/a/l;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    iget-boolean v1, p0, Ln3/r/a/l;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    invoke-static {p0}, Ln3/w/a/a;->b(Ln3/v/b0;)Ln3/w/a/a;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Ln3/w/a/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 12
    :cond_0
    iget-object v0, p0, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    .line 13
    iget-object v0, v0, Ln3/r/a/s;->a:Ln3/r/a/u;

    iget-object v0, v0, Ln3/r/a/u;->d:Landroidx/fragment/app/FragmentManager;

    .line 14
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentManager;->z(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    .line 2
    iget-object v0, v0, Ln3/r/a/s;->a:Ln3/r/a/u;

    iget-object v0, v0, Ln3/r/a/u;->d:Landroidx/fragment/app/FragmentManager;

    return-object v0
.end method

.method public getSupportLoaderManager()Ln3/w/a/a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Ln3/w/a/a;->b(Ln3/v/b0;)Ln3/w/a/a;

    move-result-object v0

    return-object v0
.end method

.method public markFragmentsCreated()V
    .locals 2

    .line 1
    :cond_0
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Ln3/v/u$b;->c:Ln3/v/u$b;

    invoke-static {v0, v1}, Ln3/r/a/l;->markState(Landroidx/fragment/app/FragmentManager;Ln3/v/u$b;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    invoke-virtual {v0}, Ln3/r/a/s;->a()V

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    invoke-virtual {v0}, Ln3/r/a/s;->a()V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3
    iget-object v0, p0, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    .line 4
    iget-object v0, v0, Ln3/r/a/s;->a:Ln3/r/a/u;

    iget-object v0, v0, Ln3/r/a/u;->d:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->l(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Ln3/r/a/l;->mFragmentLifecycleRegistry:Ln3/v/c0;

    sget-object v0, Ln3/v/u$a;->ON_CREATE:Ln3/v/u$a;

    invoke-virtual {p1, v0}, Ln3/v/c0;->e(Ln3/v/u$a;)V

    .line 3
    iget-object p1, p0, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    .line 4
    iget-object p1, p1, Ln3/r/a/s;->a:Ln3/r/a/u;

    iget-object p1, p1, Ln3/r/a/u;->d:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->n()V

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 2

    if-nez p1, :cond_0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    .line 2
    iget-object v0, p0, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 3
    iget-object v0, v0, Ln3/r/a/s;->a:Ln3/r/a/u;

    iget-object v0, v0, Ln3/r/a/u;->d:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p2, v1}, Landroidx/fragment/app/FragmentManager;->o(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Ln3/r/a/l;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Ln3/r/a/l;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object v0, p0, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    .line 3
    iget-object v0, v0, Ln3/r/a/s;->a:Ln3/r/a/u;

    iget-object v0, v0, Ln3/r/a/u;->d:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->p()V

    .line 4
    iget-object v0, p0, Ln3/r/a/l;->mFragmentLifecycleRegistry:Ln3/v/c0;

    sget-object v1, Ln3/v/u$a;->ON_DESTROY:Ln3/v/u$a;

    invoke-virtual {v0, v1}, Ln3/v/c0;->e(Ln3/v/u$a;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 2
    iget-object v0, p0, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    .line 3
    iget-object v0, v0, Ln3/r/a/s;->a:Ln3/r/a/u;

    iget-object v0, v0, Ln3/r/a/u;->d:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    iget-object p1, p0, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    .line 3
    iget-object p1, p1, Ln3/r/a/s;->a:Ln3/r/a/u;

    iget-object p1, p1, Ln3/r/a/u;->d:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->m(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 4
    :cond_2
    iget-object p1, p0, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    .line 5
    iget-object p1, p1, Ln3/r/a/s;->a:Ln3/r/a/u;

    iget-object p1, p1, Ln3/r/a/u;->d:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->s(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    .line 2
    iget-object v0, v0, Ln3/r/a/s;->a:Ln3/r/a/u;

    iget-object v0, v0, Ln3/r/a/u;->d:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->r(Z)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    invoke-virtual {v0}, Ln3/r/a/s;->a()V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    .line 2
    iget-object v0, v0, Ln3/r/a/s;->a:Ln3/r/a/u;

    iget-object v0, v0, Ln3/r/a/u;->d:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentManager;->t(Landroid/view/Menu;)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ln3/r/a/l;->mResumed:Z

    .line 3
    iget-object v0, p0, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    .line 4
    iget-object v0, v0, Ln3/r/a/s;->a:Ln3/r/a/u;

    iget-object v0, v0, Ln3/r/a/u;->d:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x5

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->x(I)V

    .line 6
    iget-object v0, p0, Ln3/r/a/l;->mFragmentLifecycleRegistry:Ln3/v/c0;

    sget-object v1, Ln3/v/u$a;->ON_PAUSE:Ln3/v/u$a;

    invoke-virtual {v0, v1}, Ln3/v/c0;->e(Ln3/v/u$a;)V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    .line 2
    iget-object v0, v0, Ln3/r/a/s;->a:Ln3/r/a/u;

    iget-object v0, v0, Ln3/r/a/u;->d:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->v(Z)V

    return-void
.end method

.method public onPostResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 2
    invoke-virtual {p0}, Ln3/r/a/l;->onResumeFragments()V

    return-void
.end method

.method public onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-super {p0, v0, p1, p2}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0, p2, p3}, Ln3/r/a/l;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    .line 2
    iget-object p2, p0, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    .line 3
    iget-object p2, p2, Ln3/r/a/s;->a:Ln3/r/a/u;

    iget-object p2, p2, Ln3/r/a/u;->d:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentManager;->w(Landroid/view/Menu;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    invoke-virtual {v0}, Ln3/r/a/s;->a()V

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    invoke-virtual {v0}, Ln3/r/a/s;->a()V

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ln3/r/a/l;->mResumed:Z

    .line 4
    iget-object v1, p0, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    .line 5
    iget-object v1, v1, Ln3/r/a/s;->a:Ln3/r/a/u;

    iget-object v1, v1, Ln3/r/a/u;->d:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->D(Z)Z

    return-void
.end method

.method public onResumeFragments()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/r/a/l;->mFragmentLifecycleRegistry:Ln3/v/c0;

    sget-object v1, Ln3/v/u$a;->ON_RESUME:Ln3/v/u$a;

    invoke-virtual {v0, v1}, Ln3/v/c0;->e(Ln3/v/u$a;)V

    .line 2
    iget-object v0, p0, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    .line 3
    iget-object v0, v0, Ln3/r/a/s;->a:Ln3/r/a/u;

    iget-object v0, v0, Ln3/r/a/u;->d:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Landroidx/fragment/app/FragmentManager;->C:Z

    .line 5
    iput-boolean v1, v0, Landroidx/fragment/app/FragmentManager;->D:Z

    .line 6
    iget-object v2, v0, Landroidx/fragment/app/FragmentManager;->K:Ln3/r/a/y;

    .line 7
    iput-boolean v1, v2, Ln3/r/a/y;->f:Z

    const/4 v1, 0x7

    .line 8
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->x(I)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    invoke-virtual {v0}, Ln3/r/a/s;->a()V

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ln3/r/a/l;->mStopped:Z

    .line 4
    iget-boolean v1, p0, Ln3/r/a/l;->mCreated:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 5
    iput-boolean v2, p0, Ln3/r/a/l;->mCreated:Z

    .line 6
    iget-object v1, p0, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    .line 7
    iget-object v1, v1, Ln3/r/a/s;->a:Ln3/r/a/u;

    iget-object v1, v1, Ln3/r/a/u;->d:Landroidx/fragment/app/FragmentManager;

    .line 8
    iput-boolean v0, v1, Landroidx/fragment/app/FragmentManager;->C:Z

    .line 9
    iput-boolean v0, v1, Landroidx/fragment/app/FragmentManager;->D:Z

    .line 10
    iget-object v3, v1, Landroidx/fragment/app/FragmentManager;->K:Ln3/r/a/y;

    .line 11
    iput-boolean v0, v3, Ln3/r/a/y;->f:Z

    const/4 v3, 0x4

    .line 12
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->x(I)V

    .line 13
    :cond_0
    iget-object v1, p0, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    .line 14
    iget-object v1, v1, Ln3/r/a/s;->a:Ln3/r/a/u;

    iget-object v1, v1, Ln3/r/a/u;->d:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->D(Z)Z

    .line 15
    iget-object v1, p0, Ln3/r/a/l;->mFragmentLifecycleRegistry:Ln3/v/c0;

    sget-object v2, Ln3/v/u$a;->ON_START:Ln3/v/u$a;

    invoke-virtual {v1, v2}, Ln3/v/c0;->e(Ln3/v/u$a;)V

    .line 16
    iget-object v1, p0, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    .line 17
    iget-object v1, v1, Ln3/r/a/s;->a:Ln3/r/a/u;

    iget-object v1, v1, Ln3/r/a/u;->d:Landroidx/fragment/app/FragmentManager;

    .line 18
    iput-boolean v0, v1, Landroidx/fragment/app/FragmentManager;->C:Z

    .line 19
    iput-boolean v0, v1, Landroidx/fragment/app/FragmentManager;->D:Z

    .line 20
    iget-object v2, v1, Landroidx/fragment/app/FragmentManager;->K:Ln3/r/a/y;

    .line 21
    iput-boolean v0, v2, Ln3/r/a/y;->f:Z

    const/4 v0, 0x5

    .line 22
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->x(I)V

    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    invoke-virtual {v0}, Ln3/r/a/s;->a()V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ln3/r/a/l;->mStopped:Z

    .line 3
    invoke-virtual {p0}, Ln3/r/a/l;->markFragmentsCreated()V

    .line 4
    iget-object v1, p0, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    .line 5
    iget-object v1, v1, Ln3/r/a/s;->a:Ln3/r/a/u;

    iget-object v1, v1, Ln3/r/a/u;->d:Landroidx/fragment/app/FragmentManager;

    .line 6
    iput-boolean v0, v1, Landroidx/fragment/app/FragmentManager;->D:Z

    .line 7
    iget-object v2, v1, Landroidx/fragment/app/FragmentManager;->K:Ln3/r/a/y;

    .line 8
    iput-boolean v0, v2, Ln3/r/a/y;->f:Z

    const/4 v0, 0x4

    .line 9
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->x(I)V

    .line 10
    iget-object v0, p0, Ln3/r/a/l;->mFragmentLifecycleRegistry:Ln3/v/c0;

    sget-object v1, Ln3/v/u$a;->ON_STOP:Ln3/v/u$a;

    invoke-virtual {v0, v1}, Ln3/v/c0;->e(Ln3/v/u$a;)V

    return-void
.end method

.method public setEnterSharedElementCallback(Ln3/k/a/b0;)V
    .locals 0

    .line 1
    sget p1, Ln3/k/a/b;->c:I

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public setExitSharedElementCallback(Ln3/k/a/b0;)V
    .locals 0

    .line 1
    sget p1, Ln3/k/a/b;->c:I

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, p3, v0}, Ln3/r/a/l;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 1
    sget p1, Ln3/k/a/b;->c:I

    .line 2
    invoke-virtual {p0, p2, v0, p4}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    move v3, p3

    if-ne v3, v0, :cond_0

    .line 1
    sget v0, Ln3/k/a/b;->c:I

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 2
    invoke-virtual/range {v1 .. v8}, Landroidx/activity/ComponentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual/range {p1 .. p8}, Landroidx/fragment/app/Fragment;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public supportFinishAfterTransition()V
    .locals 1

    .line 1
    sget v0, Ln3/k/a/b;->c:I

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public supportPostponeEnterTransition()V
    .locals 1

    .line 1
    sget v0, Ln3/k/a/b;->c:I

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->postponeEnterTransition()V

    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 1

    .line 1
    sget v0, Ln3/k/a/b;->c:I

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
