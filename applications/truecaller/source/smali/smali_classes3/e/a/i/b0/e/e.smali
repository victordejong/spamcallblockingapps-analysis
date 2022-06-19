.class public final Le/a/i/b0/e/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/b0/e/d;


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/b0/e/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/i/b0/e/a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "adCampaignsRestAdapter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/b0/e/e;->a:Lo3/a;

    return-void
.end method


# virtual methods
.method public a(Le/a/i/b0/d/a;Ls1/w/d;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/b0/d/a;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/ads/keywords/model/AdCampaignsRestDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Le/a/i/b0/e/e$a;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Le/a/i/b0/e/e$a;

    iget v4, v3, Le/a/i/b0/e/e$a;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/i/b0/e/e$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/i/b0/e/e$a;

    invoke-direct {v3, v0, v2}, Le/a/i/b0/e/e$a;-><init>(Le/a/i/b0/e/e;Ls1/w/d;)V

    :goto_0
    iget-object v2, v3, Le/a/i/b0/e/e$a;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v3, Le/a/i/b0/e/e$a;->e:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v7, :cond_1

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const/4 v2, 0x7

    new-array v2, v2, [Ls1/k;

    .line 4
    invoke-static {}, Le/m/d/y/n;->K()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const-string v5, ""

    .line 5
    :goto_1
    new-instance v8, Ls1/k;

    const-string v9, "adId"

    invoke-direct {v8, v9, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x0

    aput-object v8, v2, v5

    .line 6
    iget-object v9, v1, Le/a/i/b0/d/a;->b:Ljava/util/List;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3e

    const-string v10, ","

    .line 7
    invoke-static/range {v9 .. v16}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v8

    .line 8
    new-instance v9, Ls1/k;

    const-string v10, "placement"

    invoke-direct {v9, v10, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v2, v7

    const/4 v8, 0x2

    .line 9
    iget-object v9, v1, Le/a/i/b0/d/a;->d:Ljava/lang/Integer;

    .line 10
    new-instance v10, Ls1/k;

    const-string v11, "searchType"

    invoke-direct {v10, v11, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v2, v8

    const/4 v8, 0x3

    .line 11
    iget-object v9, v1, Le/a/i/b0/d/a;->e:Ljava/lang/String;

    .line 12
    new-instance v10, Ls1/k;

    const-string v11, "name"

    invoke-direct {v10, v11, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v2, v8

    const/4 v8, 0x4

    .line 13
    iget-object v9, v1, Le/a/i/b0/d/a;->f:Ljava/lang/String;

    .line 14
    new-instance v10, Ls1/k;

    const-string v11, "countryCode"

    invoke-direct {v10, v11, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v2, v8

    const/4 v8, 0x5

    .line 15
    iget-object v9, v1, Le/a/i/b0/d/a;->a:Ljava/lang/String;

    .line 16
    new-instance v10, Ls1/k;

    const-string v11, "q"

    invoke-direct {v10, v11, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v2, v8

    const/4 v8, 0x6

    .line 17
    iget-object v1, v1, Le/a/i/b0/d/a;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 18
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-gez v9, :cond_4

    move v9, v7

    goto :goto_2

    :cond_4
    move v9, v5

    .line 19
    :goto_2
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 20
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_3

    :cond_5
    move-object v1, v6

    .line 21
    :goto_3
    new-instance v9, Ls1/k;

    const-string v10, "spamScore"

    invoke-direct {v9, v10, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v2, v8

    .line 22
    invoke-static {v2}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v1

    .line 23
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 24
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 25
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_7

    move v9, v7

    goto :goto_5

    :cond_7
    move v9, v5

    .line 26
    :goto_5
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 27
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 28
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v9, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 29
    :cond_8
    new-instance v1, Le/a/i/b0/e/e$b;

    invoke-direct {v1, v0, v2, v6}, Le/a/i/b0/e/e$b;-><init>(Le/a/i/b0/e/e;Ljava/util/Map;Ls1/w/d;)V

    iput v7, v3, Le/a/i/b0/e/e$a;->e:I

    invoke-static {v1, v3}, Le/m/d/y/n;->m1(Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_9

    return-object v4

    .line 30
    :cond_9
    :goto_6
    check-cast v2, Lx3/a0;

    if-eqz v2, :cond_a

    .line 31
    invoke-virtual {v2}, Lx3/a0;->b()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 32
    iget-object v1, v2, Lx3/a0;->b:Ljava/lang/Object;

    .line 33
    move-object v6, v1

    check-cast v6, Lcom/truecaller/ads/keywords/model/AdCampaignsRestDto;

    :cond_a
    return-object v6
.end method
