.class public final Le/a/i/c/d/c;
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
        "Le/a/i/c/a/c;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ads.adsrouter.provider.AdRouterAdsProviderImpl$fetchAdRouterAdAsync$1"
    f = "AdRouterAdsProvider.kt"
    l = {
        0x88
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:J

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/i/c/d/b;

.field public final synthetic i:Le/a/i/c/d/l;

.field public final synthetic j:Z


# direct methods
.method public constructor <init>(Le/a/i/c/d/b;Le/a/i/c/d/l;ZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/c/d/c;->h:Le/a/i/c/d/b;

    iput-object p2, p0, Le/a/i/c/d/c;->i:Le/a/i/c/d/l;

    iput-boolean p3, p0, Le/a/i/c/d/c;->j:Z

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

    new-instance p1, Le/a/i/c/d/c;

    iget-object v0, p0, Le/a/i/c/d/c;->h:Le/a/i/c/d/b;

    iget-object v1, p0, Le/a/i/c/d/c;->i:Le/a/i/c/d/l;

    iget-boolean v2, p0, Le/a/i/c/d/c;->j:Z

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/i/c/d/c;-><init>(Le/a/i/c/d/b;Le/a/i/c/d/l;ZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/i/c/d/c;

    iget-object v0, p0, Le/a/i/c/d/c;->h:Le/a/i/c/d/b;

    iget-object v1, p0, Le/a/i/c/d/c;->i:Le/a/i/c/d/l;

    iget-boolean v2, p0, Le/a/i/c/d/c;->j:Z

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/i/c/d/c;-><init>(Le/a/i/c/d/b;Le/a/i/c/d/l;ZLs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/i/c/d/c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/c/d/c;->g:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-wide v1, v0, Le/a/i/c/d/c;->e:J

    iget-object v3, v0, Le/a/i/c/d/c;->f:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-wide v6, v1

    move-object v14, v3

    move-object/from16 v3, p1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/i/c/d/c;->h:Le/a/i/c/d/b;

    .line 5
    iget-object v2, v2, Le/a/i/c/d/b;->j:Le/a/p5/c;

    .line 6
    invoke-interface {v2}, Le/a/p5/c;->a()J

    move-result-wide v4

    .line 7
    iget-object v2, v0, Le/a/i/c/d/c;->h:Le/a/i/c/d/b;

    .line 8
    iget-object v2, v2, Le/a/i/c/d/b;->f:Le/a/p5/u;

    .line 9
    invoke-interface {v2}, Le/a/p5/u;->b()Ljava/lang/String;

    move-result-object v2

    .line 10
    iget-object v6, v0, Le/a/i/c/d/c;->h:Le/a/i/c/d/b;

    iget-object v7, v0, Le/a/i/c/d/c;->i:Le/a/i/c/d/l;

    .line 11
    invoke-virtual {v6, v7}, Le/a/i/c/d/b;->g(Le/a/i/c/d/l;)Ljava/util/Map;

    move-result-object v7

    .line 12
    iget-boolean v8, v0, Le/a/i/c/d/c;->j:Z

    iput-object v2, v0, Le/a/i/c/d/c;->f:Ljava/lang/Object;

    iput-wide v4, v0, Le/a/i/c/d/c;->e:J

    iput v3, v0, Le/a/i/c/d/c;->g:I

    invoke-virtual {v6, v7, v8, v0}, Le/a/i/c/d/b;->h(Ljava/util/Map;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_2

    return-object v1

    :cond_2
    move-object v14, v2

    move-wide v6, v4

    .line 13
    :goto_0
    check-cast v3, Le/a/i/c/c/h;

    .line 14
    instance-of v1, v3, Le/a/i/c/c/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 15
    check-cast v3, Le/a/i/c/c/i;

    .line 16
    iget-object v1, v3, Le/a/i/c/c/i;->a:Ljava/lang/Object;

    .line 17
    check-cast v1, Lcom/truecaller/ads/adsrouter/model/Ad;

    iget-object v3, v0, Le/a/i/c/d/c;->i:Le/a/i/c/d/l;

    .line 18
    iget-object v3, v3, Le/a/i/c/d/l;->b:Ljava/lang/String;

    .line 19
    invoke-virtual {v1, v3}, Lcom/truecaller/ads/adsrouter/model/Ad;->setRequestId(Ljava/lang/String;)V

    .line 20
    iget-object v4, v0, Le/a/i/c/d/c;->h:Le/a/i/c/d/b;

    .line 21
    sget-object v5, Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;->SUCCESS:Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;

    .line 22
    iget-object v8, v0, Le/a/i/c/d/c;->i:Le/a/i/c/d/l;

    .line 23
    invoke-virtual {v1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getAdType()Ljava/lang/String;

    move-result-object v9

    .line 24
    invoke-virtual {v1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getMeta()Lcom/truecaller/ads/adsrouter/model/Meta;

    move-result-object v3

    invoke-virtual {v3}, Lcom/truecaller/ads/adsrouter/model/Meta;->getPartner()Ljava/lang/String;

    move-result-object v10

    .line 25
    invoke-virtual {v1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getEcpm()Ljava/lang/String;

    move-result-object v11

    .line 26
    invoke-virtual {v1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getRawEcpm()Ljava/lang/String;

    move-result-object v12

    .line 27
    invoke-virtual {v1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getAdSource()Le/a/i/c/a/u;

    move-result-object v13

    .line 28
    invoke-virtual {v1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getMeta()Lcom/truecaller/ads/adsrouter/model/Meta;

    move-result-object v3

    invoke-virtual {v3}, Lcom/truecaller/ads/adsrouter/model/Meta;->getPublisher()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xc00

    .line 29
    invoke-static/range {v4 .. v18}, Le/a/i/c/d/b;->i(Le/a/i/c/d/b;Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;JLe/a/i/c/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/i/c/a/u;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    .line 30
    new-instance v3, Le/a/i/d0/k;

    iget-object v4, v0, Le/a/i/c/d/c;->h:Le/a/i/c/d/b;

    .line 31
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-virtual {v1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getAdType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v6, "video_ad"

    .line 33
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Le/a/i/c/a/t;

    new-instance v6, Le/a/i/c/a/b0;

    iget-object v4, v4, Le/a/i/c/d/b;->e:Le/a/i/c/d/j;

    invoke-direct {v6, v1, v4}, Le/a/i/c/a/b0;-><init>(Lcom/truecaller/ads/adsrouter/model/Ad;Le/a/i/c/d/j;)V

    invoke-direct {v5, v6}, Le/a/i/c/a/t;-><init>(Le/a/i/c/a/n;)V

    goto :goto_2

    :sswitch_1
    const-string v6, "html"

    .line 34
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :sswitch_2
    const-string v6, "native"

    .line 35
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Le/a/i/c/a/k;

    new-instance v6, Le/a/i/c/a/z;

    iget-object v4, v4, Le/a/i/c/d/b;->e:Le/a/i/c/d/j;

    invoke-direct {v6, v1, v4}, Le/a/i/c/a/z;-><init>(Lcom/truecaller/ads/adsrouter/model/Ad;Le/a/i/c/d/j;)V

    invoke-direct {v5, v6}, Le/a/i/c/a/k;-><init>(Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;)V

    goto :goto_2

    :sswitch_3
    const-string v6, "banner"

    .line 36
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    new-instance v5, Le/a/i/c/a/g;

    new-instance v6, Le/a/i/c/a/x;

    iget-object v4, v4, Le/a/i/c/d/b;->e:Le/a/i/c/d/j;

    invoke-direct {v6, v1, v4}, Le/a/i/c/a/x;-><init>(Lcom/truecaller/ads/adsrouter/model/Ad;Le/a/i/c/d/j;)V

    invoke-direct {v5, v6}, Le/a/i/c/a/g;-><init>(Le/a/i/c/a/e;)V

    goto :goto_2

    :sswitch_4
    const-string v6, "native_image"

    .line 37
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Le/a/i/c/a/m;

    new-instance v6, Le/a/i/c/a/z;

    iget-object v4, v4, Le/a/i/c/d/b;->e:Le/a/i/c/d/j;

    invoke-direct {v6, v1, v4}, Le/a/i/c/a/z;-><init>(Lcom/truecaller/ads/adsrouter/model/Ad;Le/a/i/c/d/j;)V

    invoke-direct {v5, v6}, Le/a/i/c/a/m;-><init>(Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;)V

    :goto_2
    const/4 v1, 0x2

    .line 38
    invoke-direct {v3, v5, v2, v1}, Le/a/i/d0/k;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    goto :goto_4

    .line 39
    :cond_3
    :goto_3
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Ad type "

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getAdType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not defined"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 40
    :cond_4
    instance-of v1, v3, Le/a/i/c/c/g;

    if-eqz v1, :cond_5

    .line 41
    iget-object v4, v0, Le/a/i/c/d/c;->h:Le/a/i/c/d/b;

    .line 42
    sget-object v5, Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;->FAILURE:Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;

    .line 43
    iget-object v8, v0, Le/a/i/c/d/c;->i:Le/a/i/c/d/l;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 44
    sget-object v13, Le/a/i/c/a/u$b;->b:Le/a/i/c/a/u$b;

    .line 45
    check-cast v3, Le/a/i/c/c/g;

    .line 46
    iget v1, v3, Le/a/i/c/c/g;->a:I

    .line 47
    new-instance v15, Ljava/lang/Integer;

    invoke-direct {v15, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 48
    iget-object v1, v3, Le/a/i/c/c/g;->b:Ljava/lang/String;

    const/16 v18, 0x78

    const-string v16, "Truecaller"

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v1

    .line 49
    invoke-static/range {v4 .. v18}, Le/a/i/c/d/b;->i(Le/a/i/c/d/b;Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;JLe/a/i/c/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/i/c/a/u;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    .line 50
    new-instance v1, Le/a/i/d0/i;

    new-instance v4, Le/a/i/c/b/a;

    .line 51
    iget v5, v3, Le/a/i/c/c/g;->a:I

    .line 52
    iget-object v3, v3, Le/a/i/c/c/g;->b:Ljava/lang/String;

    const/4 v6, 0x4

    .line 53
    invoke-direct {v4, v5, v3, v2, v6}, Le/a/i/c/b/a;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v1, v4}, Le/a/i/d0/i;-><init>(Le/a/i/c/b/a;)V

    move-object v3, v1

    :goto_4
    return-object v3

    :cond_5
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5cf350cd -> :sswitch_4
        -0x533a80d4 -> :sswitch_3
        -0x3ebdafe9 -> :sswitch_2
        0x3107ab -> :sswitch_1
        0x44a0c667 -> :sswitch_0
    .end sparse-switch
.end method
