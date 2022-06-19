.class public final Le/a/c/w/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/w/k;


# instance fields
.field public final a:Le/m/e/k;

.field public final b:Lcom/truecaller/insights/repository/BrandSearchKeywords;

.field public final c:Le/a/c/c0/o;

.field public final d:Le/a/c/i/b/a;

.field public final e:Le/a/c/b/e;

.field public final f:Le/a/a/p0/f;


# direct methods
.method public constructor <init>(Le/a/c/c0/o;Le/a/c/i/b/a;Le/a/c/b/e;Le/a/a/p0/f;)V
    .locals 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "insightConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseSeedStore"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environmentHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsKeywordSearchBridge"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/w/l;->c:Le/a/c/c0/o;

    iput-object p2, p0, Le/a/c/w/l;->d:Le/a/c/i/b/a;

    iput-object p3, p0, Le/a/c/w/l;->e:Le/a/c/b/e;

    iput-object p4, p0, Le/a/c/w/l;->f:Le/a/a/p0/f;

    .line 2
    new-instance p4, Le/m/e/k;

    invoke-direct {p4}, Le/m/e/k;-><init>()V

    iput-object p4, p0, Le/a/c/w/l;->a:Le/m/e/k;

    .line 3
    invoke-interface {p2}, Le/a/c/i/b/a;->c()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-interface {p1}, Le/a/c/c0/o;->l()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 5
    :try_start_0
    invoke-static {p2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "keywords"

    .line 7
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 8
    invoke-interface {p3}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-class p3, Lcom/truecaller/insights/repository/BrandSearchKeywords;

    invoke-virtual {p4, p2, p3}, Le/m/e/k;->f(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/insights/repository/BrandSearchKeywords;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 10
    sget-object p3, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    .line 11
    invoke-virtual {p3, p2, v0}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_3

    .line 12
    invoke-virtual {p2}, Lcom/truecaller/insights/repository/BrandSearchKeywords;->getBrands()Ljava/util/List;

    move-result-object p3

    .line 13
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/truecaller/insights/repository/BrandSearchKeyword;

    .line 14
    invoke-virtual {p4}, Lcom/truecaller/insights/repository/BrandSearchKeyword;->getVersion()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 15
    iget-object v0, p0, Le/a/c/w/l;->c:Le/a/c/c0/o;

    invoke-virtual {p4}, Lcom/truecaller/insights/repository/BrandSearchKeyword;->getBrandId()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Le/a/c/c0/o;->T(Ljava/lang/String;J)V

    .line 16
    :cond_1
    iget-object v0, p0, Le/a/c/w/l;->c:Le/a/c/c0/o;

    invoke-virtual {p4}, Lcom/truecaller/insights/repository/BrandSearchKeyword;->getVersion()I

    move-result p4

    invoke-interface {v0, p4}, Le/a/c/c0/o;->x0(I)V

    goto :goto_1

    :cond_2
    move-object v0, p2

    .line 17
    :cond_3
    iput-object v0, p0, Le/a/c/w/l;->b:Lcom/truecaller/insights/repository/BrandSearchKeywords;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/c/w/j;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/c/w/l$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/w/l$a;

    iget v1, v0, Le/a/c/w/l$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/w/l$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/w/l$a;

    invoke-direct {v0, p0, p1}, Le/a/c/w/l$a;-><init>(Le/a/c/w/l;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/w/l$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/w/l$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget v2, v0, Le/a/c/w/l$a;->k:I

    iget-object v4, v0, Le/a/c/w/l$a;->j:Ljava/lang/Object;

    check-cast v4, Ljava/util/Collection;

    iget-object v5, v0, Le/a/c/w/l$a;->i:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, v0, Le/a/c/w/l$a;->h:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    iget-object v7, v0, Le/a/c/w/l$a;->g:Ljava/lang/Object;

    check-cast v7, Le/a/c/w/l;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v12, v7

    goto/16 :goto_2

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
    iget-object p1, p0, Le/a/c/w/l;->c:Le/a/c/c0/o;

    invoke-interface {p1}, Le/a/c/c0/o;->l()I

    move-result p1

    .line 5
    iget-object v2, p0, Le/a/c/w/l;->b:Lcom/truecaller/insights/repository/BrandSearchKeywords;

    if-eqz v2, :cond_5

    .line 6
    invoke-virtual {v2}, Lcom/truecaller/insights/repository/BrandSearchKeywords;->getBrands()Ljava/util/List;

    move-result-object v2

    .line 7
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v12, p0

    move-object v13, v2

    move v2, p1

    move-object p1, v13

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 9
    check-cast v5, Lcom/truecaller/insights/repository/BrandSearchKeyword;

    .line 10
    iget-object v6, v12, Le/a/c/w/l;->c:Le/a/c/c0/o;

    invoke-virtual {v5}, Lcom/truecaller/insights/repository/BrandSearchKeyword;->getBrandId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Le/a/c/c0/o;->f0(Ljava/lang/String;)J

    move-result-wide v9

    .line 11
    invoke-virtual {v5}, Lcom/truecaller/insights/repository/BrandSearchKeyword;->getBrandId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/truecaller/insights/repository/BrandSearchKeyword;->getKeywordList()Ljava/util/List;

    move-result-object v8

    iput-object v12, v0, Le/a/c/w/l$a;->g:Ljava/lang/Object;

    iput-object v4, v0, Le/a/c/w/l$a;->h:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/w/l$a;->i:Ljava/lang/Object;

    iput-object v4, v0, Le/a/c/w/l$a;->j:Ljava/lang/Object;

    iput v2, v0, Le/a/c/w/l$a;->k:I

    iput v3, v0, Le/a/c/w/l$a;->e:I

    move-object v5, v12

    move v6, v2

    move-object v11, v0

    invoke-virtual/range {v5 .. v11}, Le/a/c/w/l;->b(ILjava/lang/String;Ljava/util/List;JLs1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_3

    return-object v1

    :cond_3
    move-object v6, v4

    move-object v13, v5

    move-object v5, p1

    move-object p1, v13

    .line 12
    :goto_2
    check-cast p1, Le/a/c/w/j;

    .line 13
    iget-object v7, v12, Le/a/c/w/l;->c:Le/a/c/c0/o;

    .line 14
    iget-object v8, p1, Le/a/c/w/j;->b:Ljava/lang/String;

    .line 15
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-interface {v7, v8, v9, v10}, Le/a/c/c0/o;->T(Ljava/lang/String;J)V

    .line 16
    invoke-interface {v4, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object p1, v5

    move-object v4, v6

    goto :goto_1

    .line 17
    :cond_4
    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_5

    goto :goto_3

    .line 18
    :cond_5
    sget-object v4, Ls1/u/s;->a:Ls1/u/s;

    :goto_3
    return-object v4
.end method

.method public b(ILjava/lang/String;Ljava/util/List;JLs1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Ls1/w/d<",
            "-",
            "Le/a/c/w/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p6, Le/a/c/w/l$b;

    if-eqz v0, :cond_0

    move-object v0, p6

    check-cast v0, Le/a/c/w/l$b;

    iget v1, v0, Le/a/c/w/l$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/w/l$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/w/l$b;

    invoke-direct {v0, p0, p6}, Le/a/c/w/l$b;-><init>(Le/a/c/w/l;Ls1/w/d;)V

    :goto_0
    iget-object p6, v0, Le/a/c/w/l$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/w/l$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Le/a/c/w/l$b;->g:I

    iget-object p2, v0, Le/a/c/w/l$b;->h:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-static {p6}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p6}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p6

    xor-int/2addr p6, v3

    if-eqz p6, :cond_9

    .line 5
    iget-object p6, p0, Le/a/c/w/l;->f:Le/a/a/p0/f;

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p3, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 8
    check-cast v4, Ljava/lang/String;

    .line 9
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v6, "Locale.ROOT"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_3
    iput-object p2, v0, Le/a/c/w/l$b;->h:Ljava/lang/Object;

    iput p1, v0, Le/a/c/w/l$b;->g:I

    iput v3, v0, Le/a/c/w/l$b;->e:I

    .line 11
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object v3, p6, Le/a/a/p0/f;->a:Landroid/content/ContentResolver;

    .line 14
    invoke-static {v2}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p6

    .line 15
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p4, p5}, Ljava/lang/Long;-><init>(J)V

    .line 16
    sget-object p4, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 17
    invoke-virtual {p4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p4

    const-string p5, "messages_brand_keywords"

    invoke-virtual {p4, p5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p4

    .line 18
    invoke-interface {p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_4

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    .line 19
    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    const-string v2, "keywords"

    invoke-virtual {p4, v2, p6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    .line 20
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    const-string p6, "lastQueryDate"

    invoke-virtual {p4, p6, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 21
    invoke-virtual {p4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const-string p4, "count"

    .line 22
    filled-new-array {p4}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 23
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p5

    if-eqz p5, :cond_7

    const/4 p6, 0x0

    .line 24
    :cond_5
    :goto_3
    :try_start_0
    invoke-interface {p5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "cursor"

    .line 25
    invoke-static {p5, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rawAddress"

    invoke-static {p5, v0}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {p5, p4}, Le/a/p5/s0/g;->q0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "day_date"

    .line 27
    invoke-static {p5, v3}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    .line 28
    new-instance v4, Le/a/c/h/a;

    invoke-direct {v4, v0, v2, v3}, Le/a/c/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 29
    :cond_6
    invoke-static {p5, p6}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p5, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    .line 30
    :cond_7
    :goto_4
    invoke-static {p3}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p6

    if-ne p6, v1, :cond_8

    return-object v1

    .line 31
    :cond_8
    :goto_5
    check-cast p6, Ljava/util/List;

    goto :goto_6

    .line 32
    :cond_9
    sget-object p6, Ls1/u/s;->a:Ls1/u/s;

    .line 33
    :goto_6
    new-instance p3, Le/a/c/w/j;

    invoke-direct {p3, p1, p2, p6}, Le/a/c/w/j;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object p3
.end method
