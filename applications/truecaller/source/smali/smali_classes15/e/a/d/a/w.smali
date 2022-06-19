.class public final Le/a/d/a/w;
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
    c = "com.truecaller.voip.debug.MockGroupCall$deleteCallWhenEnded$1"
    f = "MockGroupCall.kt"
    l = {
        0x6a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/a/v;

.field public final synthetic g:Le/a/d/a/o;


# direct methods
.method public constructor <init>(Le/a/d/a/v;Le/a/d/a/o;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/a/w;->f:Le/a/d/a/v;

    iput-object p2, p0, Le/a/d/a/w;->g:Le/a/d/a/o;

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

    new-instance p1, Le/a/d/a/w;

    iget-object v0, p0, Le/a/d/a/w;->f:Le/a/d/a/v;

    iget-object v1, p0, Le/a/d/a/w;->g:Le/a/d/a/o;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/a/w;-><init>(Le/a/d/a/v;Le/a/d/a/o;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/a/w;

    iget-object v0, p0, Le/a/d/a/w;->f:Le/a/d/a/v;

    iget-object v1, p0, Le/a/d/a/w;->g:Le/a/d/a/o;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/a/w;-><init>(Le/a/d/a/v;Le/a/d/a/o;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/a/w;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d/a/w;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

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
    iget-object p1, p0, Le/a/d/a/w;->g:Le/a/d/a/o;

    .line 5
    iget-object p1, p1, Le/a/d/a/o;->b:Lq3/a/x2/a1;

    .line 6
    new-instance v2, Le/a/d/a/w$a;

    invoke-direct {v2, v3}, Le/a/d/a/w$a;-><init>(Ls1/w/d;)V

    iput v4, p0, Le/a/d/a/w;->e:I

    invoke-static {p1, v2, p0}, Ls1/a/a/a/v0/f/d;->N0(Lq3/a/x2/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Le/a/d/v/l/c;

    .line 8
    instance-of p1, p1, Le/a/d/v/l/c$b$c;

    if-eqz p1, :cond_3

    return-object v0

    .line 9
    :cond_3
    iget-object p1, p0, Le/a/d/a/w;->f:Le/a/d/a/v;

    .line 10
    iget-object p1, p1, Le/a/d/a/v;->j:Le/a/d/a/p;

    .line 11
    iget-object v1, p0, Le/a/d/a/w;->g:Le/a/d/a/o;

    .line 12
    iget v1, v1, Le/a/d/a/o;->f:I

    .line 13
    iget-object v2, p1, Le/a/d/a/p;->a:Lq3/a/x2/a1;

    .line 14
    invoke-interface {v2}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Le/a/d/c0/z1/e;

    .line 15
    iget v6, v6, Le/a/d/c0/z1/e;->a:I

    if-ne v6, v1, :cond_5

    move v6, v4

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_4

    move-object v3, v5

    .line 16
    :cond_6
    check-cast v3, Le/a/d/c0/z1/e;

    if-eqz v3, :cond_7

    .line 17
    iget-object p1, p1, Le/a/d/a/p;->a:Lq3/a/x2/a1;

    .line 18
    invoke-interface {p1}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-static {v1, v3}, Ls1/u/i;->c0(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1, v1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 19
    :cond_7
    iget-object p1, p0, Le/a/d/a/w;->f:Le/a/d/a/v;

    .line 20
    iget-object p1, p1, Le/a/d/a/v;->f:Lq3/a/x2/a1;

    .line 21
    invoke-interface {p1}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    iget-object v2, p0, Le/a/d/a/w;->g:Le/a/d/a/o;

    invoke-static {v1, v2}, Ls1/u/i;->c0(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1, v1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    return-object v0
.end method
