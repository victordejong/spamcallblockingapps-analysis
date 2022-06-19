.class public final Le/a/i/b0/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/b0/c/a;


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/b0/c/c/a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/p5/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/i/b0/c/c/a;",
            ">;",
            "Lo3/a<",
            "Le/a/p5/c;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "adCampaignsDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/b0/c/b;->a:Lo3/a;

    iput-object p2, p0, Le/a/i/b0/c/b;->b:Lo3/a;

    return-void
.end method


# virtual methods
.method public a(Le/a/i/b0/d/a;Ls1/w/d;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/b0/d/a;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/ads/campaigns/AdCampaigns;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Le/a/i/b0/c/b$a;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Le/a/i/b0/c/b$a;

    iget v4, v3, Le/a/i/b0/c/b$a;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/i/b0/c/b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/i/b0/c/b$a;

    invoke-direct {v3, v0, v2}, Le/a/i/b0/c/b$a;-><init>(Le/a/i/b0/c/b;Ls1/w/d;)V

    :goto_0
    move-object v9, v3

    iget-object v2, v9, Le/a/i/b0/c/b$a;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v9, Le/a/i/b0/c/b$a;->e:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v11, :cond_1

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/i/b0/c/b;->a:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/i/b0/c/c/a;

    .line 5
    iget-object v5, v1, Le/a/i/b0/d/a;->a:Ljava/lang/String;

    .line 6
    iget-object v1, v1, Le/a/i/b0/d/a;->b:Ljava/util/List;

    .line 7
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 8
    iget-object v1, v0, Le/a/i/b0/c/b;->b:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v7

    iput v11, v9, Le/a/i/b0/c/b$a;->e:I

    .line 9
    invoke-interface/range {v4 .. v9}, Le/a/i/b0/c/c/a;->k(Ljava/lang/String;Ljava/lang/String;JLs1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_3

    return-object v3

    .line 10
    :cond_3
    :goto_1
    move-object v1, v2

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v11

    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v3

    :goto_2
    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_7

    const-string v1, "$this$mapToAdCampaign"

    .line 13
    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 16
    check-cast v4, Le/a/i/b0/c/d/a;

    .line 17
    new-instance v5, Lcom/truecaller/ads/campaigns/AdCampaign$b;

    .line 18
    iget-object v6, v4, Le/a/i/b0/c/d/a;->b:Ljava/lang/String;

    .line 19
    invoke-direct {v5, v6}, Lcom/truecaller/ads/campaigns/AdCampaign$b;-><init>(Ljava/lang/String;)V

    .line 20
    iget-object v6, v4, Le/a/i/b0/c/d/a;->f:Ljava/lang/String;

    .line 21
    iput-object v6, v5, Lcom/truecaller/ads/campaigns/AdCampaign$b;->c:Ljava/lang/String;

    .line 22
    iget-object v6, v4, Le/a/i/b0/c/d/a;->g:Ljava/lang/String;

    .line 23
    iput-object v6, v5, Lcom/truecaller/ads/campaigns/AdCampaign$b;->d:Ljava/lang/String;

    .line 24
    iget-object v6, v4, Le/a/i/b0/c/d/a;->h:Ljava/lang/String;

    .line 25
    iput-object v6, v5, Lcom/truecaller/ads/campaigns/AdCampaign$b;->e:Ljava/lang/String;

    .line 26
    iget-object v6, v4, Le/a/i/b0/c/d/a;->i:Ljava/lang/String;

    .line 27
    iput-object v6, v5, Lcom/truecaller/ads/campaigns/AdCampaign$b;->f:Ljava/lang/String;

    .line 28
    iget-object v6, v4, Le/a/i/b0/c/d/a;->j:Ljava/lang/String;

    .line 29
    iput-object v6, v5, Lcom/truecaller/ads/campaigns/AdCampaign$b;->g:Ljava/lang/String;

    .line 30
    iget-object v6, v4, Le/a/i/b0/c/d/a;->k:Ljava/lang/String;

    .line 31
    iput-object v6, v5, Lcom/truecaller/ads/campaigns/AdCampaign$b;->h:Ljava/lang/String;

    .line 32
    iget-object v6, v4, Le/a/i/b0/c/d/a;->m:Ljava/lang/String;

    .line 33
    iput-object v6, v5, Lcom/truecaller/ads/campaigns/AdCampaign$b;->i:Ljava/lang/String;

    .line 34
    iget-object v4, v4, Le/a/i/b0/c/d/a;->l:Ljava/lang/String;

    .line 35
    iput-object v4, v5, Lcom/truecaller/ads/campaigns/AdCampaign$b;->j:Ljava/lang/String;

    .line 36
    invoke-virtual {v5}, Lcom/truecaller/ads/campaigns/AdCampaign$b;->a()Lcom/truecaller/ads/campaigns/AdCampaign;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 37
    :cond_5
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/i/b0/c/d/a;

    .line 38
    iget-object v12, v3, Le/a/i/b0/c/d/a;->d:Ljava/lang/String;

    .line 39
    sget-object v14, Lw3/c/a/a/a/a;->b:[Ljava/lang/String;

    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/truecaller/ads/campaigns/AdCampaign;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/truecaller/ads/campaigns/AdCampaign;

    .line 41
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/i/b0/c/d/a;

    .line 42
    iget-wide v2, v2, Le/a/i/b0/c/d/a;->e:J

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    new-array v1, v10, [Lcom/truecaller/ads/campaigns/AdCampaign;

    :goto_4
    move-object v13, v1

    .line 43
    new-instance v1, Lcom/truecaller/ads/campaigns/AdCampaigns;

    const/16 v17, 0x0

    move-object v11, v1

    move-wide v15, v2

    invoke-direct/range {v11 .. v17}, Lcom/truecaller/ads/campaigns/AdCampaigns;-><init>(Ljava/lang/String;[Lcom/truecaller/ads/campaigns/AdCampaign;[Ljava/lang/String;JLcom/truecaller/ads/campaigns/AdCampaigns$a;)V

    const-string v2, "AdCampaigns.Builder(this\u2026piresAt)\n        .build()"

    .line 44
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    :cond_7
    return-object v3
.end method

.method public e(Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/b0/c/b;->a:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/b0/c/c/a;

    invoke-interface {v0, p1}, Le/a/i/b0/c/c/a;->e(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public f(Le/a/i/b0/d/a;Lcom/truecaller/ads/keywords/model/AdCampaignsRestDto;Ls1/w/d;)Ljava/lang/Object;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/b0/d/a;",
            "Lcom/truecaller/ads/keywords/model/AdCampaignsRestDto;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    instance-of v2, v1, Le/a/i/b0/c/b$b;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/i/b0/c/b$b;

    iget v3, v2, Le/a/i/b0/c/b$b;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/i/b0/c/b$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/i/b0/c/b$b;

    invoke-direct {v2, v0, v1}, Le/a/i/b0/c/b$b;-><init>(Le/a/i/b0/c/b;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/i/b0/c/b$b;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/i/b0/c/b$b;->e:I

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v5, :cond_2

    if-ne v4, v6, :cond_1

    iget-object v2, v2, Le/a/i/b0/c/b$b;->g:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v4, v2, Le/a/i/b0/c/b$b;->i:Ljava/lang/Object;

    check-cast v4, Le/a/i/b0/c/c/a;

    iget-object v5, v2, Le/a/i/b0/c/b$b;->h:Ljava/lang/Object;

    check-cast v5, Lcom/truecaller/ads/keywords/model/AdCampaignsRestDto;

    iget-object v8, v2, Le/a/i/b0/c/b$b;->g:Ljava/lang/Object;

    check-cast v8, Le/a/i/b0/d/a;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v4, v2, Le/a/i/b0/c/b$b;->i:Ljava/lang/Object;

    check-cast v4, Le/a/i/b0/c/c/a;

    iget-object v8, v2, Le/a/i/b0/c/b$b;->h:Ljava/lang/Object;

    check-cast v8, Lcom/truecaller/ads/keywords/model/AdCampaignsRestDto;

    iget-object v9, v2, Le/a/i/b0/c/b$b;->g:Ljava/lang/Object;

    check-cast v9, Le/a/i/b0/d/a;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v1, v4

    move-object v4, v9

    goto :goto_1

    :cond_4
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/i/b0/c/b;->a:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/b0/c/c/a;

    .line 5
    iget-object v4, v0, Le/a/i/b0/c/b;->b:Lo3/a;

    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/p5/c;

    invoke-interface {v4}, Le/a/p5/c;->c()J

    move-result-wide v8

    move-object/from16 v4, p1

    iput-object v4, v2, Le/a/i/b0/c/b$b;->g:Ljava/lang/Object;

    move-object/from16 v10, p2

    iput-object v10, v2, Le/a/i/b0/c/b$b;->h:Ljava/lang/Object;

    iput-object v1, v2, Le/a/i/b0/c/b$b;->i:Ljava/lang/Object;

    iput v7, v2, Le/a/i/b0/c/b$b;->e:I

    invoke-interface {v1, v8, v9, v2}, Le/a/i/b0/c/c/a;->x(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_5

    return-object v3

    :cond_5
    move-object v8, v10

    .line 6
    :goto_1
    iget-object v9, v4, Le/a/i/b0/d/a;->a:Ljava/lang/String;

    .line 7
    iget-object v10, v4, Le/a/i/b0/d/a;->b:Ljava/util/List;

    .line 8
    iput-object v4, v2, Le/a/i/b0/c/b$b;->g:Ljava/lang/Object;

    iput-object v8, v2, Le/a/i/b0/c/b$b;->h:Ljava/lang/Object;

    iput-object v1, v2, Le/a/i/b0/c/b$b;->i:Ljava/lang/Object;

    iput v5, v2, Le/a/i/b0/c/b$b;->e:I

    invoke-interface {v1, v9, v10, v2}, Le/a/i/b0/c/c/a;->u(Ljava/lang/String;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_6

    return-object v3

    :cond_6
    move-object v5, v8

    move-object v8, v4

    move-object v4, v1

    .line 9
    :goto_2
    iget-object v1, v8, Le/a/i/b0/d/a;->a:Ljava/lang/String;

    const-string v8, "$this$mapToAdCampaignEntity"

    .line 10
    invoke-static {v5, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "phoneNumber"

    invoke-static {v1, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {v5}, Lcom/truecaller/ads/keywords/model/AdCampaignsRestDto;->getKeywordPlacements()Ljava/util/List;

    move-result-object v5

    const/4 v15, 0x0

    if-eqz v5, :cond_19

    .line 13
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v23, v9

    check-cast v23, Lcom/truecaller/ads/keywords/model/AdKeywordPlacementDto;

    .line 14
    invoke-virtual/range {v23 .. v23}, Lcom/truecaller/ads/keywords/model/AdKeywordPlacementDto;->getPlacement()Ljava/lang/String;

    move-result-object v9

    const/16 v24, 0x0

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_7

    goto :goto_4

    :cond_7
    move/from16 v9, v24

    goto :goto_5

    :cond_8
    :goto_4
    move v9, v7

    :goto_5
    if-eqz v9, :cond_9

    goto :goto_3

    .line 15
    :cond_9
    invoke-virtual/range {v23 .. v23}, Lcom/truecaller/ads/keywords/model/AdKeywordPlacementDto;->getMaxAge()Ljava/lang/Long;

    move-result-object v9

    if-nez v9, :cond_a

    goto :goto_3

    .line 16
    :cond_a
    invoke-virtual/range {v23 .. v23}, Lcom/truecaller/ads/keywords/model/AdKeywordPlacementDto;->getCampaigns()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_18

    .line 17
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_6
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 19
    check-cast v9, Lcom/truecaller/ads/keywords/model/AdCampaignDto;

    .line 20
    invoke-virtual {v9}, Lcom/truecaller/ads/keywords/model/AdCampaignDto;->getId()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_c

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_b

    goto :goto_7

    :cond_b
    move/from16 v10, v24

    goto :goto_8

    :cond_c
    :goto_7
    move v10, v7

    :goto_8
    if-eqz v10, :cond_d

    move-object v7, v13

    move-object v6, v15

    goto/16 :goto_11

    .line 21
    :cond_d
    new-instance v26, Le/a/i/b0/c/d/a;

    .line 22
    invoke-virtual {v9}, Lcom/truecaller/ads/keywords/model/AdCampaignDto;->getId()Ljava/lang/String;

    move-result-object v10

    .line 23
    invoke-virtual/range {v23 .. v23}, Lcom/truecaller/ads/keywords/model/AdKeywordPlacementDto;->getPlacement()Ljava/lang/String;

    move-result-object v12

    .line 24
    invoke-static/range {v23 .. v23}, Le/m/d/y/n;->R(Lcom/truecaller/ads/keywords/model/AdKeywordPlacementDto;)J

    move-result-wide v16

    .line 25
    invoke-virtual {v9}, Lcom/truecaller/ads/keywords/model/AdCampaignDto;->getStyle()Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;

    move-result-object v11

    if-eqz v11, :cond_e

    invoke-virtual {v11}, Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;->getMainColor()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v18, v11

    goto :goto_9

    :cond_e
    move-object/from16 v18, v15

    .line 26
    :goto_9
    invoke-virtual {v9}, Lcom/truecaller/ads/keywords/model/AdCampaignDto;->getStyle()Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;

    move-result-object v11

    if-eqz v11, :cond_f

    invoke-virtual {v11}, Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;->getLightColor()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v19, v11

    goto :goto_a

    :cond_f
    move-object/from16 v19, v15

    .line 27
    :goto_a
    invoke-virtual {v9}, Lcom/truecaller/ads/keywords/model/AdCampaignDto;->getStyle()Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;

    move-result-object v11

    if-eqz v11, :cond_10

    invoke-virtual {v11}, Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;->getButtonColor()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v20, v11

    goto :goto_b

    :cond_10
    move-object/from16 v20, v15

    .line 28
    :goto_b
    invoke-virtual {v9}, Lcom/truecaller/ads/keywords/model/AdCampaignDto;->getStyle()Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;

    move-result-object v11

    if-eqz v11, :cond_11

    invoke-virtual {v11}, Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;->getBannerBackgroundColor()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v21, v11

    goto :goto_c

    :cond_11
    move-object/from16 v21, v15

    .line 29
    :goto_c
    invoke-virtual {v9}, Lcom/truecaller/ads/keywords/model/AdCampaignDto;->getStyle()Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;

    move-result-object v11

    if-eqz v11, :cond_12

    invoke-virtual {v11}, Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;->getImageUrl()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v22, v11

    goto :goto_d

    :cond_12
    move-object/from16 v22, v15

    .line 30
    :goto_d
    invoke-virtual {v9}, Lcom/truecaller/ads/keywords/model/AdCampaignDto;->getStyle()Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;

    move-result-object v11

    if-eqz v11, :cond_13

    invoke-virtual {v11}, Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;->getBrandName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v27, v11

    goto :goto_e

    :cond_13
    move-object/from16 v27, v15

    .line 31
    :goto_e
    invoke-virtual {v9}, Lcom/truecaller/ads/keywords/model/AdCampaignDto;->getStyle()Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;

    move-result-object v11

    if-eqz v11, :cond_14

    invoke-virtual {v11}, Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;->getCtaTextColor()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v28, v11

    goto :goto_f

    :cond_14
    move-object/from16 v28, v15

    .line 32
    :goto_f
    invoke-virtual {v9}, Lcom/truecaller/ads/keywords/model/AdCampaignDto;->getStyle()Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;

    move-result-object v9

    if-eqz v9, :cond_15

    invoke-virtual {v9}, Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;->getCtaBackgroundColor()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v29, v9

    goto :goto_10

    :cond_15
    move-object/from16 v29, v15

    :goto_10
    move-object/from16 v9, v26

    move-object v11, v1

    move-object v7, v13

    move-wide/from16 v13, v16

    move-object v6, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    move-object/from16 v18, v21

    move-object/from16 v19, v22

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v22, v29

    .line 33
    invoke-direct/range {v9 .. v22}, Le/a/i/b0/c/d/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v15, v26

    :goto_11
    if-eqz v15, :cond_16

    .line 34
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    move-object v15, v6

    move-object v13, v7

    const/4 v6, 0x3

    const/4 v7, 0x1

    goto/16 :goto_6

    :cond_17
    move-object v7, v13

    move-object v6, v15

    .line 35
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_12

    :cond_18
    move-object v6, v15

    :goto_12
    move-object v15, v6

    const/4 v6, 0x3

    const/4 v7, 0x1

    goto/16 :goto_3

    :cond_19
    move-object v6, v15

    .line 36
    iput-object v8, v2, Le/a/i/b0/c/b$b;->g:Ljava/lang/Object;

    iput-object v6, v2, Le/a/i/b0/c/b$b;->h:Ljava/lang/Object;

    iput-object v6, v2, Le/a/i/b0/c/b$b;->i:Ljava/lang/Object;

    const/4 v1, 0x3

    iput v1, v2, Le/a/i/b0/c/b$b;->e:I

    invoke-interface {v4, v8, v2}, Le/a/i/b0/c/c/a;->A(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_1a

    return-object v3

    .line 37
    :cond_1a
    :goto_13
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
