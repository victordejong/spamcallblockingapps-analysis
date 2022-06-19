.class public final Le/a/h/b/y$f;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/y;->Sj(Le/a/h/b/w0/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    c = "com.truecaller.calling.dialer.DialerPresenter$refreshSuggestedContacts$1"
    f = "DialerPresenter.kt"
    l = {
        0x511
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/h/b/y;

.field public final synthetic h:Le/a/h/b/w0/c;


# direct methods
.method public constructor <init>(Le/a/h/b/y;Le/a/h/b/w0/c;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/y$f;->g:Le/a/h/b/y;

    iput-object p2, p0, Le/a/h/b/y$f;->h:Le/a/h/b/w0/c;

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

    new-instance p1, Le/a/h/b/y$f;

    iget-object v0, p0, Le/a/h/b/y$f;->g:Le/a/h/b/y;

    iget-object v1, p0, Le/a/h/b/y$f;->h:Le/a/h/b/w0/c;

    invoke-direct {p1, v0, v1, p2}, Le/a/h/b/y$f;-><init>(Le/a/h/b/y;Le/a/h/b/w0/c;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/h/b/y$f;

    iget-object v0, p0, Le/a/h/b/y$f;->g:Le/a/h/b/y;

    iget-object v1, p0, Le/a/h/b/y$f;->h:Le/a/h/b/w0/c;

    invoke-direct {p1, v0, v1, p2}, Le/a/h/b/y$f;-><init>(Le/a/h/b/y;Le/a/h/b/w0/c;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/h/b/y$f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/h/b/y$f;->f:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Le/a/h/b/y$f;->e:Ljava/lang/Object;

    check-cast v0, Le/a/h/b/y;

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
    iget-object p1, p0, Le/a/h/b/y$f;->g:Le/a/h/b/y;

    iput-object p1, p0, Le/a/h/b/y$f;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/h/b/y$f;->f:I

    .line 5
    iget-object v1, p1, Le/a/h/b/y;->M:Ls1/w/f;

    new-instance v4, Le/a/h/b/d0;

    invoke-direct {v4, p1, v2}, Le/a/h/b/d0;-><init>(Le/a/h/b/y;Ls1/w/d;)V

    invoke-static {v1, v4, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    .line 6
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 7
    iput-object p1, v0, Le/a/h/b/y;->q:Ljava/util/List;

    .line 8
    iget-object p1, p0, Le/a/h/b/y$f;->g:Le/a/h/b/y;

    .line 9
    iget-object p1, p1, Le/a/h/b/y;->g0:Le/a/h/b/d/b/j;

    .line 10
    invoke-interface {p1}, Le/a/h/b/d/b/j;->clear()V

    .line 11
    iget-object p1, p0, Le/a/h/b/y$f;->g:Le/a/h/b/y;

    .line 12
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h/b/v;

    if-eqz p1, :cond_3

    .line 13
    invoke-interface {p1}, Le/a/h/b/v;->B0()V

    .line 14
    :cond_3
    iget-object p1, p0, Le/a/h/b/y$f;->h:Le/a/h/b/w0/c;

    if-eqz p1, :cond_7

    .line 15
    iget-object v0, p0, Le/a/h/b/y$f;->g:Le/a/h/b/y;

    .line 16
    iget-object v0, v0, Le/a/h/b/y;->q:Ljava/util/List;

    .line 17
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    .line 18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_7

    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 21
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 22
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ltz p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    .line 23
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    move-object v2, v0

    :cond_6
    if-eqz v2, :cond_7

    .line 25
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Le/a/h/b/y$f;->g:Le/a/h/b/y;

    .line 26
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/b/v;

    if-eqz v0, :cond_7

    .line 27
    invoke-interface {v0, p1}, Le/a/h/b/v;->r0(I)V

    .line 28
    :cond_7
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
