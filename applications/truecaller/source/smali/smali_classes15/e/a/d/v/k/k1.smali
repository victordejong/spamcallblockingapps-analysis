.class public final Le/a/d/v/k/k1;
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
    c = "com.truecaller.voip.groupcall.action.UpdatePeersImpl$toInviteAttributesFlow$1"
    f = "UpdatePeers.kt"
    l = {
        0xd6,
        0x11c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/v/k/k1;->g:Ljava/util/Map;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance v0, Le/a/d/v/k/k1;

    iget-object v1, p0, Le/a/d/v/k/k1;->g:Ljava/util/Map;

    invoke-direct {v0, v1, p2}, Le/a/d/v/k/k1;-><init>(Ljava/util/Map;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/v/k/k1;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/v/k/k1;

    iget-object v1, p0, Le/a/d/v/k/k1;->g:Ljava/util/Map;

    invoke-direct {v0, v1, p2}, Le/a/d/v/k/k1;-><init>(Ljava/util/Map;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/v/k/k1;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/d/v/k/k1;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/v/k/k1;->f:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/d/v/k/k1;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/x2/g;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/d/v/k/k1;->e:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lq3/a/x2/g;

    .line 4
    iget-object p1, p0, Le/a/d/v/k/k1;->g:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    iput-object v1, p0, Le/a/d/v/k/k1;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/d/v/k/k1;->f:I

    invoke-interface {v1, p1, p0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 5
    :cond_3
    :goto_0
    iget-object p1, p0, Le/a/d/v/k/k1;->g:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    .line 6
    sget p1, Lq3/a/x2/k0;->a:I

    .line 7
    new-instance p1, Lq3/a/x2/o1/l;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xe

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lq3/a/x2/o1/l;-><init>(Ljava/lang/Iterable;Ls1/w/f;ILq3/a/w2/i;I)V

    const/4 v3, 0x0

    .line 8
    iput-object v3, p0, Le/a/d/v/k/k1;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/d/v/k/k1;->f:I

    invoke-virtual {p1, v1, p0}, Lq3/a/x2/o1/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 9
    :cond_4
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
