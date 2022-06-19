.class public final Le/a/i/d0/a0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/d0/a0/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/i/d0/a0/j$a;
    }
.end annotation


# instance fields
.field public a:Lcom/facebook/ads/NativeAd;

.field public b:Lcom/facebook/ads/MediaView;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic d(Le/a/i/d0/a0/j;)Lcom/facebook/ads/NativeAd;
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/i/d0/a0/j;->a:Lcom/facebook/ads/NativeAd;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "nativeAd"

    invoke-static {p0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/i/d0/j<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object p2, Le/a/i/d0/e0/d;->c:Le/a/i/d0/e0/d;

    .line 2
    new-instance v0, Lq3/a/o;

    invoke-static {p3}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 3
    invoke-virtual {v0}, Lq3/a/o;->z()V

    .line 4
    new-instance v1, Le/a/i/d0/e0/e;

    invoke-direct {v1, v0}, Le/a/i/d0/e0/e;-><init>(Lq3/a/n;)V

    .line 5
    sput-object v1, Le/a/i/d0/e0/d;->b:Le/a/i/d0/e0/d$a;

    .line 6
    sget-boolean v2, Le/a/i/d0/e0/d;->a:Z

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v1}, Le/a/i/d0/e0/e;->onInitializeSuccess()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/AudienceNetworkAds;->buildInitSettings(Landroid/content/Context;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->withInitListener(Lcom/facebook/ads/AudienceNetworkAds$InitListener;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->initialize()V

    .line 9
    :goto_0
    invoke-virtual {v0}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object p1

    .line 10
    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_1

    const-string p2, "frame"

    .line 11
    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method public c(Landroid/content/Context;Le/a/i/d0/a0/r;Le/a/i/d0/z;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/i/d0/a0/r;",
            "Le/a/i/d0/z;",
            "Ls1/w/d<",
            "-",
            "Le/a/i/d0/j<",
            "+",
            "Le/a/i/d0/h0/a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p3, p4, Le/a/i/d0/a0/j$b;

    if-eqz p3, :cond_0

    move-object p3, p4

    check-cast p3, Le/a/i/d0/a0/j$b;

    iget v0, p3, Le/a/i/d0/a0/j$b;->e:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    iput v0, p3, Le/a/i/d0/a0/j$b;->e:I

    goto :goto_0

    :cond_0
    new-instance p3, Le/a/i/d0/a0/j$b;

    invoke-direct {p3, p0, p4}, Le/a/i/d0/a0/j$b;-><init>(Le/a/i/d0/a0/j;Ls1/w/d;)V

    :goto_0
    iget-object p4, p3, Le/a/i/d0/a0/j$b;->d:Ljava/lang/Object;

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p3, Le/a/i/d0/a0/j$b;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, p3, Le/a/i/d0/a0/j$b;->i:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Le/a/i/d0/a0/r;

    iget-object p1, p3, Le/a/i/d0/a0/j$b;->h:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iget-object v1, p3, Le/a/i/d0/a0/j$b;->g:Ljava/lang/Object;

    check-cast v1, Le/a/i/d0/a0/j;

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p4, p2, Le/a/i/d0/a0/r;->b:Ljava/lang/String;

    .line 5
    iput-object p0, p3, Le/a/i/d0/a0/j$b;->g:Ljava/lang/Object;

    iput-object p1, p3, Le/a/i/d0/a0/j$b;->h:Ljava/lang/Object;

    iput-object p2, p3, Le/a/i/d0/a0/j$b;->i:Ljava/lang/Object;

    iput v3, p3, Le/a/i/d0/a0/j$b;->e:I

    invoke-virtual {p0, p1, p4, p3}, Le/a/i/d0/a0/j;->a(Landroid/content/Context;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v0, :cond_4

    return-object v0

    :cond_4
    move-object v1, p0

    .line 6
    :goto_1
    check-cast p4, Le/a/i/d0/j;

    .line 7
    instance-of v4, p4, Le/a/i/d0/k;

    if-eqz v4, :cond_7

    .line 8
    iget-object p2, p2, Le/a/i/d0/a0/r;->c:Ljava/lang/String;

    const/4 p4, 0x0

    .line 9
    iput-object p4, p3, Le/a/i/d0/a0/j$b;->g:Ljava/lang/Object;

    iput-object p4, p3, Le/a/i/d0/a0/j$b;->h:Ljava/lang/Object;

    iput-object p4, p3, Le/a/i/d0/a0/j$b;->i:Ljava/lang/Object;

    iput v2, p3, Le/a/i/d0/a0/j$b;->e:I

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance p4, Lq3/a/o;

    invoke-static {p3}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v2

    invoke-direct {p4, v2, v3}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 12
    invoke-virtual {p4}, Lq3/a/o;->z()V

    .line 13
    new-instance v2, Lcom/facebook/ads/NativeAd;

    invoke-direct {v2, p1, p2}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    iput-object v2, v1, Le/a/i/d0/a0/j;->a:Lcom/facebook/ads/NativeAd;

    .line 15
    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdBase;->buildLoadAdConfig()Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v3

    new-instance v4, Le/a/i/d0/a0/k;

    invoke-direct {v4, p4, v1, p1, p2}, Le/a/i/d0/a0/k;-><init>(Lq3/a/n;Le/a/i/d0/a0/j;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object p1

    .line 16
    invoke-interface {p1}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    move-result-object p1

    .line 17
    invoke-virtual {v2, p1}, Lcom/facebook/ads/NativeAdBase;->loadAd(Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;)V

    .line 18
    invoke-virtual {p4}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v0, :cond_5

    const-string p1, "frame"

    .line 19
    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    if-ne p4, v0, :cond_6

    return-object v0

    .line 20
    :cond_6
    :goto_2
    check-cast p4, Le/a/i/d0/j;

    goto :goto_3

    .line 21
    :cond_7
    instance-of p1, p4, Le/a/i/d0/i;

    if-eqz p1, :cond_8

    :goto_3
    return-object p4

    :cond_8
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method

.method public destroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/i/d0/a0/j;->a:Lcom/facebook/ads/NativeAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "nativeAd"

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->unregisterView()V

    .line 3
    iget-object v0, p0, Le/a/i/d0/a0/j;->a:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->destroy()V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_2
    :goto_0
    iget-object v0, p0, Le/a/i/d0/a0/j;->b:Lcom/facebook/ads/MediaView;

    if-eqz v0, :cond_4

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->destroy()V

    goto :goto_1

    :cond_3
    const-string v0, "facebookMediaView"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_1
    return-void
.end method
