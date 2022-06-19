.class public final Le/a/i/b0/b$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/b0/b;->a(Le/a/i/b0/d/a;Ls1/w/d;)Ljava/lang/Object;
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
        "Lcom/truecaller/ads/campaigns/AdCampaigns;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ads.keywords.AdCampaignsManagerImpl$getCampaigns$3"
    f = "AdCampaignsManager.kt"
    l = {
        0x30,
        0x31
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/i/b0/b;

.field public final synthetic h:Le/a/i/b0/d/a;


# direct methods
.method public constructor <init>(Le/a/i/b0/b;Le/a/i/b0/d/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/b0/b$c;->g:Le/a/i/b0/b;

    iput-object p2, p0, Le/a/i/b0/b$c;->h:Le/a/i/b0/d/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/i/b0/b$c;

    iget-object v1, p0, Le/a/i/b0/b$c;->g:Le/a/i/b0/b;

    iget-object v2, p0, Le/a/i/b0/b$c;->h:Le/a/i/b0/d/a;

    invoke-direct {v0, v1, v2, p2}, Le/a/i/b0/b$c;-><init>(Le/a/i/b0/b;Le/a/i/b0/d/a;Ls1/w/d;)V

    iput-object p1, v0, Le/a/i/b0/b$c;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/i/b0/b$c;

    iget-object v1, p0, Le/a/i/b0/b$c;->g:Le/a/i/b0/b;

    iget-object v2, p0, Le/a/i/b0/b$c;->h:Le/a/i/b0/d/a;

    invoke-direct {v0, v1, v2, p2}, Le/a/i/b0/b$c;-><init>(Le/a/i/b0/b;Le/a/i/b0/d/a;Ls1/w/d;)V

    iput-object p1, v0, Le/a/i/b0/b$c;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/i/b0/b$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/i/b0/b$c;->f:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/i/b0/b$c;->e:Ljava/lang/Object;

    check-cast v0, Lq3/a/i0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v5, v0

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/i/b0/b$c;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/i0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/i/b0/b$c;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 4
    iget-object v1, p0, Le/a/i/b0/b$c;->g:Le/a/i/b0/b;

    .line 5
    iget-object v1, v1, Le/a/i/b0/b;->d:Lo3/a;

    .line 6
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/b0/c/a;

    iget-object v5, p0, Le/a/i/b0/b$c;->h:Le/a/i/b0/d/a;

    iput-object p1, p0, Le/a/i/b0/b$c;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/i/b0/b$c;->f:I

    invoke-interface {v1, v5, p0}, Le/a/i/b0/c/a;->a(Le/a/i/b0/d/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v12, v1

    move-object v1, p1

    move-object p1, v12

    :goto_0
    check-cast p1, Lcom/truecaller/ads/campaigns/AdCampaigns;

    if-eqz p1, :cond_4

    move-object v4, p1

    goto/16 :goto_a

    .line 7
    :cond_4
    iget-object p1, p0, Le/a/i/b0/b$c;->g:Le/a/i/b0/b;

    .line 8
    iget-object p1, p1, Le/a/i/b0/b;->e:Lo3/a;

    .line 9
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/i/b0/e/d;

    iget-object v5, p0, Le/a/i/b0/b$c;->h:Le/a/i/b0/d/a;

    iput-object v1, p0, Le/a/i/b0/b$c;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/i/b0/b$c;->f:I

    invoke-interface {p1, v5, p0}, Le/a/i/b0/e/d;->a(Le/a/i/b0/d/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v5, v1

    :goto_1
    check-cast p1, Lcom/truecaller/ads/keywords/model/AdCampaignsRestDto;

    if-eqz p1, :cond_14

    .line 10
    invoke-virtual {p1}, Lcom/truecaller/ads/keywords/model/AdCampaignsRestDto;->getKeywordPlacements()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/truecaller/ads/keywords/model/AdKeywordPlacementDto;

    .line 12
    invoke-virtual {v6}, Lcom/truecaller/ads/keywords/model/AdKeywordPlacementDto;->getPlacement()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Le/a/i/b0/b$c;->h:Le/a/i/b0/d/a;

    .line 13
    iget-object v7, v7, Le/a/i/b0/d/a;->b:Ljava/util/List;

    .line 14
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v6, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 15
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 16
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_7
    move-object v1, v4

    .line 17
    :goto_2
    check-cast v1, Lcom/truecaller/ads/keywords/model/AdKeywordPlacementDto;

    if-eqz v1, :cond_14

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 18
    new-instance v8, Le/a/i/b0/b$c$a;

    invoke-direct {v8, v4, p1, v5, p0}, Le/a/i/b0/b$c$a;-><init>(Ls1/w/d;Lcom/truecaller/ads/keywords/model/AdCampaignsRestDto;Lq3/a/i0;Le/a/i/b0/b$c;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    const-string p1, "$this$mapToAdCampaigns"

    .line 19
    invoke-static {v1, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1}, Lcom/truecaller/ads/keywords/model/AdKeywordPlacementDto;->getPlacement()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    move p1, v2

    goto :goto_4

    :cond_9
    :goto_3
    move p1, v3

    :goto_4
    if-eqz p1, :cond_a

    goto/16 :goto_a

    .line 21
    :cond_a
    invoke-virtual {v1}, Lcom/truecaller/ads/keywords/model/AdKeywordPlacementDto;->getMaxAge()Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_b

    goto/16 :goto_a

    .line 22
    :cond_b
    invoke-virtual {v1}, Lcom/truecaller/ads/keywords/model/AdKeywordPlacementDto;->getCampaigns()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 25
    check-cast v5, Lcom/truecaller/ads/keywords/model/AdCampaignDto;

    .line 26
    invoke-virtual {v5}, Lcom/truecaller/ads/keywords/model/AdCampaignDto;->getId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_d

    goto :goto_6

    :cond_d
    move v6, v2

    goto :goto_7

    :cond_e
    :goto_6
    move v6, v3

    :goto_7
    if-eqz v6, :cond_f

    move-object v5, v4

    goto :goto_8

    .line 27
    :cond_f
    new-instance v6, Lcom/truecaller/ads/campaigns/AdCampaign$b;

    invoke-virtual {v5}, Lcom/truecaller/ads/keywords/model/AdCampaignDto;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/truecaller/ads/campaigns/AdCampaign$b;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v5}, Lcom/truecaller/ads/keywords/model/AdCampaignDto;->getStyle()Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 29
    invoke-virtual {v5}, Lcom/truecaller/ads/keywords/model/AdCampaignDto;->getStyle()Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;

    move-result-object v7

    invoke-virtual {v7}, Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;->getMainColor()Ljava/lang/String;

    move-result-object v7

    .line 30
    iput-object v7, v6, Lcom/truecaller/ads/campaigns/AdCampaign$b;->c:Ljava/lang/String;

    .line 31
    invoke-virtual {v5}, Lcom/truecaller/ads/keywords/model/AdCampaignDto;->getStyle()Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;

    move-result-object v7

    invoke-virtual {v7}, Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;->getLightColor()Ljava/lang/String;

    move-result-object v7

    .line 32
    iput-object v7, v6, Lcom/truecaller/ads/campaigns/AdCampaign$b;->d:Ljava/lang/String;

    .line 33
    invoke-virtual {v5}, Lcom/truecaller/ads/keywords/model/AdCampaignDto;->getStyle()Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;

    move-result-object v7

    invoke-virtual {v7}, Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;->getButtonColor()Ljava/lang/String;

    move-result-object v7

    .line 34
    iput-object v7, v6, Lcom/truecaller/ads/campaigns/AdCampaign$b;->e:Ljava/lang/String;

    .line 35
    invoke-virtual {v5}, Lcom/truecaller/ads/keywords/model/AdCampaignDto;->getStyle()Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;

    move-result-object v7

    invoke-virtual {v7}, Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;->getBannerBackgroundColor()Ljava/lang/String;

    move-result-object v7

    .line 36
    iput-object v7, v6, Lcom/truecaller/ads/campaigns/AdCampaign$b;->f:Ljava/lang/String;

    .line 37
    invoke-virtual {v5}, Lcom/truecaller/ads/keywords/model/AdCampaignDto;->getStyle()Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;

    move-result-object v7

    invoke-virtual {v7}, Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    .line 38
    iput-object v7, v6, Lcom/truecaller/ads/campaigns/AdCampaign$b;->g:Ljava/lang/String;

    .line 39
    invoke-virtual {v5}, Lcom/truecaller/ads/keywords/model/AdCampaignDto;->getStyle()Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;

    move-result-object v7

    invoke-virtual {v7}, Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;->getBrandName()Ljava/lang/String;

    move-result-object v7

    .line 40
    iput-object v7, v6, Lcom/truecaller/ads/campaigns/AdCampaign$b;->h:Ljava/lang/String;

    .line 41
    invoke-virtual {v5}, Lcom/truecaller/ads/keywords/model/AdCampaignDto;->getStyle()Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;

    move-result-object v7

    invoke-virtual {v7}, Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;->getCtaBackgroundColor()Ljava/lang/String;

    move-result-object v7

    .line 42
    iput-object v7, v6, Lcom/truecaller/ads/campaigns/AdCampaign$b;->i:Ljava/lang/String;

    .line 43
    invoke-virtual {v5}, Lcom/truecaller/ads/keywords/model/AdCampaignDto;->getStyle()Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;

    move-result-object v5

    invoke-virtual {v5}, Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;->getCtaTextColor()Ljava/lang/String;

    move-result-object v5

    .line 44
    iput-object v5, v6, Lcom/truecaller/ads/campaigns/AdCampaign$b;->j:Ljava/lang/String;

    .line 45
    :cond_10
    invoke-virtual {v6}, Lcom/truecaller/ads/campaigns/AdCampaign$b;->a()Lcom/truecaller/ads/campaigns/AdCampaign;

    move-result-object v5

    :goto_8
    if-eqz v5, :cond_c

    .line 46
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_11
    move-object v0, v4

    :cond_12
    if-eqz v0, :cond_14

    .line 47
    invoke-virtual {v1}, Lcom/truecaller/ads/keywords/model/AdKeywordPlacementDto;->getPlacement()Ljava/lang/String;

    move-result-object v6

    .line 48
    sget-object v8, Lw3/c/a/a/a/a;->b:[Ljava/lang/String;

    .line 49
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/truecaller/ads/campaigns/AdCampaign;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/truecaller/ads/campaigns/AdCampaign;

    .line 50
    invoke-static {v1}, Le/m/d/y/n;->R(Lcom/truecaller/ads/keywords/model/AdKeywordPlacementDto;)J

    move-result-wide v9

    if-eqz p1, :cond_13

    goto :goto_9

    :cond_13
    new-array p1, v2, [Lcom/truecaller/ads/campaigns/AdCampaign;

    :goto_9
    move-object v7, p1

    .line 51
    new-instance v4, Lcom/truecaller/ads/campaigns/AdCampaigns;

    const/4 v11, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v11}, Lcom/truecaller/ads/campaigns/AdCampaigns;-><init>(Ljava/lang/String;[Lcom/truecaller/ads/campaigns/AdCampaign;[Ljava/lang/String;JLcom/truecaller/ads/campaigns/AdCampaigns$a;)V

    :cond_14
    :goto_a
    return-object v4
.end method
