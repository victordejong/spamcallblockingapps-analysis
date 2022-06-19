.class public final Ln3/z/h$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/h;-><init>(Lq3/a/x2/f;Lq3/a/i0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/x2/g<",
        "-",
        "Ls1/u/w<",
        "+",
        "Ln3/z/c1<",
        "TT;>;>;>;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.CachedPageEventFlow$multicastedSrc$1"
    f = "CachedPageEventFlow.kt"
    l = {
        0x124
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Ln3/z/h;

.field public final synthetic h:Lq3/a/x2/f;


# direct methods
.method public constructor <init>(Ln3/z/h;Lq3/a/x2/f;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/h$b;->g:Ln3/z/h;

    iput-object p2, p0, Ln3/z/h$b;->h:Lq3/a/x2/f;

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

    new-instance v0, Ln3/z/h$b;

    iget-object v1, p0, Ln3/z/h$b;->g:Ln3/z/h;

    iget-object v2, p0, Ln3/z/h$b;->h:Lq3/a/x2/f;

    invoke-direct {v0, v1, v2, p2}, Ln3/z/h$b;-><init>(Ln3/z/h;Lq3/a/x2/f;Ls1/w/d;)V

    iput-object p1, v0, Ln3/z/h$b;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/z/h$b;

    iget-object v1, p0, Ln3/z/h$b;->g:Ln3/z/h;

    iget-object v2, p0, Ln3/z/h$b;->h:Lq3/a/x2/f;

    invoke-direct {v0, v1, v2, p2}, Ln3/z/h$b;-><init>(Ln3/z/h;Lq3/a/x2/f;Ls1/w/d;)V

    iput-object p1, v0, Ln3/z/h$b;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Ln3/z/h$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Ln3/z/h$b;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Ln3/z/h$b;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/x2/g;

    .line 4
    iget-object v2, p0, Ln3/z/h$b;->g:Ln3/z/h;

    .line 5
    iget-object v2, v2, Ln3/z/h;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    iget-object v2, p0, Ln3/z/h$b;->h:Lq3/a/x2/f;

    .line 8
    iput v3, p0, Ln3/z/h$b;->f:I

    .line 9
    new-instance v3, Ls1/z/c/a0;

    invoke-direct {v3}, Ls1/z/c/a0;-><init>()V

    .line 10
    new-instance v4, Lq3/a/x2/v0;

    invoke-direct {v4, p1, v3}, Lq3/a/x2/v0;-><init>(Lq3/a/x2/g;Ls1/z/c/a0;)V

    invoke-interface {v2, v4, p0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    return-object v0
.end method
