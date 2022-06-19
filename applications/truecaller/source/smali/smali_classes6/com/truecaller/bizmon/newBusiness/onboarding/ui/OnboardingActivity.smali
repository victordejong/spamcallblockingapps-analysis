.class public final Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;
.super Ln3/b/a/h;
.source "SourceFile"

# interfaces
.implements Le/a/b/a/c/a/u;
.implements Le/a/b/a/c/a/a/b$b;
.implements Le/a/b/a/c/a/a/j$a;
.implements Le/a/b/a/c/a/a/i$a;
.implements Le/a/b/a/c/a/s;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006B\u0007\u00a2\u0006\u0004\u0008Z\u0010\u0013J!\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0019\u0010\u0016\u001a\u00020\t2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u0013J\u0017\u0010!\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u001fH\u0016\u00a2\u0006\u0004\u0008!\u0010\"J\u000f\u0010#\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008#\u0010\u0013J\u000f\u0010$\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008$\u0010\u0013J\u0017\u0010&\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020\u001fH\u0016\u00a2\u0006\u0004\u0008&\u0010\"J\u0017\u0010(\u001a\u00020\u000b2\u0006\u0010\'\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008(\u0010)J\u0017\u0010*\u001a\u00020\u000b2\u0006\u0010\'\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008*\u0010)J\u000f\u0010+\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008+\u0010\u0013J\u000f\u0010,\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008,\u0010\u0013J\u000f\u0010-\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008-\u0010\u0013J\u0017\u0010.\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020\u001fH\u0016\u00a2\u0006\u0004\u0008.\u0010\"J\u0017\u00100\u001a\u00020\u000b2\u0006\u0010/\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u00080\u0010)J\u0011\u00102\u001a\u0004\u0018\u000101H\u0016\u00a2\u0006\u0004\u00082\u00103J\u000f\u00104\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u00084\u0010\u0013J\u000f\u00105\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u00085\u0010\u0013J!\u00108\u001a\u00020\u000b2\u0008\u00106\u001a\u0004\u0018\u00010\u00072\u0006\u00107\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u00088\u0010\rJ!\u00109\u001a\u00020\u000b2\u0008\u00106\u001a\u0004\u0018\u00010\u00072\u0006\u00107\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u00089\u0010\rJ\u0019\u0010:\u001a\u00020\u000b2\u0008\u00106\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008:\u0010;J)\u0010@\u001a\u00020\u000b2\u0006\u0010<\u001a\u00020\u001f2\u0006\u0010=\u001a\u00020\u001f2\u0008\u0010?\u001a\u0004\u0018\u00010>H\u0014\u00a2\u0006\u0004\u0008@\u0010AJ\u0017\u0010C\u001a\u00020\u000b2\u0006\u0010B\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008C\u0010)R\u0016\u0010G\u001a\u00020D8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0016\u0010K\u001a\u00020H8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\"\u0010R\u001a\u00020L8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008.\u0010M\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010QR\u0018\u0010V\u001a\u0004\u0018\u00010S8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008T\u0010UR\u0018\u0010Y\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010X\u00a8\u0006["
    }
    d2 = {
        "Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;",
        "Ln3/b/a/h;",
        "Le/a/b/a/c/a/u;",
        "Le/a/b/a/c/a/a/b$b;",
        "Le/a/b/a/c/a/a/j$a;",
        "Le/a/b/a/c/a/a/i$a;",
        "Le/a/b/a/c/a/s;",
        "Lcom/truecaller/placepicker/data/GeocodedPlace;",
        "resolvedPincodePlace",
        "",
        "showAutcomplete",
        "Ls1/s;",
        "pa",
        "(Lcom/truecaller/placepicker/data/GeocodedPlace;Z)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onDestroy",
        "()V",
        "Landroid/view/Menu;",
        "menu",
        "onCreateOptionsMenu",
        "(Landroid/view/Menu;)Z",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "onAttachFragment",
        "(Landroidx/fragment/app/Fragment;)V",
        "onSupportNavigateUp",
        "()Z",
        "onBackPressed",
        "",
        "index",
        "v4",
        "(I)V",
        "v1",
        "n1",
        "stringResId",
        "u5",
        "isVisible",
        "p3",
        "(Z)V",
        "U3",
        "a0",
        "b0",
        "c2",
        "a",
        "enable",
        "B7",
        "Landroidx/appcompat/widget/SearchView;",
        "O7",
        "()Landroidx/appcompat/widget/SearchView;",
        "f0",
        "j0",
        "geocodedPlace",
        "showAutocomplete",
        "K",
        "L8",
        "z5",
        "(Lcom/truecaller/placepicker/data/GeocodedPlace;)V",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "show",
        "i7",
        "Le/a/b/a/c/a/v;",
        "b",
        "Le/a/b/a/c/a/v;",
        "onboardingPagerAdapter",
        "Le/a/b/m/a;",
        "e",
        "Le/a/b/m/a;",
        "binding",
        "Le/a/b/a/c/a/t;",
        "Le/a/b/a/c/a/t;",
        "getPresenter",
        "()Le/a/b/a/c/a/t;",
        "setPresenter",
        "(Le/a/b/a/c/a/t;)V",
        "presenter",
        "Landroid/view/MenuItem;",
        "c",
        "Landroid/view/MenuItem;",
        "searchMenuItem",
        "d",
        "Landroidx/appcompat/widget/SearchView;",
        "enabledSearchView",
        "<init>",
        "bizmon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Le/a/b/a/c/a/t;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/b/a/c/a/v;

.field public c:Landroid/view/MenuItem;

.field public d:Landroidx/appcompat/widget/SearchView;

.field public e:Le/a/b/m/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public B7(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->c:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->c:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public K(Lcom/truecaller/placepicker/data/GeocodedPlace;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->pa(Lcom/truecaller/placepicker/data/GeocodedPlace;Z)V

    return-void
.end method

.method public L8(Lcom/truecaller/placepicker/data/GeocodedPlace;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->pa(Lcom/truecaller/placepicker/data/GeocodedPlace;Z)V

    return-void
.end method

.method public O7()Landroidx/appcompat/widget/SearchView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->d:Landroidx/appcompat/widget/SearchView;

    return-object v0
.end method

.method public U3(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->e:Le/a/b/m/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/b/m/a;->b:Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;

    invoke-virtual {v0, p1}, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;->setPreviousButtonVisible(Z)V

    return-void

    :cond_0
    const-string p1, "binding"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 1
    invoke-static {p0, p1, v0, v1, v2}, Le/a/p5/s0/g;->S1(Landroid/content/Context;ILjava/lang/CharSequence;II)Landroid/widget/Toast;

    return-void
.end method

.method public a0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->e:Le/a/b/m/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/b/m/a;->b:Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;

    .line 2
    iget-object v0, v0, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;->u:Le/a/b/m/h1;

    .line 3
    iget-object v1, v0, Le/a/b/m/h1;->e:Landroid/widget/ProgressBar;

    const-string v2, "progressBar"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 4
    iget-object v0, v0, Le/a/b/m/h1;->b:Landroid/widget/Button;

    const-string v1, "pageNextBtn"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->Q(Landroid/view/View;)V

    return-void

    :cond_0
    const-string v0, "binding"

    .line 5
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public b0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->e:Le/a/b/m/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/b/m/a;->b:Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;

    .line 2
    iget-object v0, v0, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;->u:Le/a/b/m/h1;

    .line 3
    iget-object v1, v0, Le/a/b/m/h1;->e:Landroid/widget/ProgressBar;

    const-string v2, "progressBar"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/f;->Q(Landroid/view/View;)V

    .line 4
    iget-object v0, v0, Le/a/b/m/h1;->b:Landroid/widget/Button;

    const-string v1, "pageNextBtn"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    return-void

    :cond_0
    const-string v0, "binding"

    .line 5
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public c2()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string v0, "context"

    .line 3
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public f0()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public i7(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->d:Landroidx/appcompat/widget/SearchView;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    invoke-static {v0, p1, v1, v2, v3}, Le/a/p5/s0/f;->Y(Landroid/view/View;ZJI)V

    :cond_0
    return-void
.end method

.method public j0()V
    .locals 0

    return-void
.end method

.method public n1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->e:Le/a/b/m/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/b/m/a;->b:Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;

    .line 2
    iget-object v1, v0, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;->u:Le/a/b/m/h1;

    iget-object v1, v1, Le/a/b/m/h1;->f:Lcom/truecaller/bizmon/newBusiness/components/NonSwipeViewPager;

    const-string v2, "binding.viewPager"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;->f1(I)Ls1/s;

    return-void

    :cond_0
    const-string v0, "binding"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Ln3/r/a/l;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x2711

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_5

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    const-string p2, "selected_location"

    .line 2
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/truecaller/placepicker/data/GeocodedPlace;

    goto :goto_0

    :cond_1
    move-object p2, p1

    .line 3
    :goto_0
    new-instance p3, Le/a/b/a/c/a/a/i;

    invoke-direct {p3}, Le/a/b/a/c/a/a/i;-><init>()V

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_arg_geo_place"

    .line 5
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6
    invoke-virtual {p3, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 7
    iget-object p2, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->e:Le/a/b/m/a;

    if-eqz p2, :cond_4

    .line 8
    iget-object v0, p2, Le/a/b/m/a;->b:Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;

    iget-object v1, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->b:Le/a/b/a/c/a/v;

    const-string v2, "onboardingPagerAdapter"

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Le/a/b/a/c/a/v;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, p3, v1}, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;->g1(Landroidx/fragment/app/Fragment;I)Ls1/s;

    .line 9
    iget-object p2, p2, Le/a/b/m/a;->b:Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;

    iget-object p3, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->b:Le/a/b/a/c/a/v;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Le/a/b/a/c/a/v;->c()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;->f1(I)Ls1/s;

    goto :goto_1

    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string p2, "binding"

    .line 11
    invoke-static {p2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    .line 2
    instance-of v0, p1, Le/a/b/a/c/a/a/e;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/b/a/c/a/a/e;

    .line 3
    iput-object p0, p1, Le/a/b/a/c/a/a/e;->f:Le/a/b/a/c/a/s;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Le/a/b/a/c/a/a/j;

    if-eqz v0, :cond_1

    check-cast p1, Le/a/b/a/c/a/a/j;

    const-string v0, "callback"

    .line 5
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p0, p1, Le/a/b/a/c/a/a/j;->c:Le/a/b/a/c/a/a/j$a;

    goto :goto_0

    .line 7
    :cond_1
    instance-of v0, p1, Le/a/b/a/c/a/a/i;

    if-eqz v0, :cond_2

    check-cast p1, Le/a/b/a/c/a/a/i;

    .line 8
    iput-object p0, p1, Le/a/b/a/c/a/a/i;->c:Le/a/b/a/c/a/a/i$a;

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->e:Le/a/b/m/a;

    if-eqz v0, :cond_3

    iget-object v0, v0, Le/a/b/m/a;->b:Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;

    .line 2
    iget-object v1, v0, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;->u:Le/a/b/m/h1;

    iget-object v1, v1, Le/a/b/m/h1;->f:Lcom/truecaller/bizmon/newBusiness/components/NonSwipeViewPager;

    const-string v2, "binding.viewPager"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    iget-object v0, v0, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;->t:Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$a;->xy()V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 4
    new-instance v0, Le/a/b/a/c/a/a/b;

    invoke-direct {v0}, Le/a/b/a/c/a/a/b;-><init>()V

    .line 5
    iput-object p0, v0, Le/a/b/a/c/a/a/b;->a:Le/a/b/a/c/a/a/b$b;

    .line 6
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const-string v0, "binding"

    .line 7
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-static {p0}, Le/a/n/g0;->u0(Landroid/app/Activity;)V

    .line 2
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 4
    sget v0, Lcom/truecaller/bizmon/R$layout;->activity_biz_onboarding:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    sget v3, Lcom/truecaller/bizmon/R$id;->navigator:I

    .line 7
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;

    if-eqz v4, :cond_6

    .line 8
    sget v3, Lcom/truecaller/bizmon/R$id;->onboardingToolbar:I

    .line 9
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/Toolbar;

    if-eqz v5, :cond_6

    .line 10
    new-instance v3, Le/a/b/m/a;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v3, p1, v0, v4, v5}, Le/a/b/m/a;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;Landroidx/appcompat/widget/Toolbar;)V

    const-string p1, "ActivityBizOnboardingBin\u2026ayoutInflater.from(this))"

    .line 11
    invoke-static {v3, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->e:Le/a/b/m/a;

    const-string p1, "binding"

    if-eqz v3, :cond_5

    .line 12
    iget-object v0, v3, Le/a/b/m/a;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 13
    invoke-virtual {p0, v0}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    .line 14
    invoke-static {p0}, Le/a/n/g0;->l(Landroid/content/Context;)Le/a/b/a/g/b;

    move-result-object v0

    check-cast v0, Le/a/b/a/g/e;

    .line 15
    iget-object v0, v0, Le/a/b/a/g/e;->M:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b/a/c/a/t;

    .line 16
    iput-object v0, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->a:Le/a/b/a/c/a/t;

    if-eqz v0, :cond_4

    .line 17
    invoke-interface {v0, p0}, Le/a/u2/a/e;->Y0(Ljava/lang/Object;)V

    .line 18
    new-instance v0, Le/a/b/a/c/a/v;

    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    const-string v4, "supportFragmentManager"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Le/a/b/a/c/a/v;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->b:Le/a/b/a/c/a/v;

    .line 19
    iget-object v3, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->e:Le/a/b/m/a;

    if-eqz v3, :cond_3

    iget-object v3, v3, Le/a/b/m/a;->b:Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;

    invoke-virtual {v3, v0}, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;->setAdapter(Le/a/b/a/c/a/v;)V

    .line 20
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->e:Le/a/b/m/a;

    if-eqz v0, :cond_2

    .line 21
    iget-object p1, v0, Le/a/b/m/a;->c:Landroidx/appcompat/widget/Toolbar;

    const-string v1, "onboardingToolbar"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 22
    iget-object p1, v0, Le/a/b/m/a;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Ln3/b/a/h;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 23
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ln3/b/a/a;->n(Z)V

    .line 24
    :cond_0
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object p1

    if-eqz p1, :cond_1

    sget v0, Lcom/truecaller/bizmon/R$drawable;->biz_toolbar_close:I

    invoke-virtual {p1, v0}, Ln3/b/a/a;->s(I)V

    .line 25
    :cond_1
    invoke-virtual {p0, v2}, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->B7(Z)V

    return-void

    .line 26
    :cond_2
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 27
    :cond_3
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string p1, "presenter"

    .line 28
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_5
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 31
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->c:Landroid/view/MenuItem;

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Ln3/b/a/h;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/truecaller/bizmon/R$menu;->menu_biz:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    sget v1, Lcom/truecaller/bizmon/R$id;->action_search:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->c:Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    :cond_1
    const-string v1, "null cannot be cast to non-null type androidx.appcompat.widget.SearchView"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/SearchView;

    iput-object v0, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->d:Landroidx/appcompat/widget/SearchView;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->B7(Z)V

    .line 6
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->a:Le/a/b/a/c/a/t;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/u2/a/e;->c()V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onSupportNavigateUp()Z
    .locals 3

    .line 1
    new-instance v0, Le/a/b/a/c/a/a/b;

    invoke-direct {v0}, Le/a/b/a/c/a/a/b;-><init>()V

    .line 2
    iput-object p0, v0, Le/a/b/a/c/a/a/b;->a:Le/a/b/a/c/a/a/b$b;

    .line 3
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public p3(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->e:Le/a/b/m/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/b/m/a;->b:Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;

    invoke-virtual {v0, p1}, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;->setNextButtonVisible(Z)V

    return-void

    :cond_0
    const-string p1, "binding"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final pa(Lcom/truecaller/placepicker/data/GeocodedPlace;Z)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget v1, Lcom/truecaller/bizmon/R$string;->google_maps_api_key:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.google_maps_api_key)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "apiKey"

    .line 2
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v2, Le/a/k4/c;->a:Ljava/lang/String;

    const-string v3, "<set-?>"

    .line 4
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sput-object v2, Le/a/k4/c;->b:Ljava/lang/String;

    .line 6
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sput-object v1, Le/a/k4/c;->a:Ljava/lang/String;

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_0

    .line 8
    iget-object v3, p1, Lcom/truecaller/placepicker/data/GeocodedPlace;->d:Ljava/lang/Double;

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p1, Lcom/truecaller/placepicker/data/GeocodedPlace;->e:Ljava/lang/Double;

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :cond_1
    const-string p1, "activity"

    .line 12
    invoke-static {p0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object p1, Lcom/google/android/gms/common/GoogleApiAvailability;->d:Lcom/google/android/gms/common/GoogleApiAvailability;

    const-string v5, "GoogleApiAvailability.getInstance()"

    .line 14
    invoke-static {p1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v5, 0xcc77c0

    .line 15
    invoke-virtual {p1, p0, v5}, Lcom/google/android/gms/common/GoogleApiAvailability;->e(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 16
    invoke-static {v5}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->isUserRecoverableError(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 17
    invoke-virtual {p1, p0, v5, v6, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->f(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 19
    new-instance p1, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;

    .line 20
    invoke-static {v5}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->getErrorString(I)Ljava/lang/String;

    move-result-object p2

    .line 21
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-direct {p1, v5, p2, v1}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    throw p1

    .line 22
    :cond_2
    new-instance p1, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    invoke-direct {p1, v5}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    throw p1

    .line 23
    :cond_3
    new-instance p1, Landroid/content/Intent;

    const-class v5, Lcom/truecaller/placepicker/PlacePickerActivity;

    invoke-direct {p1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "latitude"

    .line 24
    invoke-virtual {p1, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v3, "longitude"

    .line 25
    invoke-virtual {p1, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v1, "forceRemoteGeocoding"

    .line 26
    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "toolbarTitle"

    .line 27
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "showAutocomplete"

    .line 28
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p2, 0x2711

    .line 29
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 30
    instance-of p2, p1, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    if-eqz p2, :cond_4

    goto :goto_1

    .line 31
    :cond_4
    instance-of p2, p1, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;

    if-eqz p2, :cond_6

    :goto_1
    iget-object p1, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->a:Le/a/b/a/c/a/t;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Le/a/b/a/c/a/t;->o5()V

    goto :goto_2

    :cond_5
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_6
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public u5(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->e:Le/a/b/m/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/b/m/a;->b:Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;

    invoke-virtual {v0, p1}, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;->setNextButtonText(I)V

    return-void

    :cond_0
    const-string p1, "binding"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public v1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->e:Le/a/b/m/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/b/m/a;->b:Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;

    .line 2
    iget-object v1, v0, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;->u:Le/a/b/m/h1;

    iget-object v1, v1, Le/a/b/m/h1;->f:Lcom/truecaller/bizmon/newBusiness/components/NonSwipeViewPager;

    const-string v2, "binding.viewPager"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;->f1(I)Ls1/s;

    return-void

    :cond_0
    const-string v0, "binding"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public v4(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->e:Le/a/b/m/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/b/m/a;->b:Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;

    invoke-virtual {v0, p1}, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;->f1(I)Ls1/s;

    return-void

    :cond_0
    const-string p1, "binding"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public z5(Lcom/truecaller/placepicker/data/GeocodedPlace;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->e:Le/a/b/m/a;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2
    iget-object v1, p1, Le/a/b/m/a;->b:Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;

    .line 3
    new-instance v2, Le/a/b/a/c/a/a/c;

    invoke-direct {v2}, Le/a/b/a/c/a/a/c;-><init>()V

    .line 4
    iget-object v3, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->b:Le/a/b/a/c/a/v;

    const-string v4, "onboardingPagerAdapter"

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Le/a/b/a/c/a/v;->c()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;->g1(Landroidx/fragment/app/Fragment;I)Ls1/s;

    .line 5
    iget-object p1, p1, Le/a/b/m/a;->b:Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;

    iget-object v1, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;->b:Le/a/b/a/c/a/v;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Le/a/b/a/c/a/v;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;->f1(I)Ls1/s;

    return-void

    :cond_0
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p1, "binding"

    .line 7
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method
