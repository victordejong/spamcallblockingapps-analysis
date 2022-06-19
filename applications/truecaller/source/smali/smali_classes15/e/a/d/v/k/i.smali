.class public final Le/a/d/v/k/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;
.implements Le/a/d/v/k/g;


# instance fields
.field public final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ls1/k<",
            "Ljava/lang/Integer;",
            "Le/a/d/v/l/a;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:I

.field public final c:Le/a/d/v/g;

.field public final d:Le/a/d/c0/z1/i;

.field public final synthetic e:Lq3/a/i0;


# direct methods
.method public constructor <init>(Lq3/a/i0;Le/a/d/v/g;Le/a/d/c0/z1/i;)V
    .locals 6
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peers"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callInfoRepository"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/d/v/k/i;->e:Lq3/a/i0;

    iput-object p2, p0, Le/a/d/v/k/i;->c:Le/a/d/v/g;

    iput-object p3, p0, Le/a/d/v/k/i;->d:Le/a/d/c0/z1/i;

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/d/v/k/i;->a:Ljava/util/LinkedHashMap;

    .line 4
    new-instance v3, Le/a/d/v/k/h;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Le/a/d/v/k/h;-><init>(Le/a/d/v/k/i;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method


# virtual methods
.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    iget-object v0, p0, Le/a/d/v/k/i;->e:Lq3/a/i0;

    invoke-interface {v0}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/d/c0/x0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/v/k/i;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    move-object v0, v2

    goto/16 :goto_6

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/d/v/k/i;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v5, "peerIdCallMap.values"

    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 6
    check-cast v6, Ls1/k;

    .line 7
    iget-object v7, v6, Ls1/k;->a:Ljava/lang/Object;

    .line 8
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 9
    iget-object v6, v6, Ls1/k;->b:Ljava/lang/Object;

    .line 10
    check-cast v6, Le/a/d/v/l/a;

    .line 11
    iget-object v8, p0, Le/a/d/v/k/i;->d:Le/a/d/c0/z1/i;

    invoke-interface {v6}, Le/a/d/v/l/a;->d()I

    move-result v9

    invoke-interface {v8, v9}, Le/a/d/c0/z1/i;->s(I)Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-interface {v6}, Le/a/d/v/l/a;->f()Lq3/a/x2/i1;

    move-result-object v9

    invoke-interface {v9}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_2

    .line 13
    :cond_1
    invoke-interface {v6}, Le/a/d/v/l/a;->getState()Lq3/a/x2/i1;

    move-result-object v6

    invoke-interface {v6}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/d/v/l/c;

    .line 14
    instance-of v9, v6, Le/a/d/v/l/c$b$b;

    if-eqz v9, :cond_2

    const/4 v6, -0x1

    goto :goto_3

    .line 15
    :cond_2
    instance-of v9, v6, Le/a/d/v/l/c$b$c;

    if-eqz v9, :cond_3

    goto :goto_1

    .line 16
    :cond_3
    instance-of v6, v6, Le/a/d/v/l/c$b$f;

    if-eqz v6, :cond_4

    :goto_1
    move v6, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v6, v4

    .line 17
    :goto_3
    new-instance v9, Le/a/d/c0/x0;

    invoke-direct {v9, v8, v6, v7}, Le/a/d/c0/x0;-><init>(Ljava/lang/String;II)V

    .line 18
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_5
    iget-object v0, p0, Le/a/d/v/k/i;->d:Le/a/d/c0/z1/i;

    invoke-interface {v0}, Le/a/d/c0/z1/d;->a()Lq3/a/x2/i1;

    move-result-object v0

    invoke-interface {v0}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 20
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Le/a/d/c0/z1/e;

    .line 22
    iget-object v9, p0, Le/a/d/v/k/i;->a:Ljava/util/LinkedHashMap;

    .line 23
    iget v8, v8, Le/a/d/c0/z1/e;->a:I

    .line 24
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 25
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v6, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 27
    check-cast v7, Le/a/d/c0/z1/e;

    .line 28
    iget-object v8, p0, Le/a/d/v/k/i;->d:Le/a/d/c0/z1/i;

    iget v9, p0, Le/a/d/v/k/i;->b:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Le/a/d/v/k/i;->b:I

    .line 29
    new-instance v10, Le/a/d/c0/x0;

    .line 30
    iget v7, v7, Le/a/d/c0/z1/e;->a:I

    .line 31
    invoke-interface {v8, v7}, Le/a/d/c0/z1/i;->s(I)Ljava/lang/String;

    move-result-object v7

    .line 32
    invoke-direct {v10, v7, v4, v9}, Le/a/d/c0/x0;-><init>(Ljava/lang/String;II)V

    .line 33
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 34
    :cond_8
    invoke-static {v5, v0}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_9

    goto :goto_8

    .line 35
    :cond_9
    iget-object v0, p0, Le/a/d/v/k/i;->d:Le/a/d/c0/z1/i;

    invoke-interface {v0}, Le/a/d/c0/z1/d;->a()Lq3/a/x2/i1;

    move-result-object v0

    invoke-interface {v0}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 36
    invoke-static {v0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 37
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v6, v1, 0x1

    if-ltz v1, :cond_a

    .line 39
    check-cast v3, Le/a/d/c0/z1/e;

    .line 40
    iget-object v7, p0, Le/a/d/v/k/i;->d:Le/a/d/c0/z1/i;

    .line 41
    new-instance v8, Le/a/d/c0/x0;

    .line 42
    iget v3, v3, Le/a/d/c0/z1/e;->a:I

    .line 43
    invoke-interface {v7, v3}, Le/a/d/c0/z1/i;->s(I)Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-direct {v8, v3, v4, v1}, Le/a/d/c0/x0;-><init>(Ljava/lang/String;II)V

    .line 45
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v6

    goto :goto_7

    .line 46
    :cond_a
    invoke-static {}, Ls1/u/i;->N0()V

    throw v2

    :cond_b
    move-object v0, v5

    .line 47
    :goto_8
    iget-object v1, p0, Le/a/d/v/k/i;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "History is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0
.end method
