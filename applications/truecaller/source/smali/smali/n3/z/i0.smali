.class public abstract Ln3/z/i0;
.super Ln3/z/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/z/i0$c;,
        Ln3/z/i0$d;,
        Ln3/z/i0$b;,
        Ln3/z/i0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ln3/z/v<",
        "TKey;TValue;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ln3/z/v$d;->c:Ln3/z/v$d;

    .line 2
    invoke-direct {p0, v0}, Ln3/z/v;-><init>(Ln3/z/v$d;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TValue;)TKey;"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Ln3/z/i0;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ln3/z/v$e;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/v$e<",
            "TKey;>;",
            "Ls1/w/d<",
            "-",
            "Ln3/z/v$a<",
            "TValue;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Ln3/z/i0$e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ln3/z/i0$e;

    iget v1, v0, Ln3/z/i0$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ln3/z/i0$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ln3/z/i0$e;

    invoke-direct {v0, p0, p2}, Ln3/z/i0$e;-><init>(Ln3/z/i0;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Ln3/z/i0$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Ln3/z/i0$e;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p1, Ln3/z/v$e;->a:Ln3/z/t0;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const-string v2, "frame"

    if-eqz p2, :cond_b

    if-eq p2, v5, :cond_8

    if-ne p2, v4, :cond_7

    .line 6
    new-instance p2, Ln3/z/i0$d;

    .line 7
    iget-object v4, p1, Ln3/z/v$e;->b:Ljava/lang/Object;

    .line 8
    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 9
    iget p1, p1, Ln3/z/v$e;->e:I

    .line 10
    invoke-direct {p2, v4, p1}, Ln3/z/i0$d;-><init>(Ljava/lang/Object;I)V

    iput v3, v0, Ln3/z/i0$e;->e:I

    .line 11
    new-instance p1, Lq3/a/o;

    invoke-static {v0}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v3

    invoke-direct {p1, v3, v5}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 12
    invoke-virtual {p1}, Lq3/a/o;->z()V

    .line 13
    new-instance v3, Ln3/z/j0;

    invoke-direct {v3, p0, p1}, Ln3/z/j0;-><init>(Ln3/z/i0;Lq3/a/n;)V

    .line 14
    invoke-virtual {p0, p2, v3}, Ln3/z/i0;->f(Ln3/z/i0$d;Ln3/z/i0$a;)V

    .line 15
    invoke-virtual {p1}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    .line 16
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    if-ne p2, v1, :cond_6

    return-object v1

    .line 17
    :cond_6
    :goto_1
    check-cast p2, Ln3/z/v$a;

    goto :goto_4

    :cond_7
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 18
    :cond_8
    new-instance p2, Ln3/z/i0$d;

    .line 19
    iget-object v3, p1, Ln3/z/v$e;->b:Ljava/lang/Object;

    .line 20
    invoke-static {v3}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 21
    iget p1, p1, Ln3/z/v$e;->e:I

    .line 22
    invoke-direct {p2, v3, p1}, Ln3/z/i0$d;-><init>(Ljava/lang/Object;I)V

    iput v4, v0, Ln3/z/i0$e;->e:I

    .line 23
    new-instance p1, Lq3/a/o;

    invoke-static {v0}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v3

    invoke-direct {p1, v3, v5}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 24
    invoke-virtual {p1}, Lq3/a/o;->z()V

    .line 25
    new-instance v3, Ln3/z/j0;

    invoke-direct {v3, p0, p1}, Ln3/z/j0;-><init>(Ln3/z/i0;Lq3/a/n;)V

    .line 26
    invoke-virtual {p0, p2, v3}, Ln3/z/i0;->g(Ln3/z/i0$d;Ln3/z/i0$a;)V

    .line 27
    invoke-virtual {p1}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9

    .line 28
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_9
    if-ne p2, v1, :cond_a

    return-object v1

    .line 29
    :cond_a
    :goto_2
    check-cast p2, Ln3/z/v$a;

    goto :goto_4

    .line 30
    :cond_b
    new-instance p2, Ln3/z/i0$c;

    .line 31
    iget-object v3, p1, Ln3/z/v$e;->b:Ljava/lang/Object;

    .line 32
    iget v4, p1, Ln3/z/v$e;->c:I

    .line 33
    iget-boolean p1, p1, Ln3/z/v$e;->d:Z

    .line 34
    invoke-direct {p2, v3, v4, p1}, Ln3/z/i0$c;-><init>(Ljava/lang/Object;IZ)V

    iput v5, v0, Ln3/z/i0$e;->e:I

    .line 35
    new-instance p1, Lq3/a/o;

    invoke-static {v0}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v3

    invoke-direct {p1, v3, v5}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 36
    invoke-virtual {p1}, Lq3/a/o;->z()V

    .line 37
    new-instance v3, Ln3/z/k0;

    invoke-direct {v3, p1, p0, p2}, Ln3/z/k0;-><init>(Lq3/a/n;Ln3/z/i0;Ln3/z/i0$c;)V

    .line 38
    invoke-virtual {p0, p2, v3}, Ln3/z/i0;->h(Ln3/z/i0$c;Ln3/z/i0$b;)V

    .line 39
    invoke-virtual {p1}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_c

    .line 40
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_c
    if-ne p2, v1, :cond_d

    return-object v1

    .line 41
    :cond_d
    :goto_3
    check-cast p2, Ln3/z/v$a;

    :goto_4
    return-object p2
.end method

.method public abstract e(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TValue;)TKey;"
        }
    .end annotation
.end method

.method public abstract f(Ln3/z/i0$d;Ln3/z/i0$a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/i0$d<",
            "TKey;>;",
            "Ln3/z/i0$a<",
            "TValue;>;)V"
        }
    .end annotation
.end method

.method public abstract g(Ln3/z/i0$d;Ln3/z/i0$a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/i0$d<",
            "TKey;>;",
            "Ln3/z/i0$a<",
            "TValue;>;)V"
        }
    .end annotation
.end method

.method public abstract h(Ln3/z/i0$c;Ln3/z/i0$b;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/i0$c<",
            "TKey;>;",
            "Ln3/z/i0$b<",
            "TValue;>;)V"
        }
    .end annotation
.end method
