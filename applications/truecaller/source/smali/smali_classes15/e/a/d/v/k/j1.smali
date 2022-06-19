.class public final Le/a/d/v/k/j1;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/x2/g<",
        "-",
        "Ljava/util/Set<",
        "+",
        "Le/a/d/x/r/i;",
        ">;>;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.groupcall.action.UpdatePeersImpl$toInviteAttributesFlow$attributeTimeoutFlowMap$2$timeoutFlow$1"
    f = "UpdatePeers.kt"
    l = {
        0xc6,
        0xc8,
        0xcc
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/d/x/r/i;

.field public final synthetic h:Ljava/lang/Long;

.field public final synthetic i:Le/a/d/v/k/c1;


# direct methods
.method public constructor <init>(Le/a/d/x/r/i;Ljava/lang/Long;Ls1/w/d;Le/a/d/v/k/c1;)V
    .locals 0

    iput-object p1, p0, Le/a/d/v/k/j1;->g:Le/a/d/x/r/i;

    iput-object p2, p0, Le/a/d/v/k/j1;->h:Ljava/lang/Long;

    iput-object p4, p0, Le/a/d/v/k/j1;->i:Le/a/d/v/k/c1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 4
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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/v/k/j1;

    iget-object v1, p0, Le/a/d/v/k/j1;->g:Le/a/d/x/r/i;

    iget-object v2, p0, Le/a/d/v/k/j1;->h:Ljava/lang/Long;

    iget-object v3, p0, Le/a/d/v/k/j1;->i:Le/a/d/v/k/c1;

    invoke-direct {v0, v1, v2, p2, v3}, Le/a/d/v/k/j1;-><init>(Le/a/d/x/r/i;Ljava/lang/Long;Ls1/w/d;Le/a/d/v/k/c1;)V

    iput-object p1, v0, Le/a/d/v/k/j1;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/v/k/j1;

    iget-object v1, p0, Le/a/d/v/k/j1;->g:Le/a/d/x/r/i;

    iget-object v2, p0, Le/a/d/v/k/j1;->h:Ljava/lang/Long;

    iget-object v3, p0, Le/a/d/v/k/j1;->i:Le/a/d/v/k/c1;

    invoke-direct {v0, v1, v2, p2, v3}, Le/a/d/v/k/j1;-><init>(Le/a/d/x/r/i;Ljava/lang/Long;Ls1/w/d;Le/a/d/v/k/c1;)V

    iput-object p1, v0, Le/a/d/v/k/j1;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/d/v/k/j1;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/v/k/j1;->f:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

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
    iget-object v1, p0, Le/a/d/v/k/j1;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/x2/g;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/d/v/k/j1;->e:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lq3/a/x2/g;

    .line 4
    iget-object p1, p0, Le/a/d/v/k/j1;->i:Le/a/d/v/k/c1;

    iget-object v5, p0, Le/a/d/v/k/j1;->g:Le/a/d/x/r/i;

    .line 5
    invoke-virtual {p1, v5}, Le/a/d/v/k/c1;->g(Le/a/d/x/r/i;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Le/a/d/v/k/j1;->i:Le/a/d/v/k/c1;

    iget-object v3, p0, Le/a/d/v/k/j1;->g:Le/a/d/x/r/i;

    iput-object v1, p0, Le/a/d/v/k/j1;->e:Ljava/lang/Object;

    iput v4, p0, Le/a/d/v/k/j1;->f:I

    invoke-virtual {p1, v3, p0}, Le/a/d/v/k/c1;->i(Le/a/d/x/r/i;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 7
    :cond_3
    iget-object p1, p0, Le/a/d/v/k/j1;->h:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-object v1, p0, Le/a/d/v/k/j1;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/d/v/k/j1;->f:I

    invoke-static {v5, v6, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 8
    :cond_4
    :goto_0
    iget-object p1, p0, Le/a/d/v/k/j1;->i:Le/a/d/v/k/c1;

    .line 9
    iget-object v3, p1, Le/a/d/v/k/c1;->g:Le/a/d/x/r/h;

    invoke-interface {v3}, Le/a/d/x/r/h;->a()Lq3/a/x2/i1;

    move-result-object v3

    invoke-interface {v3}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 10
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Le/a/d/x/r/i;

    .line 12
    iget-object v8, p1, Le/a/d/v/k/c1;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Le/a/d/x/r/i;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Le/a/d/x/r/i;

    .line 15
    invoke-virtual {p1, v7}, Le/a/d/v/k/c1;->g(Le/a/d/x/r/i;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_8

    .line 16
    invoke-virtual {p1, v7}, Le/a/d/v/k/c1;->e(Le/a/d/x/r/i;)Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_9

    goto :goto_3

    .line 17
    :cond_8
    invoke-virtual {p1, v7}, Le/a/d/v/k/c1;->f(Le/a/d/x/r/i;)Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_9

    :goto_3
    move v9, v4

    :cond_9
    if-eqz v9, :cond_7

    .line 18
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 19
    :cond_a
    invoke-static {v3}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    const/4 v3, 0x0

    .line 20
    iput-object v3, p0, Le/a/d/v/k/j1;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/d/v/k/j1;->f:I

    invoke-interface {v1, p1, p0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b

    return-object v0

    .line 21
    :cond_b
    :goto_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
