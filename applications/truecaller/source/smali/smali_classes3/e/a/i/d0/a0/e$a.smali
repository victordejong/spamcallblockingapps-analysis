.class public final Le/a/i/d0/a0/e$a;
.super Lcom/appnext/nativeads/NativeAdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/d0/a0/e;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/n;

.field public final synthetic b:Le/a/i/d0/a0/e;


# direct methods
.method public constructor <init>(Lq3/a/n;Le/a/i/d0/a0/e;)V
    .locals 0

    iput-object p1, p0, Le/a/i/d0/a0/e$a;->a:Lq3/a/n;

    iput-object p2, p0, Le/a/i/d0/a0/e$a;->b:Le/a/i/d0/a0/e;

    .line 1
    invoke-direct {p0}, Lcom/appnext/nativeads/NativeAdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public adImpression(Lcom/appnext/nativeads/NativeAd;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/appnext/nativeads/NativeAdListener;->adImpression(Lcom/appnext/nativeads/NativeAd;)V

    .line 2
    iget-object p1, p0, Le/a/i/d0/a0/e$a;->b:Le/a/i/d0/a0/e;

    iget-object v0, p1, Le/a/i/d0/a0/e;->i:Le/a/i/d0/z;

    iget-object p1, p1, Le/a/i/d0/a0/e;->j:Ljava/lang/String;

    const-string v1, "AppNext"

    invoke-static {v1}, Le/m/d/y/n;->T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Le/a/i/d0/z;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdClicked(Lcom/appnext/nativeads/NativeAd;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/appnext/nativeads/NativeAdListener;->onAdClicked(Lcom/appnext/nativeads/NativeAd;)V

    .line 2
    iget-object p1, p0, Le/a/i/d0/a0/e$a;->b:Le/a/i/d0/a0/e;

    iget-object v0, p1, Le/a/i/d0/a0/e;->i:Le/a/i/d0/z;

    iget-object p1, p1, Le/a/i/d0/a0/e;->j:Ljava/lang/String;

    const-string v1, "AppNext"

    invoke-static {v1}, Le/m/d/y/n;->T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Le/a/i/d0/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded(Lcom/appnext/nativeads/NativeAd;Lcom/appnext/core/AppnextAdCreativeType;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/appnext/nativeads/NativeAdListener;->onAdLoaded(Lcom/appnext/nativeads/NativeAd;Lcom/appnext/core/AppnextAdCreativeType;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Le/a/i/d0/a0/e$a;->b:Le/a/i/d0/a0/e;

    iget-object p2, p2, Le/a/i/d0/a0/e;->g:Le/a/i/d0/a0/d;

    invoke-static {p2}, Le/a/i/d0/a0/d;->e(Le/a/i/d0/a0/d;)Lcom/appnext/nativeads/NativeAd;

    move-result-object p2

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Le/a/i/d0/a0/e$a;->a:Lq3/a/n;

    new-instance p2, Le/a/i/d0/i;

    new-instance v0, Le/a/i/d0/q;

    const-string v1, "AppNext"

    invoke-direct {v0, v1}, Le/a/i/d0/q;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0}, Le/a/i/d0/i;-><init>(Le/a/i/c/b/a;)V

    invoke-static {p1, p2}, Le/a/p5/s0/g;->f1(Lq3/a/n;Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/i/d0/a0/e$a;->a:Lq3/a/n;

    new-instance p2, Le/a/i/d0/k;

    new-instance v0, Le/a/i/d0/a0/d$a;

    iget-object v1, p0, Le/a/i/d0/a0/e$a;->b:Le/a/i/d0/a0/e;

    iget-object v1, v1, Le/a/i/d0/a0/e;->g:Le/a/i/d0/a0/d;

    invoke-static {v1}, Le/a/i/d0/a0/d;->e(Le/a/i/d0/a0/d;)Lcom/appnext/nativeads/NativeAd;

    move-result-object v2

    iget-object v3, p0, Le/a/i/d0/a0/e$a;->b:Le/a/i/d0/a0/e;

    iget-object v3, v3, Le/a/i/d0/a0/e;->h:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Le/a/i/d0/a0/d$a;-><init>(Le/a/i/d0/a0/d;Lcom/appnext/nativeads/NativeAd;Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p2, v0, v1, v2}, Le/a/i/d0/k;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-static {p1, p2}, Le/a/p5/s0/g;->f1(Lq3/a/n;Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Lcom/appnext/nativeads/NativeAd;Lcom/appnext/core/AppnextError;)V
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/i/d0/a0/e$a;->a:Lq3/a/n;

    new-instance v0, Le/a/i/d0/i;

    new-instance v1, Le/a/i/d0/l;

    invoke-virtual {p2}, Lcom/appnext/core/AppnextError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    const-string v2, "AppNext"

    invoke-direct {v1, p2, v2}, Le/a/i/d0/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Le/a/i/d0/i;-><init>(Le/a/i/c/b/a;)V

    invoke-static {p1, v0}, Le/a/p5/s0/g;->f1(Lq3/a/n;Ljava/lang/Object;)V

    return-void
.end method
