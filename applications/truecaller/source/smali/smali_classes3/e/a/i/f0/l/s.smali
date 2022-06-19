.class public final Le/a/i/f0/l/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;
.implements Lq3/a/i0;


# instance fields
.field public a:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;

.field public b:J

.field public final c:Ls1/w/f;

.field public final d:Le/a/b0/b/l/a;

.field public final e:Le/a/p5/c;

.field public final f:Le/a/z4/a;

.field public final g:Le/a/b0/e/f;

.field public final h:Le/a/i/f0/l/v/a;

.field public final i:Le/a/i/f0/l/f;

.field public final j:Le/a/u3/g;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/b0/b/l/a;Le/a/p5/c;Le/a/z4/a;Le/a/b0/e/f;Le/a/i/f0/l/v/a;Le/a/i/f0/l/f;Le/a/u3/g;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requester"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionUtils"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refreshManager"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/f0/l/s;->c:Ls1/w/f;

    iput-object p2, p0, Le/a/i/f0/l/s;->d:Le/a/b0/b/l/a;

    iput-object p3, p0, Le/a/i/f0/l/s;->e:Le/a/p5/c;

    iput-object p4, p0, Le/a/i/f0/l/s;->f:Le/a/z4/a;

    iput-object p5, p0, Le/a/i/f0/l/s;->g:Le/a/b0/e/f;

    iput-object p6, p0, Le/a/i/f0/l/s;->h:Le/a/i/f0/l/v/a;

    iput-object p7, p0, Le/a/i/f0/l/s;->i:Le/a/i/f0/l/f;

    iput-object p8, p0, Le/a/i/f0/l/s;->j:Le/a/u3/g;

    const-string p1, "adsTargetingRefreshTimestamp"

    const-wide/16 p2, 0x0

    .line 2
    invoke-interface {p4, p1, p2, p3}, Le/a/z4/a;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Le/a/i/f0/l/s;->b:J

    .line 3
    invoke-virtual {p0}, Le/a/i/f0/l/s;->f()Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;

    move-result-object p1

    iput-object p1, p0, Le/a/i/f0/l/s;->a:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;

    .line 4
    invoke-interface {p6, p1}, Le/a/i/f0/l/v/a;->a(Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;)V

    .line 5
    invoke-virtual {p0}, Le/a/i/f0/l/s;->k()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    new-instance v3, Le/a/i/f0/l/s$a;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/i/f0/l/s$a;-><init>(Le/a/i/f0/l/s;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    invoke-static {}, Le/a/j4/b/a/h;->C()Z

    move-result v0

    return v0
.end method

.method public c(Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;)V
    .locals 3

    const-string v0, "state"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/f0/l/s;->a:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;->a(Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;I)Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;

    move-result-object p1

    iput-object p1, p0, Le/a/i/f0/l/s;->a:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;

    .line 2
    iget-object v0, p0, Le/a/i/f0/l/s;->f:Le/a/z4/a;

    .line 3
    iget-object p1, p1, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;->b:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "promotionConsentLastValue"

    invoke-interface {v0, v1, p1}, Le/a/z4/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Le/a/i/f0/l/s;->l()V

    return-void
.end method

.method public d()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/i/f0/l/s;->k()V

    .line 2
    iget-object v0, p0, Le/a/i/f0/l/s;->j:Le/a/u3/g;

    .line 3
    iget-object v1, v0, Le/a/u3/g;->Q3:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xfd

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/i/f0/l/s;->g:Le/a/b0/e/f;

    invoke-interface {v0}, Le/a/b0/e/f;->f()Lcom/truecaller/common/account/Region;

    move-result-object v0

    sget-object v1, Lcom/truecaller/common/account/Region;->REGION_2:Lcom/truecaller/common/account/Region;

    if-eq v0, v1, :cond_1

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/i/f0/l/s;->a:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;

    .line 6
    iget-object v0, v0, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;->a:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;

    .line 7
    sget-object v1, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;->TARGETING:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;)V
    .locals 2

    const-string v0, "targetingState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promotionState"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/i/f0/l/s;->a:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "adsTargetingState"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;

    invoke-direct {v0, p1, p2}, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;-><init>(Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;)V

    .line 3
    iput-object v0, p0, Le/a/i/f0/l/s;->a:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;

    .line 4
    iget-object p1, p0, Le/a/i/f0/l/s;->f:Le/a/z4/a;

    .line 5
    iget-object p2, v0, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;->a:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;

    .line 6
    invoke-virtual {p2}, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string v0, "adsTargetingLastValue"

    invoke-interface {p1, v0, p2}, Le/a/z4/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Le/a/i/f0/l/s;->f:Le/a/z4/a;

    iget-object p2, p0, Le/a/i/f0/l/s;->a:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;

    .line 8
    iget-object p2, p2, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;->b:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;

    .line 9
    invoke-virtual {p2}, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string v0, "promotionConsentLastValue"

    invoke-interface {p1, v0, p2}, Le/a/z4/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Le/a/i/f0/l/s;->l()V

    return-void
.end method

.method public f()Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/i/f0/l/s;->f:Le/a/z4/a;

    sget-object v1, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;->UNKNOWN:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;

    invoke-virtual {v1}, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "adsTargetingLastValue"

    invoke-interface {v0, v3, v2}, Le/a/z4/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v2, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;->TARGETING:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;

    invoke-virtual {v2}, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    move-object v1, v2

    goto :goto_1

    .line 3
    :cond_0
    sget-object v2, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;->NON_TARGETING:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;

    invoke-virtual {v2}, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    iget-object v0, p0, Le/a/i/f0/l/s;->f:Le/a/z4/a;

    sget-object v2, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;->UNKNOWN:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;

    invoke-virtual {v2}, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "promotionConsentLastValue"

    invoke-interface {v0, v4, v3}, Le/a/z4/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    sget-object v3, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;->OPT_IN:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;

    invoke-virtual {v3}, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    move-object v2, v3

    goto :goto_3

    .line 6
    :cond_2
    sget-object v3, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;->OPT_OUT:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;

    invoke-virtual {v3}, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    :goto_3
    new-instance v0, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;

    invoke-direct {v0, v1, v2}, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;-><init>(Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;)V

    return-object v0
.end method

.method public g()Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/i/f0/l/s;->d:Le/a/b0/b/l/a;

    invoke-interface {v0}, Le/a/b0/b/l/a;->a()Lcom/truecaller/common/network/optout/OptOutRestAdapter$OptOutsDto;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {v0}, Lcom/truecaller/common/network/optout/OptOutRestAdapter$OptOutsDto;->getOptIns()Ljava/util/List;

    move-result-object v1

    const-string v2, "ads"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/common/network/optout/OptOutRestAdapter$OptOutsDto;->getOptOuts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v1, :cond_0

    .line 4
    sget-object v1, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;->TARGETING:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 5
    sget-object v1, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;->NON_TARGETING:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/truecaller/common/network/optout/OptOutRestAdapter$OptOutsDto;->getConsentRefresh()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;->TARGETING:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;

    goto :goto_0

    .line 7
    :cond_2
    sget-object v1, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;->UNKNOWN:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;

    .line 8
    :goto_0
    invoke-virtual {v0}, Lcom/truecaller/common/network/optout/OptOutRestAdapter$OptOutsDto;->getOptIns()Ljava/util/List;

    move-result-object v2

    const-string v3, "dm"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 9
    invoke-virtual {v0}, Lcom/truecaller/common/network/optout/OptOutRestAdapter$OptOutsDto;->getOptOuts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v2, :cond_3

    .line 10
    sget-object v0, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;->OPT_IN:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    .line 11
    sget-object v0, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;->OPT_OUT:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {v0}, Lcom/truecaller/common/network/optout/OptOutRestAdapter$OptOutsDto;->getConsentRefresh()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;->UNKNOWN:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;

    goto :goto_1

    .line 13
    :cond_5
    sget-object v0, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;->UNKNOWN:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;

    .line 14
    :goto_1
    new-instance v2, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;

    invoke-direct {v2, v1, v0}, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;-><init>(Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;)V

    return-object v2

    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/f0/l/s;->c:Ls1/w/f;

    return-object v0
.end method

.method public h()Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/i/f0/l/s;->k()V

    .line 2
    iget-object v0, p0, Le/a/i/f0/l/s;->a:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;

    .line 3
    iget-object v0, v0, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;->b:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;

    return-object v0
.end method

.method public i(Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;)V
    .locals 3

    const-string v0, "state"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/f0/l/s;->a:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2}, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;->a(Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;I)Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;

    move-result-object p1

    iput-object p1, p0, Le/a/i/f0/l/s;->a:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;

    .line 2
    iget-object v0, p0, Le/a/i/f0/l/s;->f:Le/a/z4/a;

    .line 3
    iget-object p1, p1, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;->a:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "adsTargetingLastValue"

    invoke-interface {v0, v1, p1}, Le/a/z4/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Le/a/i/f0/l/s;->l()V

    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/i/f0/l/s;->f:Le/a/z4/a;

    const-string v1, "adsTargetingRefreshTimestamp"

    invoke-interface {v0, v1}, Le/a/z4/a;->remove(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/i/f0/l/s;->f:Le/a/z4/a;

    const-string v1, "adsTargetingLastValue"

    invoke-interface {v0, v1}, Le/a/z4/a;->remove(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/i/f0/l/s;->f:Le/a/z4/a;

    const-string v1, "promotionConsentLastValue"

    invoke-interface {v0, v1}, Le/a/z4/a;->remove(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Le/a/i/f0/l/s;->b:J

    .line 5
    new-instance v0, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;

    sget-object v1, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;->UNKNOWN:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;

    sget-object v2, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;->UNKNOWN:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;

    invoke-direct {v0, v1, v2}, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;-><init>(Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;)V

    iput-object v0, p0, Le/a/i/f0/l/s;->a:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;

    return-void
.end method

.method public final k()V
    .locals 7

    .line 1
    iget-wide v0, p0, Le/a/i/f0/l/s;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    new-instance v4, Le/a/i/f0/l/s$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Le/a/i/f0/l/s$a;-><init>(Le/a/i/f0/l/s;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/i/f0/l/s;->e:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v0

    iput-wide v0, p0, Le/a/i/f0/l/s;->b:J

    .line 2
    iget-object v2, p0, Le/a/i/f0/l/s;->f:Le/a/z4/a;

    const-string v3, "adsTargetingRefreshTimestamp"

    invoke-interface {v2, v3, v0, v1}, Le/a/z4/a;->putLong(Ljava/lang/String;J)V

    .line 3
    iget-object v0, p0, Le/a/i/f0/l/s;->a:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;

    .line 4
    iget-object v1, p0, Le/a/i/f0/l/s;->h:Le/a/i/f0/l/v/a;

    invoke-interface {v1, v0}, Le/a/i/f0/l/v/a;->a(Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;)V

    return-void
.end method
