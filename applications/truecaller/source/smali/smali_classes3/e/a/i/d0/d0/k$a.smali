.class public final Le/a/i/d0/d0/k$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/d0/d0/k;->b(Le/a/i/c/a/c;Le/a/i/g;Ls1/z/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ads.mediation.google.MediationNativeEventListener$onAdLoaded$1"
    f = "MediationNativeEventListener.kt"
    l = {
        0x19,
        0x1a,
        0x1b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:I

.field public final synthetic j:Le/a/i/d0/d0/k;

.field public final synthetic k:Le/a/i/c/a/c;

.field public final synthetic l:Ls1/z/b/a;


# direct methods
.method public constructor <init>(Le/a/i/d0/d0/k;Le/a/i/c/a/c;Ls1/z/b/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/d0/d0/k$a;->j:Le/a/i/d0/d0/k;

    iput-object p2, p0, Le/a/i/d0/d0/k$a;->k:Le/a/i/c/a/c;

    iput-object p3, p0, Le/a/i/d0/d0/k$a;->l:Ls1/z/b/a;

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

    new-instance p1, Le/a/i/d0/d0/k$a;

    iget-object v0, p0, Le/a/i/d0/d0/k$a;->j:Le/a/i/d0/d0/k;

    iget-object v1, p0, Le/a/i/d0/d0/k$a;->k:Le/a/i/c/a/c;

    iget-object v2, p0, Le/a/i/d0/d0/k$a;->l:Ls1/z/b/a;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/i/d0/d0/k$a;-><init>(Le/a/i/d0/d0/k;Le/a/i/c/a/c;Ls1/z/b/a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/i/d0/d0/k$a;

    iget-object v0, p0, Le/a/i/d0/d0/k$a;->j:Le/a/i/d0/d0/k;

    iget-object v1, p0, Le/a/i/d0/d0/k$a;->k:Le/a/i/c/a/c;

    iget-object v2, p0, Le/a/i/d0/d0/k$a;->l:Ls1/z/b/a;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/i/d0/d0/k$a;-><init>(Le/a/i/d0/d0/k;Le/a/i/c/a/c;Ls1/z/b/a;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/i/d0/d0/k$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/i/d0/d0/k$a;->i:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/i/d0/d0/k$a;->h:Ljava/lang/Object;

    check-cast v1, Ls1/z/c/c0;

    iget-object v2, p0, Le/a/i/d0/d0/k$a;->g:Ljava/lang/Object;

    check-cast v2, Ls1/z/c/c0;

    iget-object v4, p0, Le/a/i/d0/d0/k$a;->f:Ljava/lang/Object;

    check-cast v4, Ls1/z/c/c0;

    iget-object v5, p0, Le/a/i/d0/d0/k$a;->e:Ljava/lang/Object;

    check-cast v5, Ls1/z/c/c0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_2
    iget-object v1, p0, Le/a/i/d0/d0/k$a;->g:Ljava/lang/Object;

    check-cast v1, Ls1/z/c/c0;

    iget-object v7, p0, Le/a/i/d0/d0/k$a;->f:Ljava/lang/Object;

    check-cast v7, Ls1/z/c/c0;

    iget-object v8, p0, Le/a/i/d0/d0/k$a;->e:Ljava/lang/Object;

    check-cast v8, Ls1/z/c/c0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Le/d/c/a/a;->d0(Ljava/lang/Object;)Ls1/z/c/c0;

    move-result-object v8

    .line 4
    iget-object p1, p0, Le/a/i/d0/d0/k$a;->k:Le/a/i/c/a/c;

    check-cast p1, Le/a/i/c/a/j;

    .line 5
    iget-object p1, p1, Le/a/i/c/a/i;->e:Le/a/i/c/a/b;

    const-string v1, "null cannot be cast to non-null type com.truecaller.ads.adsrouter.ui.AdRouterNativeAd"

    .line 6
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    iput-object p1, v8, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 7
    new-instance v1, Ls1/z/c/c0;

    invoke-direct {v1}, Ls1/z/c/c0;-><init>()V

    invoke-virtual {p1}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;->o()Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd$a;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 8
    iget-object p1, p1, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd$a;->a:Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    move v7, v5

    goto :goto_0

    :cond_4
    move v7, v2

    .line 10
    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 11
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    move-object p1, v6

    :goto_1
    if-eqz p1, :cond_7

    iget-object v7, p0, Le/a/i/d0/d0/k$a;->j:Le/a/i/d0/d0/k;

    .line 12
    iget-object v7, v7, Le/a/i/d0/d0/k;->a:Landroid/content/Context;

    .line 13
    iput-object v8, p0, Le/a/i/d0/d0/k$a;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/i/d0/d0/k$a;->f:Ljava/lang/Object;

    iput-object v1, p0, Le/a/i/d0/d0/k$a;->g:Ljava/lang/Object;

    iput v5, p0, Le/a/i/d0/d0/k$a;->i:I

    .line 14
    sget-object v9, Lq3/a/t0;->d:Lq3/a/g0;

    .line 15
    new-instance v10, Le/a/i/d0/d0/l;

    invoke-direct {v10, p1, v7, v6}, Le/a/i/d0/d0/l;-><init>(Ljava/lang/String;Landroid/content/Context;Ls1/w/d;)V

    invoke-static {v9, v10, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v7, v1

    .line 16
    :goto_2
    check-cast p1, Le/a/i/d0/d0/m;

    goto :goto_3

    :cond_7
    move-object v7, v1

    move-object p1, v6

    :goto_3
    iput-object p1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 17
    new-instance v1, Ls1/z/c/c0;

    invoke-direct {v1}, Ls1/z/c/c0;-><init>()V

    iget-object p1, v8, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    invoke-virtual {p1}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;->m()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_8

    move v2, v5

    .line 18
    :cond_8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_4

    :cond_9
    move-object p1, v6

    :goto_4
    if-eqz p1, :cond_b

    iget-object v2, p0, Le/a/i/d0/d0/k$a;->j:Le/a/i/d0/d0/k;

    .line 20
    iget-object v2, v2, Le/a/i/d0/d0/k;->a:Landroid/content/Context;

    .line 21
    iput-object v8, p0, Le/a/i/d0/d0/k$a;->e:Ljava/lang/Object;

    iput-object v7, p0, Le/a/i/d0/d0/k$a;->f:Ljava/lang/Object;

    iput-object v1, p0, Le/a/i/d0/d0/k$a;->g:Ljava/lang/Object;

    iput-object v1, p0, Le/a/i/d0/d0/k$a;->h:Ljava/lang/Object;

    iput v4, p0, Le/a/i/d0/d0/k$a;->i:I

    .line 22
    sget-object v4, Lq3/a/t0;->d:Lq3/a/g0;

    .line 23
    new-instance v5, Le/a/i/d0/d0/l;

    invoke-direct {v5, p1, v2, v6}, Le/a/i/d0/d0/l;-><init>(Ljava/lang/String;Landroid/content/Context;Ls1/w/d;)V

    invoke-static {v4, v5, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    :cond_a
    move-object v2, v1

    move-object v4, v7

    move-object v5, v8

    .line 24
    :goto_5
    check-cast p1, Le/a/i/d0/d0/m;

    move-object v10, v2

    move-object v11, v4

    move-object v9, v5

    goto :goto_6

    :cond_b
    move-object v10, v1

    move-object p1, v6

    move-object v11, v7

    move-object v9, v8

    :goto_6
    iput-object p1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 25
    sget-object p1, Lq3/a/t0;->a:Lq3/a/t0;

    sget-object p1, Lq3/a/y2/q;->c:Lq3/a/y1;

    .line 26
    new-instance v1, Le/a/i/d0/d0/k$a$a;

    const/4 v12, 0x0

    move-object v7, v1

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Le/a/i/d0/d0/k$a$a;-><init>(Le/a/i/d0/d0/k$a;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/w/d;)V

    iput-object v6, p0, Le/a/i/d0/d0/k$a;->e:Ljava/lang/Object;

    iput-object v6, p0, Le/a/i/d0/d0/k$a;->f:Ljava/lang/Object;

    iput-object v6, p0, Le/a/i/d0/d0/k$a;->g:Ljava/lang/Object;

    iput-object v6, p0, Le/a/i/d0/d0/k$a;->h:Ljava/lang/Object;

    iput v3, p0, Le/a/i/d0/d0/k$a;->i:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_c

    return-object v0

    .line 27
    :cond_c
    :goto_7
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
