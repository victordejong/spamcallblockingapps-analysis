.class public final Le/a/d/c/a/p/a/f;
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
    c = "com.truecaller.voip.ui.util.view.tile.VoipContactTileGroupPresenter$deleteTileInternalDelayed$1"
    f = "VoipContactTileGroupPresenter.kt"
    l = {
        0x145
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/c/a/p/a/h;

.field public final synthetic g:Le/a/d/c0/z1/e;


# direct methods
.method public constructor <init>(Le/a/d/c/a/p/a/h;Le/a/d/c0/z1/e;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/a/p/a/f;->f:Le/a/d/c/a/p/a/h;

    iput-object p2, p0, Le/a/d/c/a/p/a/f;->g:Le/a/d/c0/z1/e;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c/a/p/a/f;

    iget-object v0, p0, Le/a/d/c/a/p/a/f;->f:Le/a/d/c/a/p/a/h;

    iget-object v1, p0, Le/a/d/c/a/p/a/f;->g:Le/a/d/c0/z1/e;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/c/a/p/a/f;-><init>(Le/a/d/c/a/p/a/h;Le/a/d/c0/z1/e;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c/a/p/a/f;

    iget-object v0, p0, Le/a/d/c/a/p/a/f;->f:Le/a/d/c/a/p/a/h;

    iget-object v1, p0, Le/a/d/c/a/p/a/f;->g:Le/a/d/c0/z1/e;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/c/a/p/a/f;-><init>(Le/a/d/c/a/p/a/h;Le/a/d/c0/z1/e;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c/a/p/a/f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/c/a/p/a/f;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

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
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d/c/a/p/a/f;->f:Le/a/d/c/a/p/a/h;

    .line 5
    iget-object p1, p1, Le/a/d/c/a/p/a/h;->n:Le/a/d/v/d;

    .line 6
    invoke-interface {p1}, Le/a/d/v/d;->b()Le/a/d/v/b;

    move-result-object p1

    instance-of p1, p1, Le/a/d/a/v;

    if-eqz p1, :cond_2

    const-wide/16 v3, 0x4

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x2

    .line 7
    :goto_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    iput v2, p0, Le/a/d/c/a/p/a/f;->e:I

    invoke-static {v3, v4, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 8
    :cond_3
    :goto_1
    iget-object p1, p0, Le/a/d/c/a/p/a/f;->f:Le/a/d/c/a/p/a/h;

    .line 9
    iget-object p1, p1, Le/a/d/c/a/p/a/h;->f:Ljava/util/List;

    .line 10
    iget-object v0, p0, Le/a/d/c/a/p/a/f;->g:Le/a/d/c0/z1/e;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 11
    iget-object p1, p0, Le/a/d/c/a/p/a/f;->f:Le/a/d/c/a/p/a/h;

    .line 12
    iget-object p1, p1, Le/a/d/c/a/p/a/h;->f:Ljava/util/List;

    .line 13
    iget-object v0, p0, Le/a/d/c/a/p/a/f;->g:Le/a/d/c0/z1/e;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, p0, Le/a/d/c/a/p/a/f;->f:Le/a/d/c/a/p/a/h;

    iget-object v0, p0, Le/a/d/c/a/p/a/f;->g:Le/a/d/c0/z1/e;

    .line 15
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/a/p/a/e;

    if-eqz p1, :cond_4

    .line 16
    iget v0, v0, Le/a/d/c0/z1/e;->a:I

    .line 17
    invoke-interface {p1, v0}, Le/a/d/c/a/p/a/e;->h0(I)V

    .line 18
    :cond_4
    iget-object p1, p0, Le/a/d/c/a/p/a/f;->f:Le/a/d/c/a/p/a/h;

    .line 19
    iget-object v0, p1, Le/a/d/c/a/p/a/h;->d:Ljava/util/Set;

    .line 20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/c0/z1/e;

    .line 21
    invoke-virtual {p1, v1}, Le/a/d/c/a/p/a/h;->Ij(Le/a/d/c0/z1/e;)V

    .line 22
    invoke-virtual {p1}, Le/a/d/c/a/p/a/h;->Mj()V

    goto :goto_2

    .line 23
    :cond_5
    iget-object p1, p0, Le/a/d/c/a/p/a/f;->f:Le/a/d/c/a/p/a/h;

    .line 24
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/a/p/a/e;

    if-eqz p1, :cond_6

    .line 25
    invoke-interface {p1}, Le/a/d/c/a/p/a/e;->H0()V

    .line 26
    :cond_6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
