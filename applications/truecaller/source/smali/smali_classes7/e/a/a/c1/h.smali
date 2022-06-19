.class public final Le/a/a/c1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c1/d;


# instance fields
.field public final a:Le/a/p5/g;

.field public final b:Le/a/h5/w;

.field public final c:Le/a/o5/u0;

.field public final d:Le/a/a/k/t;

.field public final e:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/c1/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/p5/g;Le/a/h5/w;Le/a/o5/u0;Le/a/a/k/t;Le/a/r2/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/p5/g;",
            "Le/a/h5/w;",
            "Le/a/o5/u0;",
            "Le/a/a/k/t;",
            "Le/a/r2/f<",
            "Le/a/a/c1/l;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "deviceInfoUtil"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tcPermissionUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaUtils"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transportManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "draftTransportWrapper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c1/h;->a:Le/a/p5/g;

    iput-object p2, p0, Le/a/a/c1/h;->b:Le/a/h5/w;

    iput-object p3, p0, Le/a/a/c1/h;->c:Le/a/o5/u0;

    iput-object p4, p0, Le/a/a/c1/h;->d:Le/a/a/k/t;

    iput-object p5, p0, Le/a/a/c1/h;->e:Le/a/r2/f;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/messaging/data/types/Draft;Ljava/lang/String;ZLjava/lang/String;)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Draft;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Le/a/a/c1/a;",
            ">;"
        }
    .end annotation

    const-string v0, "draft"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simToken"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c1/h;->e:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/c1/l;

    invoke-interface {v0, p1, p2, p3, p4}, Le/a/a/c1/l;->a(Lcom/truecaller/messaging/data/types/Draft;Ljava/lang/String;ZLjava/lang/String;)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public b(Le/a/a/c1/b$e;ZLjava/lang/String;J)Le/a/r2/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/c1/b$e;",
            "Z",
            "Ljava/lang/String;",
            "J)",
            "Le/a/r2/x<",
            "Le/a/a/c1/c;",
            ">;"
        }
    .end annotation

    const-string v0, "preparationResult"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c1/h;->e:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Le/a/a/c1/l;

    .line 2
    iget-object v2, p1, Le/a/a/c1/b$e;->a:Ljava/util/List;

    .line 3
    iget-object v3, p1, Le/a/a/c1/b$e;->b:Ljava/lang/String;

    .line 4
    iget-boolean v4, p1, Le/a/a/c1/b$e;->c:Z

    move v5, p2

    move-object v6, p3

    move-wide v7, p4

    .line 5
    invoke-interface/range {v1 .. v8}, Le/a/a/c1/l;->b(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;J)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/util/List;Ljava/lang/String;ZZZ)Le/a/a/c1/b;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ls1/k<",
            "Lcom/truecaller/messaging/data/types/Draft;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Lcom/truecaller/messaging/data/types/BinaryEntity;",
            ">;>;>;",
            "Ljava/lang/String;",
            "ZZZ)",
            "Le/a/a/c1/b;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-string v4, "draftContent"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "simToken"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "draftsAndMedia"

    .line 1
    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->isTrue(Z[Ljava/lang/String;)V

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 3
    iget-object v7, v0, Le/a/a/c1/h;->a:Le/a/p5/g;

    invoke-interface {v7}, Le/a/p5/g;->c()Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Le/a/a/c1/b$d;->a:Le/a/a/c1/b$d;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v7, v0, Le/a/a/c1/h;->b:Le/a/h5/w;

    invoke-interface {v7}, Le/a/h5/w;->j()Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Le/a/a/c1/b$c;->a:Le/a/a/c1/b$c;

    goto :goto_0

    :cond_1
    move-object v7, v4

    :goto_0
    if-eqz v7, :cond_2

    goto/16 :goto_f

    :cond_2
    if-nez v3, :cond_5

    .line 5
    invoke-static/range {p1 .. p1}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object v7

    .line 6
    check-cast v7, Ls1/u/o;

    invoke-virtual {v7}, Ls1/u/o;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ls1/k;

    .line 7
    iget-object v9, v9, Ls1/k;->a:Ljava/lang/Object;

    .line 8
    check-cast v9, Lcom/truecaller/messaging/data/types/Draft;

    invoke-virtual {v9}, Lcom/truecaller/messaging/data/types/Draft;->e()Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_1

    :cond_4
    move-object v8, v4

    :goto_1
    check-cast v8, Ls1/k;

    if-eqz v8, :cond_5

    .line 9
    sget-object v7, Le/a/a/c1/b$f;->a:Le/a/a/c1/b$f;

    goto :goto_2

    :cond_5
    move-object v7, v4

    :goto_2
    if-eqz v7, :cond_6

    goto/16 :goto_f

    :cond_6
    if-nez v3, :cond_7

    move v7, v5

    goto :goto_3

    :cond_7
    const/4 v7, 0x2

    .line 10
    :goto_3
    iget-object v8, v0, Le/a/a/c1/h;->c:Le/a/o5/u0;

    invoke-interface {v8, v7}, Le/a/o5/u0;->d(I)J

    move-result-wide v8

    .line 11
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 13
    check-cast v12, Ls1/k;

    .line 14
    iget-object v12, v12, Ls1/k;->b:Ljava/lang/Object;

    .line 15
    check-cast v12, Ljava/util/Collection;

    .line 16
    invoke-static {v10, v12}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_4

    .line 17
    :cond_8
    invoke-static {v10}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object v10

    .line 18
    new-instance v11, Le/a/a/c1/f;

    invoke-direct {v11, v0, v8, v9}, Le/a/a/c1/f;-><init>(Le/a/a/c1/h;J)V

    invoke-static {v10, v11}, Ls1/e0/x;->f(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v10

    .line 19
    invoke-static {v10}, Ls1/e0/x;->r(Ls1/e0/k;)Ljava/util/List;

    move-result-object v10

    .line 20
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    xor-int/2addr v11, v5

    if-eqz v11, :cond_9

    .line 21
    new-instance v11, Le/a/a/c1/b$a;

    invoke-direct {v11, v8, v9, v10, v7}, Le/a/a/c1/b$a;-><init>(JLjava/util/List;I)V

    move-object v7, v11

    goto :goto_5

    :cond_9
    move-object v7, v4

    :goto_5
    if-eqz v7, :cond_a

    goto/16 :goto_f

    :cond_a
    if-nez v3, :cond_f

    if-nez p4, :cond_f

    .line 22
    invoke-static/range {p1 .. p1}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object v7

    .line 23
    sget-object v8, Le/a/a/c1/g;->b:Le/a/a/c1/g;

    invoke-static {v7, v8}, Ls1/e0/x;->k(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v7

    .line 24
    check-cast v7, Ls1/e0/c0;

    .line 25
    iget-object v8, v7, Ls1/e0/c0;->a:Ls1/e0/k;

    .line 26
    invoke-interface {v8}, Ls1/e0/k;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 27
    :cond_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 28
    iget-object v9, v7, Ls1/e0/c0;->b:Ls1/z/b/l;

    .line 29
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 30
    move-object v10, v9

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    if-le v10, v5, :cond_c

    move v10, v5

    goto :goto_6

    :cond_c
    move v10, v6

    :goto_6
    if-eqz v10, :cond_b

    goto :goto_7

    :cond_d
    move-object v9, v4

    :goto_7
    check-cast v9, Ljava/util/Collection;

    if-eqz v9, :cond_e

    .line 31
    sget-object v7, Le/a/a/c1/b$g;->a:Le/a/a/c1/b$g;

    goto :goto_8

    :cond_e
    move-object v7, v4

    :goto_8
    if-eqz v7, :cond_f

    goto/16 :goto_f

    .line 32
    :cond_f
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/16 v9, 0xa

    if-eqz v8, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ls1/k;

    .line 34
    iget-object v10, v8, Ls1/k;->a:Ljava/lang/Object;

    .line 35
    check-cast v10, Lcom/truecaller/messaging/data/types/Draft;

    .line 36
    iget-object v8, v8, Ls1/k;->b:Ljava/lang/Object;

    .line 37
    check-cast v8, Ljava/util/Collection;

    .line 38
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v11

    const-string v12, "build()"

    if-le v11, v5, :cond_13

    .line 39
    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v8, v9}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v11, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v6

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v14, v9, 0x1

    if-ltz v9, :cond_11

    .line 41
    check-cast v13, Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 42
    invoke-virtual {v10}, Lcom/truecaller/messaging/data/types/Draft;->b()Lcom/truecaller/messaging/data/types/Draft$b;

    move-result-object v15

    const-wide/16 v5, -0x1

    .line 43
    iput-wide v5, v15, Lcom/truecaller/messaging/data/types/Draft$b;->a:J

    .line 44
    invoke-virtual {v15}, Lcom/truecaller/messaging/data/types/Draft$b;->d()Lcom/truecaller/messaging/data/types/Draft$b;

    .line 45
    invoke-static {v13}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/truecaller/messaging/data/types/Draft$b;->a(Ljava/util/Collection;)Lcom/truecaller/messaging/data/types/Draft$b;

    if-eqz v9, :cond_10

    .line 46
    invoke-virtual {v15}, Lcom/truecaller/messaging/data/types/Draft$b;->f()Lcom/truecaller/messaging/data/types/Draft$b;

    .line 47
    :cond_10
    invoke-virtual {v15}, Lcom/truecaller/messaging/data/types/Draft$b;->c()Lcom/truecaller/messaging/data/types/Draft;

    move-result-object v5

    invoke-static {v5, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v14

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_a

    .line 49
    :cond_11
    invoke-static {}, Ls1/u/i;->N0()V

    throw v4

    .line 50
    :cond_12
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_b

    .line 51
    :cond_13
    invoke-virtual {v10}, Lcom/truecaller/messaging/data/types/Draft;->b()Lcom/truecaller/messaging/data/types/Draft$b;

    move-result-object v5

    .line 52
    invoke-virtual {v5}, Lcom/truecaller/messaging/data/types/Draft$b;->d()Lcom/truecaller/messaging/data/types/Draft$b;

    .line 53
    invoke-virtual {v5, v8}, Lcom/truecaller/messaging/data/types/Draft$b;->a(Ljava/util/Collection;)Lcom/truecaller/messaging/data/types/Draft$b;

    .line 54
    invoke-virtual {v5}, Lcom/truecaller/messaging/data/types/Draft$b;->c()Lcom/truecaller/messaging/data/types/Draft;

    move-result-object v6

    invoke-static {v6, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "draft.buildUpon()\n      \u2026())\n                    }"

    .line 55
    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_b
    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_9

    .line 56
    :cond_14
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v7, v9}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 58
    check-cast v6, Lcom/truecaller/messaging/data/types/Draft;

    const-string v8, "unknown"

    .line 59
    invoke-virtual {v6, v2, v8}, Lcom/truecaller/messaging/data/types/Draft;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/messaging/data/types/Message;

    move-result-object v6

    const-string v8, "it.buildMessage(simToken\u2026nalyticsContexts.UNKNOWN)"

    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_15
    invoke-static {v7, v1}, Ls1/u/i;->i1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    if-nez v3, :cond_1b

    if-nez p5, :cond_1b

    .line 60
    invoke-static {v1}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object v1

    .line 61
    sget-object v5, Le/a/a/c1/e;->b:Le/a/a/c1/e;

    invoke-static {v1, v5}, Ls1/e0/x;->f(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v1

    .line 62
    check-cast v1, Ls1/e0/h;

    .line 63
    new-instance v5, Ls1/e0/h$a;

    invoke-direct {v5, v1}, Ls1/e0/h$a;-><init>(Ls1/e0/h;)V

    .line 64
    :cond_16
    invoke-virtual {v5}, Ls1/e0/h$a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v5}, Ls1/e0/h$a;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ls1/k;

    .line 65
    iget-object v8, v6, Ls1/k;->a:Ljava/lang/Object;

    .line 66
    check-cast v8, Lcom/truecaller/messaging/data/types/Draft;

    .line 67
    iget-object v6, v6, Ls1/k;->b:Ljava/lang/Object;

    .line 68
    check-cast v6, Lcom/truecaller/messaging/data/types/Message;

    .line 69
    iget-object v9, v0, Le/a/a/c1/h;->d:Le/a/a/k/t;

    iget-object v8, v8, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-interface {v9, v6, v8}, Le/a/a/k/t;->l(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;)Ljava/util/List;

    move-result-object v6

    const-string v8, "transportManager.getSupp\u2026sage, draft.participants)"

    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 70
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    move v6, v9

    goto :goto_d

    :cond_17
    const/4 v9, 0x1

    :cond_18
    move v6, v8

    :goto_d
    if-eqz v6, :cond_16

    goto :goto_e

    :cond_19
    move-object v1, v4

    .line 71
    :goto_e
    check-cast v1, Ls1/k;

    if-eqz v1, :cond_1a

    .line 72
    sget-object v4, Le/a/a/c1/b$b;->a:Le/a/a/c1/b$b;

    :cond_1a
    if-eqz v4, :cond_1b

    move-object v7, v4

    goto :goto_f

    .line 73
    :cond_1b
    new-instance v1, Le/a/a/c1/b$e;

    invoke-direct {v1, v7, v2, v3}, Le/a/a/c1/b$e;-><init>(Ljava/util/List;Ljava/lang/String;Z)V

    move-object v7, v1

    :goto_f
    return-object v7
.end method
