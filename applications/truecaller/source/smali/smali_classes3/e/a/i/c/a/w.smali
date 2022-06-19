.class public final Le/a/i/c/a/w;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001R.\u0010\n\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Le/a/i/c/a/w;",
        "Landroid/widget/FrameLayout;",
        "Le/a/i/d0/h0/f;",
        "value",
        "a",
        "Le/a/i/d0/h0/f;",
        "getSuggestedAppsAd",
        "()Le/a/i/d0/h0/f;",
        "setSuggestedAppsAd",
        "(Le/a/i/d0/h0/f;)V",
        "suggestedAppsAd",
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
.field public a:Le/a/i/d0/h0/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    and-int/lit8 p2, p4, 0x2

    const/4 p2, 0x0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    const-string p4, "context"

    .line 1
    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string p2, "LayoutInflater.from(context)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-static {p1, p2}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/truecaller/ads/R$layout;->ad_appnext_native_banner:I

    invoke-virtual {p1, p3, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final getSuggestedAppsAd()Le/a/i/d0/h0/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/c/a/w;->a:Le/a/i/d0/h0/f;

    return-object v0
.end method

.method public final setSuggestedAppsAd(Le/a/i/d0/h0/f;)V
    .locals 5

    .line 1
    iput-object p1, p0, Le/a/i/c/a/w;->a:Le/a/i/d0/h0/f;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Le/a/i/d0/h0/f;->c:Le/a/i/d0/h0/g;

    .line 3
    iget-object p1, p1, Le/a/i/d0/h0/g;->j:Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderDataContainer;

    if-eqz p1, :cond_0

    .line 4
    sget v0, Lcom/truecaller/ads/R$id;->appnextCollectionAdView:I

    invoke-static {p0, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/truecaller/ads/R$string;->appnext_suggested_apps_ad_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "context.getString(R.stri\u2026_suggested_apps_ad_title)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy;->setTitle(Ljava/lang/String;)V

    .line 6
    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderView;

    new-instance v3, Le/a/i/c/a/w$a;

    invoke-direct {v3, v0, v1, p0}, Le/a/i/c/a/w$a;-><init>(Ls1/g;Ls1/a/l;Le/a/i/c/a/w;)V

    invoke-virtual {v2, p1, v3}, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderView;->load(Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderDataContainer;Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderViewCallbacks;)V

    :cond_0
    return-void
.end method
