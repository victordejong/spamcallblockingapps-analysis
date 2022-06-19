.class public final Le/a/d/v/k/g1;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/q<",
        "Lq3/a/x2/g<",
        "-",
        "Ljava/util/Set<",
        "+",
        "Le/a/d/x/r/i;",
        ">;>;",
        "Ljava/util/Set<",
        "+",
        "Le/a/d/x/r/i;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.groupcall.action.UpdatePeersImpl$rtmPeers$$inlined$flatMapLatest$1"
    f = "UpdatePeers.kt"
    l = {
        0xd9
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/d/v/k/c1;


# direct methods
.method public constructor <init>(Ls1/w/d;Le/a/d/v/k/c1;)V
    .locals 0

    iput-object p2, p0, Le/a/d/v/k/g1;->h:Le/a/d/v/k/c1;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lq3/a/x2/g;

    check-cast p3, Ls1/w/d;

    .line 1
    new-instance v0, Le/a/d/v/k/g1;

    iget-object v1, p0, Le/a/d/v/k/g1;->h:Le/a/d/v/k/c1;

    invoke-direct {v0, p3, v1}, Le/a/d/v/k/g1;-><init>(Ls1/w/d;Le/a/d/v/k/c1;)V

    iput-object p1, v0, Le/a/d/v/k/g1;->e:Ljava/lang/Object;

    iput-object p2, v0, Le/a/d/v/k/g1;->f:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/d/v/k/g1;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/v/k/g1;->g:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/d/v/k/g1;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/x2/g;

    iget-object v1, p0, Le/a/d/v/k/g1;->f:Ljava/lang/Object;

    .line 4
    check-cast v1, Ljava/util/Set;

    .line 5
    iget-object v3, p0, Le/a/d/v/k/g1;->h:Le/a/d/v/k/c1;

    .line 6
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Le/a/d/x/r/i;

    .line 9
    iget-object v7, v3, Le/a/d/v/k/c1;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Le/a/d/x/r/i;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 12
    check-cast v5, Le/a/d/x/r/i;

    .line 13
    invoke-virtual {v3, v5}, Le/a/d/v/k/c1;->g(Le/a/d/x/r/i;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 14
    invoke-virtual {v3, v5}, Le/a/d/v/k/c1;->e(Le/a/d/x/r/i;)Ljava/lang/Long;

    move-result-object v7

    goto :goto_2

    .line 15
    :cond_5
    iget-object v7, v3, Le/a/d/v/k/c1;->a:Ljava/util/Map;

    .line 16
    iget-object v8, v5, Le/a/d/x/r/i;->a:Ljava/lang/String;

    .line 17
    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {v3, v5}, Le/a/d/v/k/c1;->f(Le/a/d/x/r/i;)Ljava/lang/Long;

    move-result-object v7

    :goto_2
    if-nez v7, :cond_6

    goto :goto_3

    .line 19
    :cond_6
    new-instance v8, Le/a/d/v/k/j1;

    invoke-direct {v8, v5, v7, v6, v3}, Le/a/d/v/k/j1;-><init>(Le/a/d/x/r/i;Ljava/lang/Long;Ls1/w/d;Le/a/d/v/k/c1;)V

    .line 20
    new-instance v6, Lq3/a/x2/d1;

    invoke-direct {v6, v8}, Lq3/a/x2/d1;-><init>(Ls1/z/b/p;)V

    .line 21
    new-instance v7, Ls1/k;

    invoke-direct {v7, v5, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v6, v7

    :goto_3
    if-eqz v6, :cond_4

    .line 22
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23
    :cond_7
    invoke-static {v1}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    .line 24
    new-instance v3, Le/a/d/v/k/k1;

    invoke-direct {v3, v1, v6}, Le/a/d/v/k/k1;-><init>(Ljava/util/Map;Ls1/w/d;)V

    .line 25
    new-instance v1, Lq3/a/x2/d1;

    invoke-direct {v1, v3}, Lq3/a/x2/d1;-><init>(Ls1/z/b/p;)V

    .line 26
    iput v2, p0, Le/a/d/v/k/g1;->g:I

    invoke-virtual {v1, p1, p0}, Lq3/a/x2/a;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 27
    :cond_8
    :goto_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
