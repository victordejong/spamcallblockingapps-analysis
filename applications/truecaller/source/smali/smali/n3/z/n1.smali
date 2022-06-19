.class public abstract Ln3/z/n1;
.super Ln3/z/v;
.source "SourceFile"


# annotations
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
    sget-object v0, Ln3/z/v$d;->b:Ln3/z/v$d;

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
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot get key by item in pageKeyedDataSource"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Ln3/z/v$e;Ls1/w/d;)Ljava/lang/Object;
    .locals 11
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

    sget-object v1, Ls1/u/s;->a:Ls1/u/s;

    instance-of v0, p2, Ln3/z/n1$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ln3/z/n1$a;

    iget v2, v0, Ln3/z/n1$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v0, Ln3/z/n1$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ln3/z/n1$a;

    invoke-direct {v0, p0, p2}, Ln3/z/n1$a;-><init>(Ln3/z/n1;Ls1/w/d;)V

    :goto_0
    move-object p2, v0

    iget-object v0, p2, Ln3/z/n1$a;->d:Ljava/lang/Object;

    sget-object v7, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p2, Ln3/z/n1$a;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p1, Ln3/z/v$e;->a:Ln3/z/t0;

    .line 5
    sget-object v2, Ln3/z/t0;->a:Ln3/z/t0;

    const-string v8, "frame"

    const-string v6, "data"

    if-ne v0, v2, :cond_7

    .line 6
    iput v5, p2, Ln3/z/n1$a;->e:I

    .line 7
    new-instance p1, Lq3/a/o;

    invoke-static {p2}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v0

    invoke-direct {p1, v0, v5}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 8
    invoke-virtual {p1}, Lq3/a/o;->z()V

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 9
    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v6, Ln3/z/v$a;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ln3/z/v$a;-><init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 11
    invoke-virtual {p1, v6}, Lq3/a/o;->c(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p1}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_5

    .line 13
    invoke-static {p2, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    if-ne v0, v7, :cond_6

    return-object v7

    .line 14
    :cond_6
    :goto_1
    check-cast v0, Ln3/z/v$a;

    goto/16 :goto_4

    .line 15
    :cond_7
    iget-object v2, p1, Ln3/z/v$e;->b:Ljava/lang/Object;

    if-nez v2, :cond_8

    .line 16
    new-instance p1, Ln3/z/v$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Ln3/z/v$a;-><init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;II)V

    goto :goto_4

    .line 17
    :cond_8
    sget-object v9, Ln3/z/t0;->b:Ln3/z/t0;

    const-string v10, "key"

    if-ne v0, v9, :cond_b

    .line 18
    invoke-static {v2, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput v4, p2, Ln3/z/n1$a;->e:I

    .line 20
    new-instance p1, Lq3/a/o;

    invoke-static {p2}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v0

    invoke-direct {p1, v0, v5}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 21
    invoke-virtual {p1}, Lq3/a/o;->z()V

    const/4 v2, 0x0

    .line 22
    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v9, Ln3/z/v$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Ln3/z/v$a;-><init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;III)V

    .line 24
    invoke-virtual {p1, v9}, Lq3/a/o;->c(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p1}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_9

    .line 26
    invoke-static {p2, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_9
    if-ne v0, v7, :cond_a

    return-object v7

    .line 27
    :cond_a
    :goto_2
    check-cast v0, Ln3/z/v$a;

    goto :goto_4

    .line 28
    :cond_b
    sget-object v4, Ln3/z/t0;->c:Ln3/z/t0;

    if-ne v0, v4, :cond_e

    .line 29
    invoke-static {v2, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput v3, p2, Ln3/z/n1$a;->e:I

    .line 31
    new-instance p1, Lq3/a/o;

    invoke-static {p2}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v0

    invoke-direct {p1, v0, v5}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 32
    invoke-virtual {p1}, Lq3/a/o;->z()V

    const/4 v3, 0x0

    .line 33
    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v9, Ln3/z/v$a;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Ln3/z/v$a;-><init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;III)V

    .line 35
    invoke-virtual {p1, v9}, Lq3/a/o;->c(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p1}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_c

    .line 37
    invoke-static {p2, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_c
    if-ne v0, v7, :cond_d

    return-object v7

    .line 38
    :cond_d
    :goto_3
    check-cast v0, Ln3/z/v$a;

    :goto_4
    return-object v0

    .line 39
    :cond_e
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported type "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 40
    iget-object p1, p1, Ln3/z/v$e;->a:Ln3/z/t0;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
