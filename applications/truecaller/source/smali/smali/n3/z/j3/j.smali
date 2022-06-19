.class public final Ln3/z/j3/j;
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
    c = "androidx.paging.multicast.SharedFlowProducer$start$1"
    f = "SharedFlowProducer.kt"
    l = {
        0x4b,
        0x50,
        0x50
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Ln3/z/j3/i;


# direct methods
.method public constructor <init>(Ln3/z/j3/i;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/j3/j;->g:Ln3/z/j3/i;

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

    new-instance p1, Ln3/z/j3/j;

    iget-object v0, p0, Ln3/z/j3/j;->g:Ln3/z/j3/i;

    invoke-direct {p1, v0, p2}, Ln3/z/j3/j;-><init>(Ln3/z/j3/i;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ln3/z/j3/j;

    iget-object v0, p0, Ln3/z/j3/j;->g:Ln3/z/j3/i;

    invoke-direct {p1, v0, p2}, Ln3/z/j3/j;-><init>(Ln3/z/j3/i;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Ln3/z/j3/j;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Ln3/z/j3/j;->f:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/z/j3/j;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Lq3/a/w2/q; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    :cond_1
    :try_start_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catch Lq3/a/w2/q; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_3
    iget-object p1, p0, Ln3/z/j3/j;->g:Ln3/z/j3/i;

    .line 5
    iget-object p1, p1, Ln3/z/j3/i;->a:Lq3/a/p1;

    .line 6
    iput v4, p0, Ln3/z/j3/j;->f:I

    invoke-interface {p1, p0}, Lq3/a/p1;->k(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p1, v0, :cond_4

    return-object v0

    .line 7
    :cond_4
    :goto_0
    :try_start_4
    iget-object p1, p0, Ln3/z/j3/j;->g:Ln3/z/j3/i;

    .line 8
    iget-object v1, p1, Ln3/z/j3/i;->d:Ls1/z/b/p;

    .line 9
    new-instance v2, Ln3/z/j3/c$c$b$b;

    invoke-direct {v2, p1}, Ln3/z/j3/c$c$b$b;-><init>(Ln3/z/j3/i;)V

    iput v3, p0, Ln3/z/j3/j;->f:I

    invoke-interface {v1, v2, p0}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Lq3/a/w2/q; {:try_start_4 .. :try_end_4} :catch_0

    if-ne p1, v0, :cond_5

    return-object v0

    .line 10
    :catch_0
    :cond_5
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :catchall_0
    move-exception p1

    .line 11
    :try_start_5
    iget-object v1, p0, Ln3/z/j3/j;->g:Ln3/z/j3/i;

    .line 12
    iget-object v3, v1, Ln3/z/j3/i;->d:Ls1/z/b/p;

    .line 13
    new-instance v4, Ln3/z/j3/c$c$b$b;

    invoke-direct {v4, v1}, Ln3/z/j3/c$c$b$b;-><init>(Ln3/z/j3/i;)V

    iput-object p1, p0, Ln3/z/j3/j;->e:Ljava/lang/Object;

    iput v2, p0, Ln3/z/j3/j;->f:I

    invoke-interface {v3, v4, p0}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_5
    .catch Lq3/a/w2/q; {:try_start_5 .. :try_end_5} :catch_1

    if-ne v1, v0, :cond_6

    return-object v0

    :catch_1
    :cond_6
    move-object v0, p1

    .line 14
    :catch_2
    :goto_2
    throw v0
.end method
