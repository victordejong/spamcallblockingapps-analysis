.class public final Le/a/i/e/a/a/j;
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
    c = "com.truecaller.ads.offline.adtype.leadgen.OfflineLeadGenPresenterImpl$submitForm$1"
    f = "OfflineLeadGenPresenter.kt"
    l = {
        0x104,
        0x109
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/i/e/a/a/g;


# direct methods
.method public constructor <init>(Le/a/i/e/a/a/g;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/e/a/a/j;->f:Le/a/i/e/a/a/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/i/e/a/a/j;

    iget-object v0, p0, Le/a/i/e/a/a/j;->f:Le/a/i/e/a/a/g;

    invoke-direct {p1, v0, p2}, Le/a/i/e/a/a/j;-><init>(Le/a/i/e/a/a/g;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/i/e/a/a/j;

    iget-object v0, p0, Le/a/i/e/a/a/j;->f:Le/a/i/e/a/a/g;

    invoke-direct {p1, v0, p2}, Le/a/i/e/a/a/j;-><init>(Le/a/i/e/a/a/g;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/i/e/a/a/j;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/i/e/a/a/j;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v3, :cond_0

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
    iget-object p1, p0, Le/a/i/e/a/a/j;->f:Le/a/i/e/a/a/g;

    .line 5
    sget-object v1, Le/a/i/e/a/a/g;->y:[Ls1/a/l;

    .line 6
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/i/e/a/a/k;

    if-eqz p1, :cond_3

    .line 7
    invoke-interface {p1, v5}, Le/a/i/e/a/a/k;->z4(Z)V

    .line 8
    :cond_3
    iget-object p1, p0, Le/a/i/e/a/a/j;->f:Le/a/i/e/a/a/g;

    .line 9
    iget-object p1, p1, Le/a/i/e/a/a/g;->p:Ls1/w/f;

    .line 10
    new-instance v1, Le/a/i/e/a/a/j$a;

    invoke-direct {v1, p0, v2}, Le/a/i/e/a/a/j$a;-><init>(Le/a/i/e/a/a/j;Ls1/w/d;)V

    iput v5, p0, Le/a/i/e/a/a/j;->e:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 11
    :cond_4
    :goto_0
    check-cast p1, Le/a/i/e/c;

    .line 12
    instance-of v1, p1, Le/a/i/e/f;

    if-eqz v1, :cond_e

    .line 13
    iget-object p1, p0, Le/a/i/e/a/a/j;->f:Le/a/i/e/a/a/g;

    iput v3, p0, Le/a/i/e/a/a/j;->e:I

    const-string v1, "submit"

    invoke-virtual {p1, v1, p0}, Le/a/i/e/a/a/g;->Lj(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 14
    :cond_5
    :goto_1
    iget-object p1, p0, Le/a/i/e/a/a/j;->f:Le/a/i/e/a/a/g;

    .line 15
    sget-object v0, Le/a/i/e/a/a/g;->y:[Ls1/a/l;

    .line 16
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/i/e/a/a/k;

    if-eqz p1, :cond_6

    .line 17
    invoke-interface {p1, v4}, Le/a/i/e/a/a/k;->z4(Z)V

    .line 18
    :cond_6
    iget-object p1, p0, Le/a/i/e/a/a/j;->f:Le/a/i/e/a/a/g;

    .line 19
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/i/e/a/a/k;

    if-eqz v0, :cond_10

    .line 20
    iget-object v1, p1, Le/a/i/e/a/a/g;->e:Lcom/truecaller/ads/offline/dto/OfflineAdsDto;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->getThankYouData()Lcom/truecaller/ads/offline/dto/ThankYouData;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/truecaller/ads/offline/dto/ThankYouData;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_8

    .line 21
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    move v4, v5

    :cond_9
    if-nez v4, :cond_b

    iget-object v3, p1, Le/a/i/e/a/a/g;->t:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/p5/u;

    invoke-interface {v3}, Le/a/p5/u;->d()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 22
    iget-object p1, p1, Le/a/i/e/a/a/g;->e:Lcom/truecaller/ads/offline/dto/OfflineAdsDto;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->getTheme()Lcom/truecaller/ads/offline/dto/Theme;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/truecaller/ads/offline/dto/Theme;->getBgColor()Ljava/lang/String;

    move-result-object v2

    :cond_a
    invoke-interface {v0, v2, v1}, Le/a/i/e/a/a/k;->Sn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 23
    :cond_b
    iget-object v1, p1, Le/a/i/e/a/a/g;->e:Lcom/truecaller/ads/offline/dto/OfflineAdsDto;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->getTheme()Lcom/truecaller/ads/offline/dto/Theme;

    move-result-object v1

    goto :goto_3

    :cond_c
    move-object v1, v2

    :goto_3
    iget-object p1, p1, Le/a/i/e/a/a/g;->e:Lcom/truecaller/ads/offline/dto/OfflineAdsDto;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->getThankYouData()Lcom/truecaller/ads/offline/dto/ThankYouData;

    move-result-object v2

    :cond_d
    invoke-interface {v0, v1, v2}, Le/a/i/e/a/a/k;->Xh(Lcom/truecaller/ads/offline/dto/Theme;Lcom/truecaller/ads/offline/dto/ThankYouData;)V

    goto :goto_4

    .line 24
    :cond_e
    instance-of v0, p1, Le/a/i/e/d;

    if-eqz v0, :cond_10

    .line 25
    iget-object v0, p0, Le/a/i/e/a/a/j;->f:Le/a/i/e/a/a/g;

    .line 26
    sget-object v1, Le/a/i/e/a/a/g;->y:[Ls1/a/l;

    .line 27
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/i/e/a/a/k;

    if-eqz v0, :cond_f

    .line 28
    invoke-interface {v0, v4}, Le/a/i/e/a/a/k;->z4(Z)V

    .line 29
    :cond_f
    iget-object v0, p0, Le/a/i/e/a/a/j;->f:Le/a/i/e/a/a/g;

    .line 30
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/i/e/a/a/k;

    if-eqz v0, :cond_10

    .line 31
    check-cast p1, Le/a/i/e/d;

    .line 32
    iget-object p1, p1, Le/a/i/e/d;->a:Le/a/i/e/b;

    .line 33
    invoke-interface {v0, p1}, Le/a/i/e/a/a/k;->np(Le/a/i/e/b;)V

    .line 34
    :cond_10
    :goto_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
