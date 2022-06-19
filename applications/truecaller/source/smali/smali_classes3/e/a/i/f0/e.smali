.class public final Le/a/i/f0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/f0/d;
.implements Le/a/i/f0/l/o;
.implements Le/a/i/f0/n/f;
.implements Lq3/a/i0;


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Le/a/i/s;",
            "Le/a/i/f0/l/i;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Le/a/i/s;",
            "Ljava/util/Set<",
            "Le/a/i/m;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Ls1/g;

.field public final d:Ls1/w/f;

.field public final e:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;

.field public final g:Le/a/u3/g;

.field public final h:Le/a/i/f0/l/j;

.field public final i:Le/a/i/f0/n/g;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/r2/f;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;Le/a/u3/g;Le/a/i/f0/l/j;Le/a/i/f0/n/g;)V
    .locals 6
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;",
            "Le/a/u3/g;",
            "Le/a/i/f0/l/j;",
            "Le/a/i/f0/n/g;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coroutineContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsConfigurationManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureRegistry"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsHolderFactory"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "houseAdsProvider"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/f0/e;->d:Ls1/w/f;

    iput-object p2, p0, Le/a/i/f0/e;->e:Le/a/r2/f;

    iput-object p3, p0, Le/a/i/f0/e;->f:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;

    iput-object p4, p0, Le/a/i/f0/e;->g:Le/a/u3/g;

    iput-object p5, p0, Le/a/i/f0/e;->h:Le/a/i/f0/l/j;

    iput-object p6, p0, Le/a/i/f0/e;->i:Le/a/i/f0/n/g;

    .line 2
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Le/a/i/f0/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Le/a/i/f0/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    sget-object p1, Le/a/i/f0/e$b;->b:Le/a/i/f0/e$b;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/i/f0/e;->c:Ls1/g;

    .line 5
    new-instance v3, Le/a/i/f0/e$a;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Le/a/i/f0/e$a;-><init>(Le/a/i/f0/e;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method


# virtual methods
.method public a(Le/a/i/s;Le/a/i/f0/m/d;I)V
    .locals 5

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ad"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/i/s;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Le/a/l5/a/j;->h:Lorg/apache/avro/Schema;

    new-instance v1, Le/a/l5/a/j$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Le/a/l5/a/j$b;-><init>(Le/a/l5/a/j$a;)V

    .line 3
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 4
    iput-object v0, v1, Le/a/l5/a/j$b;->b:Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v2, 0x1

    aput-boolean v2, v0, v3

    .line 6
    invoke-interface {p2}, Le/a/i/f0/m/d;->b()Le/a/i/f0/l/c;

    move-result-object v0

    .line 7
    iget-object v0, v0, Le/a/i/f0/l/c;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v1, v3, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 9
    iput-object v0, v1, Le/a/l5/a/j$b;->a:Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v2, v0, v4

    .line 11
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 12
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v1, v3, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 13
    iput-object v0, v1, Le/a/l5/a/j$b;->c:Ljava/lang/Integer;

    .line 14
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v2, v0, v4

    .line 15
    invoke-interface {p2}, Le/a/i/f0/m/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v1, v3, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 17
    iput-object v0, v1, Le/a/l5/a/j$b;->d:Ljava/lang/CharSequence;

    .line 18
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v2, v0, v4

    .line 19
    invoke-interface {p2}, Le/a/i/f0/m/d;->d()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v1, v3, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 21
    iput-object v0, v1, Le/a/l5/a/j$b;->e:Ljava/lang/CharSequence;

    .line 22
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v2, v0, v4

    .line 23
    :try_start_0
    iget-object v0, p0, Le/a/i/f0/e;->e:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    invoke-virtual {v1}, Le/a/l5/a/j$b;->a()Le/a/l5/a/j;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V
    :try_end_0
    .catch Lorg/apache/avro/AvroRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 24
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 25
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Le/a/i/f0/e;->o(Le/a/i/s;)Ljava/util/Set;

    move-result-object p1

    .line 26
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/m;

    .line 27
    invoke-interface {v0, p2, p3}, Le/a/i/m;->xe(Le/a/i/f0/m/d;I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/f0/e;->f:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;

    invoke-interface {v0}, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;->b()Z

    move-result v0

    return v0
.end method

.method public c(Le/a/i/s;)Z
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/i/f0/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Le/a/i/f0/e;->n(Le/a/i/s;)Le/a/i/f0/l/i;

    move-result-object v0

    invoke-interface {v0}, Le/a/i/f0/l/i;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/i/f0/e;->i:Le/a/i/f0/n/g;

    check-cast v0, Le/a/i/f0/n/b;

    invoke-virtual {v0, p1}, Le/a/i/f0/n/b;->b(Le/a/i/s;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/f0/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "holders.values"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/f0/l/i;

    .line 3
    invoke-interface {v1}, Le/a/i/f0/l/i;->a()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/i/f0/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public e(Le/a/i/s;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/i/f0/e;->o(Le/a/i/s;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->c1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/m;

    .line 3
    invoke-interface {v0}, Le/a/i/m;->onAdLoaded()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f(Le/a/i/s;I)Le/a/i/f0/m/d;
    .locals 8

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    .line 2
    invoke-static/range {v1 .. v7}, Le/m/d/y/n;->J(Le/a/i/f0/d;Le/a/i/s;IZLjava/lang/String;ILjava/lang/Object;)Le/a/i/f0/m/d;

    move-result-object p1

    return-object p1
.end method

.method public g(Le/a/i/s;IZLjava/lang/String;)Le/a/i/f0/m/d;
    .locals 18

    move-object/from16 v1, p1

    const-string v0, "config"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Le/a/i/f0/e;->b()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p1}, Le/a/i/f0/e;->n(Le/a/i/s;)Le/a/i/f0/l/i;

    move-result-object v2

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    invoke-interface {v2, v4, v5, v6}, Le/a/i/f0/l/i;->b(IZLjava/lang/String;)Le/a/i/f0/m/d;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v10, p0

    goto/16 :goto_1

    :cond_1
    move-object/from16 v10, p0

    .line 3
    iget-object v2, v10, Le/a/i/f0/e;->i:Le/a/i/f0/n/g;

    check-cast v2, Le/a/i/f0/n/b;

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, v2, Le/a/i/f0/n/b;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/f0/n/e;

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v2, v1}, Le/a/i/f0/n/b;->b(Le/a/i/s;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    .line 7
    iput-boolean v4, v0, Le/a/i/f0/n/e;->d:Z

    .line 8
    iget-object v0, v2, Le/a/i/f0/n/b;->e:Le/a/i/f0/n/c;

    .line 9
    iget-object v5, v0, Le/a/i/f0/n/c;->c:Le/a/i/f0/h;

    .line 10
    new-instance v6, Le/a/i/f0/n/d;

    .line 11
    iget-object v7, v5, Le/a/i/f0/h;->a:Le/a/p5/c0;

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    const v11, 0x7f1204c6

    invoke-interface {v7, v11, v9}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v7, "resourceProvider.getStri\u2026ring.PremiumHouseAdTitle)"

    invoke-static {v12, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v7, v5, Le/a/i/f0/h;->a:Le/a/p5/c0;

    new-array v9, v8, [Ljava/lang/Object;

    const v11, 0x7f1204c5

    invoke-interface {v7, v11, v9}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v7, "resourceProvider.getStri\u2026tring.PremiumHouseAdText)"

    invoke-static {v13, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v5, v5, Le/a/i/f0/h;->a:Le/a/p5/c0;

    new-array v7, v8, [Ljava/lang/Object;

    const v8, 0x7f1204c4

    invoke-interface {v5, v8, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const-string v5, "resourceProvider.getStri\u2026string.PremiumHouseAdCta)"

    invoke-static {v14, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "truecaller://premium?c=backfill_v2_en"

    const-string v16, "file:///android_asset/ads/house_ad_icon_144x144.webp"

    const-string v17, "file:///android_asset/ads/banner_truecaller_1200x627.webp"

    move-object v11, v6

    .line 14
    invoke-direct/range {v11 .. v17}, Le/a/i/f0/n/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {v6}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 16
    iput-object v5, v0, Le/a/i/f0/n/c;->a:Ljava/util/List;

    .line 17
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v11, v3

    goto :goto_0

    .line 18
    :cond_2
    iget v5, v0, Le/a/i/f0/n/c;->b:I

    add-int/2addr v5, v4

    iput v5, v0, Le/a/i/f0/n/c;->b:I

    .line 19
    iget-object v4, v0, Le/a/i/f0/n/c;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v5, v4

    iput v5, v0, Le/a/i/f0/n/c;->b:I

    .line 20
    iget-object v0, v0, Le/a/i/f0/n/c;->a:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/f0/n/d;

    move-object v11, v0

    :goto_0
    if-eqz v11, :cond_3

    .line 21
    new-instance v12, Le/a/i/f0/m/f;

    .line 22
    new-instance v13, Le/a/i/f0/l/c;

    .line 23
    iget-object v3, v1, Le/a/i/s;->a:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v0, "house "

    .line 24
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "0000"

    invoke-static {v9}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v2, v2, Le/a/i/f0/n/b;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x5

    invoke-static {v2, v9}, Ls1/f0/w;->o0(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x0

    move-object v0, v13

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v14

    .line 25
    invoke-direct/range {v0 .. v9}, Le/a/i/f0/l/c;-><init>(Le/a/i/s;Ljava/lang/String;[Ljava/lang/String;Lcom/truecaller/ads/campaigns/AdCampaign$Style;Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-direct {v12, v11, v13}, Le/a/i/f0/m/f;-><init>(Le/a/i/f0/n/d;Le/a/i/f0/l/c;)V

    move-object v3, v12

    :cond_3
    move-object v2, v3

    :goto_1
    return-object v2
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/f0/e;->d:Ls1/w/f;

    return-object v0
.end method

.method public h(Le/a/i/s;Le/a/i/m;)V
    .locals 2

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/i/f0/e;->o(Le/a/i/s;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Le/a/i/f0/e;->o(Le/a/i/s;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Le/a/i/f0/e;->n(Le/a/i/s;)Le/a/i/f0/l/i;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-interface {p2, v0, v1}, Le/a/i/f0/l/i;->e(ZLjava/lang/String;)V

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsubscribing from "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public i(Le/a/i/s;)V
    .locals 4

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/i/f0/e;->i:Le/a/i/f0/n/g;

    check-cast v1, Le/a/i/f0/n/b;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v1, Le/a/i/f0/n/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/f0/n/e;

    if-eqz v0, :cond_2

    .line 4
    iget v1, v0, Le/a/i/f0/n/e;->a:I

    add-int/lit8 v1, v1, -0x1

    .line 5
    iput v1, v0, Le/a/i/f0/n/e;->a:I

    .line 6
    invoke-virtual {v0}, Le/a/i/f0/n/e;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, v0, Le/a/i/f0/n/e;->e:Lq3/a/p1;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 8
    invoke-static {v1, v3, v2, v3}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Le/a/i/f0/n/e;->c:Z

    .line 10
    iput-boolean v1, v0, Le/a/i/f0/n/e;->b:Z

    .line 11
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Le/a/i/f0/e;->o(Le/a/i/s;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->c1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/m;

    .line 13
    invoke-interface {v0}, Le/a/i/m;->onAdLoaded()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public j(Le/a/i/s;)V
    .locals 9

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/i/f0/e;->i:Le/a/i/f0/n/g;

    move-object v2, v1

    check-cast v2, Le/a/i/f0/n/b;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v2, Le/a/i/f0/n/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/f0/n/e;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Le/a/i/f0/n/e;->d:Z

    .line 5
    invoke-virtual {v0}, Le/a/i/f0/n/e;->a()Z

    move-result v1

    const/4 v8, 0x1

    if-nez v1, :cond_1

    .line 6
    iget-object v1, v2, Le/a/i/f0/n/b;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/f0/n/e;

    if-eqz v1, :cond_1

    .line 7
    iget-object v3, v1, Le/a/i/f0/n/e;->e:Lq3/a/p1;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 8
    invoke-static {v3, v4, v8, v4}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 9
    new-instance v6, Le/a/i/f0/n/a;

    invoke-direct {v6, v2, v1, p1, v4}, Le/a/i/f0/n/a;-><init>(Le/a/i/f0/n/b;Le/a/i/f0/n/e;Le/a/i/s;Ls1/w/d;)V

    const/4 p1, 0x3

    const/4 v7, 0x0

    move-object v4, v5

    move-object v5, v6

    move v6, p1

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    .line 10
    iput-object p1, v1, Le/a/i/f0/n/e;->e:Lq3/a/p1;

    .line 11
    :cond_1
    iget p1, v0, Le/a/i/f0/n/e;->a:I

    add-int/2addr p1, v8

    .line 12
    iput p1, v0, Le/a/i/f0/n/e;->a:I

    :cond_2
    return-void
.end method

.method public k(Le/a/i/s;I)V
    .locals 4

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/i/f0/e;->o(Le/a/i/s;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ls1/u/i;->c1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/i/m;

    .line 3
    invoke-interface {v2, p2}, Le/a/i/m;->ed(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Le/a/i/f0/e;->i:Le/a/i/f0/n/g;

    check-cast p2, Le/a/i/f0/n/b;

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p2, Le/a/i/f0/n/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/f0/n/e;

    if-eqz v0, :cond_3

    .line 7
    iget v1, v0, Le/a/i/f0/n/e;->a:I

    add-int/lit8 v1, v1, -0x1

    .line 8
    iput v1, v0, Le/a/i/f0/n/e;->a:I

    .line 9
    invoke-virtual {v0}, Le/a/i/f0/n/e;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v1, v0, Le/a/i/f0/n/e;->e:Lq3/a/p1;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    .line 11
    invoke-static {v1, v3, v2, v3}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 12
    :cond_2
    iput-boolean v2, v0, Le/a/i/f0/n/e;->b:Z

    .line 13
    invoke-virtual {p2, p1}, Le/a/i/f0/n/b;->c(Le/a/i/s;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public l(Le/a/i/s;Le/a/i/m;Ljava/lang/String;)V
    .locals 2

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subscribing to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    invoke-virtual {p0, p1}, Le/a/i/f0/e;->n(Le/a/i/s;)Le/a/i/f0/l/i;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/i/f0/l/i;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Le/a/i/f0/l/i;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-interface {p2}, Le/a/i/m;->onAdLoaded()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Le/a/i/f0/e;->o(Le/a/i/s;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 p1, 0x1

    .line 6
    invoke-interface {v0, p1, p3}, Le/a/i/f0/l/i;->e(ZLjava/lang/String;)V

    return-void
.end method

.method public m(Le/a/i/s;Ljava/lang/String;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/i/f0/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Le/a/i/f0/e;->n(Le/a/i/s;)Le/a/i/f0/l/i;

    move-result-object p1

    invoke-interface {p1, p2}, Le/a/i/f0/l/i;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final n(Le/a/i/s;)Le/a/i/f0/l/i;
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/i/f0/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/f0/l/i;

    if-nez v0, :cond_a

    .line 2
    iget-object v0, p0, Le/a/i/f0/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "holders.keys"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Le/a/i/s;

    .line 4
    iget-object v3, p0, Le/a/i/f0/e;->g:Le/a/u3/g;

    invoke-virtual {v3}, Le/a/u3/g;->N()Le/a/u3/b;

    move-result-object v3

    invoke-interface {v3}, Le/a/u3/b;->isEnabled()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_2

    iget-object v3, p0, Le/a/i/f0/e;->g:Le/a/u3/g;

    invoke-virtual {v3}, Le/a/u3/g;->K()Le/a/u3/b;

    move-result-object v3

    invoke-interface {v3}, Le/a/u3/b;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v3, v2, Le/a/i/s;->a:Ljava/lang/String;

    iget-object v6, p1, Le/a/i/s;->a:Ljava/lang/String;

    .line 6
    invoke-static {v3, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 7
    iget-object v2, v2, Le/a/i/s;->b:Ljava/lang/String;

    iget-object v3, p1, Le/a/i/s;->b:Ljava/lang/String;

    .line 8
    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    .line 9
    :cond_2
    :goto_0
    iget-object v3, v2, Le/a/i/s;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x52fa3088

    if-eq v6, v7, :cond_3

    goto :goto_1

    :cond_3
    const-string v6, "/43067329/A*ACS*Unified*GPS"

    .line 11
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 12
    iget-object v3, v2, Le/a/i/s;->a:Ljava/lang/String;

    iget-object v6, p1, Le/a/i/s;->a:Ljava/lang/String;

    .line 13
    invoke-static {v3, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 14
    iget-object v3, v2, Le/a/i/s;->b:Ljava/lang/String;

    iget-object v6, p1, Le/a/i/s;->b:Ljava/lang/String;

    .line 15
    invoke-static {v3, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 16
    iget-object v2, v2, Le/a/i/s;->e:Ljava/util/List;

    iget-object v3, p1, Le/a/i/s;->e:Ljava/util/List;

    .line 17
    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    .line 18
    :cond_4
    :goto_1
    iget-object v3, v2, Le/a/i/s;->a:Ljava/lang/String;

    iget-object v6, p1, Le/a/i/s;->a:Ljava/lang/String;

    .line 19
    invoke-static {v3, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 20
    iget-object v2, v2, Le/a/i/s;->b:Ljava/lang/String;

    iget-object v3, p1, Le/a/i/s;->b:Ljava/lang/String;

    .line 21
    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    move v4, v5

    :goto_2
    if-eqz v4, :cond_0

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    .line 22
    :goto_3
    check-cast v1, Le/a/i/s;

    if-eqz v1, :cond_8

    .line 23
    iget-object v0, p0, Le/a/i/f0/e;->i:Le/a/i/f0/n/g;

    check-cast v0, Le/a/i/f0/n/b;

    invoke-virtual {v0, v1}, Le/a/i/f0/n/b;->a(Le/a/i/s;)V

    .line 24
    iget-object v0, p0, Le/a/i/f0/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/f0/l/i;

    if-eqz v0, :cond_7

    .line 25
    invoke-interface {v0, p1}, Le/a/i/f0/l/i;->c(Le/a/i/s;)V

    .line 26
    iget-object v2, p0, Le/a/i/f0/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v1, p0, Le/a/i/f0/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Le/a/i/f0/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/f0/l/i;

    if-eqz v0, :cond_7

    goto :goto_4

    .line 29
    :cond_7
    iget-object v0, p0, Le/a/i/f0/e;->h:Le/a/i/f0/l/j;

    check-cast v0, Le/a/i/f0/l/t;

    invoke-virtual {v0, p0, p1}, Le/a/i/f0/l/t;->a(Le/a/i/f0/l/o;Le/a/i/s;)Le/a/i/f0/l/i;

    move-result-object v0

    goto :goto_4

    .line 30
    :cond_8
    iget-object v0, p0, Le/a/i/f0/e;->h:Le/a/i/f0/l/j;

    check-cast v0, Le/a/i/f0/l/t;

    invoke-virtual {v0, p0, p1}, Le/a/i/f0/l/t;->a(Le/a/i/f0/l/o;Le/a/i/s;)Le/a/i/f0/l/i;

    move-result-object v0

    .line 31
    :goto_4
    iget-object v1, p0, Le/a/i/f0/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-boolean v1, p1, Le/a/i/s;->n:Z

    if-eqz v1, :cond_9

    .line 33
    iget-object v1, p0, Le/a/i/f0/e;->i:Le/a/i/f0/n/g;

    check-cast v1, Le/a/i/f0/n/b;

    .line 34
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "config"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "listener"

    invoke-static {p0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1, p1}, Le/a/i/f0/n/b;->a(Le/a/i/s;)V

    .line 36
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, v1, Le/a/i/f0/n/b;->d:Le/a/z4/a;

    const-wide/16 v4, 0x0

    const-string v6, "adsFeatureHouseAdsTimeout"

    invoke-interface {v3, v6, v4, v5}, Le/a/z4/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_a

    .line 37
    iget-boolean v2, p1, Le/a/i/s;->n:Z

    if-eqz v2, :cond_a

    .line 38
    iget-object v1, v1, Le/a/i/f0/n/b;->a:Ljava/util/Map;

    new-instance v2, Le/a/i/f0/n/e;

    invoke-direct {v2, p1, p0}, Le/a/i/f0/n/e;-><init>(Le/a/i/s;Le/a/i/f0/n/f;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 39
    :cond_9
    iget-object v1, p0, Le/a/i/f0/e;->i:Le/a/i/f0/n/g;

    check-cast v1, Le/a/i/f0/n/b;

    invoke-virtual {v1, p1}, Le/a/i/f0/n/b;->a(Le/a/i/s;)V

    :cond_a
    :goto_5
    return-object v0
.end method

.method public final o(Le/a/i/s;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/s;",
            ")",
            "Ljava/util/Set<",
            "Le/a/i/m;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/f0/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 3
    iget-object v1, p0, Le/a/i/f0/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v1, p0, Le/a/i/f0/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "holders.keys"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/i/s;

    .line 6
    iget-object v4, v3, Le/a/i/s;->a:Ljava/lang/String;

    iget-object v5, p1, Le/a/i/s;->a:Ljava/lang/String;

    .line 7
    invoke-static {v4, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 8
    iget-object v4, v3, Le/a/i/s;->b:Ljava/lang/String;

    iget-object v6, p1, Le/a/i/s;->b:Ljava/lang/String;

    .line 9
    invoke-static {v4, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v5

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 10
    :goto_1
    check-cast v2, Le/a/i/s;

    if-eqz v2, :cond_4

    const-string p1, "holders.keys.firstOrNull\u2026    } ?: return listeners"

    .line 11
    invoke-static {v2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Le/a/i/f0/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_4

    const-string v1, "this@AdsProviderImpl.lis\u2026nfig] ?: return listeners"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-object v0
.end method
