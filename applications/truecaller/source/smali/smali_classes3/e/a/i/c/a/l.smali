.class public final Le/a/i/c/a/l;
.super Le/a/i/c/a/d;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0005J\u0019\u0010\t\u001a\u00020\u00032\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nR.\u0010\u0013\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u0018\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Le/a/i/c/a/l;",
        "Le/a/i/c/a/d;",
        "Landroid/view/View$OnClickListener;",
        "Ls1/s;",
        "b",
        "()V",
        "c",
        "Landroid/view/View;",
        "v",
        "onClick",
        "(Landroid/view/View;)V",
        "Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;",
        "value",
        "e",
        "Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;",
        "getNativeAd",
        "()Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;",
        "setNativeAd",
        "(Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;)V",
        "nativeAd",
        "",
        "d",
        "Z",
        "recordImpression",
        "recordClickPixels",
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
.field public c:Z

.field public d:Z

.field public e:Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;


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
    invoke-direct {p0, p1, p2, p3}, Le/a/i/c/a/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/c/a/l;->e:Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, p0, Le/a/i/c/a/l;->d:Z

    if-nez v1, :cond_0

    .line 3
    invoke-interface {v0}, Le/a/i/c/a/b;->recordImpression()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Le/a/i/c/a/l;->d:Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/c/a/l;->e:Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/i/c/a/b;->c()V

    :cond_0
    return-void
.end method

.method public final getNativeAd()Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/c/a/l;->e:Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Le/a/i/c/a/l;->e:Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Le/a/i/c/a/b;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;->k()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;->u()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p0, v1, v0, v2, v3}, Le/a/i/c/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-boolean v0, p0, Le/a/i/c/a/l;->c:Z

    if-nez v0, :cond_1

    .line 8
    invoke-interface {p1}, Le/a/i/c/a/b;->e()V

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Le/a/i/c/a/l;->c:Z

    :cond_1
    return-void
.end method

.method public final setNativeAd(Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;)V
    .locals 5

    .line 1
    iput-object p1, p0, Le/a/i/c/a/l;->e:Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    const/4 v0, 0x0

    const-string v1, "context"

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;->o()Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd$a;->c:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p1}, Le/a/p5/s0/g;->A(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 5
    :goto_0
    iget-object v2, p0, Le/a/i/c/a/l;->e:Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;->o()Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd$a;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v2, v2, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd$a;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Le/a/p5/s0/g;->A(Landroid/content/Context;I)I

    move-result v0

    .line 8
    :cond_1
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 9
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, p1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object v1

    .line 12
    iget-object v3, p0, Le/a/i/c/a/l;->e:Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;->o()Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd$a;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 13
    iget-object v3, v3, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd$a;->a:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 14
    :goto_1
    invoke-virtual {v1, v3}, Le/a/z3/e;->B(Ljava/lang/String;)Le/a/z3/d;

    move-result-object v1

    .line 15
    invoke-virtual {v1, p1, v0}, Le/a/z3/d;->n0(II)Le/a/z3/d;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Le/a/z3/d;->c0()Le/a/z3/d;

    move-result-object p1

    .line 17
    invoke-virtual {p1, v2}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    .line 18
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 20
    iget-object p1, p0, Le/a/i/c/a/l;->e:Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    if-eqz p1, :cond_3

    .line 21
    iget-boolean v0, p0, Le/a/i/c/a/l;->d:Z

    if-nez v0, :cond_3

    .line 22
    invoke-interface {p1}, Le/a/i/c/a/b;->recordImpression()V

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Le/a/i/c/a/l;->d:Z

    :cond_3
    return-void
.end method
