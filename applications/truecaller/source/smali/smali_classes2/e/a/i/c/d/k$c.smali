.class public final Le/a/i/c/d/k$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/c/d/k;->b(Le/a/i/c/a/u;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
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
    c = "com.truecaller.ads.adsrouter.provider.AdRouterPixelManagerImpl$recordPixel$1"
    f = "AdRouterPixelManager.kt"
    l = {
        0x42,
        0x49,
        0x4a,
        0x52
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/i/c/d/k;

.field public final synthetic i:Le/a/i/c/a/u;

.field public final synthetic j:Ljava/util/List;

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/i/c/d/k;Le/a/i/c/a/u;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/c/d/k$c;->h:Le/a/i/c/d/k;

    iput-object p2, p0, Le/a/i/c/d/k$c;->i:Le/a/i/c/a/u;

    iput-object p3, p0, Le/a/i/c/d/k$c;->j:Ljava/util/List;

    iput-object p4, p0, Le/a/i/c/d/k$c;->k:Ljava/lang/String;

    iput-object p5, p0, Le/a/i/c/d/k$c;->l:Ljava/lang/String;

    iput-object p6, p0, Le/a/i/c/d/k$c;->m:Ljava/lang/String;

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

    new-instance p1, Le/a/i/c/d/k$c;

    iget-object v1, p0, Le/a/i/c/d/k$c;->h:Le/a/i/c/d/k;

    iget-object v2, p0, Le/a/i/c/d/k$c;->i:Le/a/i/c/a/u;

    iget-object v3, p0, Le/a/i/c/d/k$c;->j:Ljava/util/List;

    iget-object v4, p0, Le/a/i/c/d/k$c;->k:Ljava/lang/String;

    iget-object v5, p0, Le/a/i/c/d/k$c;->l:Ljava/lang/String;

    iget-object v6, p0, Le/a/i/c/d/k$c;->m:Ljava/lang/String;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Le/a/i/c/d/k$c;-><init>(Le/a/i/c/d/k;Le/a/i/c/a/u;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/i/c/d/k$c;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/i/c/d/k$c;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/i/c/d/k$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/i/c/d/k$c;->g:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_1

    if-eq v1, v4, :cond_1

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Le/a/i/c/d/k$c;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v2, p0, Le/a/i/c/d/k$c;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    iget-object v1, p0, Le/a/i/c/d/k$c;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v5, p0, Le/a/i/c/d/k$c;->e:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object p1, p0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/i/c/d/k$c;->h:Le/a/i/c/d/k;

    .line 5
    iget-object p1, p1, Le/a/i/c/d/k;->c:Lo3/a;

    .line 6
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/p5/c;

    invoke-interface {p1}, Le/a/p5/c;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v1, p0, Le/a/i/c/d/k$c;->i:Le/a/i/c/a/u;

    sget-object v6, Le/a/i/c/a/u$d;->b:Le/a/i/c/a/u$d;

    invoke-static {v1, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 8
    iget-object v1, p0, Le/a/i/c/d/k$c;->j:Ljava/util/List;

    .line 9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v5, p1

    move-object p1, p0

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 10
    iget-object v7, p1, Le/a/i/c/d/k$c;->h:Le/a/i/c/d/k;

    iget-object v8, p1, Le/a/i/c/d/k$c;->k:Ljava/lang/String;

    iget-object v9, p1, Le/a/i/c/d/k$c;->l:Ljava/lang/String;

    invoke-static {v7, v6, v8, v9, v5}, Le/a/i/c/d/k;->d(Le/a/i/c/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 11
    iget-object v7, p1, Le/a/i/c/d/k$c;->h:Le/a/i/c/d/k;

    .line 12
    iget-object v7, v7, Le/a/i/c/d/k;->j:Lo3/a;

    .line 13
    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/i/e/h/a/l;

    new-instance v8, Le/a/i/e/h/b/d;

    iget-object v9, p1, Le/a/i/c/d/k$c;->m:Ljava/lang/String;

    invoke-direct {v8, v9, v6}, Le/a/i/e/h/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p1, Le/a/i/c/d/k$c;->e:Ljava/lang/Object;

    iput-object v1, p1, Le/a/i/c/d/k$c;->f:Ljava/lang/Object;

    iput v2, p1, Le/a/i/c/d/k$c;->g:I

    invoke-interface {v7, v8, p1}, Le/a/i/y/d;->j(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_5

    return-object v0

    .line 14
    :cond_5
    :goto_1
    iget-object v6, p1, Le/a/i/c/d/k$c;->h:Le/a/i/c/d/k;

    .line 15
    iget-object v6, v6, Le/a/i/c/d/k;->d:Lo3/a;

    .line 16
    invoke-interface {v6}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/u3/g;

    .line 17
    iget-object v7, v6, Le/a/u3/g;->C3:Le/a/u3/g$a;

    sget-object v8, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v9, 0xee

    aget-object v8, v8, v9

    invoke-virtual {v7, v6, v8}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v6

    .line 18
    invoke-interface {v6}, Le/a/u3/b;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 19
    iget-object v6, p1, Le/a/i/c/d/k$c;->h:Le/a/i/c/d/k;

    .line 20
    iget-object v6, v6, Le/a/i/c/d/k;->e:Lo3/a;

    .line 21
    invoke-interface {v6}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/i/f0/a;

    iget-object v7, p1, Le/a/i/c/d/k$c;->m:Ljava/lang/String;

    iget-object v8, p1, Le/a/i/c/d/k$c;->k:Ljava/lang/String;

    iget-object v9, p1, Le/a/i/c/d/k$c;->l:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v5, v9}, Le/a/i/f0/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_6
    iget-object v1, p1, Le/a/i/c/d/k$c;->h:Le/a/i/c/d/k;

    .line 23
    iget-object v1, v1, Le/a/i/c/d/k;->i:Lo3/a;

    .line 24
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/e/k/a;

    .line 25
    iget-object v2, p1, Le/a/i/c/d/k$c;->m:Ljava/lang/String;

    .line 26
    sget-object v5, Lcom/truecaller/ads/adslogger/AdsPixel;->CLICK:Lcom/truecaller/ads/adslogger/AdsPixel;

    invoke-virtual {v5}, Lcom/truecaller/ads/adslogger/AdsPixel;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    iput-object v6, p1, Le/a/i/c/d/k$c;->e:Ljava/lang/Object;

    iput-object v6, p1, Le/a/i/c/d/k$c;->f:Ljava/lang/Object;

    iput v3, p1, Le/a/i/c/d/k$c;->g:I

    invoke-interface {v1, p1}, Le/a/i/e/k/a;->g(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b

    return-object v0

    .line 27
    :cond_7
    sget-object v3, Lcom/truecaller/ads/adslogger/AdsPixel;->IMPRESSION:Lcom/truecaller/ads/adslogger/AdsPixel;

    invoke-virtual {v3}, Lcom/truecaller/ads/adslogger/AdsPixel;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iput-object v6, p1, Le/a/i/c/d/k$c;->e:Ljava/lang/Object;

    iput-object v6, p1, Le/a/i/c/d/k$c;->f:Ljava/lang/Object;

    iput v4, p1, Le/a/i/c/d/k$c;->g:I

    invoke-interface {v1, p1}, Le/a/i/e/k/a;->f(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b

    return-object v0

    .line 28
    :cond_8
    iget-object v1, p0, Le/a/i/c/d/k$c;->j:Ljava/util/List;

    .line 29
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, p1

    :cond_9
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 30
    iget-object v3, p0, Le/a/i/c/d/k$c;->m:Ljava/lang/String;

    sget-object v4, Lcom/truecaller/ads/adslogger/AdsPixel;->THANK_YOU:Lcom/truecaller/ads/adslogger/AdsPixel;

    invoke-virtual {v4}, Lcom/truecaller/ads/adslogger/AdsPixel;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 31
    iget-object v3, p0, Le/a/i/c/d/k$c;->h:Le/a/i/c/d/k;

    iget-object v4, p0, Le/a/i/c/d/k$c;->k:Ljava/lang/String;

    iget-object v6, p0, Le/a/i/c/d/k$c;->l:Ljava/lang/String;

    invoke-static {v3, p1, v4, v6, v2}, Le/a/i/c/d/k;->d(Le/a/i/c/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 32
    :cond_a
    iget-object v3, p0, Le/a/i/c/d/k$c;->l:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "**uuid**"

    invoke-static {p1, v6, v3, v4, v5}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    .line 33
    :goto_3
    iget-object v3, p0, Le/a/i/c/d/k$c;->h:Le/a/i/c/d/k;

    .line 34
    iget-object v3, v3, Le/a/i/c/d/k;->h:Lo3/a;

    .line 35
    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/i/c/c/c;

    iput-object v2, p0, Le/a/i/c/d/k$c;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/i/c/d/k$c;->f:Ljava/lang/Object;

    iput v5, p0, Le/a/i/c/d/k$c;->g:I

    invoke-interface {v3, p1, p0}, Le/a/i/c/c/c;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    .line 36
    :cond_b
    :goto_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
