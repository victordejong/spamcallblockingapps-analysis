.class public final Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001$J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u0017\u0010\u000e\u001a\u00020\u00042\u0008\u0008\u0001\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\u00042\u0008\u0008\u0001\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u001f\u0010\u0014\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0013\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R$\u0010\u001f\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"\u00a8\u0006%"
    }
    d2 = {
        "Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Le/a/b/a/c/a/v;",
        "pagerAdapter",
        "Ls1/s;",
        "setAdapter",
        "(Le/a/b/a/c/a/v;)V",
        "",
        "isVisible",
        "setNextButtonVisible",
        "(Z)V",
        "setPreviousButtonVisible",
        "",
        "stringResId",
        "setNextButtonText",
        "(I)V",
        "setPreviousButtonText",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "position",
        "g1",
        "(Landroidx/fragment/app/Fragment;I)Ls1/s;",
        "f1",
        "(I)Ls1/s;",
        "Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$a;",
        "t",
        "Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$a;",
        "getNavigatorListener",
        "()Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$a;",
        "setNavigatorListener",
        "(Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$a;)V",
        "navigatorListener",
        "Le/a/b/m/h1;",
        "u",
        "Le/a/b/m/h1;",
        "binding",
        "a",
        "bizmon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic v:I


# instance fields
.field public t:Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$a;

.field public u:Le/a/b/m/h1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string p2, "LayoutInflater.from(context)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-static {p1, p2}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 4
    sget v1, Lcom/truecaller/bizmon/R$layout;->layout_navigator:I

    invoke-virtual {p1, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    sget v1, Lcom/truecaller/bizmon/R$id;->bottomBarBackgroundView:I

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 8
    move-object v5, p1

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    sget v1, Lcom/truecaller/bizmon/R$id;->pageNextBtn:I

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_0

    .line 11
    sget v1, Lcom/truecaller/bizmon/R$id;->pagePrevBtn:I

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_0

    .line 13
    sget v1, Lcom/truecaller/bizmon/R$id;->pagerIndicator:I

    .line 14
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/truecaller/common/ui/TcxPagerIndicator;

    if-eqz v8, :cond_0

    .line 15
    sget v1, Lcom/truecaller/bizmon/R$id;->progressBar:I

    .line 16
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ProgressBar;

    if-eqz v9, :cond_0

    .line 17
    sget v1, Lcom/truecaller/bizmon/R$id;->viewPager:I

    .line 18
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/truecaller/bizmon/newBusiness/components/NonSwipeViewPager;

    if-eqz v10, :cond_0

    .line 19
    new-instance p1, Le/a/b/m/h1;

    move-object v2, p1

    move-object v3, v5

    invoke-direct/range {v2 .. v10}, Le/a/b/m/h1;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/Button;Lcom/truecaller/common/ui/TcxPagerIndicator;Landroid/widget/ProgressBar;Lcom/truecaller/bizmon/newBusiness/components/NonSwipeViewPager;)V

    const-string v1, "LayoutNavigatorBinding.i\u2026emeX = true), this, true)"

    .line 20
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;->u:Le/a/b/m/h1;

    .line 21
    iget-object v1, p1, Le/a/b/m/h1;->b:Landroid/widget/Button;

    new-instance v2, Lv;

    invoke-direct {v2, v0, p0}, Lv;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object p1, p1, Le/a/b/m/h1;->c:Landroid/widget/Button;

    new-instance v0, Lv;

    invoke-direct {v0, p2, p0}, Lv;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 23
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 24
    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final f1(I)Ls1/s;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;->u:Le/a/b/m/h1;

    .line 2
    iget-object v1, v0, Le/a/b/m/h1;->f:Lcom/truecaller/bizmon/newBusiness/components/NonSwipeViewPager;

    const-string v2, "viewPager"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Ln3/k0/a/a;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "it"

    .line 3
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ln3/k0/a/a;->c()I

    move-result v1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    if-le v1, p1, :cond_1

    .line 4
    iget-object v0, v0, Le/a/b/m/h1;->f:Lcom/truecaller/bizmon/newBusiness/components/NonSwipeViewPager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, v0, Landroidx/viewpager/widget/ViewPager;->v:Z

    .line 6
    invoke-virtual {v0, p1, v1, v2, v2}, Landroidx/viewpager/widget/ViewPager;->x(IZZI)V

    .line 7
    :cond_1
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public final g1(Landroidx/fragment/app/Fragment;I)Ls1/s;
    .locals 5

    const-string v0, "fragment"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;->u:Le/a/b/m/h1;

    .line 2
    iget-object v2, v1, Le/a/b/m/h1;->f:Lcom/truecaller/bizmon/newBusiness/components/NonSwipeViewPager;

    const-string v3, "viewPager"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Ln3/k0/a/a;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingPagerAdapter"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Le/a/b/a/c/a/v;

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, v2, Le/a/b/a/c/a/v;->k:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, v1, Le/a/b/m/h1;->f:Lcom/truecaller/bizmon/newBusiness/components/NonSwipeViewPager;

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Ln3/k0/a/a;)V

    .line 6
    iget-object p1, v1, Le/a/b/m/h1;->f:Lcom/truecaller/bizmon/newBusiness/components/NonSwipeViewPager;

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Ln3/k0/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ln3/k0/a/a;->h()V

    sget-object p1, Ls1/s;->a:Ls1/s;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final getNavigatorListener()Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;->t:Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$a;

    return-object v0
.end method

.method public final setAdapter(Le/a/b/a/c/a/v;)V
    .locals 4

    const-string v0, "pagerAdapter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;->u:Le/a/b/m/h1;

    .line 2
    invoke-virtual {p1}, Le/a/b/a/c/a/v;->c()I

    move-result v1

    .line 3
    iget-object v2, v0, Le/a/b/m/h1;->f:Lcom/truecaller/bizmon/newBusiness/components/NonSwipeViewPager;

    const-string v3, "viewPager"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Ln3/k0/a/a;)V

    .line 4
    iget-object v2, v0, Le/a/b/m/h1;->f:Lcom/truecaller/bizmon/newBusiness/components/NonSwipeViewPager;

    iget-object v3, v0, Le/a/b/m/h1;->d:Lcom/truecaller/common/ui/TcxPagerIndicator;

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->b(Landroidx/viewpager/widget/ViewPager$i;)V

    .line 5
    iget-object v2, v0, Le/a/b/m/h1;->d:Lcom/truecaller/common/ui/TcxPagerIndicator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/truecaller/common/ui/TcxPagerIndicator;->setFirstPage(I)V

    .line 6
    iget-object v2, v0, Le/a/b/m/h1;->d:Lcom/truecaller/common/ui/TcxPagerIndicator;

    invoke-virtual {v2, v1}, Lcom/truecaller/common/ui/TcxPagerIndicator;->setNumberOfPages(I)V

    .line 7
    invoke-virtual {p0, v3}, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;->f1(I)Ls1/s;

    .line 8
    iget-object v1, v0, Le/a/b/m/h1;->f:Lcom/truecaller/bizmon/newBusiness/components/NonSwipeViewPager;

    new-instance v2, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$b;

    invoke-direct {v2, v0, p0, p1}, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$b;-><init>(Le/a/b/m/h1;Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;Le/a/b/a/c/a/v;)V

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "observer"

    invoke-static {v2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance p1, Le/a/b/a/b/d;

    invoke-direct {p1, v2}, Le/a/b/a/b/d;-><init>(Ls1/z/b/l;)V

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->b(Landroidx/viewpager/widget/ViewPager$i;)V

    return-void
.end method

.method public final setNavigatorListener(Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;->t:Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$a;

    return-void
.end method

.method public final setNextButtonText(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;->u:Le/a/b/m/h1;

    iget-object v0, v0, Le/a/b/m/h1;->b:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method public final setNextButtonVisible(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;->u:Le/a/b/m/h1;

    iget-object v0, v0, Le/a/b/m/h1;->b:Landroid/widget/Button;

    const-string v1, "binding.pageNextBtn"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public final setPreviousButtonText(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;->u:Le/a/b/m/h1;

    iget-object v0, v0, Le/a/b/m/h1;->c:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method public final setPreviousButtonVisible(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;->u:Le/a/b/m/h1;

    iget-object v0, v0, Le/a/b/m/h1;->c:Landroid/widget/Button;

    const-string v1, "binding.pagePrevBtn"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method
