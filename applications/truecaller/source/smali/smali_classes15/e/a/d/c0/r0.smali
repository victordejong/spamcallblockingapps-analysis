.class public final Le/a/d/c0/r0;
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
        "Lq3/a/x2/z0<",
        "Ljava/util/List<",
        "+",
        "Le/a/d/c0/p0;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.util.VoipGroupCallDetailsRepositoryImpl$fetchPeersDetails$2"
    f = "VoipGroupCallDetailsRepository.kt"
    l = {
        0x35,
        0x3d,
        0x45,
        0x4a,
        0x74
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public l:I

.field public final synthetic m:Le/a/d/c0/s0;

.field public final synthetic n:J

.field public final synthetic o:Lq3/a/i0;


# direct methods
.method public constructor <init>(Le/a/d/c0/s0;JLq3/a/i0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/r0;->m:Le/a/d/c0/s0;

    iput-wide p2, p0, Le/a/d/c0/r0;->n:J

    iput-object p4, p0, Le/a/d/c0/r0;->o:Lq3/a/i0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Le/a/d/c0/r0;

    iget-object v1, p0, Le/a/d/c0/r0;->m:Le/a/d/c0/s0;

    iget-wide v2, p0, Le/a/d/c0/r0;->n:J

    iget-object v4, p0, Le/a/d/c0/r0;->o:Lq3/a/i0;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/d/c0/r0;-><init>(Le/a/d/c0/s0;JLq3/a/i0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v5, p2

    check-cast v5, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {v5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c0/r0;

    iget-object v1, p0, Le/a/d/c0/r0;->m:Le/a/d/c0/s0;

    iget-wide v2, p0, Le/a/d/c0/r0;->n:J

    iget-object v4, p0, Le/a/d/c0/r0;->o:Lq3/a/i0;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Le/a/d/c0/r0;-><init>(Le/a/d/c0/s0;JLq3/a/i0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c0/r0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/c0/r0;->l:I

    const/16 v3, 0xa

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-eqz v2, :cond_5

    if-eq v2, v9, :cond_4

    if-eq v2, v10, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v6, :cond_0

    iget-object v1, v0, Le/a/d/c0/r0;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    iget-object v1, v0, Le/a/d/c0/r0;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/x2/z0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_15

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget-object v2, v0, Le/a/d/c0/r0;->g:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    iget-object v4, v0, Le/a/d/c0/r0;->f:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    iget-object v5, v0, Le/a/d/c0/r0;->e:Ljava/lang/Object;

    check-cast v5, Lq3/a/x2/z0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v9, v0

    goto/16 :goto_a

    :cond_2
    iget-object v2, v0, Le/a/d/c0/r0;->k:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    iget-object v10, v0, Le/a/d/c0/r0;->j:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    iget-object v11, v0, Le/a/d/c0/r0;->i:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    iget-object v12, v0, Le/a/d/c0/r0;->h:Ljava/lang/Object;

    check-cast v12, Ljava/util/Collection;

    iget-object v13, v0, Le/a/d/c0/r0;->g:Ljava/lang/Object;

    check-cast v13, Ljava/util/Map;

    iget-object v14, v0, Le/a/d/c0/r0;->f:Ljava/lang/Object;

    check-cast v14, Ljava/util/Map;

    iget-object v15, v0, Le/a/d/c0/r0;->e:Ljava/lang/Object;

    check-cast v15, Lq3/a/x2/z0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v9, v0

    move-object v8, v11

    move-object v6, v12

    move-object v11, v15

    move-object/from16 v12, p1

    goto/16 :goto_9

    :cond_3
    iget-object v2, v0, Le/a/d/c0/r0;->g:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    iget-object v10, v0, Le/a/d/c0/r0;->f:Ljava/lang/Object;

    check-cast v10, Ljava/util/Map;

    iget-object v11, v0, Le/a/d/c0/r0;->e:Ljava/lang/Object;

    check-cast v11, Lq3/a/x2/z0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    iget-object v2, v0, Le/a/d/c0/r0;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    iget-object v11, v0, Le/a/d/c0/r0;->e:Ljava/lang/Object;

    check-cast v11, Lq3/a/x2/z0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v12, p1

    goto :goto_0

    :cond_5
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const/4 v2, 0x6

    .line 4
    invoke-static {v9, v8, v7, v2}, Lq3/a/x2/g1;->a(IILq3/a/w2/i;I)Lq3/a/x2/z0;

    move-result-object v2

    .line 5
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    iget-object v12, v0, Le/a/d/c0/r0;->m:Le/a/d/c0/s0;

    .line 7
    iget-object v12, v12, Le/a/d/c0/s0;->b:Le/a/d/c0/j1;

    .line 8
    iget-wide v13, v0, Le/a/d/c0/r0;->n:J

    iput-object v2, v0, Le/a/d/c0/r0;->e:Ljava/lang/Object;

    iput-object v11, v0, Le/a/d/c0/r0;->f:Ljava/lang/Object;

    iput v9, v0, Le/a/d/c0/r0;->l:I

    invoke-interface {v12, v13, v14, v0}, Le/a/d/c0/j1;->c(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v1, :cond_6

    return-object v1

    :cond_6
    move-object/from16 v23, v11

    move-object v11, v2

    move-object/from16 v2, v23

    .line 9
    :goto_0
    move-object v13, v12

    check-cast v13, Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    xor-int/2addr v13, v9

    .line 10
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 11
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_7

    goto :goto_1

    :cond_7
    move-object v12, v7

    :goto_1
    check-cast v12, Ljava/util/Set;

    if-eqz v12, :cond_1f

    .line 12
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 14
    check-cast v15, Le/a/d/b0/c;

    .line 15
    iget v8, v15, Le/a/d/b0/c;->e:I

    .line 16
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v8}, Ljava/lang/Integer;-><init>(I)V

    .line 17
    new-instance v8, Le/a/d/c0/p0;

    .line 18
    iget v15, v15, Le/a/d/b0/c;->e:I

    .line 19
    new-instance v9, Le/a/d/b0/b$c;

    invoke-direct {v9, v15}, Le/a/d/b0/b$c;-><init>(I)V

    invoke-direct {v8, v15, v9}, Le/a/d/c0/p0;-><init>(ILe/a/d/b0/b;)V

    .line 20
    new-instance v9, Ls1/k;

    invoke-direct {v9, v6, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_2

    .line 22
    :cond_8
    invoke-static {v2, v13}, Ls1/u/i;->u0(Ljava/util/Map;Ljava/lang/Iterable;)V

    .line 23
    iput-object v11, v0, Le/a/d/c0/r0;->e:Ljava/lang/Object;

    iput-object v2, v0, Le/a/d/c0/r0;->f:Ljava/lang/Object;

    iput-object v12, v0, Le/a/d/c0/r0;->g:Ljava/lang/Object;

    iput v10, v0, Le/a/d/c0/r0;->l:I

    invoke-static {v11, v2, v0}, Le/a/p5/s0/g;->B(Lq3/a/x2/z0;Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_9

    return-object v1

    :cond_9
    move-object v10, v2

    move-object v2, v12

    :goto_3
    if-eqz v2, :cond_1f

    .line 24
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 25
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 26
    move-object v9, v8

    check-cast v9, Le/a/d/b0/c;

    .line 27
    iget-object v12, v9, Le/a/d/b0/c;->a:Lcom/truecaller/data/entity/Contact;

    if-eqz v12, :cond_a

    .line 28
    invoke-virtual {v12}, Lcom/truecaller/data/entity/Contact;->q0()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 29
    iget v12, v12, Lcom/truecaller/data/entity/Contact;->r:I

    if-eqz v12, :cond_a

    const/4 v12, 0x1

    goto :goto_5

    :cond_a
    const/4 v12, 0x0

    :goto_5
    if-nez v12, :cond_c

    .line 30
    iget-object v9, v9, Le/a/d/b0/c;->c:Ljava/lang/String;

    const-string v12, "-1"

    .line 31
    invoke-static {v9, v12}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_6

    :cond_b
    const/4 v9, 0x0

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v9, 0x1

    .line 32
    :goto_7
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 33
    invoke-virtual {v6, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_d

    .line 34
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-interface {v6, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_d
    check-cast v12, Ljava/util/List;

    .line 37
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 38
    :cond_e
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 39
    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_12

    .line 40
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v9, v0

    move-object/from16 v23, v8

    move-object v8, v2

    move-object/from16 v2, v23

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 42
    check-cast v12, Le/a/d/b0/c;

    .line 43
    iget v13, v12, Le/a/d/b0/c;->e:I

    .line 44
    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v13}, Ljava/lang/Integer;-><init>(I)V

    .line 45
    iget-object v13, v9, Le/a/d/c0/r0;->m:Le/a/d/c0/s0;

    .line 46
    iget-object v13, v13, Le/a/d/c0/s0;->b:Le/a/d/c0/j1;

    .line 47
    iput-object v11, v9, Le/a/d/c0/r0;->e:Ljava/lang/Object;

    iput-object v10, v9, Le/a/d/c0/r0;->f:Ljava/lang/Object;

    iput-object v6, v9, Le/a/d/c0/r0;->g:Ljava/lang/Object;

    iput-object v2, v9, Le/a/d/c0/r0;->h:Ljava/lang/Object;

    iput-object v8, v9, Le/a/d/c0/r0;->i:Ljava/lang/Object;

    iput-object v14, v9, Le/a/d/c0/r0;->j:Ljava/lang/Object;

    iput-object v2, v9, Le/a/d/c0/r0;->k:Ljava/lang/Object;

    iput v4, v9, Le/a/d/c0/r0;->l:I

    invoke-static {v12, v13, v9}, Le/a/p5/s0/g;->P1(Le/a/d/b0/c;Le/a/d/c0/j1;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v1, :cond_f

    return-object v1

    :cond_f
    move-object v13, v6

    move-object v6, v2

    move-object/from16 v23, v14

    move-object v14, v10

    move-object/from16 v10, v23

    .line 48
    :goto_9
    new-instance v15, Ls1/k;

    invoke-direct {v15, v10, v12}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    invoke-interface {v2, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v2, v6

    move-object v6, v13

    move-object v10, v14

    goto :goto_8

    .line 50
    :cond_10
    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_13

    .line 51
    invoke-static {v2}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v2

    .line 52
    invoke-interface {v10, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 53
    iput-object v11, v9, Le/a/d/c0/r0;->e:Ljava/lang/Object;

    iput-object v10, v9, Le/a/d/c0/r0;->f:Ljava/lang/Object;

    iput-object v6, v9, Le/a/d/c0/r0;->g:Ljava/lang/Object;

    iput-object v7, v9, Le/a/d/c0/r0;->h:Ljava/lang/Object;

    iput-object v7, v9, Le/a/d/c0/r0;->i:Ljava/lang/Object;

    iput-object v7, v9, Le/a/d/c0/r0;->j:Ljava/lang/Object;

    iput-object v7, v9, Le/a/d/c0/r0;->k:Ljava/lang/Object;

    iput v5, v9, Le/a/d/c0/r0;->l:I

    invoke-static {v11, v10, v9}, Le/a/p5/s0/g;->B(Lq3/a/x2/z0;Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_11

    return-object v1

    :cond_11
    move-object v2, v6

    move-object v4, v10

    move-object v5, v11

    :goto_a
    move-object v6, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_b

    :cond_12
    move-object v9, v0

    :cond_13
    move-object v2, v1

    move-object v4, v10

    move-object v1, v11

    .line 54
    :goto_b
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 55
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_1e

    .line 56
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    const/4 v8, 0x1

    xor-int/2addr v6, v8

    .line 57
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 58
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_14

    goto :goto_c

    :cond_14
    move-object v5, v7

    :goto_c
    if-eqz v5, :cond_1e

    .line 59
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 61
    check-cast v5, Le/a/d/b0/c;

    .line 62
    iget-object v8, v5, Le/a/d/b0/c;->c:Ljava/lang/String;

    .line 63
    new-instance v10, Ls1/k;

    invoke-direct {v10, v8, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 65
    :cond_15
    invoke-static {v6}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v3

    .line 66
    iget-object v5, v9, Le/a/d/c0/r0;->m:Le/a/d/c0/s0;

    .line 67
    iget-object v5, v5, Le/a/d/c0/s0;->c:Le/a/d/c0/e;

    .line 68
    iget-object v6, v9, Le/a/d/c0/r0;->o:Lq3/a/i0;

    .line 69
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-static {v8}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v8

    .line 70
    sget-object v10, Lcom/truecaller/voip/util/VoipSearchDirection;->CALL_LOG:Lcom/truecaller/voip/util/VoipSearchDirection;

    .line 71
    invoke-interface {v5, v6, v8, v10}, Le/a/d/c0/e;->b(Lq3/a/i0;Ljava/util/Set;Lcom/truecaller/voip/util/VoipSearchDirection;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 72
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_16

    goto :goto_e

    :cond_16
    const/4 v6, 0x1

    const/4 v8, 0x0

    goto :goto_f

    :cond_17
    :goto_e
    const/4 v6, 0x1

    const/4 v8, 0x1

    :goto_f
    xor-int/2addr v8, v6

    .line 73
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 74
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_18

    move-object v6, v5

    goto :goto_10

    :cond_18
    move-object v6, v7

    :goto_10
    if-eqz v6, :cond_1a

    .line 75
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 77
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v19, v11

    check-cast v19, Le/a/d/b0/c;

    if-eqz v19, :cond_19

    .line 78
    iget-object v11, v9, Le/a/d/c0/r0;->o:Lq3/a/i0;

    .line 79
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v18, v10

    check-cast v18, Lq3/a/x2/i1;

    .line 80
    new-instance v14, Le/a/d/c0/t0;

    const/16 v16, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v14

    move-object/from16 v20, v4

    move-object/from16 v21, v1

    invoke-direct/range {v17 .. v22}, Le/a/d/c0/t0;-><init>(Lq3/a/x2/i1;Le/a/d/b0/c;Ljava/util/Map;Lq3/a/x2/z0;Ls1/w/d;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x3

    invoke-static/range {v11 .. v16}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v10

    goto :goto_12

    :cond_19
    move-object v10, v7

    .line 81
    :goto_12
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 82
    :cond_1a
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-static {v6, v5}, Ls1/u/i;->b0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    .line 83
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    const/4 v8, 0x1

    xor-int/2addr v6, v8

    .line 84
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 85
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1b

    goto :goto_13

    :cond_1b
    move-object v5, v7

    :goto_13
    if-eqz v5, :cond_1e

    .line 86
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1c
    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 87
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/d/b0/c;

    if-eqz v8, :cond_1c

    .line 88
    iget v10, v8, Le/a/d/b0/c;->e:I

    .line 89
    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v10}, Ljava/lang/Integer;-><init>(I)V

    .line 90
    new-instance v10, Le/a/d/c0/p0;

    .line 91
    iget v12, v8, Le/a/d/b0/c;->e:I

    .line 92
    iget v8, v8, Le/a/d/b0/c;->d:I

    .line 93
    new-instance v13, Le/a/d/b0/b$a;

    invoke-static {v8}, Le/a/p5/s0/g;->T(I)Lcom/truecaller/voip/user/PeerHistoryPeerStatus;

    move-result-object v8

    invoke-direct {v13, v12, v8}, Le/a/d/b0/b$a;-><init>(ILcom/truecaller/voip/user/PeerHistoryPeerStatus;)V

    .line 94
    invoke-direct {v10, v12, v13}, Le/a/d/c0/p0;-><init>(ILe/a/d/b0/b;)V

    invoke-interface {v4, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 95
    :cond_1d
    iput-object v1, v9, Le/a/d/c0/r0;->e:Ljava/lang/Object;

    iput-object v5, v9, Le/a/d/c0/r0;->f:Ljava/lang/Object;

    iput-object v7, v9, Le/a/d/c0/r0;->g:Ljava/lang/Object;

    iput-object v7, v9, Le/a/d/c0/r0;->h:Ljava/lang/Object;

    iput-object v7, v9, Le/a/d/c0/r0;->i:Ljava/lang/Object;

    iput-object v7, v9, Le/a/d/c0/r0;->j:Ljava/lang/Object;

    iput-object v7, v9, Le/a/d/c0/r0;->k:Ljava/lang/Object;

    const/4 v3, 0x5

    iput v3, v9, Le/a/d/c0/r0;->l:I

    invoke-static {v1, v4, v9}, Le/a/p5/s0/g;->B(Lq3/a/x2/z0;Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1e

    return-object v2

    :cond_1e
    :goto_15
    return-object v1

    :cond_1f
    return-object v11
.end method
