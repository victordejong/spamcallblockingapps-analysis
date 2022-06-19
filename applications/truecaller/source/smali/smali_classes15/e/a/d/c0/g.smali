.class public final Le/a/d/c0/g;
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
    c = "com.truecaller.voip.util.CallUserResolverImpl$resolveUserForId$1"
    f = "CallUserResolver.kt"
    l = {
        0xe0,
        0x76,
        0x77,
        0x77,
        0x81
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/d/c0/f;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Lq3/a/x2/a1;

.field public final synthetic k:Lq3/a/n0;


# direct methods
.method public constructor <init>(Le/a/d/c0/f;Ljava/lang/String;Lq3/a/x2/a1;Lq3/a/n0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/g;->h:Le/a/d/c0/f;

    iput-object p2, p0, Le/a/d/c0/g;->i:Ljava/lang/String;

    iput-object p3, p0, Le/a/d/c0/g;->j:Lq3/a/x2/a1;

    iput-object p4, p0, Le/a/d/c0/g;->k:Lq3/a/n0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Le/a/d/c0/g;

    iget-object v1, p0, Le/a/d/c0/g;->h:Le/a/d/c0/f;

    iget-object v2, p0, Le/a/d/c0/g;->i:Ljava/lang/String;

    iget-object v3, p0, Le/a/d/c0/g;->j:Lq3/a/x2/a1;

    iget-object v4, p0, Le/a/d/c0/g;->k:Lq3/a/n0;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/d/c0/g;-><init>(Le/a/d/c0/f;Ljava/lang/String;Lq3/a/x2/a1;Lq3/a/n0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/d/c0/g;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/d/c0/g;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c0/g;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/c0/g;->g:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v7, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/d/c0/g;->f:Ljava/lang/Object;

    check-cast v0, Le/a/d/c0/l1;

    iget-object v1, p0, Le/a/d/c0/g;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/b3/c;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/16 :goto_7

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/d/c0/g;->f:Ljava/lang/Object;

    check-cast v1, Le/a/d/c0/k1;

    iget-object v3, p0, Le/a/d/c0/g;->e:Ljava/lang/Object;

    check-cast v3, Lq3/a/b3/c;

    :try_start_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_a

    :cond_2
    iget-object v1, p0, Le/a/d/c0/g;->f:Ljava/lang/Object;

    check-cast v1, Le/a/d/c0/k1;

    iget-object v4, p0, Le/a/d/c0/g;->e:Ljava/lang/Object;

    check-cast v4, Lq3/a/b3/c;

    :try_start_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto/16 :goto_b

    :cond_3
    iget-object v1, p0, Le/a/d/c0/g;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/b3/c;

    :try_start_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :cond_4
    iget-object v1, p0, Le/a/d/c0/g;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/b3/c;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d/c0/g;->h:Le/a/d/c0/f;

    .line 5
    iget-object p1, p1, Le/a/d/c0/f;->a:Lq3/a/b3/c;

    .line 6
    iput-object p1, p0, Le/a/d/c0/g;->e:Ljava/lang/Object;

    iput v7, p0, Le/a/d/c0/g;->g:I

    invoke-interface {p1, v6, p0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v1, p1

    .line 7
    :goto_0
    :try_start_4
    iget-object p1, p0, Le/a/d/c0/g;->h:Le/a/d/c0/f;

    .line 8
    iget-object p1, p1, Le/a/d/c0/f;->d:Le/a/d/c0/j1;

    .line 9
    iget-object v8, p0, Le/a/d/c0/g;->i:Ljava/lang/String;

    iput-object v1, p0, Le/a/d/c0/g;->e:Ljava/lang/Object;

    iput v5, p0, Le/a/d/c0/g;->g:I

    invoke-interface {p1, v8, p0}, Le/a/d/c0/j1;->z(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 10
    :cond_7
    :goto_1
    check-cast p1, Le/a/d/c0/k1;

    if-eqz p1, :cond_a

    .line 11
    iget-object v5, p0, Le/a/d/c0/g;->h:Le/a/d/c0/f;

    iput-object v1, p0, Le/a/d/c0/g;->e:Ljava/lang/Object;

    iput-object p1, p0, Le/a/d/c0/g;->f:Ljava/lang/Object;

    iput v4, p0, Le/a/d/c0/g;->g:I

    invoke-virtual {v5, p1, p0}, Le/a/d/c0/f;->e(Le/a/d/c0/k1;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-ne v4, v0, :cond_8

    return-object v0

    :cond_8
    move-object v11, v1

    move-object v1, p1

    move-object p1, v4

    move-object v4, v11

    :goto_2
    :try_start_5
    check-cast p1, Le/a/d/c0/l1;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p1, :cond_9

    move-object v3, v4

    goto :goto_4

    :cond_9
    move-object p1, v1

    move-object v1, v4

    :cond_a
    :try_start_6
    iget-object v4, p0, Le/a/d/c0/g;->h:Le/a/d/c0/f;

    .line 12
    iget-object v4, v4, Le/a/d/c0/f;->d:Le/a/d/c0/j1;

    .line 13
    iget-object v5, p0, Le/a/d/c0/g;->i:Ljava/lang/String;

    iput-object v1, p0, Le/a/d/c0/g;->e:Ljava/lang/Object;

    iput-object p1, p0, Le/a/d/c0/g;->f:Ljava/lang/Object;

    iput v3, p0, Le/a/d/c0/g;->g:I

    invoke-interface {v4, v5, p0}, Le/a/d/c0/j1;->k(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-ne v3, v0, :cond_b

    return-object v0

    :cond_b
    move-object v11, v1

    move-object v1, p1

    move-object p1, v3

    move-object v3, v11

    .line 14
    :goto_3
    :try_start_7
    check-cast p1, Le/a/d/c0/l1;

    :goto_4
    const/4 v4, 0x0

    if-eqz v1, :cond_d

    .line 15
    iget-boolean v5, v1, Le/a/d/c0/k1;->j:Z

    if-eqz v5, :cond_c

    goto :goto_5

    :cond_c
    move v5, v4

    goto :goto_6

    :cond_d
    :goto_5
    move v5, v7

    :goto_6
    if-eqz v1, :cond_f

    if-nez v5, :cond_e

    move v4, v7

    .line 16
    :cond_e
    iget-object v8, p0, Le/a/d/c0/g;->j:Lq3/a/x2/a1;

    new-instance v9, Le/a/d/c0/j$b;

    iget-object v10, p0, Le/a/d/c0/g;->i:Ljava/lang/String;

    invoke-static {v1, v10, p1}, Le/a/d/c0/i;->a(Le/a/d/c0/k1;Ljava/lang/String;Le/a/d/c0/l1;)Le/a/d/b0/a;

    move-result-object v1

    invoke-direct {v9, v1, v4}, Le/a/d/c0/j$b;-><init>(Le/a/d/b0/a;Z)V

    invoke-interface {v8, v9}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    :cond_f
    if-eqz v5, :cond_11

    .line 17
    iget-object v1, p0, Le/a/d/c0/g;->k:Lq3/a/n0;

    iput-object v3, p0, Le/a/d/c0/g;->e:Ljava/lang/Object;

    iput-object p1, p0, Le/a/d/c0/g;->f:Ljava/lang/Object;

    iput v2, p0, Le/a/d/c0/g;->g:I

    invoke-interface {v1, p0}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-ne v1, v0, :cond_10

    return-object v0

    :cond_10
    move-object v0, p1

    move-object p1, v1

    move-object v1, v3

    :goto_7
    :try_start_8
    check-cast p1, Ljava/util/Map;

    iget-object v2, p0, Le/a/d/c0/g;->i:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/c0/k1;

    if-eqz p1, :cond_12

    .line 18
    iget-object v2, p0, Le/a/d/c0/g;->j:Lq3/a/x2/a1;

    new-instance v3, Le/a/d/c0/j$b;

    iget-object v4, p0, Le/a/d/c0/g;->i:Ljava/lang/String;

    invoke-static {p1, v4, v0}, Le/a/d/c0/i;->a(Le/a/d/c0/k1;Ljava/lang/String;Le/a/d/c0/l1;)Le/a/d/b0/a;

    move-result-object p1

    invoke-direct {v3, p1, v7}, Le/a/d/c0/j$b;-><init>(Le/a/d/b0/a;Z)V

    invoke-interface {v2, v3}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    goto :goto_8

    :cond_11
    move-object v1, v3

    .line 19
    :cond_12
    :goto_8
    iget-object p1, p0, Le/a/d/c0/g;->j:Lq3/a/x2/a1;

    invoke-interface {p1}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/c0/j;

    .line 20
    instance-of v0, p1, Le/a/d/c0/j$b;

    if-nez v0, :cond_13

    .line 21
    iget-object p1, p0, Le/a/d/c0/g;->j:Lq3/a/x2/a1;

    sget-object v0, Le/a/d/c0/j$a;->a:Le/a/d/c0/j$a;

    invoke-interface {p1, v0}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    goto :goto_9

    .line 22
    :cond_13
    iget-object v0, p0, Le/a/d/c0/g;->j:Lq3/a/x2/a1;

    check-cast p1, Le/a/d/c0/j$b;

    .line 23
    iget-object p1, p1, Le/a/d/c0/j$b;->a:Le/a/d/b0/a;

    const-string v2, "user"

    .line 24
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Le/a/d/c0/j$b;

    invoke-direct {v2, p1, v7}, Le/a/d/c0/j$b;-><init>(Le/a/d/b0/a;Z)V

    .line 25
    invoke-interface {v0, v2}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 26
    :goto_9
    sget-object p1, Ls1/s;->a:Ls1/s;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 27
    invoke-interface {v1, v6}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p1

    :goto_a
    move-object v4, v3

    goto :goto_b

    :catchall_2
    move-exception p1

    move-object v4, v1

    :goto_b
    invoke-interface {v4, v6}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1
.end method
