.class public final Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;->setAdapter(Le/a/b/a/c/a/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Integer;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/b/m/h1;

.field public final synthetic c:Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;

.field public final synthetic d:Le/a/b/a/c/a/v;


# direct methods
.method public constructor <init>(Le/a/b/m/h1;Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;Le/a/b/a/c/a/v;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$b;->b:Le/a/b/m/h1;

    iput-object p2, p0, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$b;->c:Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;

    iput-object p3, p0, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$b;->d:Le/a/b/a/c/a/v;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$b;->c:Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;

    iget-object v1, p0, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$b;->b:Le/a/b/m/h1;

    iget-object v1, v1, Le/a/b/m/h1;->f:Lcom/truecaller/bizmon/newBusiness/components/NonSwipeViewPager;

    const-string v2, "viewPager"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Ln3/k0/a/a;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingPagerAdapter"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Le/a/b/a/c/a/v;

    .line 3
    sget v2, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;->v:I

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v2, v1, Le/a/b/a/c/a/v;->j:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "initiatedFragments[position]"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 6
    instance-of v2, v2, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$a;

    if-eqz v2, :cond_0

    .line 7
    iget-object v1, v1, Le/a/b/a/c/a/v;->j:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 8
    check-cast v1, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$a;

    iput-object v1, v0, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;->t:Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$a;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$b;->c:Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;

    iget-object v1, p0, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$b;->d:Le/a/b/a/c/a/v;

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, v1, Le/a/b/a/c/a/v;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 12
    instance-of v0, v0, Le/a/b/a/c/a/r;

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, v1, Le/a/b/a/c/a/v;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 14
    check-cast p1, Le/a/b/a/c/a/r;

    invoke-interface {p1}, Le/a/b/a/c/a/r;->pt()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/b/a/c/a/r;->Gb()V

    .line 15
    :cond_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
