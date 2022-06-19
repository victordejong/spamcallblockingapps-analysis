.class public final Lcom/truecaller/ads/offline/common/ui/OfflineAdsActivity;
.super Le/a/i/e/g/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/i/e/g/a/e/c;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0019\u0010\u0012J\u000f\u0010\u0004\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ#\u0010\u000f\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u001d\u0010\u0018\u001a\u00020\u00138B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/truecaller/ads/offline/common/ui/OfflineAdsActivity;",
        "Le/a/i/e/g/a/e/a;",
        "Le/a/i/e/g/a/e/c;",
        "Landroid/view/View;",
        "qa",
        "()Landroid/view/View;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Lcom/truecaller/ads/offline/dto/Theme;",
        "uiTheme",
        "Lcom/truecaller/ads/offline/dto/ThankYouData;",
        "thankYouData",
        "o4",
        "(Lcom/truecaller/ads/offline/dto/Theme;Lcom/truecaller/ads/offline/dto/ThankYouData;)V",
        "v9",
        "()V",
        "Le/a/i/x/a;",
        "d",
        "Ls1/g;",
        "getBinding",
        "()Le/a/i/x/a;",
        "binding",
        "<init>",
        "ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final d:Ls1/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/a/i/e/g/a/b;-><init>()V

    .line 2
    sget-object v0, Ls1/h;->c:Ls1/h;

    new-instance v1, Lcom/truecaller/ads/offline/common/ui/OfflineAdsActivity$a;

    invoke-direct {v1, p0}, Lcom/truecaller/ads/offline/common/ui/OfflineAdsActivity$a;-><init>(Ln3/b/a/h;)V

    invoke-static {v0, v1}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/truecaller/ads/offline/common/ui/OfflineAdsActivity;->d:Ls1/g;

    return-void
.end method


# virtual methods
.method public o4(Lcom/truecaller/ads/offline/dto/Theme;Lcom/truecaller/ads/offline/dto/ThankYouData;)V
    .locals 3

    .line 1
    sget-object v0, Le/a/i/e/g/a/d;->d:Le/a/i/e/g/a/d$b;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Le/a/i/e/g/a/d;

    invoke-direct {v0}, Le/a/i/e/g/a/d;-><init>()V

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_theme"

    .line 5
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "extra_thankyou_data"

    .line 6
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const-string p1, "OfflineAdsThankYouFragment"

    const-string p2, "fragment"

    .line 8
    invoke-static {v0, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "tag"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    .line 10
    new-instance v1, Ln3/r/a/a;

    invoke-direct {v1, p2}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 11
    sget p2, Lcom/truecaller/ads/R$id;->offline_leadgen_frame:I

    invoke-virtual {v1, p2, v0, p1}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 12
    invoke-virtual {v1}, Ln3/r/a/a;->g()I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Le/a/i/e/g/a/e/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "intent"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "extraOfflineAdType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 4
    sget-object v1, Lcom/truecaller/ads/offline/dto/OfflineAdType;->ARTICLE_PAGE:Lcom/truecaller/ads/offline/dto/OfflineAdType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "bundle"

    if-eqz v0, :cond_1

    sget-object v0, Le/a/i/e/a/b/a;->m:Le/a/i/e/a/b/a$e;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Le/a/i/e/a/b/a;

    invoke-direct {v0}, Le/a/i/e/a/b/a;-><init>()V

    .line 7
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const-string p1, "ArticleFragment"

    .line 8
    invoke-virtual {p0, v0, p1}, Le/a/i/e/g/a/e/a;->pa(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_1
    sget-object v0, Le/a/i/e/a/a/a;->o:Le/a/i/e/a/a/a$c;

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Le/a/i/e/a/a/a;

    invoke-direct {v0}, Le/a/i/e/a/a/a;-><init>()V

    .line 12
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const-string p1, "OfflineLeadGenFragment"

    .line 13
    invoke-virtual {p0, v0, p1}, Le/a/i/e/g/a/e/a;->pa(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method public qa()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/offline/common/ui/OfflineAdsActivity;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/x/a;

    const-string v1, "binding"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v0, Le/a/i/x/a;->a:Landroid/widget/FrameLayout;

    const-string v1, "binding.root"

    .line 4
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public v9()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
