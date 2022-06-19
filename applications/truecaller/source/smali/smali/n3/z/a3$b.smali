.class public final Ln3/z/a3$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/z/a3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lq3/a/b3/c;

.field public b:Lq3/a/p1;

.field public c:I

.field public final d:Ln3/z/a3;

.field public final e:Z


# direct methods
.method public constructor <init>(Ln3/z/a3;Z)V
    .locals 1

    const-string v0, "singleRunner"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/z/a3$b;->d:Ln3/z/a3;

    iput-boolean p2, p0, Ln3/z/a3$b;->e:Z

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2}, Lq3/a/b3/g;->a(ZI)Lq3/a/b3/c;

    move-result-object p1

    iput-object p1, p0, Ln3/z/a3$b;->a:Lq3/a/b3/c;

    return-void
.end method


# virtual methods
.method public final a(Lq3/a/p1;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/p1;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Ln3/z/a3$b$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ln3/z/a3$b$a;

    iget v1, v0, Ln3/z/a3$b$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ln3/z/a3$b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ln3/z/a3$b$a;

    invoke-direct {v0, p0, p2}, Ln3/z/a3$b$a;-><init>(Ln3/z/a3$b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Ln3/z/a3$b$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Ln3/z/a3$b$a;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Ln3/z/a3$b$a;->i:Ljava/lang/Object;

    check-cast p1, Lq3/a/b3/c;

    iget-object v1, v0, Ln3/z/a3$b$a;->h:Ljava/lang/Object;

    check-cast v1, Lq3/a/p1;

    iget-object v0, v0, Ln3/z/a3$b$a;->g:Ljava/lang/Object;

    check-cast v0, Ln3/z/a3$b;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v1

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

    .line 4
    iget-object p2, p0, Ln3/z/a3$b;->a:Lq3/a/b3/c;

    .line 5
    iput-object p0, v0, Ln3/z/a3$b$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Ln3/z/a3$b$a;->h:Ljava/lang/Object;

    iput-object p2, v0, Ln3/z/a3$b$a;->i:Ljava/lang/Object;

    iput v3, v0, Ln3/z/a3$b$a;->e:I

    invoke-interface {p2, v4, v0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 6
    :goto_1
    :try_start_0
    iget-object v1, v0, Ln3/z/a3$b;->b:Lq3/a/p1;

    if-ne p1, v1, :cond_4

    .line 7
    iput-object v4, v0, Ln3/z/a3$b;->b:Lq3/a/p1;

    .line 8
    :cond_4
    sget-object p1, Ls1/s;->a:Ls1/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-interface {p2, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p2, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1
.end method

.method public final b(ILq3/a/p1;Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lq3/a/p1;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Ln3/z/a3$b$b;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Ln3/z/a3$b$b;

    iget v1, v0, Ln3/z/a3$b$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ln3/z/a3$b$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ln3/z/a3$b$b;

    invoke-direct {v0, p0, p3}, Ln3/z/a3$b$b;-><init>(Ln3/z/a3$b;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Ln3/z/a3$b$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Ln3/z/a3$b$b;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Ln3/z/a3$b$b;->j:I

    iget-object p2, v0, Ln3/z/a3$b$b;->i:Ljava/lang/Object;

    check-cast p2, Lq3/a/b3/c;

    iget-object v1, v0, Ln3/z/a3$b$b;->h:Ljava/lang/Object;

    check-cast v1, Lq3/a/p1;

    iget-object v0, v0, Ln3/z/a3$b$b;->g:Ljava/lang/Object;

    check-cast v0, Ln3/z/a3$b;

    :try_start_0
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget p1, v0, Ln3/z/a3$b$b;->j:I

    iget-object p2, v0, Ln3/z/a3$b$b;->i:Ljava/lang/Object;

    check-cast p2, Lq3/a/b3/c;

    iget-object v2, v0, Ln3/z/a3$b$b;->h:Ljava/lang/Object;

    check-cast v2, Lq3/a/p1;

    iget-object v6, v0, Ln3/z/a3$b$b;->g:Ljava/lang/Object;

    check-cast v6, Ln3/z/a3$b;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Ln3/z/a3$b;->a:Lq3/a/b3/c;

    .line 5
    iput-object p0, v0, Ln3/z/a3$b$b;->g:Ljava/lang/Object;

    iput-object p2, v0, Ln3/z/a3$b$b;->h:Ljava/lang/Object;

    iput-object p3, v0, Ln3/z/a3$b$b;->i:Ljava/lang/Object;

    iput p1, v0, Ln3/z/a3$b$b;->j:I

    iput v5, v0, Ln3/z/a3$b$b;->e:I

    invoke-interface {p3, v4, v0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v6, p0

    move-object v2, p2

    move-object p2, p3

    .line 6
    :goto_1
    :try_start_1
    iget-object p3, v6, Ln3/z/a3$b;->b:Lq3/a/p1;

    if-eqz p3, :cond_6

    .line 7
    invoke-interface {p3}, Lq3/a/p1;->b()Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, v6, Ln3/z/a3$b;->c:I

    if-lt v7, p1, :cond_6

    if-ne v7, p1, :cond_5

    iget-boolean v7, v6, Ln3/z/a3$b;->e:Z

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_4

    :cond_6
    :goto_2
    if-eqz p3, :cond_7

    .line 8
    new-instance v7, Ln3/z/a3$a;

    iget-object v8, v6, Ln3/z/a3$b;->d:Ln3/z/a3;

    invoke-direct {v7, v8}, Ln3/z/a3$a;-><init>(Ln3/z/a3;)V

    invoke-interface {p3, v7}, Lq3/a/p1;->d(Ljava/util/concurrent/CancellationException;)V

    :cond_7
    if-eqz p3, :cond_9

    .line 9
    iput-object v6, v0, Ln3/z/a3$b$b;->g:Ljava/lang/Object;

    iput-object v2, v0, Ln3/z/a3$b$b;->h:Ljava/lang/Object;

    iput-object p2, v0, Ln3/z/a3$b$b;->i:Ljava/lang/Object;

    iput p1, v0, Ln3/z/a3$b$b;->j:I

    iput v3, v0, Ln3/z/a3$b$b;->e:I

    invoke-interface {p3, v0}, Lq3/a/p1;->k(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_8

    return-object v1

    :cond_8
    move-object v1, v2

    move-object v0, v6

    :goto_3
    move-object v6, v0

    move-object v2, v1

    .line 10
    :cond_9
    iput-object v2, v6, Ln3/z/a3$b;->b:Lq3/a/p1;

    .line 11
    iput p1, v6, Ln3/z/a3$b;->c:I

    .line 12
    :goto_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    invoke-interface {p2, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p2, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1
.end method
