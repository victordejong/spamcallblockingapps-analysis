.class public final Ln3/z/j3/f;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/x2/g<",
        "-TT;>;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.multicast.Multicaster$flow$1"
    f = "Multicaster.kt"
    l = {
        0x64
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Ln3/z/j3/g;


# direct methods
.method public constructor <init>(Ln3/z/j3/g;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/j3/f;->g:Ln3/z/j3/g;

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

    new-instance v0, Ln3/z/j3/f;

    iget-object v1, p0, Ln3/z/j3/f;->g:Ln3/z/j3/g;

    invoke-direct {v0, v1, p2}, Ln3/z/j3/f;-><init>(Ln3/z/j3/g;Ls1/w/d;)V

    iput-object p1, v0, Ln3/z/j3/f;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/z/j3/f;

    iget-object v1, p0, Ln3/z/j3/f;->g:Ln3/z/j3/g;

    invoke-direct {v0, v1, p2}, Ln3/z/j3/f;-><init>(Ln3/z/j3/g;Ls1/w/d;)V

    iput-object p1, v0, Ln3/z/j3/f;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Ln3/z/j3/f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Ln3/z/j3/f;->f:I

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

    iget-object p1, p0, Ln3/z/j3/f;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/x2/g;

    const v1, 0x7fffffff

    const/4 v3, 0x6

    const/4 v4, 0x0

    .line 4
    invoke-static {v1, v4, v4, v3}, Ls1/a/a/a/v0/f/d;->f(ILq3/a/w2/i;Ls1/z/b/l;I)Lq3/a/w2/j;

    move-result-object v1

    .line 5
    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->l0(Lq3/a/w2/z;)Lq3/a/x2/f;

    move-result-object v3

    .line 6
    new-instance v5, Ln3/z/j3/f$b;

    invoke-direct {v5, p0, v1, v4}, Ln3/z/j3/f$b;-><init>(Ln3/z/j3/f;Lq3/a/w2/j;Ls1/w/d;)V

    .line 7
    new-instance v6, Lq3/a/x2/t;

    invoke-direct {v6, v5, v3}, Lq3/a/x2/t;-><init>(Ls1/z/b/p;Lq3/a/x2/f;)V

    .line 8
    new-instance v3, Ln3/z/j3/f$a;

    invoke-direct {v3, v6, v4}, Ln3/z/j3/f$a;-><init>(Lq3/a/x2/f;Ls1/w/d;)V

    .line 9
    new-instance v5, Lq3/a/x2/d1;

    invoke-direct {v5, v3}, Lq3/a/x2/d1;-><init>(Ls1/z/b/p;)V

    .line 10
    new-instance v3, Ln3/z/j3/f$c;

    invoke-direct {v3, p0, v1, v4}, Ln3/z/j3/f$c;-><init>(Ln3/z/j3/f;Lq3/a/w2/j;Ls1/w/d;)V

    .line 11
    new-instance v1, Lq3/a/x2/s;

    invoke-direct {v1, v5, v3}, Lq3/a/x2/s;-><init>(Lq3/a/x2/f;Ls1/z/b/q;)V

    .line 12
    iput v2, p0, Ln3/z/j3/f;->f:I

    invoke-virtual {v1, p1, p0}, Lq3/a/x2/s;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 13
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
