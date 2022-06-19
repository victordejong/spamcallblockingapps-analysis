.class public final Le/a/i/d0/a0/j$a;
.super Le/a/i/d0/h0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/i/d0/a0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic o:Le/a/i/d0/a0/j;


# direct methods
.method public constructor <init>(Le/a/i/d0/a0/j;Lcom/facebook/ads/NativeAd;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/NativeAd;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "nativeAd"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/i/d0/a0/j$a;->o:Le/a/i/d0/a0/j;

    invoke-direct {p0}, Le/a/i/d0/h0/c;-><init>()V

    .line 2
    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdBase;->getAdHeadline()Ljava/lang/String;

    move-result-object v0

    .line 3
    iput-object v0, p0, Le/a/i/d0/h0/c;->e:Ljava/lang/String;

    .line 4
    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdBase;->getAdBodyText()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Le/a/i/d0/h0/c;->f:Ljava/lang/String;

    .line 6
    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdBase;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    .line 7
    iput-object v0, p0, Le/a/i/d0/h0/c;->g:Ljava/lang/String;

    .line 8
    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdBase;->getAdvertiserName()Ljava/lang/String;

    move-result-object v0

    .line 9
    iput-object v0, p0, Le/a/i/d0/h0/c;->j:Ljava/lang/String;

    .line 10
    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdBase;->getAdIcon()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase$Image;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 11
    :goto_0
    iput-object v0, p0, Le/a/i/d0/h0/c;->h:Ljava/lang/String;

    .line 12
    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdBase;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v1, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd$a;

    const-string v0, "it"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdBase$Image;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdBase$Image;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdBase$Image;->getWidth()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, v0, v2, p2}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd$a;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 13
    :cond_1
    iput-object v1, p0, Le/a/i/d0/h0/c;->i:Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd$a;

    .line 14
    new-instance p2, Lcom/facebook/ads/MediaView;

    invoke-direct {p2, p3}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    .line 15
    iput-object p2, p1, Le/a/i/d0/a0/j;->b:Lcom/facebook/ads/MediaView;

    .line 16
    iput-object p2, p0, Le/a/i/d0/h0/c;->m:Landroid/view/View;

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Le/a/i/d0/h0/c;->l:Z

    .line 18
    iput-boolean p1, p0, Le/a/i/d0/h0/c;->k:Z

    const/16 p1, 0xa

    .line 19
    iput p1, p0, Le/a/i/d0/h0/a;->c:I

    const-string p1, "0.0"

    .line 20
    invoke-virtual {p0, p1}, Le/a/i/d0/h0/a;->b(Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Le/a/i/d0/h0/a;->b:Ljava/lang/String;

    .line 22
    invoke-virtual {p0, p1}, Le/a/i/d0/h0/a;->a(Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Le/a/i/d0/h0/a;->a:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    .line 25
    iput-wide p1, p0, Le/a/i/d0/h0/a;->d:D

    return-void
.end method


# virtual methods
.method public c()Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;
    .locals 1

    .line 1
    new-instance v0, Le/a/i/d0/h0/l;

    invoke-direct {v0, p0}, Le/a/i/d0/h0/l;-><init>(Le/a/i/d0/h0/c;)V

    return-object v0
.end method

.method public d(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/widget/ImageView;",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Le/a/i/d0/h0/c;->d(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V

    .line 2
    new-instance v0, Lcom/facebook/ads/AdOptionsView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Le/a/i/d0/a0/j$a;->o:Le/a/i/d0/a0/j;

    invoke-static {v2}, Le/a/i/d0/a0/j;->d(Le/a/i/d0/a0/j;)Lcom/facebook/ads/NativeAd;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    .line 3
    new-instance v1, Le/a/i/d0/a0/j$a$a;

    invoke-direct {v1, p1, v0}, Le/a/i/d0/a0/j$a$a;-><init>(Landroid/view/View;Lcom/facebook/ads/AdOptionsView;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 4
    iget-object v0, p0, Le/a/i/d0/a0/j$a;->o:Le/a/i/d0/a0/j;

    invoke-static {v0}, Le/a/i/d0/a0/j;->d(Le/a/i/d0/a0/j;)Lcom/facebook/ads/NativeAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->unregisterView()V

    .line 5
    iget-object v0, p0, Le/a/i/d0/a0/j$a;->o:Le/a/i/d0/a0/j;

    invoke-static {v0}, Le/a/i/d0/a0/j;->d(Le/a/i/d0/a0/j;)Lcom/facebook/ads/NativeAd;

    move-result-object v0

    iget-object v1, p0, Le/a/i/d0/a0/j$a;->o:Le/a/i/d0/a0/j;

    .line 6
    iget-object v1, v1, Le/a/i/d0/a0/j;->b:Lcom/facebook/ads/MediaView;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Landroid/widget/ImageView;Ljava/util/List;)V

    return-void

    :cond_0
    const-string p1, "facebookMediaView"

    .line 8
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method
