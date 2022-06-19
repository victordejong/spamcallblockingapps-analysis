.class public final Ln3/z/r1;
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
        "Ln3/z/k2$b$b<",
        "TK;TT;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.PagedList$Companion$create$resolvedInitialPage$1"
    f = "PagedList.kt"
    l = {
        0xb7
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Ln3/z/k2;

.field public final synthetic g:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Ln3/z/k2;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/r1;->f:Ln3/z/k2;

    iput-object p2, p0, Ln3/z/r1;->g:Ls1/z/c/c0;

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

    new-instance p1, Ln3/z/r1;

    iget-object v0, p0, Ln3/z/r1;->f:Ln3/z/k2;

    iget-object v1, p0, Ln3/z/r1;->g:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, p2}, Ln3/z/r1;-><init>(Ln3/z/k2;Ls1/z/c/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ln3/z/r1;

    iget-object v0, p0, Ln3/z/r1;->f:Ln3/z/k2;

    iget-object v1, p0, Ln3/z/r1;->g:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, p2}, Ln3/z/r1;-><init>(Ln3/z/k2;Ls1/z/c/c0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Ln3/z/r1;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Ln3/z/r1;->e:I

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
    iget-object p1, p0, Ln3/z/r1;->f:Ln3/z/k2;

    iget-object v1, p0, Ln3/z/r1;->g:Ls1/z/c/c0;

    iget-object v1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Ln3/z/k2$a$c;

    iput v2, p0, Ln3/z/r1;->e:I

    invoke-virtual {p1, v1, p0}, Ln3/z/k2;->e(Ln3/z/k2$a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    check-cast p1, Ln3/z/k2$b;

    .line 6
    instance-of v0, p1, Ln3/z/k2$b$b;

    if-eqz v0, :cond_3

    check-cast p1, Ln3/z/k2$b$b;

    return-object p1

    .line 7
    :cond_3
    instance-of v0, p1, Ln3/z/k2$b$a;

    if-eqz v0, :cond_4

    check-cast p1, Ln3/z/k2$b$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_4
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
