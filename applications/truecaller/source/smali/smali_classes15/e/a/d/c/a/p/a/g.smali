.class public final Le/a/d/c/a/p/a/g;
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.ui.util.view.tile.VoipContactTileGroupPresenter$onPeersDeleted$1"
    f = "VoipContactTileGroupPresenter.kt"
    l = {
        0xdb
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/c/a/p/a/h;

.field public final synthetic g:Ljava/util/Set;

.field public final synthetic h:Ljava/util/Set;


# direct methods
.method public constructor <init>(Le/a/d/c/a/p/a/h;Ljava/util/Set;Ljava/util/Set;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/a/p/a/g;->f:Le/a/d/c/a/p/a/h;

    iput-object p2, p0, Le/a/d/c/a/p/a/g;->g:Ljava/util/Set;

    iput-object p3, p0, Le/a/d/c/a/p/a/g;->h:Ljava/util/Set;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/d/c/a/p/a/g;

    iget-object v0, p0, Le/a/d/c/a/p/a/g;->f:Le/a/d/c/a/p/a/h;

    iget-object v1, p0, Le/a/d/c/a/p/a/g;->g:Ljava/util/Set;

    iget-object v2, p0, Le/a/d/c/a/p/a/g;->h:Ljava/util/Set;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/c/a/p/a/g;-><init>(Le/a/d/c/a/p/a/h;Ljava/util/Set;Ljava/util/Set;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c/a/p/a/g;

    iget-object v0, p0, Le/a/d/c/a/p/a/g;->f:Le/a/d/c/a/p/a/h;

    iget-object v1, p0, Le/a/d/c/a/p/a/g;->g:Ljava/util/Set;

    iget-object v2, p0, Le/a/d/c/a/p/a/g;->h:Ljava/util/Set;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/c/a/p/a/g;-><init>(Le/a/d/c/a/p/a/h;Ljava/util/Set;Ljava/util/Set;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c/a/p/a/g;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/c/a/p/a/g;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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

    const-wide/16 v3, 0x1f4

    .line 4
    iput v2, p0, Le/a/d/c/a/p/a/g;->e:I

    invoke-static {v3, v4, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/d/c/a/p/a/g;->f:Le/a/d/c/a/p/a/h;

    .line 6
    invoke-virtual {p1}, Le/a/d/c/a/p/a/h;->Jj()V

    .line 7
    iget-object p1, p0, Le/a/d/c/a/p/a/g;->f:Le/a/d/c/a/p/a/h;

    .line 8
    iget-object p1, p1, Le/a/d/c/a/p/a/h;->d:Ljava/util/Set;

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/c0/z1/e;

    .line 10
    iget-object v1, p0, Le/a/d/c/a/p/a/g;->f:Le/a/d/c/a/p/a/h;

    .line 11
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/c/a/p/a/e;

    if-eqz v1, :cond_3

    .line 12
    iget v0, v0, Le/a/d/c0/z1/e;->a:I

    .line 13
    invoke-interface {v1, v0}, Le/a/d/c/a/p/a/e;->h0(I)V

    goto :goto_1

    .line 14
    :cond_4
    iget-object p1, p0, Le/a/d/c/a/p/a/g;->f:Le/a/d/c/a/p/a/h;

    iget-object v0, p0, Le/a/d/c/a/p/a/g;->g:Ljava/util/Set;

    .line 15
    invoke-virtual {p1, v0}, Le/a/d/c/a/p/a/h;->Lj(Ljava/util/Set;)V

    .line 16
    iget-object p1, p0, Le/a/d/c/a/p/a/g;->f:Le/a/d/c/a/p/a/h;

    .line 17
    iget-object p1, p1, Le/a/d/c/a/p/a/h;->d:Ljava/util/Set;

    .line 18
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-ne p1, v2, :cond_5

    .line 19
    iget-object p1, p0, Le/a/d/c/a/p/a/g;->f:Le/a/d/c/a/p/a/h;

    iget-object v0, p0, Le/a/d/c/a/p/a/g;->h:Ljava/util/Set;

    invoke-static {v0}, Ls1/u/i;->A(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/c0/z1/e;

    .line 20
    invoke-virtual {p1, v0}, Le/a/d/c/a/p/a/h;->Kj(Le/a/d/c0/z1/e;)V

    .line 21
    :cond_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
