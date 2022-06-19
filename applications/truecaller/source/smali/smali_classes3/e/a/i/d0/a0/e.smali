.class public final Le/a/i/d0/a0/e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Le/a/i/d0/j<",
        "+",
        "Le/a/i/d0/h0/c;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ads.mediation.adapter.AppNextMediationAdapter$loadNativeAd$2"
    f = "AppNextMediationAdapter.kt"
    l = {
        0xce
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/i/d0/a0/d;

.field public final synthetic h:Landroid/content/Context;

.field public final synthetic i:Le/a/i/d0/z;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/i/d0/a0/d;Landroid/content/Context;Le/a/i/d0/z;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/d0/a0/e;->g:Le/a/i/d0/a0/d;

    iput-object p2, p0, Le/a/i/d0/a0/e;->h:Landroid/content/Context;

    iput-object p3, p0, Le/a/i/d0/a0/e;->i:Le/a/i/d0/z;

    iput-object p4, p0, Le/a/i/d0/a0/e;->j:Ljava/lang/String;

    iput-object p5, p0, Le/a/i/d0/a0/e;->k:Ljava/lang/String;

    iput-object p6, p0, Le/a/i/d0/a0/e;->l:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/i/d0/a0/e;

    iget-object v1, p0, Le/a/i/d0/a0/e;->g:Le/a/i/d0/a0/d;

    iget-object v2, p0, Le/a/i/d0/a0/e;->h:Landroid/content/Context;

    iget-object v3, p0, Le/a/i/d0/a0/e;->i:Le/a/i/d0/z;

    iget-object v4, p0, Le/a/i/d0/a0/e;->j:Ljava/lang/String;

    iget-object v5, p0, Le/a/i/d0/a0/e;->k:Ljava/lang/String;

    iget-object v6, p0, Le/a/i/d0/a0/e;->l:Ljava/lang/String;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Le/a/i/d0/a0/e;-><init>(Le/a/i/d0/a0/d;Landroid/content/Context;Le/a/i/d0/z;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/i/d0/a0/e;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/i/d0/a0/e;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/i/d0/a0/e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/i/d0/a0/e;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/i/d0/a0/e;->e:Ljava/lang/Object;

    check-cast v0, Le/a/i/d0/a0/e;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object p0, p0, Le/a/i/d0/a0/e;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/i/d0/a0/e;->f:I

    .line 5
    new-instance p1, Lq3/a/o;

    invoke-static {p0}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v1

    invoke-direct {p1, v1, v2}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 6
    invoke-virtual {p1}, Lq3/a/o;->z()V

    .line 7
    iget-object v1, p0, Le/a/i/d0/a0/e;->g:Le/a/i/d0/a0/d;

    new-instance v2, Le/a/i/d0/a0/e$a;

    invoke-direct {v2, p1, p0}, Le/a/i/d0/a0/e$a;-><init>(Lq3/a/n;Le/a/i/d0/a0/e;)V

    .line 8
    iput-object v2, v1, Le/a/i/d0/a0/d;->c:Lcom/appnext/nativeads/NativeAdListener;

    .line 9
    iget-object v1, p0, Le/a/i/d0/a0/e;->g:Le/a/i/d0/a0/d;

    new-instance v2, Lcom/appnext/nativeads/NativeAd;

    iget-object v3, p0, Le/a/i/d0/a0/e;->h:Landroid/content/Context;

    iget-object v4, p0, Le/a/i/d0/a0/e;->k:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/appnext/nativeads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    iget-object v3, p0, Le/a/i/d0/a0/e;->g:Le/a/i/d0/a0/d;

    .line 11
    iget-object v3, v3, Le/a/i/d0/a0/d;->c:Lcom/appnext/nativeads/NativeAdListener;

    .line 12
    invoke-virtual {v2, v3}, Lcom/appnext/nativeads/NativeAd;->setAdListener(Lcom/appnext/nativeads/NativeAdListener;)V

    .line 13
    iget-object v3, p0, Le/a/i/d0/a0/e;->g:Le/a/i/d0/a0/d;

    iget-object v9, p0, Le/a/i/d0/a0/e;->l:Ljava/lang/String;

    iget-object v8, p0, Le/a/i/d0/a0/e;->j:Ljava/lang/String;

    .line 14
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v3, Lcom/appnext/nativeads/NativeAdRequest;

    invoke-direct {v3}, Lcom/appnext/nativeads/NativeAdRequest;-><init>()V

    .line 16
    sget-object v4, Le/a/i/d0/g;->a:Le/a/i/d0/g;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x7

    invoke-static/range {v4 .. v10}, Le/a/i/d0/g;->a(Le/a/i/d0/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/appnext/nativeads/NativeAdRequest;->setPostback(Ljava/lang/String;)Lcom/appnext/nativeads/NativeAdRequest;

    move-result-object v3

    .line 17
    sget-object v4, Lcom/appnext/nativeads/NativeAdRequest$CachingPolicy;->STATIC_ONLY:Lcom/appnext/nativeads/NativeAdRequest$CachingPolicy;

    invoke-virtual {v3, v4}, Lcom/appnext/nativeads/NativeAdRequest;->setCachingPolicy(Lcom/appnext/nativeads/NativeAdRequest$CachingPolicy;)Lcom/appnext/nativeads/NativeAdRequest;

    move-result-object v3

    .line 18
    sget-object v4, Lcom/appnext/nativeads/NativeAdRequest$CreativeType;->ALL:Lcom/appnext/nativeads/NativeAdRequest$CreativeType;

    invoke-virtual {v3, v4}, Lcom/appnext/nativeads/NativeAdRequest;->setCreativeType(Lcom/appnext/nativeads/NativeAdRequest$CreativeType;)Lcom/appnext/nativeads/NativeAdRequest;

    move-result-object v3

    .line 19
    sget-object v4, Lcom/appnext/nativeads/NativeAdRequest$VideoLength;->SHORT:Lcom/appnext/nativeads/NativeAdRequest$VideoLength;

    invoke-virtual {v3, v4}, Lcom/appnext/nativeads/NativeAdRequest;->setVideoLength(Lcom/appnext/nativeads/NativeAdRequest$VideoLength;)Lcom/appnext/nativeads/NativeAdRequest;

    move-result-object v3

    .line 20
    sget-object v4, Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;->LOW:Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

    invoke-virtual {v3, v4}, Lcom/appnext/nativeads/NativeAdRequest;->setVideoQuality(Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;)Lcom/appnext/nativeads/NativeAdRequest;

    move-result-object v3

    const-string v4, "NativeAdRequest()\n      \u2026Request.VideoQuality.LOW)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2, v3}, Lcom/appnext/nativeads/NativeAd;->loadAd(Lcom/appnext/nativeads/NativeAdRequest;)V

    .line 22
    iput-object v2, v1, Le/a/i/d0/a0/d;->a:Lcom/appnext/nativeads/NativeAd;

    .line 23
    invoke-virtual {p1}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    const-string v1, "frame"

    .line 24
    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    return-object p1
.end method
