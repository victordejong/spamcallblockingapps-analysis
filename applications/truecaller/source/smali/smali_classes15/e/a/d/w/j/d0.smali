.class public final Le/a/d/w/j/d0;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ls1/k<",
        "+",
        "Ljava/util/Set<",
        "+",
        "Le/a/d/x/r/l;",
        ">;+",
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
    c = "com.truecaller.voip.invitation.action.UpdatePeersImpl$listenRtmPeerChanges$3"
    f = "UpdatePeers.kt"
    l = {
        0x44
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/d/w/j/h0;


# direct methods
.method public constructor <init>(Le/a/d/w/j/h0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/w/j/d0;->g:Le/a/d/w/j/h0;

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

    new-instance v0, Le/a/d/w/j/d0;

    iget-object v1, p0, Le/a/d/w/j/d0;->g:Le/a/d/w/j/h0;

    invoke-direct {v0, v1, p2}, Le/a/d/w/j/d0;-><init>(Le/a/d/w/j/h0;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/w/j/d0;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/w/j/d0;

    iget-object v1, p0, Le/a/d/w/j/d0;->g:Le/a/d/w/j/h0;

    invoke-direct {v0, v1, p2}, Le/a/d/w/j/d0;-><init>(Le/a/d/w/j/h0;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/w/j/d0;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/d/w/j/d0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/w/j/d0;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/d/w/j/d0;->e:Ljava/lang/Object;

    check-cast v0, Le/a/d/w/j/v;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/d/w/j/d0;->e:Ljava/lang/Object;

    check-cast p1, Ls1/k;

    .line 4
    iget-object v1, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 5
    check-cast v1, Ljava/util/Set;

    .line 6
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 7
    check-cast p1, Ljava/util/Set;

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating peers for members: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " and attributes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 9
    iget-object v3, p0, Le/a/d/w/j/d0;->g:Le/a/d/w/j/h0;

    .line 10
    invoke-virtual {v3, v1, p1}, Le/a/d/w/j/h0;->a(Ljava/util/Set;Ljava/util/Set;)Le/a/d/w/j/v;

    move-result-object p1

    .line 11
    iget-object v1, p0, Le/a/d/w/j/d0;->g:Le/a/d/w/j/h0;

    .line 12
    iget-object v1, v1, Le/a/d/w/j/h0;->d:Le/a/d/c0/z1/i;

    .line 13
    iget-object v3, p1, Le/a/d/w/j/v;->a:Ljava/util/Set;

    .line 14
    iput-object p1, p0, Le/a/d/w/j/d0;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/d/w/j/d0;->f:I

    invoke-interface {v1, v3, p0}, Le/a/d/c0/z1/i;->c(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    .line 15
    invoke-static {p1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 16
    iget-object v1, p0, Le/a/d/w/j/d0;->g:Le/a/d/w/j/h0;

    .line 17
    iget-object v1, v1, Le/a/d/w/j/h0;->d:Le/a/d/c0/z1/i;

    invoke-interface {v1, p1}, Le/a/d/c0/z1/i;->m(Ljava/util/Set;)V

    .line 18
    iget-object p1, p0, Le/a/d/w/j/d0;->g:Le/a/d/w/j/h0;

    .line 19
    iget-object v0, v0, Le/a/d/w/j/v;->b:Ljava/util/Set;

    .line 20
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v1, Lq3/a/x2/h;

    invoke-direct {v1, v0}, Lq3/a/x2/h;-><init>(Ljava/lang/Iterable;)V

    .line 22
    new-instance v0, Le/a/d/w/j/f0;

    invoke-direct {v0, v1}, Le/a/d/w/j/f0;-><init>(Lq3/a/x2/f;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 23
    invoke-static {v0, v1, v2, v3}, Ls1/a/a/a/v0/f/d;->V0(Lq3/a/x2/f;IILjava/lang/Object;)Lq3/a/x2/f;

    move-result-object v0

    .line 24
    new-instance v1, Le/a/d/w/j/g0;

    invoke-direct {v1, p1, v3}, Le/a/d/w/j/g0;-><init>(Le/a/d/w/j/h0;Ls1/w/d;)V

    .line 25
    new-instance v2, Lq3/a/x2/u0;

    invoke-direct {v2, v0, v1}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 26
    invoke-static {v2, p1}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    .line 27
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
