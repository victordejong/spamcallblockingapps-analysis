.class public final Ln3/z/g1$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/g1;->b(Lq3/a/x2/f;Ln3/z/t0;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/q<",
        "Lq3/a/x2/g<",
        "-",
        "Ln3/z/f0;",
        ">;",
        "Ljava/lang/Integer;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1"
    f = "PageFetcherSnapshot.kt"
    l = {
        0x6d,
        0x82
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Ln3/z/g1;

.field public final synthetic i:Ln3/z/t0;

.field public j:Ljava/lang/Object;

.field public k:I


# direct methods
.method public constructor <init>(Ls1/w/d;Ln3/z/g1;Ln3/z/t0;)V
    .locals 0

    iput-object p2, p0, Ln3/z/g1$b;->h:Ln3/z/g1;

    iput-object p3, p0, Ln3/z/g1$b;->i:Ln3/z/t0;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lq3/a/x2/g;

    check-cast p3, Ls1/w/d;

    const-string v0, "$this$create"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/z/g1$b;

    iget-object v1, p0, Ln3/z/g1$b;->h:Ln3/z/g1;

    iget-object v2, p0, Ln3/z/g1$b;->i:Ln3/z/t0;

    invoke-direct {v0, p3, v1, v2}, Ln3/z/g1$b;-><init>(Ls1/w/d;Ln3/z/g1;Ln3/z/t0;)V

    iput-object p1, v0, Ln3/z/g1$b;->e:Ljava/lang/Object;

    iput-object p2, v0, Ln3/z/g1$b;->f:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Ln3/z/g1$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Ln3/z/g1$b;->g:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget v1, p0, Ln3/z/g1$b;->k:I

    iget-object v5, p0, Ln3/z/g1$b;->j:Ljava/lang/Object;

    check-cast v5, Lq3/a/b3/c;

    iget-object v6, p0, Ln3/z/g1$b;->f:Ljava/lang/Object;

    check-cast v6, Ln3/z/k1$a;

    iget-object v7, p0, Ln3/z/g1$b;->e:Ljava/lang/Object;

    check-cast v7, Lq3/a/x2/g;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Ln3/z/g1$b;->e:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Lq3/a/x2/g;

    iget-object p1, p0, Ln3/z/g1$b;->f:Ljava/lang/Object;

    .line 4
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 5
    iget-object p1, p0, Ln3/z/g1$b;->h:Ln3/z/g1;

    .line 6
    iget-object v6, p1, Ln3/z/g1;->e:Ln3/z/k1$a;

    .line 7
    iget-object v5, v6, Ln3/z/k1$a;->a:Lq3/a/b3/c;

    .line 8
    iput-object v7, p0, Ln3/z/g1$b;->e:Ljava/lang/Object;

    iput-object v6, p0, Ln3/z/g1$b;->f:Ljava/lang/Object;

    iput-object v5, p0, Ln3/z/g1$b;->j:Ljava/lang/Object;

    iput v1, p0, Ln3/z/g1$b;->k:I

    iput v3, p0, Ln3/z/g1$b;->g:I

    invoke-interface {v5, v4, p0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 9
    :cond_3
    :goto_0
    :try_start_0
    iget-object p1, v6, Ln3/z/k1$a;->b:Ln3/z/k1;

    .line 10
    iget-object v6, p1, Ln3/z/k1;->k:Ln3/z/s0;

    .line 11
    iget-object v8, p0, Ln3/z/g1$b;->i:Ln3/z/t0;

    invoke-virtual {v6, v8}, Ln3/z/s0;->b(Ln3/z/t0;)Ln3/z/r0;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v8, Ln3/z/r0$c;->b:Ln3/z/r0$c;

    :try_start_1
    invoke-static {v6, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_4

    new-array p1, v8, [Ln3/z/f0;

    .line 12
    new-instance v1, Lq3/a/x2/j;

    invoke-direct {v1, p1}, Lq3/a/x2/j;-><init>([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    invoke-interface {v5, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    goto :goto_3

    .line 14
    :cond_4
    :try_start_2
    iget-object v6, p1, Ln3/z/k1;->k:Ln3/z/s0;

    .line 15
    iget-object v9, p0, Ln3/z/g1$b;->i:Ln3/z/t0;

    invoke-virtual {v6, v9}, Ln3/z/s0;->b(Ln3/z/t0;)Ln3/z/r0;

    move-result-object v6

    instance-of v6, v6, Ln3/z/r0$a;

    if-nez v6, :cond_5

    .line 16
    iget-object v6, p0, Ln3/z/g1$b;->i:Ln3/z/t0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v9, Ln3/z/r0$c;->c:Ln3/z/r0$c;

    :try_start_3
    invoke-virtual {p1, v6, v9}, Ln3/z/k1;->j(Ln3/z/t0;Ln3/z/r0;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 17
    :cond_5
    invoke-interface {v5, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    .line 18
    iget-object p1, p0, Ln3/z/g1$b;->h:Ln3/z/g1;

    .line 19
    iget-object p1, p1, Ln3/z/g1;->a:Lq3/a/x2/z0;

    if-nez v1, :cond_6

    move v5, v8

    goto :goto_1

    :cond_6
    move v5, v3

    :goto_1
    if-ltz v5, :cond_7

    goto :goto_2

    :cond_7
    move v3, v8

    :goto_2
    if-eqz v3, :cond_9

    .line 20
    new-instance v3, Lq3/a/x2/x;

    invoke-direct {v3, p1, v5}, Lq3/a/x2/x;-><init>(Lq3/a/x2/f;I)V

    .line 21
    new-instance p1, Ln3/z/g1$b$a;

    invoke-direct {p1, v3, v1}, Ln3/z/g1$b$a;-><init>(Lq3/a/x2/f;I)V

    move-object v1, p1

    .line 22
    :goto_3
    iput-object v4, p0, Ln3/z/g1$b;->e:Ljava/lang/Object;

    iput-object v4, p0, Ln3/z/g1$b;->f:Ljava/lang/Object;

    iput-object v4, p0, Ln3/z/g1$b;->j:Ljava/lang/Object;

    iput v2, p0, Ln3/z/g1$b;->g:I

    invoke-interface {v1, v7, p0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 23
    :cond_8
    :goto_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    .line 24
    :cond_9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "Drop count should be non-negative, but had "

    invoke-static {v0, p1}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    .line 25
    invoke-interface {v5, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1
.end method
