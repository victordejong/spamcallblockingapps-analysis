.class public final Le/a/f/y/n;
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
    c = "com.truecaller.incallui.service.InCallUIServicePresenter$handleIncomingCallNotification$1"
    f = "InCallUIServicePresenter.kt"
    l = {
        0x183
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/f/y/o;


# direct methods
.method public constructor <init>(Le/a/f/y/o;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/y/n;->f:Le/a/f/y/o;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/f/y/n;

    iget-object v0, p0, Le/a/f/y/n;->f:Le/a/f/y/o;

    invoke-direct {p1, v0, p2}, Le/a/f/y/n;-><init>(Le/a/f/y/o;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/f/y/n;

    iget-object v0, p0, Le/a/f/y/n;->f:Le/a/f/y/o;

    invoke-direct {p1, v0, p2}, Le/a/f/y/n;-><init>(Le/a/f/y/o;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/f/y/n;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/f/y/n;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

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
    iget-object p1, p0, Le/a/f/y/n;->f:Le/a/f/y/o;

    .line 5
    iget-object p1, p1, Le/a/f/y/o;->u:Le/a/f/z/f0;

    .line 6
    invoke-virtual {p1}, Le/a/f/z/f0;->b()Z

    move-result p1

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Le/a/f/y/n;->f:Le/a/f/y/o;

    .line 8
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/y/k;

    if-eqz p1, :cond_2

    .line 9
    invoke-interface {p1}, Le/a/f/y/k;->x()V

    :cond_2
    return-object v0

    .line 10
    :cond_3
    iget-object p1, p0, Le/a/f/y/n;->f:Le/a/f/y/o;

    .line 11
    iget-object p1, p1, Le/a/f/y/o;->u:Le/a/f/z/f0;

    .line 12
    invoke-virtual {p1}, Le/a/f/z/f0;->a()Z

    move-result p1

    if-nez p1, :cond_5

    .line 13
    iget-object p1, p0, Le/a/f/y/n;->f:Le/a/f/y/o;

    .line 14
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/y/k;

    if-eqz p1, :cond_4

    .line 15
    invoke-interface {p1}, Le/a/f/y/k;->x()V

    :cond_4
    return-object v0

    .line 16
    :cond_5
    iget-object p1, p0, Le/a/f/y/n;->f:Le/a/f/y/o;

    .line 17
    iget-object p1, p1, Le/a/f/y/o;->u:Le/a/f/z/f0;

    .line 18
    invoke-virtual {p1}, Le/a/f/z/f0;->c()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 19
    iget-object p1, p0, Le/a/f/y/n;->f:Le/a/f/y/o;

    invoke-static {p1, v5, v5, v4}, Le/a/f/y/o;->Vj(Le/a/f/y/o;ZZI)V

    .line 20
    iget-object p1, p0, Le/a/f/y/n;->f:Le/a/f/y/o;

    .line 21
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/y/k;

    if-eqz p1, :cond_6

    .line 22
    invoke-interface {p1}, Le/a/f/y/k;->x()V

    :cond_6
    return-object v0

    .line 23
    :cond_7
    iget-object p1, p0, Le/a/f/y/n;->f:Le/a/f/y/o;

    .line 24
    iget-object p1, p1, Le/a/f/y/o;->p:Le/a/f/y/c;

    .line 25
    invoke-interface {p1}, Le/a/f/y/c;->g()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 26
    iget-object v2, p0, Le/a/f/y/n;->f:Le/a/f/y/o;

    .line 27
    iget-object v2, v2, Le/a/f/y/o;->E:Le/a/k/h;

    .line 28
    invoke-interface {v2}, Le/a/k/h;->A()Le/a/k/c/c2;

    move-result-object v2

    .line 29
    iput v3, p0, Le/a/f/y/n;->e:I

    invoke-interface {v2, p1, v3, p0}, Le/a/k/c/c2;->h(Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 30
    iget-object p1, p0, Le/a/f/y/n;->f:Le/a/f/y/o;

    invoke-static {p1, v5, v5, v4}, Le/a/f/y/o;->Vj(Le/a/f/y/o;ZZI)V

    .line 31
    iget-object p1, p0, Le/a/f/y/n;->f:Le/a/f/y/o;

    .line 32
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/y/k;

    if-eqz p1, :cond_9

    .line 33
    invoke-interface {p1}, Le/a/f/y/k;->x()V

    :cond_9
    return-object v0

    .line 34
    :cond_a
    iget-object p1, p0, Le/a/f/y/n;->f:Le/a/f/y/o;

    .line 35
    iget-boolean v1, p1, Le/a/f/y/o;->h:Z

    if-eqz v1, :cond_b

    .line 36
    invoke-virtual {p1, v3, v3}, Le/a/f/y/o;->Uj(ZZ)V

    goto :goto_1

    .line 37
    :cond_b
    invoke-virtual {p1, v5, v3}, Le/a/f/y/o;->Uj(ZZ)V

    .line 38
    iget-object p1, p0, Le/a/f/y/n;->f:Le/a/f/y/o;

    .line 39
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/y/k;

    if-eqz p1, :cond_c

    .line 40
    invoke-interface {p1}, Le/a/f/y/k;->x()V

    :cond_c
    :goto_1
    return-object v0
.end method
