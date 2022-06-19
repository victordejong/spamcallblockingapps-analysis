.class public final Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;
.super Le/a/g/a/a/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u0000 &2\u00020\u0001:\u0001\'B\u0007\u00a2\u0006\u0004\u0008%\u0010\u000cJ\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u000cJ\u000f\u0010\u0012\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u000cR\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R%\u0010\u001d\u001a\n \u0018*\u0004\u0018\u00010\u00170\u00178B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R%\u0010$\u001a\n \u0018*\u0004\u0018\u00010\u00170\u00178B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u001a\u001a\u0004\u0008#\u0010\u001c\u00a8\u0006("
    }
    d2 = {
        "Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;",
        "Ln3/b/a/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/content/Intent;",
        "intent",
        "onNewIntent",
        "(Landroid/content/Intent;)V",
        "onStart",
        "()V",
        "",
        "hasFocus",
        "onWindowFocusChanged",
        "(Z)V",
        "finish",
        "ra",
        "Landroid/view/View;",
        "qa",
        "()Landroid/view/View;",
        "acsContainer",
        "Landroid/view/animation/Animation;",
        "kotlin.jvm.PlatformType",
        "e",
        "Ls1/g;",
        "getEnterAnimation",
        "()Landroid/view/animation/Animation;",
        "enterAnimation",
        "Landroid/graphics/drawable/TransitionDrawable;",
        "d",
        "Landroid/graphics/drawable/TransitionDrawable;",
        "windowBackgroundColor",
        "f",
        "getExitAnimation",
        "exitAnimation",
        "<init>",
        "g",
        "b",
        "acs_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final g:Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity$b;


# instance fields
.field public d:Landroid/graphics/drawable/TransitionDrawable;

.field public final e:Ls1/g;

.field public final f:Ls1/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity$b;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;->g:Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/a/g/a/a/l;-><init>()V

    .line 2
    new-instance v0, Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity$a;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;->e:Ls1/g;

    .line 3
    new-instance v0, Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity$a;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;->f:Ls1/g;

    return-void
.end method

.method public static final synthetic pa(Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;->f:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 3
    new-instance v1, Le/a/g/a/a/b;

    invoke-direct {v1, p0}, Le/a/g/a/a/b;-><init>(Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;->qa()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;->d:Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    return-void

    :cond_1
    const-string v0, "windowBackgroundColor"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "resources"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/truecaller/acs/R$drawable;->background_popup_window:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Le/a/p5/s0/g;->R(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;->d:Landroid/graphics/drawable/TransitionDrawable;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;->d:Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Le/a/c3/f;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {p0}, Le/a/e/a2;->Y(Landroid/app/Activity;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;->ra()V

    return-void

    :cond_2
    const-string p1, "windowBackgroundColor"

    .line 7
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;->ra()V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;->e:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 3
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;->qa()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;->e:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;->d:Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :goto_0
    return-void

    :cond_2
    const-string v0, "windowBackgroundColor"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->J(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Le/a/g/a/d;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    check-cast v0, Le/a/g/a/d;

    invoke-interface {v0, p1}, Le/a/g/a/d;->d8(Z)V

    :cond_1
    return-void
.end method

.method public final qa()Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->J(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget v1, Lcom/truecaller/acs/R$id;->acsContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final ra()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    new-instance v1, Ln3/r/a/a;

    invoke-direct {v1, v0}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const v0, 0x1020002

    .line 3
    sget-object v2, Le/a/g/a/a/a;->M:Le/a/g/a/a/a$e;

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v2, Le/a/g/a/a/a;

    invoke-direct {v2}, Le/a/g/a/a/a;-><init>()V

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1, v0, v2, v3}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 7
    invoke-virtual {v1}, Ln3/r/a/a;->f()I

    return-void
.end method
