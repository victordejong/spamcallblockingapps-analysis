.class public final Ln3/v/q;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ln3/v/g0<",
        "TT;>;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.lifecycle.FlowLiveDataConversions$asLiveData$1"
    f = "FlowLiveData.kt"
    l = {
        0x8b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ln3/v/g0;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:I

.field public final synthetic i:Lq3/a/x2/f;


# direct methods
.method public constructor <init>(Lq3/a/x2/f;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/v/q;->i:Lq3/a/x2/f;

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

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/v/q;

    iget-object v1, p0, Ln3/v/q;->i:Lq3/a/x2/f;

    invoke-direct {v0, v1, p2}, Ln3/v/q;-><init>(Lq3/a/x2/f;Ls1/w/d;)V

    check-cast p1, Ln3/v/g0;

    iput-object p1, v0, Ln3/v/q;->e:Ln3/v/g0;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/v/q;

    iget-object v1, p0, Ln3/v/q;->i:Lq3/a/x2/f;

    invoke-direct {v0, v1, p2}, Ln3/v/q;-><init>(Lq3/a/x2/f;Ls1/w/d;)V

    check-cast p1, Ln3/v/g0;

    iput-object p1, v0, Ln3/v/q;->e:Ln3/v/g0;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Ln3/v/q;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Ln3/v/q;->h:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Ln3/v/q;->g:Ljava/lang/Object;

    check-cast v0, Lq3/a/x2/f;

    iget-object v0, p0, Ln3/v/q;->f:Ljava/lang/Object;

    check-cast v0, Ln3/v/g0;

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

    iget-object p1, p0, Ln3/v/q;->e:Ln3/v/g0;

    .line 4
    iget-object v1, p0, Ln3/v/q;->i:Lq3/a/x2/f;

    .line 5
    new-instance v3, Ln3/v/q$a;

    invoke-direct {v3, p1}, Ln3/v/q$a;-><init>(Ln3/v/g0;)V

    iput-object p1, p0, Ln3/v/q;->f:Ljava/lang/Object;

    iput-object v1, p0, Ln3/v/q;->g:Ljava/lang/Object;

    iput v2, p0, Ln3/v/q;->h:I

    invoke-interface {v1, v3, p0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 6
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
