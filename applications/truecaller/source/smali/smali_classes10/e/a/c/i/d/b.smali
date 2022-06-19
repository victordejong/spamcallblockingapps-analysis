.class public final Le/a/c/i/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/i/d/a;


# instance fields
.field public final a:I

.field public final b:Le/a/c/c/f/g;

.field public final c:Le/a/c/c/f/b;

.field public final d:Le/a/c/c/f/n;

.field public final e:Le/a/c/r/h/b;

.field public final f:Le/q/a/a/a;

.field public final g:Le/a/c/c0/o;

.field public final h:Le/a/c/b/j;

.field public final i:Le/a/c/i/b/d;

.field public final j:Le/a/c/w/o0/g;

.field public final k:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/c/c/f/g;Le/a/c/c/f/b;Le/a/c/c/f/n;Le/a/c/r/h/b;Le/q/a/a/a;Le/a/c/c0/o;Le/a/c/b/j;Le/a/c/b/e;Le/a/c/i/b/d;Le/a/c/w/o0/g;Ls1/w/f;)V
    .locals 1
    .param p11    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "enrichmentUseCases"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountModelUseCases"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateUseCases"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsBinder"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountsManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightConfig"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environmentHelper"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linkPruneSeed"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartSmsFeatureFilter"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/i/d/b;->b:Le/a/c/c/f/g;

    iput-object p2, p0, Le/a/c/i/d/b;->c:Le/a/c/c/f/b;

    iput-object p3, p0, Le/a/c/i/d/b;->d:Le/a/c/c/f/n;

    iput-object p4, p0, Le/a/c/i/d/b;->e:Le/a/c/r/h/b;

    iput-object p5, p0, Le/a/c/i/d/b;->f:Le/q/a/a/a;

    iput-object p6, p0, Le/a/c/i/d/b;->g:Le/a/c/c0/o;

    iput-object p7, p0, Le/a/c/i/d/b;->h:Le/a/c/b/j;

    iput-object p9, p0, Le/a/c/i/d/b;->i:Le/a/c/i/b/d;

    iput-object p10, p0, Le/a/c/i/d/b;->j:Le/a/c/w/o0/g;

    iput-object p11, p0, Le/a/c/i/d/b;->k:Ls1/w/f;

    .line 2
    invoke-interface {p8}, Le/a/c/b/e;->b()Lcom/truecaller/insights/state/MemoryLevel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/16 p1, 0xc8

    goto :goto_0

    :cond_0
    const/16 p1, 0x64

    goto :goto_0

    :cond_1
    const/16 p1, 0x28

    :goto_0
    iput p1, p0, Le/a/c/i/d/b;->a:I

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 17
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

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Le/a/c/i/d/b$g;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Le/a/c/i/d/b$g;

    iget v3, v2, Le/a/c/i/d/b$g;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/c/i/d/b$g;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/c/i/d/b$g;

    invoke-direct {v2, v1, v0}, Le/a/c/i/d/b$g;-><init>(Le/a/c/i/d/b;Ls1/w/d;)V

    :goto_0
    iget-object v0, v2, Le/a/c/i/d/b$g;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/c/i/d/b$g;->e:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-eqz v4, :cond_4

    if-eq v4, v5, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v8, :cond_1

    :try_start_0
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v4, v2, Le/a/c/i/d/b$g;->j:Ljava/lang/Object;

    iget-object v5, v2, Le/a/c/i/d/b$g;->i:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v9, v2, Le/a/c/i/d/b$g;->h:Ljava/lang/Object;

    check-cast v9, Ljava/util/Collection;

    iget-object v10, v2, Le/a/c/i/d/b$g;->g:Ljava/lang/Object;

    check-cast v10, Le/a/c/i/d/b;

    :try_start_1
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_3
    iget-object v4, v2, Le/a/c/i/d/b$g;->g:Ljava/lang/Object;

    check-cast v4, Le/a/c/i/d/b;

    :try_start_2
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_4
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_3
    iget-object v0, v1, Le/a/c/i/d/b;->b:Le/a/c/c/f/g;

    iput-object v1, v2, Le/a/c/i/d/b$g;->g:Ljava/lang/Object;

    iput v5, v2, Le/a/c/i/d/b$g;->e:I

    invoke-interface {v0, v2}, Le/a/c/c/f/g;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_5

    return-object v3

    :cond_5
    move-object v4, v1

    .line 5
    :goto_1
    check-cast v0, Ljava/lang/Iterable;

    .line 6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v16, v5

    move-object v5, v0

    move-object/from16 v0, v16

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object v10, v15

    check-cast v10, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    .line 8
    iget-object v9, v4, Le/a/c/i/d/b;->j:Le/a/c/w/o0/g;

    const/4 v11, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    iput-object v4, v2, Le/a/c/i/d/b$g;->g:Ljava/lang/Object;

    iput-object v0, v2, Le/a/c/i/d/b$g;->h:Ljava/lang/Object;

    iput-object v5, v2, Le/a/c/i/d/b$g;->i:Ljava/lang/Object;

    iput-object v15, v2, Le/a/c/i/d/b$g;->j:Ljava/lang/Object;

    iput v7, v2, Le/a/c/i/d/b$g;->e:I

    move-object v12, v2

    invoke-static/range {v9 .. v14}, Le/a/c/p/a;->F(Le/a/c/w/o0/g;Lcom/truecaller/insights/models/pdo/ParsedDataObject;ZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_6

    return-object v3

    :cond_6
    move-object v10, v4

    move-object v4, v15

    move-object/from16 v16, v9

    move-object v9, v0

    move-object/from16 v0, v16

    :goto_3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v9, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object v0, v9

    move-object v4, v10

    goto :goto_2

    .line 11
    :cond_8
    check-cast v0, Ljava/util/List;

    .line 12
    iput-object v6, v2, Le/a/c/i/d/b$g;->g:Ljava/lang/Object;

    iput-object v6, v2, Le/a/c/i/d/b$g;->h:Ljava/lang/Object;

    iput-object v6, v2, Le/a/c/i/d/b$g;->i:Ljava/lang/Object;

    iput-object v6, v2, Le/a/c/i/d/b$g;->j:Ljava/lang/Object;

    iput v8, v2, Le/a/c/i/d/b$g;->e:I

    invoke-virtual {v4, v0, v2}, Le/a/c/i/d/b;->e(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-ne v0, v3, :cond_9

    return-object v3

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 14
    sget-object v2, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    .line 15
    invoke-virtual {v2, v0, v6}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 16
    :cond_9
    :goto_4
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method

.method public b()V
    .locals 21

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Le/a/c/i/d/b;->h:Le/a/c/b/j;

    invoke-interface {v0}, Le/a/c/b/j;->K()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2
    iget-object v2, v1, Le/a/c/i/d/b;->f:Le/q/a/a/a;

    .line 3
    iget-object v0, v2, Le/q/a/a/a;->b:Le/q/a/a/b/a;

    invoke-virtual {v0}, Le/q/a/a/b/a;->c()Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/q/a/d/c;

    .line 6
    invoke-virtual {v4}, Le/q/a/d/c;->e()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 8
    invoke-virtual {v4}, Le/q/a/d/c;->e()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 12
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "x"

    const-string v8, "X"

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/q/a/d/c;

    .line 15
    invoke-virtual {v6}, Le/q/a/d/c;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v6}, Le/q/a/d/c;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    .line 16
    :cond_2
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 17
    :cond_3
    :goto_3
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 18
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/q/a/d/c;

    .line 20
    invoke-virtual {v6}, Le/q/a/d/c;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    .line 21
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    array-length v11, v9

    const/4 v12, 0x0

    move v13, v12

    :goto_5
    if-ge v12, v11, :cond_7

    aget-char v14, v9, v12

    .line 23
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Le/q/a/d/c;

    move-object/from16 v16, v3

    .line 24
    array-length v3, v9

    invoke-virtual {v1}, Le/q/a/d/c;->c()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_5

    invoke-virtual {v1}, Le/q/a/d/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v14, v3, :cond_5

    const/16 v3, 0x58

    if-eq v14, v3, :cond_5

    const/16 v3, 0x78

    if-eq v14, v3, :cond_5

    .line 25
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    move-object/from16 v1, p0

    move-object/from16 v3, v16

    move-object/from16 v4, v18

    goto :goto_6

    :cond_6
    move-object/from16 v16, v3

    move-object/from16 v18, v4

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p0

    goto :goto_5

    :cond_7
    move-object/from16 v16, v3

    move-object/from16 v18, v4

    .line 26
    new-instance v1, Le/q/a/b/a;

    invoke-direct {v1, v6, v10}, Le/q/a/b/a;-><init>(Le/q/a/d/c;Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    goto :goto_4

    :cond_8
    move-object/from16 v16, v3

    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/q/a/b/a;

    .line 28
    iget-object v4, v3, Le/q/a/b/a;->a:Le/q/a/d/c;

    invoke-virtual {v4}, Le/q/a/d/c;->c()Ljava/lang/String;

    move-result-object v4

    .line 29
    iget-object v5, v3, Le/q/a/b/a;->b:Ljava/util/Set;

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/q/a/b/a;

    .line 31
    iget-object v10, v9, Le/q/a/b/a;->a:Le/q/a/d/c;

    invoke-virtual {v10}, Le/q/a/d/c;->c()Ljava/lang/String;

    move-result-object v10

    .line 32
    iget-object v11, v9, Le/q/a/b/a;->b:Ljava/util/Set;

    .line 33
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_13

    iget-boolean v12, v9, Le/q/a/b/a;->c:Z

    if-nez v12, :cond_13

    iget-object v12, v9, Le/q/a/b/a;->e:Ljava/util/List;

    .line 34
    invoke-interface {v12, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_13

    iget-object v12, v3, Le/q/a/b/a;->e:Ljava/util/List;

    .line 35
    invoke-interface {v12, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_13

    const/4 v12, 0x1

    .line 36
    invoke-static {v4, v10, v12}, Le/q/a/c/c;->b(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v10

    if-nez v10, :cond_e

    .line 37
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 38
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Le/q/a/d/c;

    .line 40
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_8
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v12, v18

    check-cast v12, Le/q/a/d/c;

    move-object/from16 v18, v1

    .line 41
    invoke-virtual {v15}, Le/q/a/d/c;->c()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v6

    invoke-virtual {v12}, Le/q/a/d/c;->d()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v20, v14

    const/4 v14, 0x1

    invoke-static {v1, v6, v14}, Le/q/a/c/c;->b(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    if-eqz v1, :cond_b

    .line 42
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 43
    :cond_b
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    move-object/from16 v1, v18

    move-object/from16 v6, v19

    move-object/from16 v14, v20

    const/4 v12, 0x1

    goto :goto_8

    :cond_c
    move-object/from16 v18, v1

    move-object/from16 v19, v6

    .line 44
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 45
    iget-object v1, v3, Le/q/a/b/a;->b:Ljava/util/Set;

    iget-object v6, v9, Le/q/a/b/a;->b:Ljava/util/Set;

    invoke-interface {v1, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x1

    .line 46
    iput-boolean v1, v9, Le/q/a/b/a;->c:Z

    goto :goto_a

    .line 47
    :cond_d
    iget-object v1, v3, Le/q/a/b/a;->b:Ljava/util/Set;

    invoke-interface {v1, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 48
    iget-object v1, v9, Le/q/a/b/a;->b:Ljava/util/Set;

    invoke-interface {v1, v13}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :goto_a
    move-object/from16 v17, v5

    goto :goto_d

    :cond_e
    move-object/from16 v18, v1

    move-object/from16 v19, v6

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/q/a/d/c;

    .line 51
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Le/q/a/d/c;

    .line 52
    invoke-virtual {v10}, Le/q/a/d/c;->c()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Le/q/a/d/c;->c()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v5

    const/4 v5, 0x1

    invoke-static {v14, v15, v5}, Le/q/a/c/c;->b(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v14

    if-eqz v14, :cond_f

    .line 53
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    move-object/from16 v5, v17

    goto :goto_c

    :cond_10
    move-object/from16 v17, v5

    goto :goto_b

    :cond_11
    move-object/from16 v17, v5

    const/4 v5, 0x1

    .line 54
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_12

    .line 55
    iput-boolean v5, v9, Le/q/a/b/a;->c:Z

    .line 56
    iget-object v1, v3, Le/q/a/b/a;->d:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_12
    :goto_d
    iget-object v1, v9, Le/q/a/b/a;->e:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_13
    move-object/from16 v18, v1

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    :goto_e
    move-object/from16 v5, v17

    move-object/from16 v1, v18

    move-object/from16 v6, v19

    goto/16 :goto_7

    .line 58
    :cond_14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/q/a/b/a;

    .line 60
    iget-object v4, v3, Le/q/a/b/a;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/q/a/b/a;

    .line 61
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v6, v3, Le/q/a/b/a;->b:Ljava/util/Set;

    iget-object v5, v5, Le/q/a/b/a;->a:Le/q/a/d/c;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 63
    :cond_16
    iget-boolean v4, v3, Le/q/a/b/a;->c:Z

    if-nez v4, :cond_15

    .line 64
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 65
    :cond_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/q/a/b/a;

    .line 67
    iget-object v4, v3, Le/q/a/b/a;->b:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_18

    .line 68
    iget-object v4, v3, Le/q/a/b/a;->b:Ljava/util/Set;

    .line 69
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/q/a/d/c;

    .line 70
    invoke-virtual {v5}, Le/q/a/d/c;->c()Ljava/lang/String;

    move-result-object v6

    .line 71
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_19

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_19

    goto :goto_12

    :cond_1a
    const/4 v5, 0x0

    :goto_12
    if-eqz v5, :cond_18

    .line 72
    new-instance v4, Le/q/a/b/a;

    iget-object v6, v3, Le/q/a/b/a;->b:Ljava/util/Set;

    invoke-direct {v4, v5, v6}, Le/q/a/b/a;-><init>(Le/q/a/d/c;Ljava/util/Collection;)V

    .line 73
    iget-object v6, v4, Le/q/a/b/a;->b:Ljava/util/Set;

    iget-object v3, v3, Le/q/a/b/a;->a:Le/q/a/d/c;

    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v3, v4, Le/q/a/b/a;->b:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 76
    :cond_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/q/a/b/a;

    .line 77
    iget-object v3, v0, Le/q/a/b/a;->a:Le/q/a/d/c;

    .line 78
    iget-object v0, v0, Le/q/a/b/a;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/q/a/d/c;

    .line 79
    :try_start_0
    invoke-virtual {v2, v0, v3}, Le/q/a/a/a;->a(Le/q/a/d/c;Le/q/a/d/c;)V
    :try_end_0
    .catch Le/q/c/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_13

    :catch_0
    move-exception v0

    move-object v5, v0

    .line 80
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13

    :cond_1d
    move-object/from16 v1, p0

    move-object/from16 v3, v16

    goto/16 :goto_1

    :cond_1e
    return-void
.end method

.method public c()V
    .locals 6

    .line 1
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v0

    const-string v1, "WorkManager.getInstance(\u2026icationBase.getAppBase())"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v1, Ln3/m0/h;->b:Ln3/m0/h;

    .line 5
    new-instance v2, Le/a/y2/h;

    const-class v3, Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;

    invoke-static {v3}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v3

    const-wide/16 v4, 0x6

    invoke-static {v4, v5}, Lw3/b/a/i;->c(J)Lw3/b/a/i;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Le/a/y2/h;-><init>(Ls1/a/c;Lw3/b/a/i;)V

    .line 6
    sget-object v3, Ln3/m0/q;->a:Ln3/m0/q;

    invoke-virtual {v2, v3}, Le/a/y2/h;->f(Ln3/m0/q;)Le/a/y2/h;

    .line 7
    iget-object v3, v2, Le/a/y2/h;->c:Ln3/m0/d$a;

    const/4 v4, 0x1

    .line 8
    iput-boolean v4, v3, Ln3/m0/d$a;->d:Z

    .line 9
    iput-boolean v4, v3, Ln3/m0/d$a;->b:Z

    .line 10
    invoke-virtual {v2}, Le/a/y2/h;->a()Ln3/m0/r;

    move-result-object v2

    const-string v3, "InsightsEnrichmentWorkerOneOff"

    .line 11
    invoke-virtual {v0, v3, v1, v2}, Ln3/m0/y;->a(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/w;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ln3/m0/w;->a()Ln3/m0/s;

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/i/d/b;->i:Le/a/c/i/b/d;

    .line 2
    invoke-virtual {v0}, Le/a/c/i/b/d;->a()Lorg/json/JSONObject;

    move-result-object v1

    sput-object v1, Le/q/e/c/a;->a:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {v0}, Le/a/c/i/b/d;->b()Lorg/json/JSONObject;

    move-result-object v0

    sput-object v0, Le/q/e/c/a;->b:Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 4
    sput-object v0, Le/q/e/c/a;->c:Lorg/json/JSONObject;

    const/4 v1, 0x1

    .line 5
    sput-boolean v1, Le/q/e/c/a;->d:Z

    .line 6
    iget-object v1, p0, Le/a/c/i/d/b;->k:Ls1/w/f;

    new-instance v2, Le/a/c/i/d/b$f;

    invoke-direct {v2, p0, v0}, Le/a/c/i/d/b$f;-><init>(Le/a/c/i/d/b;Ls1/w/d;)V

    invoke-static {v1, v2}, Ls1/a/a/a/v0/f/d;->b3(Ls1/w/f;Ls1/z/b/p;)Ljava/lang/Object;

    return-void
.end method

.method public e(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Le/a/c/i/d/b$c;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Le/a/c/i/d/b$c;

    iget v2, v1, Le/a/c/i/d/b$c;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/c/i/d/b$c;->e:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/c/i/d/b$c;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Le/a/c/i/d/b$c;-><init>(Le/a/c/i/d/b;Ls1/w/d;)V

    :goto_0
    iget-object v0, v1, Le/a/c/i/d/b$c;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v1, Le/a/c/i/d/b$c;->e:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v4, v1, Le/a/c/i/d/b$c;->k:Ljava/lang/Object;

    check-cast v4, Ljava/util/Collection;

    iget-object v6, v1, Le/a/c/i/d/b$c;->j:Ljava/lang/Object;

    check-cast v6, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    iget-object v7, v1, Le/a/c/i/d/b$c;->i:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v8, v1, Le/a/c/i/d/b$c;->h:Ljava/lang/Object;

    check-cast v8, Ljava/util/Collection;

    iget-object v9, v1, Le/a/c/i/d/b$c;->g:Ljava/lang/Object;

    check-cast v9, Le/a/c/i/d/b;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v13, v6

    move-object v12, v7

    move-object v14, v8

    move-object v15, v9

    goto :goto_2

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    const/16 v4, 0xa

    move-object/from16 v6, p1

    invoke-static {v6, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v12, v2

    move-object/from16 v16, v4

    move-object v4, v0

    move-object/from16 v0, v16

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 6
    move-object v13, v6

    check-cast v13, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    .line 7
    invoke-virtual {v13}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Bank"

    invoke-static {v6, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v12, Le/a/c/i/d/b;->h:Le/a/c/b/j;

    invoke-interface {v6}, Le/a/c/b/j;->K()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v12, Le/a/c/i/d/b;->j:Le/a/c/w/o0/g;

    const/4 v8, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    iput-object v12, v1, Le/a/c/i/d/b$c;->g:Ljava/lang/Object;

    iput-object v4, v1, Le/a/c/i/d/b$c;->h:Ljava/lang/Object;

    iput-object v0, v1, Le/a/c/i/d/b$c;->i:Ljava/lang/Object;

    iput-object v13, v1, Le/a/c/i/d/b$c;->j:Ljava/lang/Object;

    iput-object v4, v1, Le/a/c/i/d/b$c;->k:Ljava/lang/Object;

    iput v5, v1, Le/a/c/i/d/b$c;->e:I

    move-object v7, v13

    move-object v9, v1

    invoke-static/range {v6 .. v11}, Le/a/c/p/a;->F(Le/a/c/w/o0/g;Lcom/truecaller/insights/models/pdo/ParsedDataObject;ZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_3

    return-object v3

    :cond_3
    move-object v14, v4

    move-object v15, v12

    move-object v12, v0

    move-object v0, v6

    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    :try_start_0
    iget-object v6, v15, Le/a/c/i/d/b;->e:Le/a/c/r/h/b;

    const-string v8, "acc_num"

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v7, v13

    invoke-static/range {v6 .. v11}, Le/a/c/p/a;->u3(Le/a/c/r/h/b;Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v6, v15, Le/a/c/i/d/b;->e:Le/a/c/r/h/b;

    const-string v8, "acc_type"

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v7, v13

    invoke-static/range {v6 .. v11}, Le/a/c/p/a;->u3(Le/a/c/r/h/b;Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-virtual {v13}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 11
    iget-object v8, v15, Le/a/c/i/d/b;->f:Le/q/a/a/a;

    invoke-virtual {v8, v7, v0, v6}, Le/q/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/q/a/d/c;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {v0}, Le/q/a/d/c;->g()J

    move-result-wide v6

    .line 13
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v6, v7}, Ljava/lang/Long;-><init>(J)V

    .line 14
    invoke-virtual {v13, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAccountModelId(Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 16
    sget-object v6, Le/a/c/o/a;->a:Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 17
    sget-object v6, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    new-instance v7, Lcom/truecaller/log/UnmutedException$InsightsExceptions;

    sget-object v8, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;->ACCOUNT_MODEL_EXCEPTION:Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    invoke-direct {v7, v8}, Lcom/truecaller/log/UnmutedException$InsightsExceptions;-><init>(Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;)V

    invoke-virtual {v6, v7, v0}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_4
    :goto_3
    move-object v0, v12

    move-object v12, v15

    goto :goto_4

    :cond_5
    move-object v14, v4

    .line 18
    :goto_4
    invoke-interface {v4, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v4, v14

    goto/16 :goto_1

    .line 19
    :cond_6
    check-cast v4, Ljava/util/List;

    return-object v4
.end method

.method public f()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/i/d/b;->k:Ls1/w/f;

    new-instance v1, Le/a/c/i/d/b$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/c/i/d/b$b;-><init>(Le/a/c/i/d/b;Ls1/w/d;)V

    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->b3(Ls1/w/f;Ls1/z/b/p;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public g(Ljava/lang/Integer;ILs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "I",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p1, p3, Le/a/c/i/d/b$i;

    if-eqz p1, :cond_0

    move-object p1, p3

    check-cast p1, Le/a/c/i/d/b$i;

    iget p2, p1, Le/a/c/i/d/b$i;->e:I

    const/high16 v0, -0x80000000

    and-int v1, p2, v0

    if-eqz v1, :cond_0

    sub-int/2addr p2, v0

    iput p2, p1, Le/a/c/i/d/b$i;->e:I

    goto :goto_0

    :cond_0
    new-instance p1, Le/a/c/i/d/b$i;

    invoke-direct {p1, p0, p3}, Le/a/c/i/d/b$i;-><init>(Le/a/c/i/d/b;Ls1/w/d;)V

    :goto_0
    iget-object p2, p1, Le/a/c/i/d/b$i;->d:Ljava/lang/Object;

    sget-object p3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v0, p1, Le/a/c/i/d/b$i;->e:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_1

    :try_start_0
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

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
    :try_start_1
    iget-object p2, p0, Le/a/c/i/d/b;->b:Le/a/c/c/f/g;

    iput v1, p1, Le/a/c/i/d/b$i;->e:I

    invoke-interface {p2, p1}, Le/a/c/c/f/g;->i(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p3, :cond_3

    return-object p3

    .line 5
    :cond_3
    :goto_1
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object p1

    .line 6
    invoke-static {p1}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object p1

    const-string p2, "WorkManager.getInstance(\u2026icationBase.getAppBase())"

    .line 7
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object p2, Ln3/m0/h;->a:Ln3/m0/h;

    .line 9
    const-class p3, Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;

    invoke-static {p3}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object p3

    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Lw3/b/a/i;->d(J)Lw3/b/a/i;

    const-string v0, "workerClass"

    .line 10
    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Ln3/m0/d$a;

    invoke-direct {v0}, Ln3/m0/d$a;-><init>()V

    .line 12
    sget-object v1, Ln3/m0/q;->a:Ln3/m0/q;

    const-string v2, "networkType"

    .line 13
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object v1, v0, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 15
    new-instance v1, Ln3/m0/r$a;

    invoke-static {p3}, Le/q/f/a/d/a;->O0(Ls1/a/c;)Ljava/lang/Class;

    move-result-object p3

    invoke-direct {v1, p3}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 16
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance p3, Ln3/m0/d;

    invoke-direct {p3, v0}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 18
    iget-object v0, v1, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object p3, v0, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 19
    invoke-virtual {v1}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object p3

    const-string v0, "OneTimeWorkRequest.Build\u2026t) }\n            .build()"

    invoke-static {p3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ln3/m0/r;

    const-string v0, "InsightsEnrichmentWorkerOneOff"

    .line 20
    invoke-virtual {p1, v0, p2, p3}, Ln3/m0/y;->a(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/w;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ln3/m0/w;->a()Ln3/m0/s;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    .line 23
    sget-object p2, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    const/4 p3, 0x0

    .line 24
    invoke-virtual {p2, p1, p3}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 25
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public h(Ls1/w/d;)Ljava/lang/Object;
    .locals 11
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

    instance-of v0, p1, Le/a/c/i/d/b$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/i/d/b$a;

    iget v1, v0, Le/a/c/i/d/b$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/i/d/b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/i/d/b$a;

    invoke-direct {v0, p0, p1}, Le/a/c/i/d/b$a;-><init>(Le/a/c/i/d/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/i/d/b$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/i/d/b$a;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/c/i/d/b$a;->k:Ljava/lang/Object;

    iget-object v6, v0, Le/a/c/i/d/b$a;->j:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    iget-object v7, v0, Le/a/c/i/d/b$a;->i:Ljava/lang/Object;

    check-cast v7, Ljava/util/Collection;

    iget-object v8, v0, Le/a/c/i/d/b$a;->h:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    iget-object v9, v0, Le/a/c/i/d/b$a;->g:Ljava/lang/Object;

    check-cast v9, Le/a/c/i/d/b;

    :try_start_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_2
    iget-object p1, p0, Le/a/c/i/d/b;->c:Le/a/c/c/f/b;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v2, Le/a/c/c/f/b$a;

    invoke-direct {v2, p1, v5}, Le/a/c/c/f/b$a;-><init>(Le/a/c/c/f/b;Ls1/w/d;)V

    invoke-static {v5, v2, v3, v5}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v9, p0

    move-object v8, p1

    move-object v7, v2

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object p1, v2

    check-cast p1, Le/q/a/d/c;

    .line 9
    invoke-virtual {p1}, Le/q/a/d/c;->e()Ljava/lang/String;

    move-result-object p1

    const-string v10, "it.address"

    invoke-static {p1, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v9, v0, Le/a/c/i/d/b$a;->g:Ljava/lang/Object;

    iput-object v8, v0, Le/a/c/i/d/b$a;->h:Ljava/lang/Object;

    iput-object v7, v0, Le/a/c/i/d/b$a;->i:Ljava/lang/Object;

    iput-object v6, v0, Le/a/c/i/d/b$a;->j:Ljava/lang/Object;

    iput-object v2, v0, Le/a/c/i/d/b$a;->k:Ljava/lang/Object;

    iput v3, v0, Le/a/c/i/d/b$a;->e:I

    invoke-virtual {v9, p1, v0}, Le/a/c/i/d/b;->i(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v7, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_6
    check-cast v7, Ljava/util/List;

    .line 13
    iget-object p1, v9, Le/a/c/i/d/b;->c:Le/a/c/c/f/b;

    invoke-static {v8, v7}, Ls1/u/i;->Z(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    iput-object v5, v0, Le/a/c/i/d/b$a;->g:Ljava/lang/Object;

    iput-object v5, v0, Le/a/c/i/d/b$a;->h:Ljava/lang/Object;

    iput-object v5, v0, Le/a/c/i/d/b$a;->i:Ljava/lang/Object;

    iput-object v5, v0, Le/a/c/i/d/b$a;->j:Ljava/lang/Object;

    iput-object v5, v0, Le/a/c/i/d/b$a;->k:Ljava/lang/Object;

    iput v4, v0, Le/a/c/i/d/b$a;->e:I

    invoke-virtual {p1, v2, v0}, Le/a/c/c/f/b;->g(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne p1, v1, :cond_7

    return-object v1

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 15
    sget-object v0, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    .line 16
    invoke-virtual {v0, p1, v5}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 17
    :cond_7
    :goto_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final i(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 13
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

    instance-of v0, p2, Le/a/c/i/d/b$d;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/i/d/b$d;

    iget v1, v0, Le/a/c/i/d/b$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/i/d/b$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/i/d/b$d;

    invoke-direct {v0, p0, p2}, Le/a/c/i/d/b$d;-><init>(Le/a/c/i/d/b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/i/d/b$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/i/d/b$d;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Le/a/c/i/d/b$d;->j:Ljava/lang/Object;

    iget-object v2, v0, Le/a/c/i/d/b$d;->i:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v5, v0, Le/a/c/i/d/b$d;->h:Ljava/lang/Object;

    check-cast v5, Ljava/util/Collection;

    iget-object v6, v0, Le/a/c/i/d/b$d;->g:Ljava/lang/Object;

    check-cast v6, Le/a/c/i/d/b;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v11, p1

    move-object p1, v5

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/c/i/d/b$d;->g:Ljava/lang/Object;

    check-cast p1, Le/a/c/i/d/b;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/c/i/d/b;->b:Le/a/c/c/f/g;

    iput-object p0, v0, Le/a/c/i/d/b$d;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/c/i/d/b$d;->e:I

    invoke-interface {p2, p1, v0}, Le/a/c/c/f/g;->m(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    .line 5
    :goto_1
    check-cast p2, Ljava/util/List;

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v12, p2

    move-object p2, p1

    move-object p1, v2

    move-object v2, v12

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v6, v11

    check-cast v6, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    .line 8
    iget-object v5, p2, Le/a/c/i/d/b;->j:Le/a/c/w/o0/g;

    const/4 v7, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    iput-object p2, v0, Le/a/c/i/d/b$d;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/i/d/b$d;->h:Ljava/lang/Object;

    iput-object v2, v0, Le/a/c/i/d/b$d;->i:Ljava/lang/Object;

    iput-object v11, v0, Le/a/c/i/d/b$d;->j:Ljava/lang/Object;

    iput v4, v0, Le/a/c/i/d/b$d;->e:I

    move-object v8, v0

    invoke-static/range {v5 .. v10}, Le/a/c/p/a;->F(Le/a/c/w/o0/g;Lcom/truecaller/insights/models/pdo/ParsedDataObject;ZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_5

    return-object v1

    :cond_5
    move-object v6, p2

    move-object p2, v5

    :goto_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 9
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object p2, v6

    goto :goto_2

    .line 11
    :cond_7
    check-cast p1, Ljava/util/List;

    .line 12
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v3

    .line 13
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ls1/w/d;)Ljava/lang/Object;
    .locals 14
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

    instance-of v0, p1, Le/a/c/i/d/b$e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/i/d/b$e;

    iget v1, v0, Le/a/c/i/d/b$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/i/d/b$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/i/d/b$e;

    invoke-direct {v0, p0, p1}, Le/a/c/i/d/b$e;-><init>(Le/a/c/i/d/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/i/d/b$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/i/d/b$e;->e:I

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v5, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/c/i/d/b$e;->j:Ljava/lang/Object;

    check-cast v2, Ljava/util/Date;

    iget-object v4, v0, Le/a/c/i/d/b$e;->i:Ljava/lang/Object;

    check-cast v4, Lcom/truecaller/insights/models/states/InsightState;

    iget-object v7, v0, Le/a/c/i/d/b$e;->h:Ljava/lang/Object;

    check-cast v7, Le/q/e/a/d;

    iget-object v8, v0, Le/a/c/i/d/b$e;->g:Ljava/lang/Object;

    check-cast v8, Le/a/c/i/d/b;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    iget-object v2, v0, Le/a/c/i/d/b$e;->h:Ljava/lang/Object;

    check-cast v2, Le/q/e/a/d;

    iget-object v7, v0, Le/a/c/i/d/b$e;->g:Ljava/lang/Object;

    check-cast v7, Le/a/c/i/d/b;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v8, v7

    move-object v7, v2

    goto :goto_1

    :cond_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Le/q/e/a/d;

    .line 5
    new-instance v2, Le/a/c/c/f/i;

    .line 6
    iget-object v8, p0, Le/a/c/i/d/b;->b:Le/a/c/c/f/g;

    .line 7
    iget-object v9, p0, Le/a/c/i/d/b;->e:Le/a/c/r/h/b;

    .line 8
    iget-object v10, p0, Le/a/c/i/d/b;->d:Le/a/c/c/f/n;

    .line 9
    iget-object v11, p0, Le/a/c/i/d/b;->g:Le/a/c/c0/o;

    .line 10
    iget-object v12, p0, Le/a/c/i/d/b;->k:Ls1/w/f;

    move-object v7, v2

    .line 11
    invoke-direct/range {v7 .. v12}, Le/a/c/c/f/i;-><init>(Le/a/c/c/f/g;Le/a/c/r/h/b;Le/a/c/c/f/n;Le/a/c/c0/o;Ls1/w/f;)V

    .line 12
    invoke-direct {p1, v2}, Le/q/e/a/d;-><init>(Le/q/e/a/c;)V

    .line 13
    iget-object v2, p0, Le/a/c/i/d/b;->d:Le/a/c/c/f/n;

    iput-object p0, v0, Le/a/c/i/d/b$e;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/i/d/b$e;->h:Ljava/lang/Object;

    iput v6, v0, Le/a/c/i/d/b$e;->e:I

    const-string v7, "INSIGHTS.LINKING"

    invoke-interface {v2, v7, v0}, Le/a/c/c/f/n;->q(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v8, p0

    move-object v7, p1

    move-object p1, v2

    .line 14
    :goto_1
    check-cast p1, Lcom/truecaller/insights/models/states/InsightState;

    .line 15
    invoke-virtual {p1}, Lcom/truecaller/insights/models/states/InsightState;->getLastUpdatedAt()Ljava/util/Date;

    move-result-object v2

    .line 16
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v9, Lw3/b/a/b;

    invoke-direct {v9, v2}, Lw3/b/a/b;-><init>(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v9, v5}, Lw3/b/a/b;->z(I)Lw3/b/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lw3/b/a/e0/c;->n()Ljava/util/Date;

    move-result-object v2

    .line 19
    iget-object v9, v8, Le/a/c/i/d/b;->b:Le/a/c/c/f/g;

    iget v10, v8, Le/a/c/i/d/b;->a:I

    iput-object v8, v0, Le/a/c/i/d/b$e;->g:Ljava/lang/Object;

    iput-object v7, v0, Le/a/c/i/d/b$e;->h:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/i/d/b$e;->i:Ljava/lang/Object;

    iput-object v2, v0, Le/a/c/i/d/b$e;->j:Ljava/lang/Object;

    iput v4, v0, Le/a/c/i/d/b$e;->e:I

    invoke-interface {v9, v2, v10, v0}, Le/a/c/c/f/g;->e(Ljava/util/Date;ILs1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_6

    return-object v1

    :cond_6
    move-object v13, v4

    move-object v4, p1

    move-object p1, v13

    .line 20
    :cond_7
    :goto_2
    check-cast p1, Ljava/util/List;

    .line 21
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    xor-int/2addr v9, v6

    if-eqz v9, :cond_a

    .line 22
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Number of unlinked records after ts: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "linkEngine"

    invoke-static {v7, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "records"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v2, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {p1, v9}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 26
    check-cast v10, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    .line 27
    new-instance v11, Le/a/c/r/e/b/a;

    iget-object v12, v8, Le/a/c/i/d/b;->e:Le/a/c/r/h/b;

    invoke-direct {v11, v10, v12}, Le/a/c/r/e/b/a;-><init>(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Le/a/c/r/h/b;)V

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 28
    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/q/e/b/f;

    .line 29
    invoke-virtual {v7, v9}, Le/q/e/b/e;->c(Le/q/e/b/f;)V

    goto :goto_4

    .line 30
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getCreatedAt()Ljava/util/Date;

    move-result-object v2

    .line 31
    iget-object p1, v8, Le/a/c/i/d/b;->b:Le/a/c/c/f/g;

    iget v9, v8, Le/a/c/i/d/b;->a:I

    iput-object v8, v0, Le/a/c/i/d/b$e;->g:Ljava/lang/Object;

    iput-object v7, v0, Le/a/c/i/d/b$e;->h:Ljava/lang/Object;

    iput-object v4, v0, Le/a/c/i/d/b$e;->i:Ljava/lang/Object;

    iput-object v2, v0, Le/a/c/i/d/b$e;->j:Ljava/lang/Object;

    iput v5, v0, Le/a/c/i/d/b$e;->e:I

    invoke-interface {p1, v2, v9, v0}, Le/a/c/c/f/g;->e(Ljava/util/Date;ILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    .line 32
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Completed linking batches, now updating the linkState to:v "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    invoke-virtual {v7}, Le/q/e/b/e;->a()V

    .line 34
    iget-object p1, v8, Le/a/c/i/d/b;->d:Le/a/c/c/f/n;

    const/4 v5, 0x0

    iput-object v5, v0, Le/a/c/i/d/b$e;->g:Ljava/lang/Object;

    iput-object v5, v0, Le/a/c/i/d/b$e;->h:Ljava/lang/Object;

    iput-object v5, v0, Le/a/c/i/d/b$e;->i:Ljava/lang/Object;

    iput-object v5, v0, Le/a/c/i/d/b$e;->j:Ljava/lang/Object;

    iput v3, v0, Le/a/c/i/d/b$e;->e:I

    invoke-interface {p1, v4, v2, v0}, Le/a/c/c/f/n;->p(Lcom/truecaller/insights/models/states/InsightState;Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    return-object v1

    .line 35
    :cond_b
    :goto_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final k(Ls1/w/d;)Ljava/lang/Object;
    .locals 14
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

    instance-of v0, p1, Le/a/c/i/d/b$h;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/i/d/b$h;

    iget v1, v0, Le/a/c/i/d/b$h;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/i/d/b$h;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/i/d/b$h;

    invoke-direct {v0, p0, p1}, Le/a/c/i/d/b$h;-><init>(Le/a/c/i/d/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/i/d/b$h;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/i/d/b$h;->e:I

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v5, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/c/i/d/b$h;->j:Ljava/lang/Object;

    check-cast v2, Ljava/util/Date;

    iget-object v4, v0, Le/a/c/i/d/b$h;->i:Ljava/lang/Object;

    check-cast v4, Lcom/truecaller/insights/models/states/InsightState;

    iget-object v7, v0, Le/a/c/i/d/b$h;->h:Ljava/lang/Object;

    check-cast v7, Le/q/e/a/b;

    iget-object v8, v0, Le/a/c/i/d/b$h;->g:Ljava/lang/Object;

    check-cast v8, Le/a/c/i/d/b;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v2, v0, Le/a/c/i/d/b$h;->h:Ljava/lang/Object;

    check-cast v2, Le/q/e/a/b;

    iget-object v7, v0, Le/a/c/i/d/b$h;->g:Ljava/lang/Object;

    check-cast v7, Le/a/c/i/d/b;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v8, v7

    move-object v7, v2

    goto :goto_1

    :cond_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Le/q/e/a/b;

    new-instance v2, Le/a/c/c/f/f;

    iget-object v7, p0, Le/a/c/i/d/b;->b:Le/a/c/c/f/g;

    invoke-direct {v2, v7}, Le/a/c/c/f/f;-><init>(Le/a/c/c/f/g;)V

    invoke-direct {p1, v2}, Le/q/e/a/b;-><init>(Le/q/e/a/a;)V

    .line 5
    iget-object v2, p0, Le/a/c/i/d/b;->d:Le/a/c/c/f/n;

    iput-object p0, v0, Le/a/c/i/d/b$h;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/i/d/b$h;->h:Ljava/lang/Object;

    iput v6, v0, Le/a/c/i/d/b$h;->e:I

    const-string v7, "INSIGHTS.PRUNING"

    invoke-interface {v2, v7, v0}, Le/a/c/c/f/n;->q(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v8, p0

    move-object v7, p1

    move-object p1, v2

    .line 6
    :goto_1
    check-cast p1, Lcom/truecaller/insights/models/states/InsightState;

    .line 7
    invoke-virtual {p1}, Lcom/truecaller/insights/models/states/InsightState;->getLastUpdatedAt()Ljava/util/Date;

    move-result-object v2

    .line 8
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v9, Lw3/b/a/b;

    invoke-direct {v9, v2}, Lw3/b/a/b;-><init>(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v9, v5}, Lw3/b/a/b;->z(I)Lw3/b/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lw3/b/a/e0/c;->n()Ljava/util/Date;

    move-result-object v2

    .line 11
    iget-object v9, v8, Le/a/c/i/d/b;->b:Le/a/c/c/f/g;

    iget v10, v8, Le/a/c/i/d/b;->a:I

    iput-object v8, v0, Le/a/c/i/d/b$h;->g:Ljava/lang/Object;

    iput-object v7, v0, Le/a/c/i/d/b$h;->h:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/i/d/b$h;->i:Ljava/lang/Object;

    iput-object v2, v0, Le/a/c/i/d/b$h;->j:Ljava/lang/Object;

    iput v4, v0, Le/a/c/i/d/b$h;->e:I

    invoke-interface {v9, v2, v10, v0}, Le/a/c/c/f/g;->l(Ljava/util/Date;ILs1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_6

    return-object v1

    :cond_6
    move-object v13, v4

    move-object v4, p1

    move-object p1, v13

    .line 12
    :cond_7
    :goto_2
    check-cast p1, Ljava/util/List;

    .line 13
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    xor-int/2addr v9, v6

    if-eqz v9, :cond_a

    .line 14
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Number of unPruned records after ts: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "pruneEngine"

    invoke-static {v7, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "records"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {p1, v9}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 18
    check-cast v10, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    .line 19
    new-instance v11, Le/a/c/r/e/b/a;

    iget-object v12, v8, Le/a/c/i/d/b;->e:Le/a/c/r/h/b;

    invoke-direct {v11, v10, v12}, Le/a/c/r/e/b/a;-><init>(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Le/a/c/r/h/b;)V

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 20
    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/q/e/b/f;

    .line 21
    invoke-virtual {v7, v9}, Le/q/e/b/e;->c(Le/q/e/b/f;)V

    goto :goto_4

    .line 22
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getCreatedAt()Ljava/util/Date;

    move-result-object v2

    .line 23
    iget-object p1, v8, Le/a/c/i/d/b;->b:Le/a/c/c/f/g;

    iget v9, v8, Le/a/c/i/d/b;->a:I

    iput-object v8, v0, Le/a/c/i/d/b$h;->g:Ljava/lang/Object;

    iput-object v7, v0, Le/a/c/i/d/b$h;->h:Ljava/lang/Object;

    iput-object v4, v0, Le/a/c/i/d/b$h;->i:Ljava/lang/Object;

    iput-object v2, v0, Le/a/c/i/d/b$h;->j:Ljava/lang/Object;

    iput v5, v0, Le/a/c/i/d/b$h;->e:I

    invoke-interface {p1, v2, v9, v0}, Le/a/c/c/f/g;->l(Ljava/util/Date;ILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    .line 24
    :cond_a
    invoke-virtual {v7}, Le/q/e/b/e;->a()V

    .line 25
    iget-object p1, v8, Le/a/c/i/d/b;->d:Le/a/c/c/f/n;

    const/4 v5, 0x0

    iput-object v5, v0, Le/a/c/i/d/b$h;->g:Ljava/lang/Object;

    iput-object v5, v0, Le/a/c/i/d/b$h;->h:Ljava/lang/Object;

    iput-object v5, v0, Le/a/c/i/d/b$h;->i:Ljava/lang/Object;

    iput-object v5, v0, Le/a/c/i/d/b$h;->j:Ljava/lang/Object;

    iput v3, v0, Le/a/c/i/d/b$h;->e:I

    invoke-interface {p1, v4, v2, v0}, Le/a/c/c/f/n;->p(Lcom/truecaller/insights/models/states/InsightState;Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    return-object v1

    .line 26
    :cond_b
    :goto_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
