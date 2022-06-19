.class public final Ln3/z/e1;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ln3/z/y2<",
        "Ln3/z/b2<",
        "TValue;>;>;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.PageFetcher$flow$1"
    f = "PageFetcher.kt"
    l = {
        0xfe
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Ln3/z/d1;


# direct methods
.method public constructor <init>(Ln3/z/d1;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/e1;->g:Ln3/z/d1;

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

    new-instance v0, Ln3/z/e1;

    iget-object v1, p0, Ln3/z/e1;->g:Ln3/z/d1;

    invoke-direct {v0, v1, p2}, Ln3/z/e1;-><init>(Ln3/z/d1;Ls1/w/d;)V

    iput-object p1, v0, Ln3/z/e1;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/z/e1;

    iget-object v1, p0, Ln3/z/e1;->g:Ln3/z/d1;

    invoke-direct {v0, v1, p2}, Ln3/z/e1;-><init>(Ln3/z/d1;Ls1/w/d;)V

    iput-object p1, v0, Ln3/z/e1;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Ln3/z/e1;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Ln3/z/e1;->f:I

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

    iget-object p1, p0, Ln3/z/e1;->e:Ljava/lang/Object;

    check-cast p1, Ln3/z/y2;

    .line 4
    iget-object v1, p0, Ln3/z/e1;->g:Ln3/z/d1;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Ln3/z/e1;->g:Ln3/z/d1;

    .line 7
    iget-object v1, v1, Ln3/z/d1;->a:Ln3/z/s;

    .line 8
    iget-object v1, v1, Ln3/z/s;->b:Lq3/a/x2/f;

    .line 9
    new-instance v3, Ln3/z/e1$a;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Ln3/z/e1$a;-><init>(Ln3/z/q2;Ls1/w/d;)V

    .line 10
    new-instance v5, Lq3/a/x2/t;

    invoke-direct {v5, v3, v1}, Lq3/a/x2/t;-><init>(Ls1/z/b/p;Lq3/a/x2/f;)V

    .line 11
    new-instance v1, Ln3/z/e1$b;

    invoke-direct {v1, p0, v4, v4}, Ln3/z/e1$b;-><init>(Ln3/z/e1;Ln3/z/q2;Ls1/w/d;)V

    .line 12
    sget-object v3, Ln3/z/e0;->a:Ljava/lang/Object;

    const-string v3, "$this$simpleScan"

    invoke-static {v5, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "operation"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v3, Ln3/z/c0;

    invoke-direct {v3, v5, v4, v1, v4}, Ln3/z/c0;-><init>(Lq3/a/x2/f;Ljava/lang/Object;Ls1/z/b/q;Ls1/w/d;)V

    .line 14
    new-instance v1, Lq3/a/x2/d1;

    invoke-direct {v1, v3}, Lq3/a/x2/d1;-><init>(Ls1/z/b/p;)V

    .line 15
    new-instance v3, Lq3/a/x2/t0;

    invoke-direct {v3, v1}, Lq3/a/x2/t0;-><init>(Lq3/a/x2/f;)V

    .line 16
    new-instance v1, Ln3/z/e1$d;

    invoke-direct {v1, v4, p0, v4}, Ln3/z/e1$d;-><init>(Ls1/w/d;Ln3/z/e1;Ln3/z/q2;)V

    const-string v5, "$this$simpleTransformLatest"

    .line 17
    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "transform"

    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v5, Ln3/z/d0;

    invoke-direct {v5, v3, v1, v4}, Ln3/z/d0;-><init>(Lq3/a/x2/f;Ls1/z/b/q;Ls1/w/d;)V

    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat;->A1(Ls1/z/b/p;)Lq3/a/x2/f;

    move-result-object v1

    .line 19
    new-instance v3, Ln3/z/e1$c;

    invoke-direct {v3, p1}, Ln3/z/e1$c;-><init>(Ln3/z/y2;)V

    iput v2, p0, Ln3/z/e1;->f:I

    invoke-interface {v1, v3, p0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 20
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
