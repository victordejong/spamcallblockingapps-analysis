.class public final Le/a/i/c/a/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/c/a/a;->setNativeAd(Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/i/c/a/a$a;->a:I

    iput-object p2, p0, Le/a/i/c/a/a$a;->b:Ljava/lang/Object;

    iput-object p3, p0, Le/a/i/c/a/a$a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Le/a/i/c/a/a$a;->a:I

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Le/a/i/c/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/i/c/a/a;

    iget-object v0, p0, Le/a/i/c/a/a$a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    invoke-static {p1, v0}, Le/a/i/c/a/a;->e(Le/a/i/c/a/a;Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Le/a/i/c/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/i/c/a/a;

    iget-object v0, p0, Le/a/i/c/a/a$a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    invoke-static {p1, v0}, Le/a/i/c/a/a;->e(Le/a/i/c/a/a;Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;)V

    return-void

    .line 4
    :cond_2
    iget-object p1, p0, Le/a/i/c/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/i/c/a/a;

    iget-object v0, p0, Le/a/i/c/a/a$a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    invoke-static {p1, v0}, Le/a/i/c/a/a;->e(Le/a/i/c/a/a;Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;)V

    return-void

    .line 5
    :cond_3
    iget-object p1, p0, Le/a/i/c/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/i/c/a/a;

    iget-object v0, p0, Le/a/i/c/a/a$a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    invoke-static {p1, v0}, Le/a/i/c/a/a;->e(Le/a/i/c/a/a;Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;)V

    return-void

    .line 6
    :cond_4
    iget-object p1, p0, Le/a/i/c/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/i/c/a/a;

    iget-object v0, p0, Le/a/i/c/a/a$a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    invoke-static {p1, v0}, Le/a/i/c/a/a;->e(Le/a/i/c/a/a;Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;)V

    return-void

    .line 7
    :cond_5
    iget-object p1, p0, Le/a/i/c/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/i/c/a/a;

    iget-object v0, p0, Le/a/i/c/a/a$a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    invoke-static {p1, v0}, Le/a/i/c/a/a;->e(Le/a/i/c/a/a;Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;)V

    return-void
.end method
