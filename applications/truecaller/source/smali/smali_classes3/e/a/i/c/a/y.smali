.class public final Le/a/i/c/a/y;
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
        "Le/a/i/c/a/y;",
        "Landroid/widget/FrameLayout;",
        "Le/a/i/d0/h0/i;",
        "value",
        "a",
        "Le/a/i/d0/h0/i;",
        "getBannerAd",
        "()Le/a/i/d0/h0/i;",
        "setBannerAd",
        "(Le/a/i/d0/h0/i;)V",
        "bannerAd",
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
.field public a:Le/a/i/d0/h0/i;


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

    return-void
.end method


# virtual methods
.method public final getBannerAd()Le/a/i/d0/h0/i;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/c/a/y;->a:Le/a/i/d0/h0/i;

    return-object v0
.end method

.method public final setBannerAd(Le/a/i/d0/h0/i;)V
    .locals 3

    .line 1
    iput-object p1, p0, Le/a/i/c/a/y;->a:Le/a/i/d0/h0/i;

    if-eqz p1, :cond_2

    .line 2
    iget-object v0, p1, Le/a/i/d0/h0/i;->c:Le/a/i/d0/h0/j;

    .line 3
    iget-object v0, v0, Le/a/i/d0/h0/j;->j:Lcom/criteo/publisher/CriteoBannerView;

    const-string v1, "bannerAdView"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 5
    iget-object v0, p1, Le/a/i/d0/h0/i;->c:Le/a/i/d0/h0/j;

    .line 6
    iget-object v0, v0, Le/a/i/d0/h0/j;->j:Lcom/criteo/publisher/CriteoBannerView;

    if-eqz v0, :cond_0

    .line 7
    new-instance v1, Le/a/i/c/a/y$a;

    invoke-direct {v1, p1}, Le/a/i/c/a/y$a;-><init>(Le/a/i/d0/h0/i;)V

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/CriteoBannerView;->setCriteoBannerAdListener(Lcom/criteo/publisher/CriteoBannerAdListener;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_1
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    return-void
.end method
