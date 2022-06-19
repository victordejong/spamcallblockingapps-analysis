.class public final Le/a/i/f0/l/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/f0/l/i;
.implements Lq3/a/i0;


# instance fields
.field public a:Lq3/a/y;

.field public final b:Lq3/a/b3/c;

.field public c:Lq3/a/p1;

.field public final d:Ls1/g;

.field public final e:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Le/a/i/f0/l/u;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ls1/g;

.field public g:Z

.field public h:Le/a/i/s;

.field public final i:Ls1/w/f;

.field public final j:Le/a/i/f0/l/o;

.field public final k:Le/a/p5/c;

.field public final l:Le/a/d4/c;

.field public final m:Le/a/i/f0/a;

.field public final n:Le/a/z4/a;

.field public final o:Le/a/i/f0/k/a;

.field public final p:Le/a/i/f0/l/p;

.field public final q:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;

.field public final r:Le/a/u3/g;

.field public final s:Le/a/p5/u;

.field public final t:Le/a/p5/g;

.field public final u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayDeque<",
            "Le/a/i/f0/l/u;",
            ">;>;"
        }
    .end annotation
.end field

.field public final v:Le/a/i/f0/j/a;

.field public final w:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/e0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/e/k/a;",
            ">;"
        }
    .end annotation
.end field

.field public final y:Le/a/i/b0/a;


# direct methods
.method public constructor <init>(Le/a/i/s;Ls1/w/f;Le/a/i/f0/l/o;Le/a/p5/c;Le/a/d4/c;Le/a/i/f0/a;Le/a/z4/a;Le/a/i/f0/k/a;Le/a/i/f0/l/p;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;Le/a/u3/g;Le/a/p5/u;Le/a/p5/g;Ljava/util/Map;Le/a/i/f0/j/a;Lo3/a;Lo3/a;Le/a/i/b0/a;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/s;",
            "Ls1/w/f;",
            "Le/a/i/f0/l/o;",
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayDeque<",
            "Le/a/i/f0/l/u;",
            ">;>;",
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

    move-object/from16 v14, p16

    move-object/from16 v0, p17

    const-string v0, "config"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileServicesSupport"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsAnalytics"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsSettings"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "campaignReceiver"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsRequester"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsConfigurationManager"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acsAdRequestIdGenerator"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectivityMonitor"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineAdManager"

    move-object/from16 v14, p17

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adCampaignsManager"

    move-object/from16 v14, p18

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v14, p17

    iput-object v1, v0, Le/a/i/f0/l/k;->h:Le/a/i/s;

    iput-object v2, v0, Le/a/i/f0/l/k;->i:Ls1/w/f;

    iput-object v3, v0, Le/a/i/f0/l/k;->j:Le/a/i/f0/l/o;

    iput-object v4, v0, Le/a/i/f0/l/k;->k:Le/a/p5/c;

    iput-object v5, v0, Le/a/i/f0/l/k;->l:Le/a/d4/c;

    iput-object v6, v0, Le/a/i/f0/l/k;->m:Le/a/i/f0/a;

    iput-object v7, v0, Le/a/i/f0/l/k;->n:Le/a/z4/a;

    iput-object v8, v0, Le/a/i/f0/l/k;->o:Le/a/i/f0/k/a;

    iput-object v9, v0, Le/a/i/f0/l/k;->p:Le/a/i/f0/l/p;

    iput-object v10, v0, Le/a/i/f0/l/k;->q:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;

    iput-object v11, v0, Le/a/i/f0/l/k;->r:Le/a/u3/g;

    iput-object v12, v0, Le/a/i/f0/l/k;->s:Le/a/p5/u;

    iput-object v13, v0, Le/a/i/f0/l/k;->t:Le/a/p5/g;

    move-object/from16 v1, p14

    move-object/from16 v2, p16

    iput-object v1, v0, Le/a/i/f0/l/k;->u:Ljava/util/Map;

    iput-object v15, v0, Le/a/i/f0/l/k;->v:Le/a/i/f0/j/a;

    iput-object v2, v0, Le/a/i/f0/l/k;->w:Lo3/a;

    iput-object v14, v0, Le/a/i/f0/l/k;->x:Lo3/a;

    move-object/from16 v2, p18

    iput-object v2, v0, Le/a/i/f0/l/k;->y:Le/a/i/b0/a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2
    invoke-static {v2, v3, v2}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object v4

    iput-object v4, v0, Le/a/i/f0/l/k;->a:Lq3/a/y;

    const/4 v4, 0x0

    .line 3
    invoke-static {v4, v3}, Lq3/a/b3/g;->a(ZI)Lq3/a/b3/c;

    move-result-object v4

    iput-object v4, v0, Le/a/i/f0/l/k;->b:Lq3/a/b3/c;

    .line 4
    invoke-static {v2, v3, v2}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object v2

    iput-object v2, v0, Le/a/i/f0/l/k;->c:Lq3/a/p1;

    .line 5
    new-instance v2, Le/a/i/f0/l/k$h;

    invoke-direct {v2, v0}, Le/a/i/f0/l/k$h;-><init>(Le/a/i/f0/l/k;)V

    invoke-static {v2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v2

    iput-object v2, v0, Le/a/i/f0/l/k;->d:Ls1/g;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual/range {p0 .. p0}, Le/a/i/f0/l/k;->m()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    invoke-static {v1, v2, v3}, Le/a/p5/s0/g;->Z(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayDeque;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    :goto_0
    iput-object v1, v0, Le/a/i/f0/l/k;->e:Ljava/util/ArrayDeque;

    .line 8
    sget-object v1, Le/a/i/f0/l/k$i;->b:Le/a/i/f0/l/k$i;

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, v0, Le/a/i/f0/l/k;->f:Ls1/g;

    return-void
.end method

.method public static synthetic r(Le/a/i/f0/l/k;Ljava/lang/String;Le/a/i/f0/l/c;Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 2

    and-int/lit8 v0, p5, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p3, v1

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v1

    .line 1
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Le/a/i/f0/l/k;->q(Ljava/lang/String;Le/a/i/f0/l/c;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static s(Le/a/i/f0/l/k;Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;JLe/a/i/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p12

    and-int/lit8 v3, v2, 0x8

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    move-object/from16 v3, p5

    :goto_0
    and-int/lit8 v5, v2, 0x10

    if-eqz v5, :cond_1

    move-object v14, v4

    goto :goto_1

    :cond_1
    move-object/from16 v14, p6

    :goto_1
    and-int/lit8 v5, v2, 0x40

    if-eqz v5, :cond_2

    move-object/from16 v17, v4

    goto :goto_2

    :cond_2
    move-object/from16 v17, p8

    :goto_2
    and-int/lit16 v5, v2, 0x80

    if-eqz v5, :cond_3

    move-object v5, v4

    goto :goto_3

    :cond_3
    move-object/from16 v5, p9

    :goto_3
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_4

    move-object/from16 v26, v4

    goto :goto_4

    :cond_4
    move-object/from16 v26, p10

    .line 1
    :goto_4
    iget-object v2, v0, Le/a/i/f0/l/k;->r:Le/a/u3/g;

    .line 2
    iget-object v6, v2, Le/a/u3/g;->Z4:Le/a/u3/g$a;

    sget-object v7, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v8, 0x13d

    aget-object v7, v7, v8

    invoke-virtual {v6, v2, v7}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Le/a/u3/b;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4
    new-instance v2, Le/a/i/d0/b0/a;

    .line 5
    iget-object v6, v1, Le/a/i/s;->e:Ljava/util/List;

    .line 6
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v6, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 8
    check-cast v9, Lcom/google/android/gms/ads/AdSize;

    .line 9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " X "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 10
    :cond_5
    iget-object v6, v1, Le/a/i/s;->f:Ljava/util/List;

    .line 11
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v6, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 13
    check-cast v8, Lcom/truecaller/ads/CustomTemplate;

    .line 14
    iget-object v8, v8, Lcom/truecaller/ads/CustomTemplate;->templateId:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_6
    invoke-static {v9}, Ls1/u/i;->a1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v6

    .line 15
    move-object v8, v6

    check-cast v8, Ljava/util/ArrayList;

    const-string v9, "native"

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-static {v7, v6}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    .line 17
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    .line 18
    iget-object v6, v0, Le/a/i/f0/l/k;->k:Le/a/p5/c;

    invoke-interface {v6}, Le/a/p5/c;->a()J

    move-result-wide v9

    sub-long v9, v9, p2

    .line 19
    invoke-virtual/range {p0 .. p0}, Le/a/i/f0/l/k;->m()Ljava/lang/String;

    move-result-object v11

    .line 20
    iget-object v6, v0, Le/a/i/f0/l/k;->s:Le/a/p5/u;

    invoke-interface {v6}, Le/a/p5/u;->b()Ljava/lang/String;

    move-result-object v13

    if-eqz v5, :cond_a

    .line 21
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v12, 0x50

    if-gt v6, v12, :cond_7

    goto :goto_8

    :cond_7
    const/16 v6, 0x3a

    const/4 v15, 0x2

    .line 22
    invoke-static {v5, v6, v4, v15}, Ls1/f0/v;->Z(Ljava/lang/String;CLjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 23
    invoke-static {v6, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    goto :goto_7

    :cond_8
    move-object v6, v4

    :goto_7
    if-eqz v6, :cond_9

    invoke-static {v6}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-static {v6, v12}, Ls1/f0/w;->n0(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_9
    invoke-static {v5, v12}, Ls1/f0/w;->n0(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    :goto_8
    move-object/from16 v18, v5

    goto :goto_9

    :cond_a
    move-object/from16 v18, v4

    :goto_9
    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 24
    invoke-virtual/range {p0 .. p0}, Le/a/i/f0/l/k;->m()Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_c

    .line 25
    iget-object v6, v0, Le/a/i/f0/l/k;->f:Ls1/g;

    invoke-interface {v6}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 26
    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    move-object v4, v3

    :cond_b
    if-eqz v4, :cond_c

    .line 27
    iget-object v3, v0, Le/a/i/f0/l/k;->v:Le/a/i/f0/j/a;

    invoke-interface {v3}, Le/a/i/f0/j/a;->reset()V

    move-object/from16 v21, v4

    goto :goto_a

    :cond_c
    const-string v3, "UUID.randomUUID().toString()"

    .line 28
    invoke-static {v3}, Le/d/c/a/a;->e2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    .line 29
    :goto_a
    sget-object v22, Le/a/i/c/a/u$b;->b:Le/a/i/c/a/u$b;

    .line 30
    iget-object v3, v0, Le/a/i/f0/l/k;->t:Le/a/p5/g;

    invoke-interface {v3}, Le/a/p5/g;->j()Ljava/lang/String;

    move-result-object v23

    .line 31
    iget-object v3, v0, Le/a/i/f0/l/k;->t:Le/a/p5/g;

    invoke-interface {v3}, Le/a/p5/g;->u()Ljava/lang/String;

    move-result-object v24

    .line 32
    iget-object v1, v1, Le/a/i/s;->q:Le/a/i/f;

    move-object/from16 v25, v1

    const-string v15, "Truecaller"

    const-string v16, "GAM"

    move-object v6, v2

    move-object/from16 v12, p7

    move-object/from16 v27, p11

    .line 33
    invoke-direct/range {v6 .. v27}, Le/a/i/d0/b0/a;-><init>(Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/i/c/a/u;Ljava/lang/String;Ljava/lang/String;Le/a/i/f;Ljava/util/List;Ljava/lang/String;)V

    .line 34
    iget-object v0, v0, Le/a/i/f0/l/k;->m:Le/a/i/f0/a;

    invoke-interface {v0, v2}, Le/a/i/f0/a;->a(Le/a/i/d0/b0/a;)V

    :cond_d
    return-void
.end method

.method public static z(Le/a/i/f0/l/k;ZLjava/lang/String;I)V
    .locals 7

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 1
    :cond_1
    new-instance v4, Le/a/i/f0/l/l;

    invoke-direct {v4, p0, p1, p2, v0}, Le/a/i/f0/l/l;-><init>(Le/a/i/f0/l/k;ZLjava/lang/String;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/i/f0/l/k;->a:Lq3/a/y;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Le/a/i/f0/l/k;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/f0/l/u;

    const/4 v2, -0x1

    .line 3
    invoke-virtual {v1, v2}, Le/a/i/f0/l/u;->a(I)Le/a/i/f0/m/d;

    move-result-object v2

    invoke-interface {v2}, Le/a/i/f0/m/d;->b()Le/a/i/f0/l/c;

    move-result-object v5

    invoke-interface {v2}, Le/a/i/f0/m/d;->a()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    const-string v4, "dropped"

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Le/a/i/f0/l/k;->r(Le/a/i/f0/l/k;Ljava/lang/String;Le/a/i/f0/l/c;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 4
    iget-object v1, v1, Le/a/i/f0/l/u;->c:Le/a/i/f0/m/d;

    invoke-interface {v1}, Le/a/i/f0/m/d;->destroy()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/i/f0/l/k;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method public b(IZLjava/lang/String;)Le/a/i/f0/m/d;
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/i/f0/l/k;->s:Le/a/p5/u;

    invoke-interface {v0}, Le/a/p5/u;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/i/f0/l/k;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/f0/l/u;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Le/a/i/f0/l/u;->a(I)Le/a/i/f0/m/d;

    move-result-object v1

    :cond_1
    if-eqz p2, :cond_2

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 3
    invoke-static {p0, p1, p3, p2}, Le/a/i/f0/l/k;->z(Le/a/i/f0/l/k;ZLjava/lang/String;I)V

    :cond_2
    if-eqz v1, :cond_3

    .line 4
    invoke-interface {v1}, Le/a/i/f0/m/d;->b()Le/a/i/f0/l/c;

    move-result-object v4

    invoke-interface {v1}, Le/a/i/f0/m/d;->a()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const-string v3, "used"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Le/a/i/f0/l/k;->r(Le/a/i/f0/l/k;Ljava/lang/String;Le/a/i/f0/l/c;Ljava/lang/String;Ljava/lang/Integer;I)V

    :cond_3
    return-object v1
.end method

.method public c(Le/a/i/s;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/i/f0/l/k;->h:Le/a/i/s;

    return-void
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/f0/l/k;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/f0/l/u;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Le/a/i/f0/l/u;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(ZLjava/lang/String;)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Le/a/i/f0/l/k;->g:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, p1, p2, v0}, Le/a/i/f0/l/k;->z(Le/a/i/f0/l/k;ZLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/i/f0/l/k;->i()V

    .line 2
    iget-object v0, p0, Le/a/i/f0/l/k;->s:Le/a/p5/u;

    invoke-interface {v0}, Le/a/p5/u;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/i/f0/l/k;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v3, Le/a/i/f0/l/l;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {v3, p0, v0, p1, v1}, Le/a/i/f0/l/l;-><init>(Le/a/i/f0/l/k;ZLjava/lang/String;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/f0/l/k;->i:Ls1/w/f;

    iget-object v1, p0, Le/a/i/f0/l/k;->a:Lq3/a/y;

    invoke-interface {v0, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public final h(ZLjava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/i/f0/l/k$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/i/f0/l/k$a;

    iget v1, v0, Le/a/i/f0/l/k$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/f0/l/k$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/f0/l/k$a;

    invoke-direct {v0, p0, p3}, Le/a/i/f0/l/k$a;-><init>(Le/a/i/f0/l/k;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/i/f0/l/k$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/f0/l/k$a;->e:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-boolean p1, v0, Le/a/i/f0/l/k$a;->i:Z

    iget-object p2, v0, Le/a/i/f0/l/k$a;->h:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object v2, v0, Le/a/i/f0/l/k$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/i/f0/l/k;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-boolean p1, v0, Le/a/i/f0/l/k$a;->i:Z

    iget-object p2, v0, Le/a/i/f0/l/k$a;->h:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object v2, v0, Le/a/i/f0/l/k$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/i/f0/l/k;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Le/a/i/f0/l/k$a;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/i/f0/l/k$a;->h:Ljava/lang/Object;

    iput-boolean p1, v0, Le/a/i/f0/l/k$a;->i:Z

    iput v6, v0, Le/a/i/f0/l/k$a;->e:I

    invoke-virtual {p0, p2, v0}, Le/a/i/f0/l/k;->p(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p0

    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 5
    sget-object p3, Le/a/i/h0/m;->a:Ls1/z/b/l;

    const-string v3, "Inside Ad Request with internet"

    .line 6
    invoke-interface {p3, v3}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p3, v2, Le/a/i/f0/l/k;->h:Le/a/i/s;

    .line 8
    iget-object p3, p3, Le/a/i/s;->c:Ljava/util/Map;

    const-string v3, "afterCallOfflineToOnlineAdUnitId"

    .line 9
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iput-object v7, v0, Le/a/i/f0/l/k$a;->g:Ljava/lang/Object;

    iput-object v7, v0, Le/a/i/f0/l/k$a;->h:Ljava/lang/Object;

    iput v5, v0, Le/a/i/f0/l/k$a;->e:I

    invoke-virtual {v2, p1, p2, p3, v0}, Le/a/i/f0/l/k;->t(ZLjava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_7

    return-object v1

    :cond_7
    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_5

    .line 10
    :cond_8
    iput-object v2, v0, Le/a/i/f0/l/k$a;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/i/f0/l/k$a;->h:Ljava/lang/Object;

    iput-boolean p1, v0, Le/a/i/f0/l/k$a;->i:Z

    iput v4, v0, Le/a/i/f0/l/k$a;->e:I

    invoke-virtual {v2, p2, v0}, Le/a/i/f0/l/k;->o(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_9

    return-object v1

    :cond_9
    :goto_3
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 11
    sget-object p3, Le/a/i/h0/m;->a:Ls1/z/b/l;

    const-string v4, "Inside Ad Request without internet"

    .line 12
    invoke-interface {p3, v4}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p3, v2, Le/a/i/f0/l/k;->h:Le/a/i/s;

    .line 14
    iget-object p3, p3, Le/a/i/s;->c:Ljava/util/Map;

    const-string v4, "afterCallOfflineAdUnitId"

    .line 15
    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iput-object v7, v0, Le/a/i/f0/l/k$a;->g:Ljava/lang/Object;

    iput-object v7, v0, Le/a/i/f0/l/k$a;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/i/f0/l/k$a;->e:I

    invoke-virtual {v2, p1, p2, p3, v0}, Le/a/i/f0/l/k;->t(ZLjava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_a

    return-object v1

    :cond_a
    :goto_4
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_5

    :cond_b
    const/4 p1, 0x0

    .line 16
    :goto_5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final i()V
    .locals 11

    .line 1
    iget-object v0, p0, Le/a/i/f0/l/k;->k:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->b()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Le/a/i/f0/l/k;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v3, "prefetchedAds.iterator()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/i/f0/l/u;

    .line 5
    iget-object v4, v3, Le/a/i/f0/l/u;->c:Le/a/i/f0/m/d;

    invoke-interface {v4}, Le/a/i/f0/m/d;->c()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v7, v3, Le/a/i/f0/l/u;->d:J

    sub-long v7, v0, v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    .line 6
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    const/4 v4, -0x1

    .line 7
    invoke-virtual {v3, v4}, Le/a/i/f0/l/u;->a(I)Le/a/i/f0/m/d;

    move-result-object v4

    invoke-interface {v4}, Le/a/i/f0/m/d;->b()Le/a/i/f0/l/c;

    move-result-object v7

    invoke-interface {v4}, Le/a/i/f0/m/d;->a()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x8

    const-string v6, "expired"

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Le/a/i/f0/l/k;->r(Le/a/i/f0/l/k;Ljava/lang/String;Le/a/i/f0/l/c;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 8
    iget-object v3, v3, Le/a/i/f0/l/u;->c:Le/a/i/f0/m/d;

    invoke-interface {v3}, Le/a/i/f0/m/d;->destroy()V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Le/a/i/f0/l/k;->y()V

    return-void
.end method

.method public final j(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/ads/campaigns/AdCampaigns;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/i/f0/l/k$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/i/f0/l/k$b;

    iget v1, v0, Le/a/i/f0/l/k$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/f0/l/k$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/f0/l/k$b;

    invoke-direct {v0, p0, p1}, Le/a/i/f0/l/k$b;-><init>(Le/a/i/f0/l/k;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/i/f0/l/k$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/f0/l/k$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/i/f0/l/k;->h:Le/a/i/s;

    .line 4
    iget-object p1, p1, Le/a/i/s;->g:Le/a/i/o;

    .line 5
    sget-object v2, Le/a/i/o;->c:Le/a/i/o;

    if-ne p1, v2, :cond_3

    const-string p1, "No campaignConfig for ads to fetch, should never happen."

    .line 6
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_2

    .line 7
    :cond_3
    iget-object v2, p0, Le/a/i/f0/l/k;->o:Le/a/i/f0/k/a;

    iput v3, v0, Le/a/i/f0/l/k$b;->e:I

    invoke-interface {v2, p1, v0}, Le/a/i/f0/k/a;->c(Le/a/i/o;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 8
    :cond_4
    :goto_1
    check-cast p1, Lcom/truecaller/ads/campaigns/AdCampaigns;

    :goto_2
    return-object p1
.end method

.method public final k(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/i/f0/l/k$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/i/f0/l/k$c;

    iget v1, v0, Le/a/i/f0/l/k$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/f0/l/k$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/f0/l/k$c;

    invoke-direct {v0, p0, p1}, Le/a/i/f0/l/k$c;-><init>(Le/a/i/f0/l/k;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/i/f0/l/k$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/f0/l/k$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/i/f0/l/k;->h:Le/a/i/s;

    .line 4
    iget-object p1, p1, Le/a/i/s;->g:Le/a/i/o;

    .line 5
    sget-object v2, Le/a/i/o;->c:Le/a/i/o;

    if-ne p1, v2, :cond_3

    const-string p1, "No campaignConfig for ads to fetch, should never happen."

    .line 6
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_2

    .line 7
    :cond_3
    iget-object v2, p0, Le/a/i/f0/l/k;->o:Le/a/i/f0/k/a;

    iput v3, v0, Le/a/i/f0/l/k$c;->e:I

    invoke-interface {v2, p1, v0}, Le/a/i/f0/k/a;->b(Le/a/i/o;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 8
    :cond_4
    :goto_1
    check-cast p1, [Ljava/lang/String;

    :goto_2
    return-object p1
.end method

.method public final l(Le/a/i/f0/m/d;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/f0/m/d;",
            ")",
            "Ljava/util/List<",
            "Le/a/l5/a/o3;",
            ">;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Le/a/i/f0/m/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Le/a/i/f0/m/h;

    invoke-virtual {p1}, Le/a/i/f0/m/h;->e()Lcom/google/android/gms/ads/nativead/NativeAd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Le/a/i/f0/m/a;

    if-eqz v0, :cond_1

    check-cast p1, Le/a/i/f0/m/a;

    .line 3
    iget-object p1, p1, Le/a/i/f0/m/b;->b:Ljava/lang/Object;

    .line 4
    check-cast p1, Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/BaseAdView;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_7

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/ResponseInfo;->getAdapterResponses()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string v0, "it"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_7

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Lcom/google/android/gms/ads/AdapterResponseInfo;

    .line 9
    new-instance v3, Le/a/l5/a/o3;

    .line 10
    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdapterResponseInfo;->getCredentials()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "class_name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdapterResponseInfo;->getAdapterClassName()Ljava/lang/String;

    move-result-object v4

    :goto_3
    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    const-string v4, "NA"

    .line 11
    :goto_4
    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdapterResponseInfo;->getLatencyMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdapterResponseInfo;->getAdError()Lcom/google/android/gms/ads/AdError;

    move-result-object v6

    const/4 v7, -0x1

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result v6

    goto :goto_5

    :cond_5
    move v6, v7

    :goto_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdapterResponseInfo;->getAdError()Lcom/google/android/gms/ads/AdError;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdError;->getCause()Lcom/google/android/gms/ads/AdError;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result v7

    :cond_6
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 14
    invoke-direct {v3, v4, v5, v6, v2}, Le/a/l5/a/o3;-><init>(Ljava/lang/CharSequence;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    return-object v1
.end method

.method public final m()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/f0/l/k;->r:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->O()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/i/f0/l/k;->h:Le/a/i/s;

    .line 2
    iget-object v0, v0, Le/a/i/s;->h:Le/a/i/b0/d/a;

    .line 3
    iget-object v0, v0, Le/a/i/b0/d/a;->b:Ljava/util/List;

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/i/f0/l/k;->h:Le/a/i/s;

    .line 6
    iget-object v0, v0, Le/a/i/s;->g:Le/a/i/o;

    .line 7
    iget-object v0, v0, Le/a/i/o;->b:Ljava/lang/String;

    const-string v1, "config.campaignConfig.placement"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public final n(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/i/f0/l/k$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/i/f0/l/k$d;

    iget v1, v0, Le/a/i/f0/l/k$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/f0/l/k$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/f0/l/k$d;

    invoke-direct {v0, p0, p1}, Le/a/i/f0/l/k$d;-><init>(Le/a/i/f0/l/k;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/i/f0/l/k$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/f0/l/k$d;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/i/f0/l/k;->r:Le/a/u3/g;

    invoke-virtual {p1}, Le/a/u3/g;->R()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5
    iget-object p1, p0, Le/a/i/f0/l/k;->s:Le/a/p5/u;

    invoke-interface {p1}, Le/a/p5/u;->d()Z

    move-result p1

    if-nez p1, :cond_4

    .line 6
    iget-object p1, p0, Le/a/i/f0/l/k;->x:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/i/e/k/a;

    iput v3, v0, Le/a/i/f0/l/k$d;->e:I

    invoke-interface {p1, v0}, Le/a/i/e/k/a;->i(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 7
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final o(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/i/f0/l/k$e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/i/f0/l/k$e;

    iget v1, v0, Le/a/i/f0/l/k$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/f0/l/k$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/f0/l/k$e;

    invoke-direct {v0, p0, p2}, Le/a/i/f0/l/k$e;-><init>(Le/a/i/f0/l/k;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/i/f0/l/k$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/f0/l/k$e;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/i/f0/l/k;->r:Le/a/u3/g;

    .line 5
    iget-object v2, p2, Le/a/u3/g;->N2:Le/a/u3/g$a;

    sget-object v4, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v5, 0xc3

    aget-object v4, v4, v5

    invoke-virtual {v2, p2, v4}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p2

    .line 6
    invoke-interface {p2}, Le/a/u3/b;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "afterCallScreen"

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "popupAfterCallScreen2.0"

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "fullScreenAfterCallScreen"

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 7
    :cond_3
    iget-object p1, p0, Le/a/i/f0/l/k;->s:Le/a/p5/u;

    invoke-interface {p1}, Le/a/p5/u;->d()Z

    move-result p1

    if-nez p1, :cond_5

    .line 8
    iget-object p1, p0, Le/a/i/f0/l/k;->x:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/i/e/k/a;

    iput v3, v0, Le/a/i/f0/l/k$e;->e:I

    invoke-interface {p1, v0}, Le/a/i/e/k/a;->i(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    .line 9
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final p(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/i/f0/l/k$f;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/i/f0/l/k$f;

    iget v1, v0, Le/a/i/f0/l/k$f;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/f0/l/k$f;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/f0/l/k$f;

    invoke-direct {v0, p0, p2}, Le/a/i/f0/l/k$f;-><init>(Le/a/i/f0/l/k;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/i/f0/l/k$f;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/f0/l/k$f;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/i/f0/l/k$f;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Le/a/i/f0/l/k$f;->g:Ljava/lang/Object;

    check-cast v2, Le/a/i/f0/l/k;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/i/f0/l/k;->r:Le/a/u3/g;

    .line 5
    iget-object v2, p2, Le/a/u3/g;->P3:Le/a/u3/g$a;

    sget-object v5, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v6, 0xfc

    aget-object v5, v5, v6

    invoke-virtual {v2, p2, v5}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p2

    .line 6
    invoke-interface {p2}, Le/a/u3/b;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 7
    iget-object p2, p0, Le/a/i/f0/l/k;->s:Le/a/p5/u;

    invoke-interface {p2}, Le/a/p5/u;->d()Z

    move-result p2

    if-nez p2, :cond_6

    .line 8
    iget-object p2, p0, Le/a/i/f0/l/k;->x:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/i/e/k/a;

    iput-object p0, v0, Le/a/i/f0/l/k$f;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/i/f0/l/k$f;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/i/f0/l/k$f;->e:I

    invoke-interface {p2, v0}, Le/a/i/e/k/a;->i(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_6

    .line 9
    iget-object p2, v2, Le/a/i/f0/l/k;->w:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/i/e0/a;

    .line 10
    invoke-virtual {v2}, Le/a/i/f0/l/k;->m()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-interface {p2, v2, p1}, Le/a/i/e0/a;->b(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    const/4 p1, 0x0

    iput-object p1, v0, Le/a/i/f0/l/k$f;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/i/f0/l/k$f;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/i/f0/l/k$f;->e:I

    .line 12
    invoke-interface {p2, v5, v6, v0}, Le/a/i/e0/a;->a(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    .line 13
    :cond_5
    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 14
    sget-object v0, Le/a/i/h0/m;->a:Ls1/z/b/l;

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitForOkInternet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 16
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    .line 18
    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final q(Ljava/lang/String;Le/a/i/f0/l/c;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/i/f0/l/k;->r:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->a5:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x13e

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Le/a/i/f0/l/k;->m:Le/a/i/f0/a;

    .line 5
    iget-object v3, p2, Le/a/i/f0/l/c;->g:Ljava/lang/String;

    .line 6
    iget-object v4, p2, Le/a/i/f0/l/c;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Le/a/i/f0/l/k;->m()Ljava/lang/String;

    move-result-object v5

    .line 8
    iget-object p2, p2, Le/a/i/f0/l/c;->a:Le/a/i/s;

    .line 9
    iget-object v6, p2, Le/a/i/s;->j:Ljava/lang/String;

    move-object v2, p1

    move-object v7, p3

    move-object v8, p4

    .line 10
    invoke-interface/range {v1 .. v8}, Le/a/i/f0/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    const-string v0, "ads_generic_event : "

    const-string v1, ", "

    .line 11
    invoke-static {v0, p1, v1}, Le/d/c/a/a;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 12
    iget-object v0, p2, Le/a/i/f0/l/c;->g:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object v0, p2, Le/a/i/f0/l/c;->b:Ljava/lang/String;

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le/a/i/f0/l/k;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object p2, p2, Le/a/i/f0/l/c;->a:Le/a/i/s;

    .line 17
    iget-object p2, p2, Le/a/i/s;->j:Ljava/lang/String;

    .line 18
    invoke-static {p1, p2, v1, p3, v1}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public final t(ZLjava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    instance-of v1, p4, Le/a/i/f0/l/k$g;

    if-eqz v1, :cond_0

    move-object v1, p4

    check-cast v1, Le/a/i/f0/l/k$g;

    iget v2, v1, Le/a/i/f0/l/k$g;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/i/f0/l/k$g;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/i/f0/l/k$g;

    invoke-direct {v1, p0, p4}, Le/a/i/f0/l/k$g;-><init>(Le/a/i/f0/l/k;Ls1/w/d;)V

    :goto_0
    iget-object p4, v1, Le/a/i/f0/l/k$g;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/i/f0/l/k$g;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Le/a/i/f0/l/k;->f()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-virtual {p0}, Le/a/i/f0/l/k;->d()Z

    move-result p4

    if-nez p4, :cond_3

    iget-object p1, p0, Le/a/i/f0/l/k;->j:Le/a/i/f0/l/o;

    .line 5
    iget-object p2, p0, Le/a/i/f0/l/k;->h:Le/a/i/s;

    .line 6
    invoke-interface {p1, p2}, Le/a/i/f0/l/o;->i(Le/a/i/s;)V

    return-object v0

    .line 7
    :cond_3
    invoke-virtual {p0, p1}, Le/a/i/f0/l/k;->u(Z)Z

    move-result p4

    if-nez p4, :cond_4

    return-object v0

    .line 8
    :cond_4
    iget-boolean p4, p0, Le/a/i/f0/l/k;->g:Z

    if-nez p4, :cond_5

    if-nez p1, :cond_5

    return-object v0

    .line 9
    :cond_5
    iget-object p1, p0, Le/a/i/f0/l/k;->n:Le/a/z4/a;

    const-string p4, "adsQaDisableRequests"

    invoke-interface {p1, p4}, Le/a/z4/a;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 10
    iget-object p1, p0, Le/a/i/f0/l/k;->j:Le/a/i/f0/l/o;

    iget-object p2, p0, Le/a/i/f0/l/k;->h:Le/a/i/s;

    invoke-interface {p1, p2}, Le/a/i/f0/l/o;->j(Le/a/i/s;)V

    .line 11
    iget-object p1, p0, Le/a/i/f0/l/k;->j:Le/a/i/f0/l/o;

    iget-object p2, p0, Le/a/i/f0/l/k;->h:Le/a/i/s;

    const/4 p3, -0x1

    invoke-interface {p1, p2, p3}, Le/a/i/f0/l/o;->k(Le/a/i/s;I)V

    return-object v0

    .line 12
    :cond_6
    iput v4, v1, Le/a/i/f0/l/k$g;->e:I

    invoke-virtual {p0, p2, p3, v1}, Le/a/i/f0/l/k;->x(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v2, :cond_7

    return-object v2

    :cond_7
    :goto_1
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v4

    .line 13
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final u(Z)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/i/f0/l/k;->e:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result p1

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Le/a/i/f0/l/k;->h:Le/a/i/s;

    .line 2
    iget p1, p1, Le/a/i/s;->d:I

    if-ge p1, v0, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/i/f0/l/k;->e:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result p1

    iget-object v1, p0, Le/a/i/f0/l/k;->h:Le/a/i/s;

    .line 4
    iget v1, v1, Le/a/i/s;->d:I

    if-ge p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final v(Le/a/i/f0/l/e;)Le/a/i/f0/m/d;
    .locals 2

    .line 1
    iget-object v0, p1, Le/a/i/f0/l/e;->a:Le/a/i/f0/l/c;

    .line 2
    instance-of v1, p1, Le/a/i/f0/l/e$c;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Le/a/i/f0/m/h;

    check-cast p1, Le/a/i/f0/l/e$c;

    .line 4
    iget-object p1, p1, Le/a/i/f0/l/e$c;->c:Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 5
    invoke-direct {v1, p1, v0}, Le/a/i/f0/m/h;-><init>(Lcom/google/android/gms/ads/nativead/NativeAd;Le/a/i/f0/l/c;)V

    goto :goto_0

    .line 6
    :cond_0
    instance-of v1, p1, Le/a/i/f0/l/e$a;

    if-eqz v1, :cond_1

    .line 7
    new-instance v1, Le/a/i/f0/m/a;

    check-cast p1, Le/a/i/f0/l/e$a;

    .line 8
    iget-object p1, p1, Le/a/i/f0/l/e$a;->c:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 9
    invoke-direct {v1, p1, v0}, Le/a/i/f0/m/a;-><init>(Lcom/google/android/gms/ads/admanager/AdManagerAdView;Le/a/i/f0/l/c;)V

    goto :goto_0

    .line 10
    :cond_1
    instance-of v1, p1, Le/a/i/f0/l/e$b;

    if-eqz v1, :cond_2

    .line 11
    new-instance v1, Le/a/i/f0/m/c;

    check-cast p1, Le/a/i/f0/l/e$b;

    .line 12
    iget-object p1, p1, Le/a/i/f0/l/e$b;->c:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    .line 13
    invoke-direct {v1, p1, v0}, Le/a/i/f0/m/c;-><init>(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;Le/a/i/f0/l/c;)V

    :goto_0
    return-object v1

    :cond_2
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method

.method public final w(Ljava/lang/String;Lcom/truecaller/ads/campaigns/AdCampaign$Style;Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLs1/w/d;)Ljava/lang/Object;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/ads/campaigns/AdCampaign$Style;",
            "Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/a/i/f0/l/d;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p9

    instance-of v1, v0, Le/a/i/f0/l/k$j;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Le/a/i/f0/l/k$j;

    iget v2, v1, Le/a/i/f0/l/k$j;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/i/f0/l/k$j;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/i/f0/l/k$j;

    invoke-direct {v1, v7, v0}, Le/a/i/f0/l/k$j;-><init>(Le/a/i/f0/l/k;Ls1/w/d;)V

    :goto_0
    move-object v0, v1

    iget-object v1, v0, Le/a/i/f0/l/k$j;->d:Ljava/lang/Object;

    sget-object v8, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/f0/l/k$j;->e:I

    const/4 v9, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v9, :cond_1

    iget-wide v2, v0, Le/a/i/f0/l/k$j;->k:J

    iget-object v4, v0, Le/a/i/f0/l/k$j;->j:Ljava/lang/Object;

    check-cast v4, Le/a/i/f0/l/c;

    iget-object v5, v0, Le/a/i/f0/l/k$j;->i:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v0, Le/a/i/f0/l/k$j;->h:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v0, v0, Le/a/i/f0/l/k$j;->g:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Le/a/i/f0/l/k;

    :try_start_0
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Le/a/i/f0/l/d; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v4

    move-wide/from16 v25, v2

    move-object v3, v5

    move-wide/from16 v4, v25

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-wide v10, v2

    move-object v15, v5

    move-object/from16 v19, v6

    goto/16 :goto_9

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance v6, Le/a/i/f0/l/c;

    .line 5
    iget-object v11, v7, Le/a/i/f0/l/k;->h:Le/a/i/s;

    .line 6
    iget-object v1, v7, Le/a/i/f0/l/k;->q:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;

    invoke-interface {v1}, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;->d()Z

    move-result v16

    .line 7
    iget-object v1, v7, Le/a/i/f0/l/k;->d:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    .line 8
    invoke-virtual/range {p0 .. p0}, Le/a/i/f0/l/k;->m()Ljava/lang/String;

    move-result-object v1

    .line 9
    iget-object v2, v7, Le/a/i/f0/l/k;->f:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v1, v7, Le/a/i/f0/l/k;->v:Le/a/i/f0/j/a;

    invoke-interface {v1}, Le/a/i/f0/j/a;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const-string v1, "UUID.randomUUID().toString()"

    invoke-static {v1}, Le/d/c/a/a;->e2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object/from16 v18, v1

    move-object v10, v6

    move-object/from16 v12, p1

    move-object/from16 v13, p4

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v19, p5

    .line 11
    invoke-direct/range {v10 .. v19}, Le/a/i/f0/l/c;-><init>(Le/a/i/s;Ljava/lang/String;[Ljava/lang/String;Lcom/truecaller/ads/campaigns/AdCampaign$Style;Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;ZZLjava/lang/String;Ljava/lang/String;)V

    :try_start_1
    const-string v2, "requested"
    :try_end_1
    .catch Le/a/i/f0/l/d; {:try_start_1 .. :try_end_1} :catch_6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v10, 0xc

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v11, v6

    move v6, v10

    .line 12
    :try_start_2
    invoke-static/range {v1 .. v6}, Le/a/i/f0/l/k;->r(Le/a/i/f0/l/k;Ljava/lang/String;Le/a/i/f0/l/c;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 13
    iget-object v1, v7, Le/a/i/f0/l/k;->p:Le/a/i/f0/l/p;

    iput-object v7, v0, Le/a/i/f0/l/k$j;->g:Ljava/lang/Object;
    :try_end_2
    .catch Le/a/i/f0/l/d; {:try_start_2 .. :try_end_2} :catch_5

    move-object/from16 v2, p1

    :try_start_3
    iput-object v2, v0, Le/a/i/f0/l/k$j;->h:Ljava/lang/Object;
    :try_end_3
    .catch Le/a/i/f0/l/d; {:try_start_3 .. :try_end_3} :catch_4

    move-object/from16 v3, p6

    :try_start_4
    iput-object v3, v0, Le/a/i/f0/l/k$j;->i:Ljava/lang/Object;

    iput-object v11, v0, Le/a/i/f0/l/k$j;->j:Ljava/lang/Object;
    :try_end_4
    .catch Le/a/i/f0/l/d; {:try_start_4 .. :try_end_4} :catch_3

    move-wide/from16 v4, p7

    :try_start_5
    iput-wide v4, v0, Le/a/i/f0/l/k$j;->k:J

    iput v9, v0, Le/a/i/f0/l/k$j;->e:I

    invoke-interface {v1, v11, v0}, Le/a/i/f0/l/p;->b(Le/a/i/f0/l/c;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1
    :try_end_5
    .catch Le/a/i/f0/l/d; {:try_start_5 .. :try_end_5} :catch_2

    if-ne v1, v8, :cond_6

    return-object v8

    :cond_6
    move-object v6, v2

    move-object v8, v7

    .line 14
    :goto_3
    :try_start_6
    check-cast v1, Le/a/i/f0/l/e;

    .line 15
    invoke-virtual {v8, v1}, Le/a/i/f0/l/k;->v(Le/a/i/f0/l/e;)Le/a/i/f0/m/d;

    move-result-object v0

    .line 16
    invoke-virtual {v8, v0}, Le/a/i/f0/l/k;->l(Le/a/i/f0/m/d;)Ljava/util/List;

    move-result-object v22

    .line 17
    invoke-static {v8}, Ls1/a/a/a/v0/f/d;->Q1(Lq3/a/i0;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v1, "canceled"

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xc

    move-object/from16 p1, v8

    move-object/from16 p2, v1

    move-object/from16 p3, v11

    move-object/from16 p4, v2

    move-object/from16 p5, v9

    move/from16 p6, v10

    .line 18
    invoke-static/range {p1 .. p6}, Le/a/i/f0/l/k;->r(Le/a/i/f0/l/k;Ljava/lang/String;Le/a/i/f0/l/c;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 19
    sget-object v13, Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;->FAILURE:Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;

    .line 20
    iget-object v1, v8, Le/a/i/f0/l/k;->h:Le/a/i/s;

    .line 21
    iget-object v2, v11, Le/a/i/f0/l/c;->g:Ljava/lang/String;

    const/16 v18, 0x0

    const/4 v9, -0x6

    .line 22
    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v9}, Ljava/lang/Integer;-><init>(I)V

    const-string v21, "Ad is cancelled"

    const/16 v24, 0x10

    move-object v12, v8

    move-wide v14, v4

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v10

    move-object/from16 v23, v6

    .line 23
    invoke-static/range {v12 .. v24}, Le/a/i/f0/l/k;->s(Le/a/i/f0/l/k;Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;JLe/a/i/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V

    .line 24
    invoke-interface {v0}, Le/a/i/f0/m/d;->destroy()V

    goto :goto_4

    .line 25
    :cond_7
    new-instance v2, Le/a/i/f0/l/u;

    iget-object v9, v8, Le/a/i/f0/l/k;->k:Le/a/p5/c;

    invoke-interface {v9}, Le/a/p5/c;->b()J

    move-result-wide v9

    invoke-direct {v2, v0, v9, v10}, Le/a/i/f0/l/u;-><init>(Le/a/i/f0/m/d;J)V

    .line 26
    iget-object v9, v8, Le/a/i/f0/l/k;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v9, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v9, v8, Le/a/i/f0/l/k;->u:Ljava/util/Map;

    if-eqz v9, :cond_8

    .line 28
    invoke-virtual {v8}, Le/a/i/f0/l/k;->m()Ljava/lang/String;

    move-result-object v10

    iget-object v12, v8, Le/a/i/f0/l/k;->e:Ljava/util/ArrayDeque;

    invoke-interface {v9, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_8
    iget-object v1, v1, Le/a/i/f0/l/e;->b:Le/a/i/f0/l/b;

    .line 30
    new-instance v9, Le/a/i/f0/l/m;

    iget-object v10, v8, Le/a/i/f0/l/k;->j:Le/a/i/f0/l/o;

    new-instance v12, Le/a/i/f0/l/k$k;

    invoke-direct {v12, v8}, Le/a/i/f0/l/k$k;-><init>(Le/a/i/f0/l/k;)V

    invoke-direct {v9, v2, v10, v12}, Le/a/i/f0/l/m;-><init>(Le/a/i/f0/l/u;Le/a/i/f0/l/o;Ls1/z/b/r;)V

    .line 31
    iput-object v9, v1, Le/a/i/f0/l/b;->b:Le/a/i/f0/l/a;

    .line 32
    sget-object v13, Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;->SUCCESS:Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;

    .line 33
    iget-object v1, v8, Le/a/i/f0/l/k;->h:Le/a/i/s;

    .line 34
    iget-object v2, v11, Le/a/i/f0/l/c;->g:Ljava/lang/String;

    .line 35
    invoke-interface {v0}, Le/a/i/f0/m/d;->getType()Lcom/truecaller/ads/provider/holders/AdHolderType;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0xc0

    move-object v12, v8

    move-wide v14, v4

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object/from16 v23, v6

    .line 36
    invoke-static/range {v12 .. v24}, Le/a/i/f0/l/k;->s(Le/a/i/f0/l/k;Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;JLe/a/i/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V

    const-string v1, "loaded"

    .line 37
    invoke-interface {v0}, Le/a/i/f0/m/d;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v9, 0x8

    move-object/from16 p1, v8

    move-object/from16 p2, v1

    move-object/from16 p3, v11

    move-object/from16 p4, v0

    move-object/from16 p5, v2

    move/from16 p6, v9

    invoke-static/range {p1 .. p6}, Le/a/i/f0/l/k;->r(Le/a/i/f0/l/k;Ljava/lang/String;Le/a/i/f0/l/c;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 38
    invoke-virtual {v8}, Le/a/i/f0/l/k;->y()V
    :try_end_6
    .catch Le/a/i/f0/l/d; {:try_start_6 .. :try_end_6} :catch_1

    .line 39
    :goto_4
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    :goto_5
    move-wide/from16 v4, p7

    goto :goto_7

    :catch_4
    move-exception v0

    :goto_6
    move-object/from16 v3, p6

    goto :goto_5

    :catch_5
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_6

    :catch_6
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v3, p6

    move-wide/from16 v4, p7

    move-object v11, v6

    :goto_7
    move-object v6, v2

    move-object v8, v7

    :goto_8
    move-object v15, v3

    move-object/from16 v19, v6

    move-wide/from16 v25, v4

    move-object v4, v11

    move-wide/from16 v10, v25

    :goto_9
    const/4 v1, 0x0

    .line 40
    iget v2, v0, Le/a/i/f0/l/d;->a:I

    .line 41
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x4

    const-string v5, "failed"

    move-object/from16 p1, v8

    move-object/from16 p2, v5

    move-object/from16 p3, v4

    move-object/from16 p4, v1

    move-object/from16 p5, v3

    move/from16 p6, v2

    .line 42
    invoke-static/range {p1 .. p6}, Le/a/i/f0/l/k;->r(Le/a/i/f0/l/k;Ljava/lang/String;Le/a/i/f0/l/c;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 43
    sget-object v9, Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;->FAILURE:Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;

    .line 44
    iget-object v12, v8, Le/a/i/f0/l/k;->h:Le/a/i/s;

    .line 45
    iget-object v13, v4, Le/a/i/f0/l/c;->g:Ljava/lang/String;

    const/4 v14, 0x0

    .line 46
    iget v1, v0, Le/a/i/f0/l/d;->a:I

    .line 47
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 48
    iget-object v1, v0, Le/a/i/f0/l/d;->b:Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v20, 0x110

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    .line 49
    invoke-static/range {v8 .. v20}, Le/a/i/f0/l/k;->s(Le/a/i/f0/l/k;Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;JLe/a/i/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V

    .line 50
    throw v0
.end method

.method public final x(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v5, v3, Le/a/i/f0/l/k$l;

    if-eqz v5, :cond_0

    move-object v5, v3

    check-cast v5, Le/a/i/f0/l/k$l;

    iget v6, v5, Le/a/i/f0/l/k$l;->e:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_0

    sub-int/2addr v6, v7

    iput v6, v5, Le/a/i/f0/l/k$l;->e:I

    goto :goto_0

    :cond_0
    new-instance v5, Le/a/i/f0/l/k$l;

    invoke-direct {v5, v1, v3}, Le/a/i/f0/l/k$l;-><init>(Le/a/i/f0/l/k;Ls1/w/d;)V

    :goto_0
    iget-object v3, v5, Le/a/i/f0/l/k$l;->d:Ljava/lang/Object;

    sget-object v6, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v7, v5, Le/a/i/f0/l/k$l;->e:I

    const/4 v8, 0x3

    const/4 v9, 0x4

    const/4 v10, 0x5

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v7, :cond_6

    if-eq v7, v12, :cond_5

    if-eq v7, v11, :cond_4

    if-eq v7, v8, :cond_3

    if-eq v7, v9, :cond_2

    if-ne v7, v10, :cond_1

    iget v2, v5, Le/a/i/f0/l/k$l;->r:I

    iget v7, v5, Le/a/i/f0/l/k$l;->q:I

    iget v8, v5, Le/a/i/f0/l/k$l;->p:I

    iget-wide v11, v5, Le/a/i/f0/l/k$l;->o:J

    iget-object v0, v5, Le/a/i/f0/l/k$l;->m:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/util/Iterator;

    iget-object v0, v5, Le/a/i/f0/l/k$l;->l:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Ls1/z/c/c0;

    iget-object v0, v5, Le/a/i/f0/l/k$l;->k:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Ls1/z/c/c0;

    iget-object v0, v5, Le/a/i/f0/l/k$l;->j:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ls1/z/c/c0;

    iget-object v0, v5, Le/a/i/f0/l/k$l;->i:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    iget-object v0, v5, Le/a/i/f0/l/k$l;->h:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    iget-object v0, v5, Le/a/i/f0/l/k$l;->g:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Le/a/i/f0/l/k;

    :try_start_0
    invoke-static {v3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Le/a/i/f0/l/d; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v20, v18

    move-object/from16 v1, v19

    move/from16 v18, v10

    goto/16 :goto_c

    :catch_0
    move-exception v0

    move v3, v7

    move-object v13, v14

    move-object/from16 v7, v17

    move-object/from16 v1, v19

    move v14, v8

    move-object/from16 v8, v16

    move-object/from16 v27, v15

    move-object v15, v6

    move-object/from16 v6, v18

    move/from16 v18, v10

    move-wide v10, v11

    move-object v12, v9

    move-object/from16 v9, v27

    goto/16 :goto_11

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-wide v7, v5, Le/a/i/f0/l/k$l;->o:J

    iget-object v0, v5, Le/a/i/f0/l/k$l;->m:Ljava/lang/Object;

    check-cast v0, Ls1/z/c/c0;

    iget-object v2, v5, Le/a/i/f0/l/k$l;->l:Ljava/lang/Object;

    check-cast v2, Ls1/z/c/c0;

    iget-object v9, v5, Le/a/i/f0/l/k$l;->k:Ljava/lang/Object;

    check-cast v9, Ls1/z/c/c0;

    iget-object v14, v5, Le/a/i/f0/l/k$l;->j:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v5, Le/a/i/f0/l/k$l;->i:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    iget-object v10, v5, Le/a/i/f0/l/k$l;->h:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v5, Le/a/i/f0/l/k$l;->g:Ljava/lang/Object;

    check-cast v11, Le/a/i/f0/l/k;

    invoke-static {v3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v12, v0

    move-object v0, v10

    goto/16 :goto_6

    :cond_3
    iget-wide v7, v5, Le/a/i/f0/l/k$l;->o:J

    iget-object v0, v5, Le/a/i/f0/l/k$l;->n:Ljava/lang/Object;

    check-cast v0, Ls1/z/c/c0;

    iget-object v2, v5, Le/a/i/f0/l/k$l;->m:Ljava/lang/Object;

    check-cast v2, Ls1/z/c/c0;

    iget-object v9, v5, Le/a/i/f0/l/k$l;->l:Ljava/lang/Object;

    check-cast v9, Ls1/z/c/c0;

    iget-object v10, v5, Le/a/i/f0/l/k$l;->k:Ljava/lang/Object;

    check-cast v10, Ls1/z/c/c0;

    iget-object v11, v5, Le/a/i/f0/l/k$l;->j:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v14, v5, Le/a/i/f0/l/k$l;->i:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v5, Le/a/i/f0/l/k$l;->h:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    iget-object v12, v5, Le/a/i/f0/l/k$l;->g:Ljava/lang/Object;

    check-cast v12, Le/a/i/f0/l/k;

    invoke-static {v3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_4
    iget-wide v7, v5, Le/a/i/f0/l/k$l;->o:J

    iget-object v0, v5, Le/a/i/f0/l/k$l;->m:Ljava/lang/Object;

    check-cast v0, Ls1/z/c/c0;

    iget-object v2, v5, Le/a/i/f0/l/k$l;->l:Ljava/lang/Object;

    check-cast v2, Ls1/z/c/c0;

    iget-object v9, v5, Le/a/i/f0/l/k$l;->k:Ljava/lang/Object;

    check-cast v9, Ls1/z/c/c0;

    iget-object v10, v5, Le/a/i/f0/l/k$l;->j:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v5, Le/a/i/f0/l/k$l;->i:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v5, Le/a/i/f0/l/k$l;->h:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v14, v5, Le/a/i/f0/l/k$l;->g:Ljava/lang/Object;

    check-cast v14, Le/a/i/f0/l/k;

    invoke-static {v3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-wide/from16 v27, v7

    move-object v7, v2

    move-object v2, v11

    move-object v8, v14

    move-object v14, v10

    move-wide/from16 v10, v27

    goto/16 :goto_2

    :cond_5
    iget-wide v7, v5, Le/a/i/f0/l/k$l;->o:J

    iget-object v0, v5, Le/a/i/f0/l/k$l;->n:Ljava/lang/Object;

    check-cast v0, Ls1/z/c/c0;

    iget-object v2, v5, Le/a/i/f0/l/k$l;->m:Ljava/lang/Object;

    check-cast v2, Ls1/z/c/c0;

    iget-object v9, v5, Le/a/i/f0/l/k$l;->l:Ljava/lang/Object;

    check-cast v9, Ls1/z/c/c0;

    iget-object v10, v5, Le/a/i/f0/l/k$l;->k:Ljava/lang/Object;

    check-cast v10, Ls1/z/c/c0;

    iget-object v11, v5, Le/a/i/f0/l/k$l;->j:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v5, Le/a/i/f0/l/k$l;->i:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v14, v5, Le/a/i/f0/l/k$l;->h:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v5, Le/a/i/f0/l/k$l;->g:Ljava/lang/Object;

    check-cast v15, Le/a/i/f0/l/k;

    invoke-static {v3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_6
    invoke-static {v3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v3, v1, Le/a/i/f0/l/k;->k:Le/a/p5/c;

    invoke-interface {v3}, Le/a/p5/c;->a()J

    move-result-wide v10

    .line 5
    iget-object v3, v1, Le/a/i/f0/l/k;->s:Le/a/p5/u;

    invoke-interface {v3}, Le/a/p5/u;->b()Ljava/lang/String;

    move-result-object v14

    .line 6
    new-instance v3, Ls1/z/c/c0;

    invoke-direct {v3}, Ls1/z/c/c0;-><init>()V

    iput-object v13, v3, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 7
    new-instance v7, Ls1/z/c/c0;

    invoke-direct {v7}, Ls1/z/c/c0;-><init>()V

    iput-object v13, v7, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 8
    new-instance v12, Ls1/z/c/c0;

    invoke-direct {v12}, Ls1/z/c/c0;-><init>()V

    iput-object v13, v12, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 9
    iget-object v15, v1, Le/a/i/f0/l/k;->r:Le/a/u3/g;

    invoke-virtual {v15}, Le/a/u3/g;->O()Le/a/u3/b;

    move-result-object v15

    invoke-interface {v15}, Le/a/u3/b;->isEnabled()Z

    move-result v15

    const/16 v18, 0x15e

    if-eqz v15, :cond_d

    .line 10
    iget-object v8, v1, Le/a/i/f0/l/k;->r:Le/a/u3/g;

    .line 11
    iget-object v9, v8, Le/a/u3/g;->G5:Le/a/u3/g$a;

    sget-object v15, Le/a/u3/g;->p6:[Ls1/a/l;

    aget-object v15, v15, v18

    invoke-virtual {v9, v8, v15}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v8

    .line 12
    invoke-interface {v8}, Le/a/u3/b;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 13
    iput-object v1, v5, Le/a/i/f0/l/k$l;->g:Ljava/lang/Object;

    iput-object v0, v5, Le/a/i/f0/l/k$l;->h:Ljava/lang/Object;

    iput-object v2, v5, Le/a/i/f0/l/k$l;->i:Ljava/lang/Object;

    iput-object v14, v5, Le/a/i/f0/l/k$l;->j:Ljava/lang/Object;

    iput-object v3, v5, Le/a/i/f0/l/k$l;->k:Ljava/lang/Object;

    iput-object v7, v5, Le/a/i/f0/l/k$l;->l:Ljava/lang/Object;

    iput-object v12, v5, Le/a/i/f0/l/k$l;->m:Ljava/lang/Object;

    iput-object v12, v5, Le/a/i/f0/l/k$l;->n:Ljava/lang/Object;

    iput-wide v10, v5, Le/a/i/f0/l/k$l;->o:J

    const/4 v8, 0x1

    iput v8, v5, Le/a/i/f0/l/k$l;->e:I

    .line 14
    iget-object v8, v1, Le/a/i/f0/l/k;->y:Le/a/i/b0/a;

    iget-object v9, v1, Le/a/i/f0/l/k;->h:Le/a/i/s;

    .line 15
    iget-object v9, v9, Le/a/i/s;->h:Le/a/i/b0/d/a;

    .line 16
    invoke-interface {v8, v9, v5}, Le/a/i/b0/a;->c(Le/a/i/b0/d/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v6, :cond_7

    return-object v6

    :cond_7
    move-object v15, v1

    move-object v9, v7

    move-object/from16 v27, v14

    move-object v14, v0

    move-object v0, v12

    move-object v12, v2

    move-object v2, v0

    move-wide/from16 v28, v10

    move-object v10, v3

    move-object v3, v8

    move-wide/from16 v7, v28

    move-object/from16 v11, v27

    .line 17
    :goto_1
    check-cast v3, [Ljava/lang/String;

    iput-object v3, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    goto/16 :goto_9

    .line 18
    :cond_8
    iput-object v1, v5, Le/a/i/f0/l/k$l;->g:Ljava/lang/Object;

    iput-object v0, v5, Le/a/i/f0/l/k$l;->h:Ljava/lang/Object;

    iput-object v2, v5, Le/a/i/f0/l/k$l;->i:Ljava/lang/Object;

    iput-object v14, v5, Le/a/i/f0/l/k$l;->j:Ljava/lang/Object;

    iput-object v3, v5, Le/a/i/f0/l/k$l;->k:Ljava/lang/Object;

    iput-object v7, v5, Le/a/i/f0/l/k$l;->l:Ljava/lang/Object;

    iput-object v12, v5, Le/a/i/f0/l/k$l;->m:Ljava/lang/Object;

    iput-wide v10, v5, Le/a/i/f0/l/k$l;->o:J

    const/4 v8, 0x2

    iput v8, v5, Le/a/i/f0/l/k$l;->e:I

    .line 19
    iget-object v8, v1, Le/a/i/f0/l/k;->y:Le/a/i/b0/a;

    iget-object v9, v1, Le/a/i/f0/l/k;->h:Le/a/i/s;

    .line 20
    iget-object v9, v9, Le/a/i/s;->h:Le/a/i/b0/d/a;

    .line 21
    invoke-interface {v8, v9, v5}, Le/a/i/b0/a;->a(Le/a/i/b0/d/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v6, :cond_9

    return-object v6

    :cond_9
    move-object v9, v3

    move-object v3, v8

    move-object v8, v1

    move-object/from16 v27, v12

    move-object v12, v0

    move-object/from16 v0, v27

    .line 22
    :goto_2
    check-cast v3, Lcom/truecaller/ads/campaigns/AdCampaigns;

    if-eqz v3, :cond_c

    .line 23
    invoke-virtual {v3}, Lcom/truecaller/ads/campaigns/AdCampaigns;->c()Lcom/truecaller/ads/campaigns/AdCampaign;

    move-result-object v15

    if-eqz v15, :cond_a

    iget-object v15, v15, Lcom/truecaller/ads/campaigns/AdCampaign;->b:Lcom/truecaller/ads/campaigns/AdCampaign$Style;

    goto :goto_3

    :cond_a
    move-object v15, v13

    :goto_3
    iput-object v15, v9, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 24
    invoke-virtual {v3}, Lcom/truecaller/ads/campaigns/AdCampaigns;->b()Lcom/truecaller/ads/campaigns/AdCampaign;

    move-result-object v15

    if-eqz v15, :cond_b

    iget-object v15, v15, Lcom/truecaller/ads/campaigns/AdCampaign;->c:Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;

    goto :goto_4

    :cond_b
    move-object v15, v13

    :goto_4
    iput-object v15, v7, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 25
    invoke-virtual {v3}, Lcom/truecaller/ads/campaigns/AdCampaigns;->a()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    :cond_c
    move-object v15, v8

    move-object/from16 v27, v2

    move-object v2, v0

    move-object/from16 v28, v12

    move-object/from16 v12, v27

    move-object/from16 v29, v9

    move-object v9, v7

    move-wide v7, v10

    move-object v11, v14

    move-object/from16 v10, v29

    move-object/from16 v14, v28

    goto/16 :goto_9

    .line 26
    :cond_d
    iget-object v15, v1, Le/a/i/f0/l/k;->r:Le/a/u3/g;

    .line 27
    iget-object v13, v15, Le/a/u3/g;->G5:Le/a/u3/g$a;

    sget-object v20, Le/a/u3/g;->p6:[Ls1/a/l;

    aget-object v9, v20, v18

    invoke-virtual {v13, v15, v9}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v9

    .line 28
    invoke-interface {v9}, Le/a/u3/b;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 29
    iput-object v1, v5, Le/a/i/f0/l/k$l;->g:Ljava/lang/Object;

    iput-object v0, v5, Le/a/i/f0/l/k$l;->h:Ljava/lang/Object;

    iput-object v2, v5, Le/a/i/f0/l/k$l;->i:Ljava/lang/Object;

    iput-object v14, v5, Le/a/i/f0/l/k$l;->j:Ljava/lang/Object;

    iput-object v3, v5, Le/a/i/f0/l/k$l;->k:Ljava/lang/Object;

    iput-object v7, v5, Le/a/i/f0/l/k$l;->l:Ljava/lang/Object;

    iput-object v12, v5, Le/a/i/f0/l/k$l;->m:Ljava/lang/Object;

    iput-object v12, v5, Le/a/i/f0/l/k$l;->n:Ljava/lang/Object;

    iput-wide v10, v5, Le/a/i/f0/l/k$l;->o:J

    iput v8, v5, Le/a/i/f0/l/k$l;->e:I

    invoke-virtual {v1, v5}, Le/a/i/f0/l/k;->k(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v6, :cond_e

    return-object v6

    :cond_e
    move-object v15, v0

    move-object v9, v7

    move-object v0, v12

    move-object v12, v1

    move-object/from16 v27, v14

    move-object v14, v2

    move-object v2, v0

    move-wide/from16 v28, v10

    move-object v10, v3

    move-object v3, v8

    move-wide/from16 v7, v28

    move-object/from16 v11, v27

    :goto_5
    check-cast v3, [Ljava/lang/String;

    iput-object v3, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    move-object/from16 v27, v15

    move-object v15, v12

    move-object v12, v14

    move-object/from16 v14, v27

    goto :goto_9

    .line 30
    :cond_f
    iput-object v1, v5, Le/a/i/f0/l/k$l;->g:Ljava/lang/Object;

    iput-object v0, v5, Le/a/i/f0/l/k$l;->h:Ljava/lang/Object;

    iput-object v2, v5, Le/a/i/f0/l/k$l;->i:Ljava/lang/Object;

    iput-object v14, v5, Le/a/i/f0/l/k$l;->j:Ljava/lang/Object;

    iput-object v3, v5, Le/a/i/f0/l/k$l;->k:Ljava/lang/Object;

    iput-object v7, v5, Le/a/i/f0/l/k$l;->l:Ljava/lang/Object;

    iput-object v12, v5, Le/a/i/f0/l/k$l;->m:Ljava/lang/Object;

    iput-wide v10, v5, Le/a/i/f0/l/k$l;->o:J

    const/4 v8, 0x4

    iput v8, v5, Le/a/i/f0/l/k$l;->e:I

    invoke-virtual {v1, v5}, Le/a/i/f0/l/k;->j(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v6, :cond_10

    return-object v6

    :cond_10
    move-object v15, v2

    move-object v9, v3

    move-object v2, v7

    move-object v3, v8

    move-wide v7, v10

    move-object v11, v1

    :goto_6
    check-cast v3, Lcom/truecaller/ads/campaigns/AdCampaigns;

    if-eqz v3, :cond_13

    .line 31
    invoke-virtual {v3}, Lcom/truecaller/ads/campaigns/AdCampaigns;->c()Lcom/truecaller/ads/campaigns/AdCampaign;

    move-result-object v10

    if-eqz v10, :cond_11

    iget-object v10, v10, Lcom/truecaller/ads/campaigns/AdCampaign;->b:Lcom/truecaller/ads/campaigns/AdCampaign$Style;

    goto :goto_7

    :cond_11
    const/4 v10, 0x0

    :goto_7
    iput-object v10, v9, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 32
    invoke-virtual {v3}, Lcom/truecaller/ads/campaigns/AdCampaigns;->b()Lcom/truecaller/ads/campaigns/AdCampaign;

    move-result-object v10

    if-eqz v10, :cond_12

    iget-object v10, v10, Lcom/truecaller/ads/campaigns/AdCampaign;->c:Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;

    goto :goto_8

    :cond_12
    const/4 v10, 0x0

    :goto_8
    iput-object v10, v2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 33
    invoke-virtual {v3}, Lcom/truecaller/ads/campaigns/AdCampaigns;->a()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Ls1/z/c/c0;->a:Ljava/lang/Object;

    :cond_13
    move-object v10, v9

    move-object v9, v2

    move-object v2, v12

    move-object v12, v15

    move-object v15, v11

    move-object v11, v14

    move-object v14, v0

    .line 34
    :goto_9
    iget-object v0, v15, Le/a/i/f0/l/k;->j:Le/a/i/f0/l/o;

    iget-object v3, v15, Le/a/i/f0/l/k;->h:Le/a/i/s;

    invoke-interface {v0, v3}, Le/a/i/f0/l/o;->j(Le/a/i/s;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    if-eqz v12, :cond_14

    goto :goto_a

    .line 35
    :cond_14
    iget-object v3, v15, Le/a/i/f0/l/k;->h:Le/a/i/s;

    .line 36
    iget-object v12, v3, Le/a/i/s;->a:Ljava/lang/String;

    :goto_a
    const/4 v3, 0x0

    aput-object v12, v0, v3

    .line 37
    iget-object v12, v15, Le/a/i/f0/l/k;->h:Le/a/i/s;

    .line 38
    iget-object v12, v12, Le/a/i/s;->b:Ljava/lang/String;

    const/4 v13, 0x1

    aput-object v12, v0, v13

    .line 39
    invoke-static {v0}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 40
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v13

    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v13, v2

    move-object v2, v5

    move-object v5, v15

    move-object v15, v6

    move-object v6, v14

    move v14, v12

    move-object v12, v0

    move-wide/from16 v27, v7

    move-object v8, v10

    move-object v7, v11

    move-wide/from16 v10, v27

    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, v3, 0x1

    if-ltz v3, :cond_17

    move-object/from16 p1, v4

    .line 42
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 43
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 44
    :try_start_1
    iget-object v4, v8, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v4, Lcom/truecaller/ads/campaigns/AdCampaign$Style;
    :try_end_1
    .catch Le/a/i/f0/l/d; {:try_start_1 .. :try_end_1} :catch_6

    move-object/from16 v16, v15

    :try_start_2
    iget-object v15, v9, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v15, Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;

    move-object/from16 p2, v15

    iget-object v15, v13, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v15, [Ljava/lang/String;

    iput-object v5, v2, Le/a/i/f0/l/k$l;->g:Ljava/lang/Object;

    iput-object v6, v2, Le/a/i/f0/l/k$l;->h:Ljava/lang/Object;

    iput-object v7, v2, Le/a/i/f0/l/k$l;->i:Ljava/lang/Object;

    iput-object v8, v2, Le/a/i/f0/l/k$l;->j:Ljava/lang/Object;

    iput-object v9, v2, Le/a/i/f0/l/k$l;->k:Ljava/lang/Object;

    iput-object v13, v2, Le/a/i/f0/l/k$l;->l:Ljava/lang/Object;

    iput-object v12, v2, Le/a/i/f0/l/k$l;->m:Ljava/lang/Object;
    :try_end_2
    .catch Le/a/i/f0/l/d; {:try_start_2 .. :try_end_2} :catch_5

    move-object/from16 v17, v5

    const/4 v5, 0x0

    :try_start_3
    iput-object v5, v2, Le/a/i/f0/l/k$l;->n:Ljava/lang/Object;

    iput-wide v10, v2, Le/a/i/f0/l/k$l;->o:J

    iput v14, v2, Le/a/i/f0/l/k$l;->p:I

    iput v1, v2, Le/a/i/f0/l/k$l;->q:I

    iput v3, v2, Le/a/i/f0/l/k$l;->r:I
    :try_end_3
    .catch Le/a/i/f0/l/d; {:try_start_3 .. :try_end_3} :catch_4

    const/4 v5, 0x5

    :try_start_4
    iput v5, v2, Le/a/i/f0/l/k$l;->e:I
    :try_end_4
    .catch Le/a/i/f0/l/d; {:try_start_4 .. :try_end_4} :catch_3

    move/from16 v18, v5

    move-object/from16 v5, v17

    move-object/from16 v20, v6

    move-object v6, v0

    move-object/from16 v21, v7

    move-object v7, v4

    move-object v4, v8

    move-object/from16 v8, p2

    move-object/from16 v22, v9

    move-object v9, v15

    move-wide/from16 v23, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v21

    move-object v15, v12

    move-object/from16 v25, v13

    move-wide/from16 v12, v23

    move/from16 v26, v14

    move-object v14, v2

    :try_start_5
    invoke-virtual/range {v5 .. v14}, Le/a/i/f0/l/k;->w(Ljava/lang/String;Lcom/truecaller/ads/campaigns/AdCampaign$Style;Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLs1/w/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Le/a/i/f0/l/d; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v6, v16

    if-ne v0, v6, :cond_15

    return-object v6

    :cond_15
    move v7, v1

    move-object v5, v2

    move v2, v3

    move-object/from16 v16, v4

    move-object v9, v15

    move-object/from16 v1, v17

    move-object/from16 v17, v21

    move-object/from16 v15, v22

    move-wide/from16 v11, v23

    move-object/from16 v14, v25

    move/from16 v8, v26

    move-object/from16 v4, p1

    .line 45
    :goto_c
    :try_start_6
    iget-object v0, v1, Le/a/i/f0/l/k;->j:Le/a/i/f0/l/o;

    iget-object v3, v1, Le/a/i/f0/l/k;->h:Le/a/i/s;

    invoke-interface {v0, v3}, Le/a/i/f0/l/o;->i(Le/a/i/s;)V

    .line 46
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_6
    .catch Le/a/i/f0/l/d; {:try_start_6 .. :try_end_6} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    move v3, v7

    move-wide v10, v11

    move-object v13, v14

    move-object/from16 v7, v17

    move v14, v8

    move-object v12, v9

    move-object v9, v15

    move-object/from16 v8, v16

    move-object v15, v6

    :goto_d
    move-object/from16 v6, v20

    goto/16 :goto_11

    :catch_2
    move-exception v0

    goto :goto_e

    :catch_3
    move-exception v0

    move/from16 v18, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object v4, v8

    move-object/from16 v22, v9

    move-wide/from16 v23, v10

    move-object v15, v12

    move-object/from16 v25, v13

    move/from16 v26, v14

    :goto_e
    move-object/from16 v6, v16

    goto :goto_10

    :catch_4
    move-exception v0

    goto :goto_f

    :catch_5
    move-exception v0

    move-object/from16 v17, v5

    :goto_f
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object v4, v8

    move-object/from16 v22, v9

    move-wide/from16 v23, v10

    move-object v15, v12

    move-object/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v6, v16

    const/16 v18, 0x5

    goto :goto_10

    :catch_6
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object v4, v8

    move-object/from16 v22, v9

    move-wide/from16 v23, v10

    move-object/from16 v25, v13

    move/from16 v26, v14

    move-object v6, v15

    const/16 v18, 0x5

    move-object v15, v12

    :goto_10
    move-object v5, v2

    move v2, v3

    move-object v8, v4

    move-object v12, v15

    move-object/from16 v7, v21

    move-object/from16 v9, v22

    move-wide/from16 v10, v23

    move-object/from16 v13, v25

    move/from16 v14, v26

    move-object/from16 v4, p1

    move v3, v1

    move-object v15, v6

    move-object/from16 v1, v17

    goto :goto_d

    :goto_11
    if-ne v2, v14, :cond_16

    .line 47
    iget-object v2, v1, Le/a/i/f0/l/k;->j:Le/a/i/f0/l/o;

    iget-object v1, v1, Le/a/i/f0/l/k;->h:Le/a/i/s;

    .line 48
    iget v0, v0, Le/a/i/f0/l/d;->a:I

    .line 49
    invoke-interface {v2, v1, v0}, Le/a/i/f0/l/o;->k(Le/a/i/s;I)V

    return-object v4

    :cond_16
    move-object v2, v5

    move-object v5, v1

    move-object/from16 v1, p0

    goto/16 :goto_b

    .line 50
    :cond_17
    invoke-static {}, Ls1/u/i;->N0()V

    const/4 v1, 0x0

    throw v1

    :cond_18
    move-object/from16 p1, v4

    return-object p1
.end method

.method public final y()V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/i/f0/l/k;->c:Lq3/a/p1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    new-instance v6, Le/a/i/f0/l/k$m;

    invoke-direct {v6, p0, v1}, Le/a/i/f0/l/k$m;-><init>(Le/a/i/f0/l/k;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    iput-object v0, p0, Le/a/i/f0/l/k;->c:Lq3/a/p1;

    return-void
.end method
