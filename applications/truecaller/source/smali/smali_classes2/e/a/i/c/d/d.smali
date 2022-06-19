.class public final Le/a/i/c/d/d;
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
        "Le/a/i/c/a/i;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ads.adsrouter.provider.AdRouterAdsProviderImpl$fetchPartnerSDKAdsAsync$1"
    f = "AdRouterAdsProvider.kt"
    l = {
        0x7b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/i/c/d/b;

.field public final synthetic g:Le/a/i/c/d/l;


# direct methods
.method public constructor <init>(Le/a/i/c/d/b;Le/a/i/c/d/l;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/c/d/d;->f:Le/a/i/c/d/b;

    iput-object p2, p0, Le/a/i/c/d/d;->g:Le/a/i/c/d/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance p1, Le/a/i/c/d/d;

    iget-object v0, p0, Le/a/i/c/d/d;->f:Le/a/i/c/d/b;

    iget-object v1, p0, Le/a/i/c/d/d;->g:Le/a/i/c/d/l;

    invoke-direct {p1, v0, v1, p2}, Le/a/i/c/d/d;-><init>(Le/a/i/c/d/b;Le/a/i/c/d/l;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/i/c/d/d;

    iget-object v0, p0, Le/a/i/c/d/d;->f:Le/a/i/c/d/b;

    iget-object v1, p0, Le/a/i/c/d/d;->g:Le/a/i/c/d/l;

    invoke-direct {p1, v0, v1, p2}, Le/a/i/c/d/d;-><init>(Le/a/i/c/d/b;Le/a/i/c/d/l;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/i/c/d/d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/i/c/d/d;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

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
    iget-object p1, p0, Le/a/i/c/d/d;->f:Le/a/i/c/d/b;

    .line 5
    iget-object p1, p1, Le/a/i/c/d/b;->f:Le/a/p5/u;

    .line 6
    invoke-interface {p1}, Le/a/p5/u;->d()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Le/a/i/d0/i;

    sget-object v0, Le/a/i/d0/o;->d:Le/a/i/d0/o;

    invoke-direct {p1, v0}, Le/a/i/d0/i;-><init>(Le/a/i/c/b/a;)V

    return-object p1

    .line 7
    :cond_2
    iget-object p1, p0, Le/a/i/c/d/d;->f:Le/a/i/c/d/b;

    .line 8
    iget-object p1, p1, Le/a/i/c/d/b;->h:Lo3/a;

    .line 9
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/u3/g;

    .line 10
    iget-object v1, p1, Le/a/u3/g;->N3:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0xf9

    aget-object v3, v3, v4

    invoke-virtual {v1, p1, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Le/a/i/d0/i;

    sget-object v0, Le/a/i/d0/x;->d:Le/a/i/d0/x;

    invoke-direct {p1, v0}, Le/a/i/d0/i;-><init>(Le/a/i/c/b/a;)V

    return-object p1

    .line 12
    :cond_3
    iget-object p1, p0, Le/a/i/c/d/d;->f:Le/a/i/c/d/b;

    .line 13
    iget-object p1, p1, Le/a/i/c/d/b;->i:Lo3/a;

    .line 14
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/i/d0/a;

    iget-object v1, p0, Le/a/i/c/d/d;->f:Le/a/i/c/d/b;

    .line 15
    iget-object v1, v1, Le/a/i/c/d/b;->b:Landroid/content/Context;

    .line 16
    iget-object v3, p0, Le/a/i/c/d/d;->g:Le/a/i/c/d/l;

    iput v2, p0, Le/a/i/c/d/d;->e:I

    invoke-interface {p1, v1, v3, p0}, Le/a/i/d0/a;->a(Landroid/content/Context;Le/a/i/c/d/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 17
    :cond_4
    :goto_0
    check-cast p1, Le/a/i/d0/j;

    .line 18
    instance-of v0, p1, Le/a/i/d0/k;

    if-eqz v0, :cond_7

    check-cast p1, Le/a/i/d0/k;

    .line 19
    iget-object p1, p1, Le/a/i/d0/k;->a:Ljava/lang/Object;

    .line 20
    instance-of v0, p1, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    new-instance v0, Le/a/i/d0/k;

    new-instance v3, Le/a/i/c/a/k;

    check-cast p1, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    invoke-direct {v3, p1}, Le/a/i/c/a/k;-><init>(Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;)V

    invoke-direct {v0, v3, v2, v1}, Le/a/i/d0/k;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    goto :goto_1

    .line 21
    :cond_5
    instance-of v0, p1, Le/a/i/c/a/e;

    if-eqz v0, :cond_6

    new-instance v0, Le/a/i/d0/k;

    new-instance v3, Le/a/i/c/a/g;

    check-cast p1, Le/a/i/c/a/e;

    invoke-direct {v3, p1}, Le/a/i/c/a/g;-><init>(Le/a/i/c/a/e;)V

    invoke-direct {v0, v3, v2, v1}, Le/a/i/d0/k;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    goto :goto_1

    .line 22
    :cond_6
    new-instance v0, Le/a/i/d0/i;

    sget-object p1, Le/a/i/d0/r;->d:Le/a/i/d0/r;

    invoke-direct {v0, p1}, Le/a/i/d0/i;-><init>(Le/a/i/c/b/a;)V

    goto :goto_1

    .line 23
    :cond_7
    instance-of v0, p1, Le/a/i/d0/i;

    if-eqz v0, :cond_8

    new-instance v0, Le/a/i/d0/i;

    check-cast p1, Le/a/i/d0/i;

    .line 24
    iget-object p1, p1, Le/a/i/d0/i;->a:Le/a/i/c/b/a;

    .line 25
    invoke-direct {v0, p1}, Le/a/i/d0/i;-><init>(Le/a/i/c/b/a;)V

    :goto_1
    return-object v0

    :cond_8
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
