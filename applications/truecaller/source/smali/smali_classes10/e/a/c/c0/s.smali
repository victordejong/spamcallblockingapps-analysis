.class public final Le/a/c/c0/s;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "TT;",
        "Ls1/w/d<",
        "-",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.utils.PagedDataUtilsKt$mapNotNull$1"
    f = "PagedDataUtils.kt"
    l = {
        0xd
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Ls1/z/b/p;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ls1/z/b/p;Ljava/lang/Object;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/c0/s;->g:Ls1/z/b/p;

    iput-object p2, p0, Le/a/c/c0/s;->h:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/c0/s;

    iget-object v1, p0, Le/a/c/c0/s;->g:Ls1/z/b/p;

    iget-object v2, p0, Le/a/c/c0/s;->h:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p2}, Le/a/c/c0/s;-><init>(Ls1/z/b/p;Ljava/lang/Object;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/c0/s;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/c0/s;

    iget-object v1, p0, Le/a/c/c0/s;->g:Ls1/z/b/p;

    iget-object v2, p0, Le/a/c/c0/s;->h:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p2}, Le/a/c/c0/s;-><init>(Ls1/z/b/p;Ljava/lang/Object;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/c0/s;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/c/c0/s;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/c0/s;->f:I

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

    iget-object p1, p0, Le/a/c/c0/s;->e:Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Le/a/c/c0/s;->g:Ls1/z/b/p;

    iput v2, p0, Le/a/c/c0/s;->f:I

    invoke-interface {v1, p1, p0}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    iget-object p1, p0, Le/a/c/c0/s;->h:Ljava/lang/Object;

    :goto_1
    return-object p1
.end method
