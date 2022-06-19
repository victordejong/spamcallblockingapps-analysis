.class public final Le/a/d/v/k/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;
.implements Le/a/d/v/k/b1;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:Le/a/d/c0/z1/i;

.field public final e:Le/a/d/v/g;

.field public final f:Le/a/d/x/q/h;

.field public final g:Le/a/d/x/r/h;

.field public final h:Le/a/d/u/a;

.field public final i:Le/a/d/v/k/n0;

.field public final synthetic j:Lq3/a/i0;


# direct methods
.method public constructor <init>(Lq3/a/i0;Ljava/lang/String;Le/a/d/c0/z1/i;Le/a/d/v/g;Le/a/d/x/q/h;Le/a/d/x/r/h;Le/a/d/u/a;Le/a/d/v/k/n0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callInfoRepository"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peers"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtcManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtmChannel"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callComponent"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manageInviteOwners"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/d/v/k/c1;->j:Lq3/a/i0;

    iput-object p2, p0, Le/a/d/v/k/c1;->c:Ljava/lang/String;

    iput-object p3, p0, Le/a/d/v/k/c1;->d:Le/a/d/c0/z1/i;

    iput-object p4, p0, Le/a/d/v/k/c1;->e:Le/a/d/v/g;

    iput-object p5, p0, Le/a/d/v/k/c1;->f:Le/a/d/x/q/h;

    iput-object p6, p0, Le/a/d/v/k/c1;->g:Le/a/d/x/r/h;

    iput-object p7, p0, Le/a/d/v/k/c1;->h:Le/a/d/u/a;

    iput-object p8, p0, Le/a/d/v/k/c1;->i:Le/a/d/v/k/n0;

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/d/v/k/c1;->a:Ljava/util/Map;

    .line 4
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x1

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Le/a/d/v/k/c1;->b:J

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 9
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

    instance-of v0, p1, Le/a/d/v/k/c1$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/d/v/k/c1$d;

    iget v1, v0, Le/a/d/v/k/c1$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/v/k/c1$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/v/k/c1$d;

    invoke-direct {v0, p0, p1}, Le/a/d/v/k/c1$d;-><init>(Le/a/d/v/k/c1;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/d/v/k/c1$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/v/k/c1$d;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Le/a/d/v/k/c1$d;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    iget-object v0, v0, Le/a/d/v/k/c1$d;->g:Ljava/lang/Object;

    check-cast v0, Le/a/d/v/k/c1;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v3, v0

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/d/v/k/c1$d;->g:Ljava/lang/Object;

    check-cast v2, Le/a/d/v/k/c1;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const-wide/16 v5, 0x3e8

    .line 4
    invoke-virtual {p0, v5, v6}, Le/a/d/v/k/c1;->c(J)Lq3/a/x2/f;

    move-result-object p1

    .line 5
    iput-object p0, v0, Le/a/d/v/k/c1$d;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/d/v/k/c1$d;->e:I

    invoke-static {p1, v0}, Ls1/a/a/a/v0/f/d;->M0(Lq3/a/x2/f;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 6
    :goto_1
    check-cast p1, Ljava/util/Set;

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initial set: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 8
    iput-object v2, v0, Le/a/d/v/k/c1$d;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/d/v/k/c1$d;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/d/v/k/c1$d;->e:I

    invoke-virtual {v2, p1, v0}, Le/a/d/v/k/c1;->b(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    return-object v1

    :cond_5
    move-object v1, p1

    move-object v3, v2

    :goto_2
    const-wide/16 v4, 0x0

    .line 9
    invoke-virtual {v3, v4, v5}, Le/a/d/v/k/c1;->c(J)Lq3/a/x2/f;

    move-result-object p1

    .line 10
    new-instance v6, Le/a/d/v/k/d1;

    const/4 v0, 0x0

    invoke-direct {v6, v3, p1, v1, v0}, Le/a/d/v/k/d1;-><init>(Le/a/d/v/k/c1;Lq3/a/x2/f;Ljava/util/Set;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 11
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final b(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    sget-object v2, Ls1/s;->a:Ls1/s;

    instance-of v3, v0, Le/a/d/v/k/c1$a;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Le/a/d/v/k/c1$a;

    iget v4, v3, Le/a/d/v/k/c1$a;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/d/v/k/c1$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/d/v/k/c1$a;

    invoke-direct {v3, v1, v0}, Le/a/d/v/k/c1$a;-><init>(Le/a/d/v/k/c1;Ls1/w/d;)V

    :goto_0
    iget-object v0, v3, Le/a/d/v/k/c1$a;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v3, Le/a/d/v/k/c1$a;->e:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v7, :cond_1

    iget-object v4, v3, Le/a/d/v/k/c1$a;->j:Ljava/lang/Object;

    check-cast v4, Lq3/a/b3/c;

    iget-object v5, v3, Le/a/d/v/k/c1$a;->i:Ljava/lang/Object;

    check-cast v5, Le/a/d/c0/r;

    iget-object v7, v3, Le/a/d/v/k/c1$a;->h:Ljava/lang/Object;

    check-cast v7, Ljava/util/Set;

    iget-object v3, v3, Le/a/d/v/k/c1$a;->g:Ljava/lang/Object;

    check-cast v3, Le/a/d/v/k/c1;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v5, v1, Le/a/d/v/k/c1;->e:Le/a/d/v/g;

    .line 4
    iget-object v0, v5, Le/a/d/c0/r;->b:Lq3/a/b3/c;

    .line 5
    iput-object v1, v3, Le/a/d/v/k/c1$a;->g:Ljava/lang/Object;

    move-object/from16 v8, p1

    iput-object v8, v3, Le/a/d/v/k/c1$a;->h:Ljava/lang/Object;

    iput-object v5, v3, Le/a/d/v/k/c1$a;->i:Ljava/lang/Object;

    iput-object v0, v3, Le/a/d/v/k/c1$a;->j:Ljava/lang/Object;

    iput v7, v3, Le/a/d/v/k/c1$a;->e:I

    invoke-interface {v0, v6, v3}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_3

    return-object v4

    :cond_3
    move-object v4, v0

    move-object v3, v1

    move-object v7, v8

    .line 6
    :goto_1
    :try_start_0
    invoke-virtual {v5}, Le/a/d/c0/r;->h()Le/a/d/c0/r$a;

    move-result-object v0

    .line 7
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_4

    .line 8
    invoke-interface {v4, v6}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v2

    .line 9
    :cond_4
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding peers: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 10
    iget-object v5, v3, Le/a/d/v/k/c1;->e:Le/a/d/v/g;

    invoke-virtual {v5}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 11
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v5, v9}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 13
    check-cast v11, Le/a/d/v/l/a;

    .line 14
    invoke-interface {v11}, Le/a/d/v/l/a;->d()I

    move-result v11

    .line 15
    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v11}, Ljava/lang/Integer;-><init>(I)V

    .line 16
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 17
    :cond_5
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    .line 19
    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v13}, Ljava/lang/Integer;-><init>(I)V

    .line 20
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    .line 21
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 22
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_6

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 23
    :cond_7
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v10, v9}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 25
    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 26
    iget-object v11, v3, Le/a/d/v/k/c1;->h:Le/a/d/u/a;

    .line 27
    check-cast v11, Le/a/r1$g;

    .line 28
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 30
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iput-object v12, v11, Le/a/r1$g;->c:Ljava/lang/Integer;

    .line 32
    iget-object v12, v3, Le/a/d/v/k/c1;->i:Le/a/d/v/k/n0;

    invoke-interface {v12, v10}, Le/a/d/v/k/n0;->b(I)Z

    move-result v10

    .line 33
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 34
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iput-object v10, v11, Le/a/r1$g;->d:Ljava/lang/Boolean;

    .line 36
    iget-object v10, v11, Le/a/r1$g;->c:Ljava/lang/Integer;

    const-class v12, Ljava/lang/Integer;

    invoke-static {v10, v12}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 37
    iget-object v10, v11, Le/a/r1$g;->d:Ljava/lang/Boolean;

    const-class v12, Ljava/lang/Boolean;

    invoke-static {v10, v12}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 38
    new-instance v10, Le/a/r1$h;

    iget-object v14, v11, Le/a/r1$g;->a:Le/a/r1;

    iget-object v15, v11, Le/a/r1$g;->b:Le/a/r1$l;

    iget-object v12, v11, Le/a/r1$g;->c:Ljava/lang/Integer;

    iget-object v11, v11, Le/a/r1$g;->d:Ljava/lang/Boolean;

    const/16 v18, 0x0

    move-object v13, v10

    move-object/from16 v16, v12

    move-object/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Le/a/r1$h;-><init>(Le/a/r1;Le/a/r1$l;Ljava/lang/Integer;Ljava/lang/Boolean;Le/a/h1;)V

    .line 39
    iget-object v10, v10, Le/a/r1$h;->w:Ljavax/inject/Provider;

    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/a/d/v/l/a;

    .line 40
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 41
    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/a/d/v/l/a;

    .line 42
    invoke-interface {v10}, Le/a/d/v/l/e/d;->c()Lq3/a/p1;

    goto :goto_5

    .line 43
    :cond_9
    invoke-static {v8}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v8

    .line 44
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Peers "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " are already added. Ignoring them"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    invoke-interface {v4, v6}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v2

    .line 47
    :cond_a
    :try_start_2
    invoke-static {v5, v8}, Ls1/u/i;->q0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    .line 48
    invoke-virtual {v3, v0, v5}, Le/a/d/v/k/c1;->h(Le/a/d/c0/d0;Ljava/util/Set;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    invoke-interface {v4, v6}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v2

    :catchall_0
    move-exception v0

    invoke-interface {v4, v6}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw v0
.end method

.method public final c(J)Lq3/a/x2/f;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lq3/a/x2/f<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/v/k/c1;->g:Le/a/d/x/r/h;

    invoke-interface {v0}, Le/a/d/x/r/h;->a()Lq3/a/x2/i1;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/d/v/k/c1;->g:Le/a/d/x/r/h;

    invoke-interface {v1}, Le/a/d/x/r/h;->o()Lq3/a/x2/i1;

    move-result-object v1

    new-instance v2, Le/a/d/v/k/i1;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Le/a/d/v/k/i1;-><init>(Ls1/w/d;)V

    .line 3
    new-instance v4, Lq3/a/x2/w0;

    invoke-direct {v4, v0, v1, v2}, Lq3/a/x2/w0;-><init>(Lq3/a/x2/f;Lq3/a/x2/f;Ls1/z/b/q;)V

    .line 4
    new-instance v0, Le/a/d/v/k/g1;

    invoke-direct {v0, v3, p0}, Le/a/d/v/k/g1;-><init>(Ls1/w/d;Le/a/d/v/k/c1;)V

    invoke-static {v4, v0}, Ls1/a/a/a/v0/f/d;->P3(Lq3/a/x2/f;Ls1/z/b/q;)Lq3/a/x2/f;

    move-result-object v0

    .line 5
    new-instance v1, Le/a/d/v/k/h1;

    invoke-direct {v1, v0, p0}, Le/a/d/v/k/h1;-><init>(Lq3/a/x2/f;Le/a/d/v/k/c1;)V

    .line 6
    iget-object v0, p0, Le/a/d/v/k/c1;->f:Le/a/d/x/q/h;

    invoke-interface {v0}, Le/a/d/x/q/h;->a()Lq3/a/x2/i1;

    move-result-object v0

    .line 7
    invoke-static {v0, p1, p2}, Ls1/a/a/a/v0/f/d;->z0(Lq3/a/x2/f;J)Lq3/a/x2/f;

    move-result-object p1

    .line 8
    new-instance p2, Le/a/d/v/k/e1;

    invoke-direct {p2, p1}, Le/a/d/v/k/e1;-><init>(Lq3/a/x2/f;)V

    .line 9
    new-instance p1, Le/a/d/v/k/f1;

    invoke-direct {p1, p2, p0}, Le/a/d/v/k/f1;-><init>(Lq3/a/x2/f;Le/a/d/v/k/c1;)V

    .line 10
    new-instance p2, Le/a/d/v/k/c1$b;

    invoke-direct {p2, v3}, Le/a/d/v/k/c1$b;-><init>(Ls1/w/d;)V

    .line 11
    new-instance v0, Lq3/a/x2/w0;

    invoke-direct {v0, v1, p1, p2}, Lq3/a/x2/w0;-><init>(Lq3/a/x2/f;Lq3/a/x2/f;Ls1/z/b/q;)V

    return-object v0
.end method

.method public final d(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/d/v/k/c1$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d/v/k/c1$c;

    iget v1, v0, Le/a/d/v/k/c1$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/v/k/c1$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/v/k/c1$c;

    invoke-direct {v0, p0, p2}, Le/a/d/v/k/c1$c;-><init>(Le/a/d/v/k/c1;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d/v/k/c1$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/v/k/c1$c;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Le/a/d/v/k/c1$c;->j:Ljava/lang/Object;

    check-cast p1, Lq3/a/b3/c;

    iget-object v1, v0, Le/a/d/v/k/c1$c;->i:Ljava/lang/Object;

    check-cast v1, Le/a/d/c0/r;

    iget-object v2, v0, Le/a/d/v/k/c1$c;->h:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    iget-object v0, v0, Le/a/d/v/k/c1$c;->g:Ljava/lang/Object;

    check-cast v0, Le/a/d/v/k/c1;

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

    iget-object p2, p0, Le/a/d/v/k/c1;->e:Le/a/d/v/g;

    .line 4
    iget-object v2, p2, Le/a/d/c0/r;->b:Lq3/a/b3/c;

    .line 5
    iput-object p0, v0, Le/a/d/v/k/c1$c;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/d/v/k/c1$c;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/d/v/k/c1$c;->i:Ljava/lang/Object;

    iput-object v2, v0, Le/a/d/v/k/c1$c;->j:Ljava/lang/Object;

    iput v4, v0, Le/a/d/v/k/c1$c;->e:I

    invoke-interface {v2, v3, v0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object v1, p2

    move-object v8, v2

    move-object v2, p1

    move-object p1, v8

    .line 6
    :goto_1
    :try_start_0
    invoke-virtual {v1}, Le/a/d/c0/r;->h()Le/a/d/c0/r$a;

    move-result-object p2

    .line 7
    iget-object v1, v0, Le/a/d/v/k/c1;->e:Le/a/d/v/g;

    invoke-virtual {v1}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Le/a/d/v/l/a;

    .line 10
    invoke-interface {v6}, Le/a/d/v/l/a;->d()I

    move-result v6

    .line 11
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 12
    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 13
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 14
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 15
    :cond_5
    invoke-static {v4}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 16
    invoke-virtual {v0, p2, v1}, Le/a/d/v/k/c1;->h(Le/a/d/c0/d0;Ljava/util/Set;)V

    .line 17
    iget-object p2, v0, Le/a/d/v/k/c1;->i:Le/a/d/v/k/n0;

    invoke-interface {p2, v2}, Le/a/d/v/k/n0;->c(Ljava/util/Set;)V

    .line 18
    sget-object p2, Ls1/s;->a:Ls1/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-interface {p1, v3}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1, v3}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p2
.end method

.method public final e(Le/a/d/x/r/i;)Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d/v/k/c1;->a:Ljava/util/Map;

    .line 2
    iget-object v1, p1, Le/a/d/x/r/i;->a:Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/d/v/k/c1;->a:Ljava/util/Map;

    .line 4
    iget-object v1, p1, Le/a/d/x/r/i;->a:Ljava/lang/String;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Le/a/d/v/k/c1;->a:Ljava/util/Map;

    .line 7
    iget-object p1, p1, Le/a/d/x/r/i;->a:Ljava/lang/String;

    .line 8
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-wide v0, p0, Le/a/d/v/k/c1;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final f(Le/a/d/x/r/i;)Ljava/lang/Long;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d/v/k/c1;->d:Le/a/d/c0/z1/i;

    invoke-interface {v0}, Le/a/d/c0/z1/i;->getCurrentTime()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Le/a/d/v/k/c1;->g:Le/a/d/x/r/h;

    invoke-interface {v2}, Le/a/d/x/r/h;->o()Lq3/a/x2/i1;

    move-result-object v2

    invoke-interface {v2}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 3
    invoke-static {p1, v0, v1, v2}, Le/a/p5/s0/g;->W(Le/a/d/x/r/i;JLjava/util/Set;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final g(Le/a/d/x/r/i;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Le/a/d/x/r/i;->b:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->Busy:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    invoke-virtual {v0}, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    iget-object v0, p0, Le/a/d/v/k/c1;->j:Lq3/a/i0;

    invoke-interface {v0}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public final h(Le/a/d/c0/d0;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/c0/d0<",
            "Ljava/util/Set<",
            "Le/a/d/v/l/a;",
            ">;>;",
            "Ljava/util/Set<",
            "+",
            "Le/a/d/v/l/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating peers "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    invoke-interface {p1, p2}, Le/a/d/c0/d0;->a(Ljava/lang/Object;)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Le/a/d/v/l/a;

    .line 6
    invoke-interface {v0}, Le/a/d/v/l/a;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 7
    iget-object p2, p0, Le/a/d/v/k/c1;->d:Le/a/d/c0/z1/i;

    invoke-interface {p2, p1}, Le/a/d/c0/z1/i;->m(Ljava/util/Set;)V

    return-void
.end method

.method public final i(Le/a/d/x/r/i;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/x/r/i;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    instance-of v1, p2, Le/a/d/v/k/c1$f;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Le/a/d/v/k/c1$f;

    iget v2, v1, Le/a/d/v/k/c1$f;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/d/v/k/c1$f;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/d/v/k/c1$f;

    invoke-direct {v1, p0, p2}, Le/a/d/v/k/c1$f;-><init>(Le/a/d/v/k/c1;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Le/a/d/v/k/c1$f;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/d/v/k/c1$f;->e:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p1, v1, Le/a/d/v/k/c1$f;->h:Ljava/lang/Object;

    check-cast p1, Le/a/d/x/r/i;

    iget-object v1, v1, Le/a/d/v/k/c1$f;->g:Ljava/lang/Object;

    check-cast v1, Le/a/d/v/k/c1;

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
    iget-object p1, v1, Le/a/d/v/k/c1$f;->h:Ljava/lang/Object;

    check-cast p1, Le/a/d/x/r/i;

    iget-object v3, v1, Le/a/d/v/k/c1$f;->g:Ljava/lang/Object;

    check-cast v3, Le/a/d/v/k/c1;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/d/v/k/c1;->d:Le/a/d/c0/z1/i;

    new-instance v3, Le/a/d/c0/z1/o$d;

    .line 5
    iget-object v6, p1, Le/a/d/x/r/i;->a:Ljava/lang/String;

    .line 6
    invoke-direct {v3, v6}, Le/a/d/c0/z1/o$d;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v3}, Le/a/d/c0/z1/i;->l(Le/a/d/c0/z1/o;)Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_4

    .line 7
    iget-object p2, p0, Le/a/d/v/k/c1;->a:Ljava/util/Map;

    .line 8
    iget-object p1, p1, Le/a/d/x/r/i;->a:Ljava/lang/String;

    .line 9
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 10
    :cond_4
    iget-object v3, p0, Le/a/d/v/k/c1;->e:Le/a/d/v/g;

    .line 11
    new-instance v6, Le/a/d/v/k/c1$e;

    invoke-direct {v6, v3, p2}, Le/a/d/v/k/c1$e;-><init>(Lq3/a/x2/f;Ljava/lang/Integer;)V

    .line 12
    new-instance p2, Lq3/a/x2/t0;

    invoke-direct {p2, v6}, Lq3/a/x2/t0;-><init>(Lq3/a/x2/f;)V

    .line 13
    iput-object p0, v1, Le/a/d/v/k/c1$f;->g:Ljava/lang/Object;

    iput-object p1, v1, Le/a/d/v/k/c1$f;->h:Ljava/lang/Object;

    iput v5, v1, Le/a/d/v/k/c1$f;->e:I

    .line 14
    invoke-static {p2, v1}, Ls1/a/a/a/v0/f/d;->M0(Lq3/a/x2/f;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_5

    return-object v2

    :cond_5
    move-object v3, p0

    .line 15
    :goto_1
    check-cast p2, Le/a/d/v/l/a;

    .line 16
    invoke-interface {p2}, Le/a/d/v/l/a;->getState()Lq3/a/x2/i1;

    move-result-object p2

    new-instance v5, Le/a/d/v/k/c1$g;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Le/a/d/v/k/c1$g;-><init>(Ls1/w/d;)V

    iput-object v3, v1, Le/a/d/v/k/c1$f;->g:Ljava/lang/Object;

    iput-object p1, v1, Le/a/d/v/k/c1$f;->h:Ljava/lang/Object;

    iput v4, v1, Le/a/d/v/k/c1$f;->e:I

    invoke-static {p2, v5, v1}, Ls1/a/a/a/v0/f/d;->N0(Lq3/a/x2/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_6

    return-object v2

    :cond_6
    move-object v1, v3

    .line 17
    :goto_2
    iget-object p2, v1, Le/a/d/v/k/c1;->a:Ljava/util/Map;

    .line 18
    iget-object p1, p1, Le/a/d/x/r/i;->a:Ljava/lang/String;

    .line 19
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :goto_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
