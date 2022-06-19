.class public final Ln3/z/n0$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/n0;->e(Ln3/z/k2$a;Ls1/w/d;)Ljava/lang/Object;
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
        "Ln3/z/k2$b$b<",
        "TKey;TValue;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.LegacyPagingSource$load$2"
    f = "LegacyPagingSource.kt"
    l = {
        0x74
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Ln3/z/n0;

.field public final synthetic g:Ls1/z/c/c0;

.field public final synthetic h:Ln3/z/k2$a;


# direct methods
.method public constructor <init>(Ln3/z/n0;Ls1/z/c/c0;Ln3/z/k2$a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/n0$d;->f:Ln3/z/n0;

    iput-object p2, p0, Ln3/z/n0$d;->g:Ls1/z/c/c0;

    iput-object p3, p0, Ln3/z/n0$d;->h:Ln3/z/k2$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Ln3/z/n0$d;

    iget-object v0, p0, Ln3/z/n0$d;->f:Ln3/z/n0;

    iget-object v1, p0, Ln3/z/n0$d;->g:Ls1/z/c/c0;

    iget-object v2, p0, Ln3/z/n0$d;->h:Ln3/z/k2$a;

    invoke-direct {p1, v0, v1, v2, p2}, Ln3/z/n0$d;-><init>(Ln3/z/n0;Ls1/z/c/c0;Ln3/z/k2$a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ln3/z/n0$d;

    iget-object v0, p0, Ln3/z/n0$d;->f:Ln3/z/n0;

    iget-object v1, p0, Ln3/z/n0$d;->g:Ls1/z/c/c0;

    iget-object v2, p0, Ln3/z/n0$d;->h:Ln3/z/k2$a;

    invoke-direct {p1, v0, v1, v2, p2}, Ln3/z/n0$d;-><init>(Ln3/z/n0;Ls1/z/c/c0;Ln3/z/k2$a;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Ln3/z/n0$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Ln3/z/n0$d;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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
    iget-object p1, p0, Ln3/z/n0$d;->f:Ln3/z/n0;

    .line 5
    iget-object p1, p1, Ln3/z/n0;->e:Ln3/z/v;

    .line 6
    iget-object v1, p0, Ln3/z/n0$d;->g:Ls1/z/c/c0;

    iget-object v1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Ln3/z/v$e;

    iput v2, p0, Ln3/z/n0$d;->e:I

    invoke-virtual {p1, v1, p0}, Ln3/z/v;->d(Ln3/z/v$e;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Ln3/z/v$a;

    .line 8
    new-instance v6, Ln3/z/k2$b$b;

    .line 9
    iget-object v1, p1, Ln3/z/v$a;->a:Ljava/util/List;

    .line 10
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ln3/z/n0$d;->h:Ln3/z/k2$a;

    instance-of v0, v0, Ln3/z/k2$a$b;

    if-eqz v0, :cond_3

    move-object v3, v2

    goto :goto_1

    .line 11
    :cond_3
    iget-object v0, p1, Ln3/z/v$a;->b:Ljava/lang/Object;

    move-object v3, v0

    .line 12
    :goto_1
    iget-object v0, p1, Ln3/z/v$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ln3/z/n0$d;->h:Ln3/z/k2$a;

    instance-of v0, v0, Ln3/z/k2$a$a;

    if-eqz v0, :cond_4

    move-object v4, v2

    goto :goto_2

    .line 13
    :cond_4
    iget-object v0, p1, Ln3/z/v$a;->c:Ljava/lang/Object;

    move-object v4, v0

    .line 14
    :goto_2
    iget v5, p1, Ln3/z/v$a;->d:I

    .line 15
    iget p1, p1, Ln3/z/v$a;->e:I

    move-object v0, v6

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, p1

    .line 16
    invoke-direct/range {v0 .. v5}, Ln3/z/k2$b$b;-><init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;II)V

    return-object v6
.end method
