.class public final Le/a/i/d0/a0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/NativeAdListener;


# instance fields
.field public final synthetic a:Lq3/a/n;

.field public final synthetic b:Le/a/i/d0/a0/j;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lq3/a/n;Le/a/i/d0/a0/j;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/i/d0/a0/k;->a:Lq3/a/n;

    iput-object p2, p0, Le/a/i/d0/a0/k;->b:Le/a/i/d0/a0/j;

    iput-object p3, p0, Le/a/i/d0/a0/k;->c:Landroid/content/Context;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 0

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/i/d0/a0/k;->b:Le/a/i/d0/a0/j;

    invoke-static {v0}, Le/a/i/d0/a0/j;->d(Le/a/i/d0/a0/j;)Lcom/facebook/ads/NativeAd;

    move-result-object v0

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/i/d0/a0/k;->a:Lq3/a/n;

    new-instance v0, Le/a/i/d0/i;

    new-instance v1, Le/a/i/d0/q;

    const-string v2, "Facebook"

    invoke-direct {v1, v2}, Le/a/i/d0/q;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Le/a/i/d0/i;-><init>(Le/a/i/c/b/a;)V

    invoke-static {p1, v0}, Le/a/p5/s0/g;->f1(Lq3/a/n;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/i/d0/a0/k;->a:Lq3/a/n;

    new-instance v0, Le/a/i/d0/k;

    new-instance v1, Le/a/i/d0/a0/j$a;

    iget-object v2, p0, Le/a/i/d0/a0/k;->b:Le/a/i/d0/a0/j;

    invoke-static {v2}, Le/a/i/d0/a0/j;->d(Le/a/i/d0/a0/j;)Lcom/facebook/ads/NativeAd;

    move-result-object v3

    iget-object v4, p0, Le/a/i/d0/a0/k;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4}, Le/a/i/d0/a0/j$a;-><init>(Le/a/i/d0/a0/j;Lcom/facebook/ads/NativeAd;Landroid/content/Context;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Le/a/i/d0/k;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-static {p1, v0}, Le/a/p5/s0/g;->f1(Lq3/a/n;Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/i/d0/a0/k;->a:Lq3/a/n;

    new-instance v0, Le/a/i/d0/i;

    new-instance v1, Le/a/i/d0/l;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    const-string v2, "Facebook"

    invoke-direct {v1, p2, v2}, Le/a/i/d0/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Le/a/i/d0/i;-><init>(Le/a/i/c/b/a;)V

    invoke-static {p1, v0}, Le/a/p5/s0/g;->f1(Lq3/a/n;Ljava/lang/Object;)V

    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0

    return-void
.end method

.method public onMediaDownloaded(Lcom/facebook/ads/Ad;)V
    .locals 0

    return-void
.end method
