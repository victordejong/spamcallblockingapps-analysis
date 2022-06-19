.class public final Le/a/d/v/k/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;
.implements Le/a/d/v/k/a0;


# instance fields
.field public final a:Le/a/d/c0/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/d/c0/r<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Le/a/d/v/k/z;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Lq3/a/b3/c;

.field public final c:Le/a/d/c0/z1/i;

.field public final d:Le/a/d/x/r/h;

.field public final e:Le/a/d/c0/y0;

.field public final f:Le/a/d/v/k/n0;

.field public final g:Le/a/d/c0/f0;

.field public final h:Le/a/d/x/q/h;

.field public final synthetic i:Lq3/a/i0;


# direct methods
.method public constructor <init>(Lq3/a/i0;Lq3/a/b3/c;Le/a/d/c0/z1/i;Le/a/d/x/r/h;Le/a/d/c0/y0;Le/a/d/v/k/n0;Le/a/d/c0/f0;Le/a/d/x/q/h;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remotePeersMutex"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callInfoRepository"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtmChannel"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manageInviteOwners"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsUtil"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtcManager"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/d/v/k/b0;->i:Lq3/a/i0;

    iput-object p2, p0, Le/a/d/v/k/b0;->b:Lq3/a/b3/c;

    iput-object p3, p0, Le/a/d/v/k/b0;->c:Le/a/d/c0/z1/i;

    iput-object p4, p0, Le/a/d/v/k/b0;->d:Le/a/d/x/r/h;

    iput-object p5, p0, Le/a/d/v/k/b0;->e:Le/a/d/c0/y0;

    iput-object p6, p0, Le/a/d/v/k/b0;->f:Le/a/d/v/k/n0;

    iput-object p7, p0, Le/a/d/v/k/b0;->g:Le/a/d/c0/f0;

    iput-object p8, p0, Le/a/d/v/k/b0;->h:Le/a/d/x/q/h;

    .line 3
    new-instance p1, Le/a/d/c0/r;

    sget-object p2, Ls1/u/t;->a:Ls1/u/t;

    invoke-direct {p1, p2}, Le/a/d/c0/r;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Le/a/d/v/k/b0;->a:Le/a/d/c0/r;

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/voip/groupcall/action/InviteResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    instance-of v2, v0, Le/a/d/v/k/b0$b;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Le/a/d/v/k/b0$b;

    iget v3, v2, Le/a/d/v/k/b0$b;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/d/v/k/b0$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/d/v/k/b0$b;

    invoke-direct {v2, v1, v0}, Le/a/d/v/k/b0$b;-><init>(Le/a/d/v/k/b0;Ls1/w/d;)V

    :goto_0
    iget-object v0, v2, Le/a/d/v/k/b0$b;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/d/v/k/b0$b;->e:I

    const/16 v5, 0xa

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x0

    if-eqz v4, :cond_6

    if-eq v4, v6, :cond_5

    if-eq v4, v7, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v10, :cond_2

    if-ne v4, v9, :cond_1

    iget-object v3, v2, Le/a/d/v/k/b0$b;->k:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    iget-object v4, v2, Le/a/d/v/k/b0$b;->j:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    iget-object v5, v2, Le/a/d/v/k/b0$b;->i:Ljava/lang/Object;

    check-cast v5, Lq3/a/b3/c;

    iget-object v7, v2, Le/a/d/v/k/b0$b;->h:Ljava/lang/Object;

    check-cast v7, Ljava/util/Set;

    iget-object v2, v2, Le/a/d/v/k/b0$b;->g:Ljava/lang/Object;

    check-cast v2, Le/a/d/v/k/b0;

    :try_start_0
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_15

    :catchall_0
    move-exception v0

    goto/16 :goto_1b

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v4, v2, Le/a/d/v/k/b0$b;->m:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v2, Le/a/d/v/k/b0$b;->l:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    iget-object v12, v2, Le/a/d/v/k/b0$b;->k:Ljava/lang/Object;

    check-cast v12, Ljava/util/Map;

    iget-object v13, v2, Le/a/d/v/k/b0$b;->j:Ljava/lang/Object;

    check-cast v13, Ljava/util/Map;

    iget-object v14, v2, Le/a/d/v/k/b0$b;->i:Ljava/lang/Object;

    check-cast v14, Lq3/a/b3/c;

    iget-object v15, v2, Le/a/d/v/k/b0$b;->h:Ljava/lang/Object;

    check-cast v15, Ljava/util/Set;

    iget-object v9, v2, Le/a/d/v/k/b0$b;->g:Ljava/lang/Object;

    check-cast v9, Le/a/d/v/k/b0;

    :try_start_1
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v8, v12

    move-object v12, v14

    move-object v7, v15

    move-object v14, v9

    goto/16 :goto_e

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_3
    iget-object v4, v2, Le/a/d/v/k/b0$b;->k:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    iget-object v9, v2, Le/a/d/v/k/b0$b;->j:Ljava/lang/Object;

    check-cast v9, Ljava/util/Map;

    iget-object v12, v2, Le/a/d/v/k/b0$b;->i:Ljava/lang/Object;

    check-cast v12, Lq3/a/b3/c;

    iget-object v13, v2, Le/a/d/v/k/b0$b;->h:Ljava/lang/Object;

    check-cast v13, Ljava/util/Set;

    iget-object v14, v2, Le/a/d/v/k/b0$b;->g:Ljava/lang/Object;

    check-cast v14, Le/a/d/v/k/b0;

    :try_start_2
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_9

    :cond_4
    iget-object v4, v2, Le/a/d/v/k/b0$b;->k:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    iget-object v9, v2, Le/a/d/v/k/b0$b;->j:Ljava/lang/Object;

    check-cast v9, Ljava/util/Map;

    iget-object v12, v2, Le/a/d/v/k/b0$b;->i:Ljava/lang/Object;

    check-cast v12, Lq3/a/b3/c;

    iget-object v13, v2, Le/a/d/v/k/b0$b;->h:Ljava/lang/Object;

    check-cast v13, Ljava/util/Set;

    iget-object v14, v2, Le/a/d/v/k/b0$b;->g:Ljava/lang/Object;

    check-cast v14, Le/a/d/v/k/b0;

    :try_start_3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_8

    :catchall_2
    move-exception v0

    move-object v14, v12

    :goto_1
    move-object v2, v11

    goto/16 :goto_1d

    :cond_5
    iget-object v4, v2, Le/a/d/v/k/b0$b;->i:Ljava/lang/Object;

    check-cast v4, Lq3/a/b3/c;

    iget-object v9, v2, Le/a/d/v/k/b0$b;->h:Ljava/lang/Object;

    check-cast v9, Ljava/util/Set;

    iget-object v12, v2, Le/a/d/v/k/b0$b;->g:Ljava/lang/Object;

    check-cast v12, Le/a/d/v/k/b0;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v16, v9

    move-object v9, v4

    move-object/from16 v4, v16

    goto :goto_2

    :cond_6
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v0, v1, Le/a/d/v/k/b0;->b:Lq3/a/b3/c;

    .line 4
    iput-object v1, v2, Le/a/d/v/k/b0$b;->g:Ljava/lang/Object;

    move-object/from16 v4, p1

    iput-object v4, v2, Le/a/d/v/k/b0$b;->h:Ljava/lang/Object;

    iput-object v0, v2, Le/a/d/v/k/b0$b;->i:Ljava/lang/Object;

    iput v6, v2, Le/a/d/v/k/b0$b;->e:I

    invoke-interface {v0, v11, v2}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_7

    return-object v3

    :cond_7
    move-object v9, v0

    move-object v12, v1

    .line 5
    :goto_2
    :try_start_4
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6
    sget-object v0, Lcom/truecaller/voip/groupcall/action/InviteResult;->NONE_INVITED:Lcom/truecaller/voip/groupcall/action/InviteResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 7
    invoke-interface {v9, v11}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v0

    .line 8
    :cond_8
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Inviting numbers: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v4, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v0, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 11
    check-cast v14, Ljava/lang/String;

    .line 12
    new-instance v15, Le/a/d/c0/z1/o$a;

    invoke-direct {v15, v14}, Le/a/d/c0/z1/o$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 13
    :cond_9
    invoke-static {v0}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 14
    iget-object v13, v12, Le/a/d/v/k/b0;->c:Le/a/d/c0/z1/i;

    invoke-interface {v13, v0}, Le/a/d/c0/z1/i;->e(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    .line 15
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v14

    invoke-static {v14}, Le/q/f/a/d/a;->Y1(I)I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 16
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 18
    move-object v15, v14

    check-cast v15, Ljava/util/Map$Entry;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Le/a/d/c0/z1/o;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 19
    :try_start_6
    instance-of v11, v15, Le/a/d/c0/z1/o$a;

    if-nez v11, :cond_a

    const/4 v11, 0x0

    goto :goto_5

    :cond_a
    move-object v11, v15

    :goto_5
    check-cast v11, Le/a/d/c0/z1/o$a;

    if-eqz v11, :cond_b

    .line 20
    iget-object v11, v11, Le/a/d/c0/z1/o$a;->a:Ljava/lang/String;

    if-eqz v11, :cond_b

    goto :goto_6

    :cond_b
    if-eqz v15, :cond_c

    .line 21
    check-cast v15, Le/a/d/c0/z1/o$b;

    .line 22
    iget-object v11, v15, Le/a/d/c0/z1/o$b;->b:Ljava/lang/String;

    .line 23
    :goto_6
    check-cast v14, Ljava/util/Map$Entry;

    .line 24
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x0

    goto :goto_4

    .line 25
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type com.truecaller.voip.util.callinfo.PeerIdHandle.Resolved"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_d
    iget-object v0, v12, Le/a/d/v/k/b0;->f:Le/a/d/v/k/n0;

    invoke-virtual {v13}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-static {v11}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v11

    invoke-interface {v0, v11}, Le/a/d/v/k/n0;->a(Ljava/util/Set;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v11

    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    invoke-virtual {v13}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 29
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    sget-object v15, Le/a/d/v/k/z$c;->a:Le/a/d/v/k/z$c;

    .line 30
    new-instance v10, Ls1/k;

    invoke-direct {v10, v14, v15}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x4

    goto :goto_7

    .line 32
    :cond_e
    invoke-static {v0}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    .line 33
    iget-object v10, v12, Le/a/d/v/k/b0;->a:Le/a/d/c0/r;

    .line 34
    iput-object v12, v2, Le/a/d/v/k/b0$b;->g:Ljava/lang/Object;

    iput-object v4, v2, Le/a/d/v/k/b0$b;->h:Ljava/lang/Object;

    iput-object v9, v2, Le/a/d/v/k/b0$b;->i:Ljava/lang/Object;

    iput-object v13, v2, Le/a/d/v/k/b0$b;->j:Ljava/lang/Object;

    iput-object v0, v2, Le/a/d/v/k/b0$b;->k:Ljava/lang/Object;

    iput v7, v2, Le/a/d/v/k/b0$b;->e:I

    invoke-static {v10, v0, v2}, Le/a/p5/s0/g;->V1(Le/a/d/c0/r;Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-ne v10, v3, :cond_f

    return-object v3

    :cond_f
    move-object v14, v12

    move-object v12, v9

    move-object v9, v13

    move-object v13, v4

    move-object v4, v0

    .line 35
    :goto_8
    :try_start_7
    iget-object v0, v14, Le/a/d/v/k/b0;->e:Le/a/d/c0/y0;

    iput-object v14, v2, Le/a/d/v/k/b0$b;->g:Ljava/lang/Object;

    iput-object v13, v2, Le/a/d/v/k/b0$b;->h:Ljava/lang/Object;

    iput-object v12, v2, Le/a/d/v/k/b0$b;->i:Ljava/lang/Object;

    iput-object v9, v2, Le/a/d/v/k/b0$b;->j:Ljava/lang/Object;

    iput-object v4, v2, Le/a/d/v/k/b0$b;->k:Ljava/lang/Object;

    iput v8, v2, Le/a/d/v/k/b0$b;->e:I

    invoke-interface {v0, v13, v2}, Le/a/d/c0/y0;->a(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_10

    return-object v3

    :cond_10
    :goto_9
    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 36
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v0, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 38
    check-cast v11, Ljava/util/Map$Entry;

    .line 39
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    .line 40
    new-instance v8, Ls1/k;

    invoke-direct {v8, v15, v11}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x3

    goto :goto_a

    .line 42
    :cond_11
    invoke-static {v10}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    goto :goto_b

    .line 43
    :cond_12
    sget-object v0, Ls1/u/t;->a:Ls1/u/t;

    .line 44
    :goto_b
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v15, v11

    check-cast v15, Ljava/lang/String;

    .line 46
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7, v15}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 47
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 48
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_13

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    const/4 v7, 0x2

    goto :goto_c

    .line 49
    :cond_14
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v8, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 51
    check-cast v8, Ljava/lang/String;

    .line 52
    sget-object v10, Lcom/truecaller/voip/groupcall/action/InviteError;->VOIP_ID:Lcom/truecaller/voip/groupcall/action/InviteError;

    .line 53
    new-instance v11, Ls1/k;

    invoke-direct {v11, v8, v10}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 55
    :cond_15
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v6

    if-eqz v5, :cond_16

    .line 56
    iget-object v5, v14, Le/a/d/v/k/b0;->g:Le/a/d/c0/f0;

    sget-object v8, Lcom/truecaller/voip/util/VoipInvitationFailureReason;->GET_VOIP_ID_FAILED:Lcom/truecaller/voip/util/VoipInvitationFailureReason;

    invoke-interface {v5, v8}, Le/a/d/c0/f0;->a(Lcom/truecaller/voip/util/VoipInvitationFailureReason;)V

    .line 57
    :cond_16
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    iput-object v14, v2, Le/a/d/v/k/b0$b;->g:Ljava/lang/Object;

    iput-object v13, v2, Le/a/d/v/k/b0$b;->h:Ljava/lang/Object;

    iput-object v12, v2, Le/a/d/v/k/b0$b;->i:Ljava/lang/Object;

    iput-object v9, v2, Le/a/d/v/k/b0$b;->j:Ljava/lang/Object;

    iput-object v4, v2, Le/a/d/v/k/b0$b;->k:Ljava/lang/Object;

    iput-object v0, v2, Le/a/d/v/k/b0$b;->l:Ljava/lang/Object;

    iput-object v7, v2, Le/a/d/v/k/b0$b;->m:Ljava/lang/Object;

    const/4 v8, 0x4

    iput v8, v2, Le/a/d/v/k/b0$b;->e:I

    invoke-virtual {v14, v5, v2}, Le/a/d/v/k/b0;->c(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_17

    return-object v3

    :cond_17
    move-object v8, v4

    move-object v4, v7

    move-object v7, v13

    move-object v13, v9

    move-object/from16 v16, v5

    move-object v5, v0

    move-object/from16 v0, v16

    .line 58
    :goto_e
    check-cast v0, Ljava/util/Map;

    .line 59
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 61
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-nez v11, :cond_19

    const/4 v15, 0x0

    goto :goto_10

    .line 62
    :cond_19
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    .line 63
    new-instance v15, Ls1/k;

    invoke-direct {v15, v11, v10}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_10
    if-eqz v15, :cond_18

    .line 64
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 65
    :cond_1a
    invoke-static {v9}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    const-string v5, "$this$plus"

    .line 66
    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "pairs"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-static {v4}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    goto :goto_11

    :cond_1b
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v5, v4}, Ls1/u/i;->u0(Ljava/util/Map;Ljava/lang/Iterable;)V

    move-object v0, v5

    .line 68
    :goto_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invite states "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1c
    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_21

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 71
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-nez v9, :cond_1d

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v15, 0x3

    goto :goto_14

    .line 72
    :cond_1d
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/truecaller/voip/groupcall/action/InviteError;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    if-eqz v10, :cond_1f

    if-eq v10, v6, :cond_1f

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1f

    const/4 v15, 0x3

    const/4 v11, 0x4

    if-eq v10, v15, :cond_20

    if-ne v10, v11, :cond_1e

    .line 73
    sget-object v8, Le/a/d/v/k/z$b;->a:Le/a/d/v/k/z$b;

    goto :goto_13

    :cond_1e
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    :cond_1f
    const/4 v11, 0x4

    const/4 v15, 0x3

    .line 74
    :cond_20
    new-instance v10, Le/a/d/v/k/z$a;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/truecaller/voip/groupcall/action/InviteError;

    invoke-direct {v10, v8}, Le/a/d/v/k/z$a;-><init>(Lcom/truecaller/voip/groupcall/action/InviteError;)V

    move-object v8, v10

    .line 75
    :goto_13
    new-instance v10, Ls1/k;

    invoke-direct {v10, v9, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_14
    if-eqz v10, :cond_1c

    .line 76
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 77
    :cond_21
    invoke-static {v4}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v4

    .line 78
    iget-object v5, v14, Le/a/d/v/k/b0;->a:Le/a/d/c0/r;

    .line 79
    iput-object v14, v2, Le/a/d/v/k/b0$b;->g:Ljava/lang/Object;

    iput-object v7, v2, Le/a/d/v/k/b0$b;->h:Ljava/lang/Object;

    iput-object v12, v2, Le/a/d/v/k/b0$b;->i:Ljava/lang/Object;

    iput-object v13, v2, Le/a/d/v/k/b0$b;->j:Ljava/lang/Object;

    iput-object v0, v2, Le/a/d/v/k/b0$b;->k:Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    const/4 v8, 0x0

    :try_start_8
    iput-object v8, v2, Le/a/d/v/k/b0$b;->l:Ljava/lang/Object;

    iput-object v8, v2, Le/a/d/v/k/b0$b;->m:Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    const/4 v8, 0x5

    :try_start_9
    iput v8, v2, Le/a/d/v/k/b0$b;->e:I

    invoke-static {v5, v4, v2}, Le/a/p5/s0/g;->V1(Le/a/d/c0/r;Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-ne v2, v3, :cond_22

    return-object v3

    :cond_22
    move-object v3, v0

    move-object v5, v12

    move-object v4, v13

    move-object v2, v14

    .line 80
    :goto_15
    :try_start_a
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 81
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_23
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 82
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/truecaller/voip/groupcall/action/InviteError;

    sget-object v10, Lcom/truecaller/voip/groupcall/action/InviteError;->NONE:Lcom/truecaller/voip/groupcall/action/InviteError;

    if-ne v9, v10, :cond_24

    move v9, v6

    goto :goto_17

    :cond_24
    const/4 v9, 0x0

    .line 83
    :goto_17
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 84
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_23

    .line 85
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 86
    :cond_25
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v8

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 88
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v4, v8}, Ls1/u/i;->H(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 89
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v8}, Ljava/lang/Integer;-><init>(I)V

    .line 90
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 91
    :cond_26
    invoke-static {v3}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 92
    iget-object v3, v2, Le/a/d/v/k/b0;->c:Le/a/d/c0/z1/i;

    invoke-interface {v3, v0}, Le/a/d/c0/z1/i;->h(Ljava/util/Set;)V

    .line 93
    iget-object v2, v2, Le/a/d/v/k/b0;->f:Le/a/d/v/k/n0;

    invoke-interface {v2, v0}, Le/a/d/v/k/n0;->c(Ljava/util/Set;)V

    .line 94
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v2, v3, :cond_27

    sget-object v0, Lcom/truecaller/voip/groupcall/action/InviteResult;->NONE_INVITED:Lcom/truecaller/voip/groupcall/action/InviteResult;

    goto :goto_19

    .line 95
    :cond_27
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v6

    if-eqz v0, :cond_28

    sget-object v0, Lcom/truecaller/voip/groupcall/action/InviteResult;->PARTIALLY_INVITED:Lcom/truecaller/voip/groupcall/action/InviteResult;

    goto :goto_19

    .line 96
    :cond_28
    sget-object v0, Lcom/truecaller/voip/groupcall/action/InviteResult;->INVITED:Lcom/truecaller/voip/groupcall/action/InviteResult;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :goto_19
    const/4 v2, 0x0

    .line 97
    invoke-interface {v5, v2}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v0

    :catchall_3
    move-exception v0

    goto :goto_1b

    :catchall_4
    move-exception v0

    :goto_1a
    move-object v14, v12

    goto :goto_1c

    :catchall_5
    move-exception v0

    goto :goto_1a

    :catchall_6
    move-exception v0

    move-object v14, v9

    goto :goto_1c

    :catchall_7
    move-exception v0

    move-object v5, v9

    :goto_1b
    move-object v14, v5

    :goto_1c
    const/4 v2, 0x0

    :goto_1d
    invoke-interface {v14, v2}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw v0
.end method

.method public final c(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/truecaller/voip/groupcall/action/InviteError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Ls1/u/t;->a:Ls1/u/t;

    instance-of v4, v2, Le/a/d/v/k/b0$c;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Le/a/d/v/k/b0$c;

    iget v5, v4, Le/a/d/v/k/b0$c;->e:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Le/a/d/v/k/b0$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v4, Le/a/d/v/k/b0$c;

    invoke-direct {v4, v0, v2}, Le/a/d/v/k/b0$c;-><init>(Le/a/d/v/k/b0;Ls1/w/d;)V

    :goto_0
    iget-object v2, v4, Le/a/d/v/k/b0$c;->d:Ljava/lang/Object;

    sget-object v5, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v6, v4, Le/a/d/v/k/b0$c;->e:I

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/16 v11, 0xa

    if-eqz v6, :cond_6

    if-eq v6, v10, :cond_5

    if-eq v6, v9, :cond_3

    if-eq v6, v8, :cond_2

    if-ne v6, v7, :cond_1

    iget-object v1, v4, Le/a/d/v/k/b0$c;->i:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    iget-object v3, v4, Le/a/d/v/k/b0$c;->h:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    iget-object v4, v4, Le/a/d/v/k/b0$c;->g:Ljava/lang/Object;

    check-cast v4, Ljava/util/Set;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v1, v4, Le/a/d/v/k/b0$c;->j:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object v6, v4, Le/a/d/v/k/b0$c;->i:Ljava/lang/Object;

    check-cast v6, Ljava/util/Set;

    iget-object v8, v4, Le/a/d/v/k/b0$c;->h:Ljava/lang/Object;

    check-cast v8, Ljava/util/Set;

    iget-object v9, v4, Le/a/d/v/k/b0$c;->g:Ljava/lang/Object;

    check-cast v9, Le/a/d/v/k/b0;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    iget-object v1, v4, Le/a/d/v/k/b0$c;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    iget-object v6, v4, Le/a/d/v/k/b0$c;->g:Ljava/lang/Object;

    check-cast v6, Le/a/d/v/k/b0;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    :cond_4
    move-object v9, v6

    goto/16 :goto_4

    :cond_5
    iget-object v1, v4, Le/a/d/v/k/b0$c;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    iget-object v6, v4, Le/a/d/v/k/b0$c;->g:Ljava/lang/Object;

    check-cast v6, Le/a/d/v/k/b0;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inviting peers, voip ids: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    return-object v3

    .line 6
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v11}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 8
    check-cast v12, Ljava/lang/String;

    .line 9
    new-instance v13, Le/a/d/x/r/j;

    sget-object v14, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->Added:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    invoke-direct {v13, v12, v14}, Le/a/d/x/r/j;-><init>(Ljava/lang/String;Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;)V

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_8
    invoke-static {v2}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 11
    iget-object v6, v0, Le/a/d/v/k/b0;->d:Le/a/d/x/r/h;

    iput-object v0, v4, Le/a/d/v/k/b0$c;->g:Ljava/lang/Object;

    iput-object v1, v4, Le/a/d/v/k/b0$c;->h:Ljava/lang/Object;

    iput v10, v4, Le/a/d/v/k/b0$c;->e:I

    invoke-interface {v6, v2, v4}, Le/a/d/x/r/h;->n(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_9

    return-object v5

    :cond_9
    move-object v6, v0

    :goto_2
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_b

    .line 12
    iget-object v2, v6, Le/a/d/v/k/b0;->g:Le/a/d/c0/f0;

    sget-object v3, Lcom/truecaller/voip/util/VoipInvitationFailureReason;->SET_ADDED_ATTRIBUTE_FAILED:Lcom/truecaller/voip/util/VoipInvitationFailureReason;

    invoke-interface {v2, v3}, Le/a/d/c0/f0;->a(Lcom/truecaller/voip/util/VoipInvitationFailureReason;)V

    .line 13
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v11}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 15
    check-cast v3, Ljava/lang/String;

    .line 16
    sget-object v4, Lcom/truecaller/voip/groupcall/action/InviteError;->RTM_ADD:Lcom/truecaller/voip/groupcall/action/InviteError;

    .line 17
    new-instance v5, Ls1/k;

    invoke-direct {v5, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    invoke-static {v2}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 19
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attributes are set as Added for voip ids: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    iget-object v2, v6, Le/a/d/v/k/b0;->c:Le/a/d/c0/z1/i;

    iget-object v10, v6, Le/a/d/v/k/b0;->h:Le/a/d/x/q/h;

    invoke-interface {v10}, Le/a/d/x/q/h;->h()Ljava/util/Set;

    move-result-object v10

    iput-object v6, v4, Le/a/d/v/k/b0$c;->g:Ljava/lang/Object;

    iput-object v1, v4, Le/a/d/v/k/b0$c;->h:Ljava/lang/Object;

    iput v9, v4, Le/a/d/v/k/b0$c;->e:I

    invoke-interface {v2, v1, v10, v4}, Le/a/d/c0/z1/i;->i(Ljava/util/Set;Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_4

    return-object v5

    .line 21
    :goto_4
    move-object v6, v2

    check-cast v6, Ljava/util/Set;

    .line 22
    invoke-static {v1, v6}, Ls1/u/i;->b0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 23
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v2, v11}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 25
    check-cast v12, Ljava/lang/String;

    .line 26
    sget-object v13, Lcom/truecaller/voip/groupcall/action/InviteError;->WAKE_UP:Lcom/truecaller/voip/groupcall/action/InviteError;

    .line 27
    new-instance v14, Ls1/k;

    invoke-direct {v14, v12, v13}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    invoke-static {v10}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v2

    .line 29
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Wake up notification is sent. Successful ids: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", failed ids: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v6, v11}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 32
    check-cast v13, Ljava/lang/String;

    .line 33
    new-instance v14, Le/a/d/x/r/j;

    sget-object v15, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->Invited:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    invoke-direct {v14, v13, v15}, Le/a/d/x/r/j;-><init>(Ljava/lang/String;Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;)V

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 34
    :cond_d
    invoke-static {v10}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v10

    .line 35
    iget-object v12, v9, Le/a/d/v/k/b0;->d:Le/a/d/x/r/h;

    iput-object v9, v4, Le/a/d/v/k/b0$c;->g:Ljava/lang/Object;

    iput-object v1, v4, Le/a/d/v/k/b0$c;->h:Ljava/lang/Object;

    iput-object v6, v4, Le/a/d/v/k/b0$c;->i:Ljava/lang/Object;

    iput-object v2, v4, Le/a/d/v/k/b0$c;->j:Ljava/lang/Object;

    iput v8, v4, Le/a/d/v/k/b0$c;->e:I

    invoke-interface {v12, v10, v4}, Le/a/d/x/r/h;->n(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v5, :cond_e

    return-object v5

    :cond_e
    move-object/from16 v16, v8

    move-object v8, v1

    move-object v1, v2

    move-object/from16 v2, v16

    :goto_7
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_10

    .line 36
    iget-object v2, v9, Le/a/d/v/k/b0;->g:Le/a/d/c0/f0;

    sget-object v3, Lcom/truecaller/voip/util/VoipInvitationFailureReason;->SET_INVITED_ATTRIBUTE_FAILED:Lcom/truecaller/voip/util/VoipInvitationFailureReason;

    invoke-interface {v2, v3}, Le/a/d/c0/f0;->a(Lcom/truecaller/voip/util/VoipInvitationFailureReason;)V

    .line 37
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v6, v11}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 39
    check-cast v6, Ljava/lang/String;

    .line 40
    sget-object v10, Lcom/truecaller/voip/groupcall/action/InviteError;->RTM_INVITE:Lcom/truecaller/voip/groupcall/action/InviteError;

    .line 41
    new-instance v12, Ls1/k;

    invoke-direct {v12, v6, v10}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    invoke-static {v2}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v3

    .line 43
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attributes are set as Invited for voip ids: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    invoke-static {v1, v3}, Ls1/u/i;->o0(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    move-object v2, v3

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 47
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_11
    invoke-static {v1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 48
    iget-object v2, v9, Le/a/d/v/k/b0;->d:Le/a/d/x/r/h;

    iput-object v8, v4, Le/a/d/v/k/b0$c;->g:Ljava/lang/Object;

    iput-object v3, v4, Le/a/d/v/k/b0$c;->h:Ljava/lang/Object;

    iput-object v1, v4, Le/a/d/v/k/b0$c;->i:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v4, Le/a/d/v/k/b0$c;->j:Ljava/lang/Object;

    iput v7, v4, Le/a/d/v/k/b0$c;->e:I

    invoke-interface {v2, v1, v4}, Le/a/d/x/r/h;->l(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_12

    return-object v5

    :cond_12
    move-object v4, v8

    .line 49
    :goto_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    .line 51
    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 52
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 53
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_13

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 54
    :cond_14
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v2, v11}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 56
    check-cast v4, Ljava/lang/String;

    .line 57
    sget-object v5, Lcom/truecaller/voip/groupcall/action/InviteError;->NONE:Lcom/truecaller/voip/groupcall/action/InviteError;

    .line 58
    new-instance v6, Ls1/k;

    invoke-direct {v6, v4, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_15
    invoke-static {v1}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v3}, Ls1/u/i;->o0(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    iget-object v0, p0, Le/a/d/v/k/b0;->i:Lq3/a/i0;

    invoke-interface {v0}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public i()Lq3/a/x2/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/v/k/b0;->a:Le/a/d/c0/r;

    return-object v0
.end method

.method public o(Ljava/util/Set;)Lq3/a/n0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lq3/a/n0<",
            "Lcom/truecaller/voip/groupcall/action/InviteResult;",
            ">;"
        }
    .end annotation

    const-string v0, "numbers"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/d/v/k/b0$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/d/v/k/b0$a;-><init>(Le/a/d/v/k/b0;Ljava/util/Set;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object p1

    return-object p1
.end method
