.class public abstract Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/c/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd$a;,
        Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd$AdCreativeType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/truecaller/ads/adsrouter/ui/AdType;->NATIVE:Lcom/truecaller/ads/adsrouter/ui/AdType;

    return-void
.end method


# virtual methods
.method public abstract g()Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd$AdCreativeType;
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method public abstract j()Ljava/lang/String;
.end method

.method public k()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract l()Ljava/lang/String;
.end method

.method public abstract m()Ljava/lang/String;
.end method

.method public abstract n()Landroid/view/View;
.end method

.method public abstract o()Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd$a;
.end method

.method public abstract p()Z
.end method

.method public abstract q()Z
.end method

.method public abstract r()Ljava/lang/String;
.end method

.method public abstract s()Ljava/lang/String;
.end method

.method public abstract t()Ljava/lang/String;
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Le/m/d/y/n;->V()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V
    .locals 1
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

    const-string p2, "view"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
