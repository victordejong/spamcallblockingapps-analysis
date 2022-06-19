.class public final Le/a/d0/a/o;
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.callerid.window.CallerIdWindowPresenter$maybeFetchAd$1"
    f = "CallerIdWindowPresenter.kt"
    l = {
        0x132,
        0x133
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d0/a/m;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/d0/a/m;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d0/a/o;->f:Le/a/d0/a/m;

    iput-object p2, p0, Le/a/d0/a/o;->g:Ljava/lang/String;

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

    new-instance p1, Le/a/d0/a/o;

    iget-object v0, p0, Le/a/d0/a/o;->f:Le/a/d0/a/m;

    iget-object v1, p0, Le/a/d0/a/o;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/d0/a/o;-><init>(Le/a/d0/a/m;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d0/a/o;

    iget-object v0, p0, Le/a/d0/a/o;->f:Le/a/d0/a/m;

    iget-object v1, p0, Le/a/d0/a/o;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/d0/a/o;-><init>(Le/a/d0/a/m;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d0/a/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d0/a/o;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

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
    iget-object p1, p0, Le/a/d0/a/o;->f:Le/a/d0/a/m;

    .line 5
    iget-object p1, p1, Le/a/d0/a/m;->M:Le/a/u3/g;

    .line 6
    invoke-virtual {p1}, Le/a/u3/g;->O()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    const-string v1, "CALLERID"

    if-eqz p1, :cond_4

    iget-object p1, p0, Le/a/d0/a/o;->f:Le/a/d0/a/m;

    iget-object v2, p0, Le/a/d0/a/o;->g:Ljava/lang/String;

    iput v3, p0, Le/a/d0/a/o;->e:I

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v3, Le/a/i/b0/d/a;->h:Le/a/i/b0/d/a$b;

    .line 9
    new-instance v3, Le/a/i/b0/d/a$a;

    invoke-direct {v3}, Le/a/i/b0/d/a$a;-><init>()V

    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Le/a/i/b0/d/a$a;->c([Ljava/lang/String;)Le/a/i/b0/d/a$a;

    .line 11
    invoke-virtual {v3, v2}, Le/a/i/b0/d/a$a;->b(Ljava/lang/String;)Le/a/i/b0/d/a$a;

    .line 12
    invoke-virtual {v3}, Le/a/i/b0/d/a$a;->a()Le/a/i/b0/d/a;

    move-result-object v1

    .line 13
    iget-object p1, p1, Le/a/d0/a/m;->O:Le/a/i/b0/a;

    invoke-interface {p1, v1, p0}, Le/a/i/b0/a;->a(Le/a/i/b0/d/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 14
    :cond_3
    :goto_0
    check-cast p1, Lcom/truecaller/ads/campaigns/AdCampaigns;

    goto :goto_2

    .line 15
    :cond_4
    iget-object p1, p0, Le/a/d0/a/o;->f:Le/a/d0/a/m;

    iget-object v3, p0, Le/a/d0/a/o;->g:Ljava/lang/String;

    iput v2, p0, Le/a/d0/a/o;->e:I

    .line 16
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v2, Le/a/i/o$b;

    invoke-direct {v2, v1}, Le/a/i/o$b;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object v3, v2, Le/a/i/o$b;->a:Ljava/lang/String;

    .line 19
    invoke-virtual {v2}, Le/a/i/o$b;->a()Le/a/i/o;

    move-result-object v1

    const-string v2, "CampaignConfig.Builder(A\u2026ber)\n            .build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object p1, p1, Le/a/d0/a/m;->n:Le/a/i/f0/k/a;

    invoke-interface {p1, v1, p0}, Le/a/i/f0/k/a;->c(Le/a/i/o;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 21
    :cond_5
    :goto_1
    check-cast p1, Lcom/truecaller/ads/campaigns/AdCampaigns;

    :goto_2
    if-eqz p1, :cond_6

    .line 22
    invoke-virtual {p1}, Lcom/truecaller/ads/campaigns/AdCampaigns;->c()Lcom/truecaller/ads/campaigns/AdCampaign;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/truecaller/ads/campaigns/AdCampaign;->b:Lcom/truecaller/ads/campaigns/AdCampaign$Style;

    if-eqz p1, :cond_6

    .line 23
    iget-object v0, p0, Le/a/d0/a/o;->f:Le/a/d0/a/m;

    .line 24
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d0/a/l;

    if-eqz v0, :cond_6

    const-string v1, "it"

    .line 25
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Le/a/d0/a/l;->M5(Lcom/truecaller/ads/campaigns/AdCampaign$Style;)V

    .line 26
    :cond_6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
