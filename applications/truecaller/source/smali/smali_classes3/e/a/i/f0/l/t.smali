.class public final Le/a/i/f0/l/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/f0/l/j;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/w/f;

.field public final c:Le/a/p5/c;

.field public final d:Le/a/d4/c;

.field public final e:Le/a/i/f0/a;

.field public final f:Le/a/z4/a;

.field public final g:Le/a/i/f0/k/a;

.field public final h:Le/a/i/f0/l/p;

.field public final i:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;

.field public final j:Le/a/u3/g;

.field public final k:Le/a/p5/u;

.field public final l:Le/a/p5/g;

.field public final m:Le/a/i/f0/j/a;

.field public final n:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/e0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/e/k/a;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Le/a/i/b0/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/p5/c;Le/a/d4/c;Le/a/i/f0/a;Le/a/z4/a;Le/a/i/f0/k/a;Le/a/i/f0/l/p;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;Le/a/u3/g;Le/a/p5/u;Le/a/p5/g;Le/a/i/f0/j/a;Lo3/a;Lo3/a;Le/a/i/b0/a;)V
    .locals 16
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Le/a/p5/c;",
            "Le/a/d4/c;",
            "Le/a/i/f0/a;",
            "Le/a/z4/a;",
            "Le/a/i/f0/k/a;",
            "Le/a/i/f0/l/p;",
            "Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;",
            "Le/a/u3/g;",
            "Le/a/p5/u;",
            "Le/a/p5/g;",
            "Le/a/i/f0/j/a;",
            "Lo3/a<",
            "Le/a/i/e0/a;",
            ">;",
            "Lo3/a<",
            "Le/a/i/e/k/a;",
            ">;",
            "Le/a/i/b0/a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    const-string v0, "uiContext"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileServicesAvailabilityProvider"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsAnalytics"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsSettings"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "campaignReceiver"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsRequester"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsConfigurationManager"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acsAdRequestIdGenerator"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectivityMonitor"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineAdsManager"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adCampaignsManager"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Le/a/i/f0/l/t;->b:Ls1/w/f;

    iput-object v2, v0, Le/a/i/f0/l/t;->c:Le/a/p5/c;

    iput-object v3, v0, Le/a/i/f0/l/t;->d:Le/a/d4/c;

    iput-object v4, v0, Le/a/i/f0/l/t;->e:Le/a/i/f0/a;

    iput-object v5, v0, Le/a/i/f0/l/t;->f:Le/a/z4/a;

    iput-object v6, v0, Le/a/i/f0/l/t;->g:Le/a/i/f0/k/a;

    iput-object v7, v0, Le/a/i/f0/l/t;->h:Le/a/i/f0/l/p;

    iput-object v8, v0, Le/a/i/f0/l/t;->i:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;

    iput-object v9, v0, Le/a/i/f0/l/t;->j:Le/a/u3/g;

    iput-object v10, v0, Le/a/i/f0/l/t;->k:Le/a/p5/u;

    iput-object v11, v0, Le/a/i/f0/l/t;->l:Le/a/p5/g;

    iput-object v12, v0, Le/a/i/f0/l/t;->m:Le/a/i/f0/j/a;

    iput-object v13, v0, Le/a/i/f0/l/t;->n:Lo3/a;

    iput-object v14, v0, Le/a/i/f0/l/t;->o:Lo3/a;

    iput-object v15, v0, Le/a/i/f0/l/t;->p:Le/a/i/b0/a;

    .line 2
    sget-object v1, Le/a/i/f0/l/t$a;->b:Le/a/i/f0/l/t$a;

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, v0, Le/a/i/f0/l/t;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Le/a/i/f0/l/o;Le/a/i/s;)Le/a/i/f0/l/i;
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "callback"

    move-object/from16 v5, p1

    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "config"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Le/a/i/f0/l/k;

    .line 2
    iget-object v4, v0, Le/a/i/f0/l/t;->b:Ls1/w/f;

    .line 3
    iget-object v6, v0, Le/a/i/f0/l/t;->c:Le/a/p5/c;

    .line 4
    iget-object v7, v0, Le/a/i/f0/l/t;->d:Le/a/d4/c;

    .line 5
    iget-object v8, v0, Le/a/i/f0/l/t;->e:Le/a/i/f0/a;

    .line 6
    iget-object v9, v0, Le/a/i/f0/l/t;->f:Le/a/z4/a;

    .line 7
    iget-object v10, v0, Le/a/i/f0/l/t;->g:Le/a/i/f0/k/a;

    .line 8
    iget-object v11, v0, Le/a/i/f0/l/t;->h:Le/a/i/f0/l/p;

    .line 9
    iget-object v12, v0, Le/a/i/f0/l/t;->i:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;

    .line 10
    iget-object v13, v0, Le/a/i/f0/l/t;->j:Le/a/u3/g;

    .line 11
    iget-object v14, v0, Le/a/i/f0/l/t;->k:Le/a/p5/u;

    .line 12
    iget-object v15, v0, Le/a/i/f0/l/t;->l:Le/a/p5/g;

    .line 13
    iget-object v2, v13, Le/a/u3/g;->D3:Le/a/u3/g$a;

    sget-object v16, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v17, 0xef

    aget-object v3, v16, v17

    invoke-virtual {v2, v13, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v2

    .line 14
    invoke-interface {v2}, Le/a/u3/b;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    iget-object v2, v0, Le/a/i/f0/l/t;->a:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object/from16 v16, v2

    .line 16
    iget-object v2, v0, Le/a/i/f0/l/t;->m:Le/a/i/f0/j/a;

    move-object/from16 v17, v2

    .line 17
    iget-object v2, v0, Le/a/i/f0/l/t;->n:Lo3/a;

    move-object/from16 v18, v2

    .line 18
    iget-object v2, v0, Le/a/i/f0/l/t;->o:Lo3/a;

    move-object/from16 v19, v2

    .line 19
    iget-object v2, v0, Le/a/i/f0/l/t;->p:Le/a/i/b0/a;

    move-object/from16 v20, v2

    move-object v2, v1

    move-object/from16 v3, p2

    move-object/from16 v5, p1

    .line 20
    invoke-direct/range {v2 .. v20}, Le/a/i/f0/l/k;-><init>(Le/a/i/s;Ls1/w/f;Le/a/i/f0/l/o;Le/a/p5/c;Le/a/d4/c;Le/a/i/f0/a;Le/a/z4/a;Le/a/i/f0/k/a;Le/a/i/f0/l/p;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;Le/a/u3/g;Le/a/p5/u;Le/a/p5/g;Ljava/util/Map;Le/a/i/f0/j/a;Lo3/a;Lo3/a;Le/a/i/b0/a;)V

    return-object v1
.end method
