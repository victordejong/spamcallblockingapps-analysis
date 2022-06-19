.class public final Le/a/d0/a/n;
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
    c = "com.truecaller.callerid.window.CallerIdWindowPresenter$buildInfoLines$1"
    f = "CallerIdWindowPresenter.kt"
    l = {
        0xd6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d0/a/m;

.field public final synthetic g:Le/a/d0/v;


# direct methods
.method public constructor <init>(Le/a/d0/a/m;Le/a/d0/v;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d0/a/n;->f:Le/a/d0/a/m;

    iput-object p2, p0, Le/a/d0/a/n;->g:Le/a/d0/v;

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

    new-instance p1, Le/a/d0/a/n;

    iget-object v0, p0, Le/a/d0/a/n;->f:Le/a/d0/a/m;

    iget-object v1, p0, Le/a/d0/a/n;->g:Le/a/d0/v;

    invoke-direct {p1, v0, v1, p2}, Le/a/d0/a/n;-><init>(Le/a/d0/a/m;Le/a/d0/v;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d0/a/n;

    iget-object v0, p0, Le/a/d0/a/n;->f:Le/a/d0/a/m;

    iget-object v1, p0, Le/a/d0/a/n;->g:Le/a/d0/v;

    invoke-direct {p1, v0, v1, p2}, Le/a/d0/a/n;-><init>(Le/a/d0/a/m;Le/a/d0/v;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d0/a/n;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d0/a/n;->e:I

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

    .line 4
    iget-object p1, p0, Le/a/d0/a/n;->f:Le/a/d0/a/m;

    iget-object v1, p0, Le/a/d0/a/n;->g:Le/a/d0/v;

    iput v2, p0, Le/a/d0/a/n;->e:I

    invoke-virtual {p1, v1, p0}, Le/a/d0/a/m;->Kj(Le/a/d0/v;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Ls1/u/i;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    .line 5
    iget-object v0, p0, Le/a/d0/a/n;->f:Le/a/d0/a/m;

    .line 6
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d0/a/l;

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    .line 7
    invoke-static {p1, v1}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/d0/a/x;

    new-instance v4, Le/a/d0/a/n$a;

    invoke-direct {v4, v0}, Le/a/d0/a/n$a;-><init>(Le/a/d0/a/l;)V

    new-instance v5, Le/a/d0/a/n$b;

    invoke-direct {v5, v0}, Le/a/d0/a/n$b;-><init>(Le/a/d0/a/l;)V

    invoke-static {v0, v3, v4, v5}, Le/a/n/g0;->e(Le/a/d0/a/l;Le/a/d0/a/x;Ls1/z/b/l;Ls1/z/b/a;)V

    .line 8
    invoke-static {p1, v2}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/d0/a/x;

    new-instance v4, Le/a/d0/a/n$c;

    invoke-direct {v4, v0}, Le/a/d0/a/n$c;-><init>(Le/a/d0/a/l;)V

    new-instance v5, Le/a/d0/a/n$d;

    invoke-direct {v5, v0}, Le/a/d0/a/n$d;-><init>(Le/a/d0/a/l;)V

    invoke-static {v0, v3, v4, v5}, Le/a/n/g0;->e(Le/a/d0/a/l;Le/a/d0/a/x;Ls1/z/b/l;Ls1/z/b/a;)V

    .line 9
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v3, v2

    goto :goto_1

    .line 10
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/d0/a/x;

    .line 11
    instance-of v4, v4, Le/a/d0/a/x$c;

    xor-int/2addr v4, v2

    .line 12
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 13
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_5

    move v3, v1

    :goto_1
    if-eqz v3, :cond_6

    invoke-interface {v0}, Le/a/d0/a/l;->B5()V

    .line 14
    :cond_6
    iget-object v3, p0, Le/a/d0/a/n;->g:Le/a/d0/v;

    iget-object v3, v3, Le/a/d0/v;->l:Lcom/truecaller/data/entity/Contact;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result v3

    if-eq v3, v2, :cond_8

    :cond_7
    iget-object v3, p0, Le/a/d0/a/n;->g:Le/a/d0/v;

    iget-object v3, v3, Le/a/d0/v;->l:Lcom/truecaller/data/entity/Contact;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->v0()Z

    move-result v3

    if-ne v3, v2, :cond_9

    :cond_8
    move v3, v2

    goto :goto_2

    :cond_9
    move v3, v1

    .line 15
    :goto_2
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_3

    .line 16
    :cond_a
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/d0/a/x;

    .line 17
    instance-of v4, v4, Le/a/d0/a/x$a;

    xor-int/2addr v4, v2

    .line 18
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 19
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_b

    move v2, v1

    :cond_c
    :goto_3
    if-nez v2, :cond_d

    if-eqz v3, :cond_e

    :cond_d
    invoke-interface {v0}, Le/a/d0/a/l;->U5()V

    .line 20
    :cond_e
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
