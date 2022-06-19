.class public final Ln3/z/h2;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/l<",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.PagingDataDiffer$collectFrom$2"
    f = "PagingDataDiffer.kt"
    l = {
        0x186
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Ln3/z/g2;

.field public final synthetic g:Ln3/z/b2;


# direct methods
.method public constructor <init>(Ln3/z/g2;Ln3/z/b2;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/h2;->f:Ln3/z/g2;

    iput-object p2, p0, Ln3/z/h2;->g:Ln3/z/b2;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/z/h2;

    iget-object v1, p0, Ln3/z/h2;->f:Ln3/z/g2;

    iget-object v2, p0, Ln3/z/h2;->g:Ln3/z/b2;

    invoke-direct {v0, v1, v2, p1}, Ln3/z/h2;-><init>(Ln3/z/g2;Ln3/z/b2;Ls1/w/d;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Ln3/z/h2;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/z/h2;

    iget-object v1, p0, Ln3/z/h2;->f:Ln3/z/g2;

    iget-object v2, p0, Ln3/z/h2;->g:Ln3/z/b2;

    invoke-direct {v0, v1, v2, p1}, Ln3/z/h2;-><init>(Ln3/z/g2;Ln3/z/b2;Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Ln3/z/h2;->e:I

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
    iget-object p1, p0, Ln3/z/h2;->f:Ln3/z/g2;

    iget-object v1, p0, Ln3/z/h2;->g:Ln3/z/b2;

    .line 5
    iget-object v3, v1, Ln3/z/b2;->b:Ln3/z/h3;

    .line 6
    iput-object v3, p1, Ln3/z/g2;->b:Ln3/z/h3;

    .line 7
    iget-object p1, v1, Ln3/z/b2;->a:Lq3/a/x2/f;

    .line 8
    new-instance v1, Ln3/z/h2$a;

    invoke-direct {v1, p0}, Ln3/z/h2$a;-><init>(Ln3/z/h2;)V

    iput v2, p0, Ln3/z/h2;->e:I

    invoke-interface {p1, v1, p0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 9
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
