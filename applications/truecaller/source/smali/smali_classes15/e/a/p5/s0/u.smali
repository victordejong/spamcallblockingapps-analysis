.class public final Le/a/p5/s0/u;
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
    c = "com.truecaller.utils.extensions.ThrottledSuspending$start$1"
    f = "Coroutines.kt"
    l = {
        0x29,
        0x2a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/p5/s0/v;


# direct methods
.method public constructor <init>(Le/a/p5/s0/v;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/p5/s0/u;->g:Le/a/p5/s0/v;

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

    new-instance v0, Le/a/p5/s0/u;

    iget-object v1, p0, Le/a/p5/s0/u;->g:Le/a/p5/s0/v;

    invoke-direct {v0, v1, p2}, Le/a/p5/s0/u;-><init>(Le/a/p5/s0/v;Ls1/w/d;)V

    iput-object p1, v0, Le/a/p5/s0/u;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/p5/s0/u;

    iget-object v1, p0, Le/a/p5/s0/u;->g:Le/a/p5/s0/v;

    invoke-direct {v0, v1, p2}, Le/a/p5/s0/u;-><init>(Le/a/p5/s0/v;Ls1/w/d;)V

    iput-object p1, v0, Le/a/p5/s0/u;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/p5/s0/u;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/p5/s0/u;->f:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Le/a/p5/s0/u;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/i0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object p1, v1

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/p5/s0/u;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/i0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object p1, v1

    move-object v1, p0

    goto :goto_1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/p5/s0/u;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    :goto_0
    move-object v1, p0

    .line 4
    :cond_3
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->Q1(Lq3/a/i0;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 5
    iget-object v5, v1, Le/a/p5/s0/u;->g:Le/a/p5/s0/v;

    .line 6
    iget-object v5, v5, Le/a/p5/s0/v;->a:Lq3/a/b3/c;

    .line 7
    iput-object p1, v1, Le/a/p5/s0/u;->e:Ljava/lang/Object;

    iput v4, v1, Le/a/p5/s0/u;->f:I

    invoke-static {v5, v3, v1, v4, v3}, Ls1/a/a/a/v0/f/d;->z2(Lq3/a/b3/c;Ljava/lang/Object;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_4

    return-object v0

    .line 8
    :cond_4
    :goto_1
    iget-object v5, v1, Le/a/p5/s0/u;->g:Le/a/p5/s0/v;

    .line 9
    iget-object v6, v5, Le/a/p5/s0/v;->e:Ls1/z/b/q;

    .line 10
    iget-object v7, v5, Le/a/p5/s0/v;->b:Ljava/lang/Object;

    if-eqz v7, :cond_5

    .line 11
    iput-object p1, v1, Le/a/p5/s0/u;->e:Ljava/lang/Object;

    iput v2, v1, Le/a/p5/s0/u;->f:I

    invoke-interface {v6, v7, v5, v1}, Ls1/z/b/q;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_3

    return-object v0

    :cond_5
    const-string p1, "param"

    .line 12
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 13
    :cond_6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
