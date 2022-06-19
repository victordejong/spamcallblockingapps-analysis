.class public final Le/a/i/d0/a0/h;
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
        "Le/a/i/d0/h0/b;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ads.mediation.adapter.CriteoMediationAdapter$loadBanner$2"
    f = "CriteoMediationAdapter.kt"
    l = {
        0x58,
        0xe4
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/i/d0/a0/g;

.field public final synthetic i:Lcom/criteo/publisher/model/BannerAdUnit;

.field public final synthetic j:Landroid/content/Context;


# direct methods
.method public constructor <init>(Le/a/i/d0/a0/g;Lcom/criteo/publisher/model/BannerAdUnit;Landroid/content/Context;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/d0/a0/h;->h:Le/a/i/d0/a0/g;

    iput-object p2, p0, Le/a/i/d0/a0/h;->i:Lcom/criteo/publisher/model/BannerAdUnit;

    iput-object p3, p0, Le/a/i/d0/a0/h;->j:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/i/d0/a0/h;

    iget-object v0, p0, Le/a/i/d0/a0/h;->h:Le/a/i/d0/a0/g;

    iget-object v1, p0, Le/a/i/d0/a0/h;->i:Lcom/criteo/publisher/model/BannerAdUnit;

    iget-object v2, p0, Le/a/i/d0/a0/h;->j:Landroid/content/Context;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/i/d0/a0/h;-><init>(Le/a/i/d0/a0/g;Lcom/criteo/publisher/model/BannerAdUnit;Landroid/content/Context;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/i/d0/a0/h;

    iget-object v0, p0, Le/a/i/d0/a0/h;->h:Le/a/i/d0/a0/g;

    iget-object v1, p0, Le/a/i/d0/a0/h;->i:Lcom/criteo/publisher/model/BannerAdUnit;

    iget-object v2, p0, Le/a/i/d0/a0/h;->j:Landroid/content/Context;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/i/d0/a0/h;-><init>(Le/a/i/d0/a0/g;Lcom/criteo/publisher/model/BannerAdUnit;Landroid/content/Context;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/i/d0/a0/h;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/i/d0/a0/h;->g:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/i/d0/a0/h;->f:Ljava/lang/Object;

    check-cast v0, Le/a/i/d0/a0/h;

    iget-object v0, p0, Le/a/i/d0/a0/h;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/i/d0/a0/h;->h:Le/a/i/d0/a0/g;

    iget-object v1, p0, Le/a/i/d0/a0/h;->i:Lcom/criteo/publisher/model/BannerAdUnit;

    iput v3, p0, Le/a/i/d0/a0/h;->g:I

    invoke-virtual {p1, v1, p0}, Le/a/i/d0/a0/g;->d(Lcom/criteo/publisher/model/AdUnit;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 5
    :cond_3
    :goto_0
    check-cast p1, Le/a/i/d0/j;

    .line 6
    instance-of v1, p1, Le/a/i/d0/i;

    if-eqz v1, :cond_4

    return-object p1

    :cond_4
    const-string v1, "null cannot be cast to non-null type com.truecaller.ads.mediation.MediationSuccess<kotlin.collections.Map<kotlin.String, kotlin.String>>"

    .line 7
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/i/d0/k;

    .line 8
    iget-object p1, p1, Le/a/i/d0/k;->a:Ljava/lang/Object;

    .line 9
    check-cast p1, Ljava/util/Map;

    .line 10
    iput-object p1, p0, Le/a/i/d0/a0/h;->e:Ljava/lang/Object;

    iput-object p0, p0, Le/a/i/d0/a0/h;->f:Ljava/lang/Object;

    iput v2, p0, Le/a/i/d0/a0/h;->g:I

    .line 11
    new-instance v1, Lq3/a/o;

    invoke-static {p0}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 12
    invoke-virtual {v1}, Lq3/a/o;->z()V

    .line 13
    new-instance v2, Lcom/criteo/publisher/CriteoBannerView;

    iget-object v3, p0, Le/a/i/d0/a0/h;->j:Landroid/content/Context;

    iget-object v4, p0, Le/a/i/d0/a0/h;->i:Lcom/criteo/publisher/model/BannerAdUnit;

    invoke-direct {v2, v3, v4}, Lcom/criteo/publisher/CriteoBannerView;-><init>(Landroid/content/Context;Lcom/criteo/publisher/model/BannerAdUnit;)V

    .line 14
    new-instance v3, Le/a/i/d0/a0/h$a;

    invoke-direct {v3, v1, p0, p1}, Le/a/i/d0/a0/h$a;-><init>(Lq3/a/n;Le/a/i/d0/a0/h;Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lcom/criteo/publisher/CriteoBannerView;->setCriteoBannerAdListener(Lcom/criteo/publisher/CriteoBannerAdListener;)V

    .line 15
    invoke-virtual {v2}, Lcom/criteo/publisher/CriteoBannerView;->loadAd()V

    .line 16
    invoke-virtual {v1}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    const-string v1, "frame"

    .line 17
    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_1
    return-object p1
.end method
