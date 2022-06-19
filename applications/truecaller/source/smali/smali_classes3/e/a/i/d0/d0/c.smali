.class public final Le/a/i/d0/d0/c;
.super Le/a/i/d0/d0/b;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/i/d0/d0/b;-><init>()V

    iput-object p1, p0, Le/a/i/d0/d0/c;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/i/d0/d0/c;->b:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    return-void
.end method


# virtual methods
.method public a(Le/a/i/c/b/a;)V
    .locals 1

    const-string v0, "adError"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/d0/d0/c;->b:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-static {p1}, Le/m/d/y/n;->p1(Le/a/i/c/b/a;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method

.method public b(Le/a/i/c/a/c;Le/a/i/g;Ls1/z/b/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/c/a/c;",
            "Le/a/i/g;",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ad"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onAdImpression"

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/i/d0/d0/c;->a:Landroid/content/Context;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/truecaller/ads/AdLayoutTypeX;->ACS_LARGE:Lcom/truecaller/ads/AdLayoutTypeX;

    :goto_0
    const-string v2, "context"

    .line 2
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "type"

    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Le/a/i/c/a/c;->d()Lcom/truecaller/ads/adsrouter/ui/AdRouterAdHolderType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 p2, 0x1

    if-eq v0, p2, :cond_2

    const/4 p2, 0x2

    if-ne v0, p2, :cond_1

    .line 4
    check-cast p1, Le/a/i/c/a/t;

    invoke-static {p1, v1}, Le/m/d/y/n;->n0(Le/a/i/c/a/t;Landroid/content/Context;)Le/a/i/c/a/q;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 5
    :cond_2
    check-cast p1, Le/a/i/c/a/h;

    invoke-static {p1, v1}, Le/m/d/y/n;->m0(Le/a/i/c/a/h;Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 6
    :cond_3
    check-cast p1, Le/a/i/c/a/j;

    invoke-static {p1, v1, p2}, Le/m/d/y/n;->i0(Le/a/i/c/a/j;Landroid/content/Context;Le/a/i/g;)Landroid/view/View;

    move-result-object p1

    .line 7
    :goto_1
    new-instance p2, Le/a/i/d0/d0/c$a;

    invoke-direct {p2, p3}, Le/a/i/d0/d0/c$a;-><init>(Ls1/z/b/a;)V

    invoke-static {p1, p2}, Le/a/p5/s0/f;->w(Landroid/view/View;Ls1/z/b/a;)V

    .line 8
    new-instance p2, Le/a/i/d0/d0/c$b;

    invoke-direct {p2, p0}, Le/a/i/d0/d0/c$b;-><init>(Le/a/i/d0/d0/c;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p2, p0, Le/a/i/d0/d0/c;->b:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdLoaded(Landroid/view/View;)V

    return-void
.end method
