.class public final Ln3/z/f1$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/f1;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.PageFetcher$injectRemoteEvents$1$2"
    f = "PageFetcher.kt"
    l = {
        0xfd
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Ln3/z/f1;

.field public final synthetic g:Ln3/z/x0;

.field public final synthetic h:Ln3/z/f1$a;


# direct methods
.method public constructor <init>(Ln3/z/f1;Ln3/z/x0;Ln3/z/f1$a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/f1$b;->f:Ln3/z/f1;

    iput-object p2, p0, Ln3/z/f1$b;->g:Ln3/z/x0;

    iput-object p3, p0, Ln3/z/f1$b;->h:Ln3/z/f1$a;

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

    new-instance p1, Ln3/z/f1$b;

    iget-object v0, p0, Ln3/z/f1$b;->f:Ln3/z/f1;

    iget-object v1, p0, Ln3/z/f1$b;->g:Ln3/z/x0;

    iget-object v2, p0, Ln3/z/f1$b;->h:Ln3/z/f1$a;

    invoke-direct {p1, v0, v1, v2, p2}, Ln3/z/f1$b;-><init>(Ln3/z/f1;Ln3/z/x0;Ln3/z/f1$a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ln3/z/f1$b;

    iget-object v0, p0, Ln3/z/f1$b;->f:Ln3/z/f1;

    iget-object v1, p0, Ln3/z/f1$b;->g:Ln3/z/x0;

    iget-object v2, p0, Ln3/z/f1$b;->h:Ln3/z/f1$a;

    invoke-direct {p1, v0, v1, v2, p2}, Ln3/z/f1$b;-><init>(Ln3/z/f1;Ln3/z/x0;Ln3/z/f1$a;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Ln3/z/f1$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Ln3/z/f1$b;->e:I

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
    invoke-static {p1}, Le/d/c/a/a;->d0(Ljava/lang/Object;)Ls1/z/c/c0;

    move-result-object p1

    .line 4
    sget-object v1, Ln3/z/s0;->e:Ln3/z/s0;

    .line 5
    sget-object v1, Ln3/z/s0;->d:Ln3/z/s0;

    .line 6
    iput-object v1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Ln3/z/f1$b;->f:Ln3/z/f1;

    iget-object v1, v1, Ln3/z/f1;->h:Ln3/z/q2;

    invoke-interface {v1}, Ln3/z/q2;->getState()Lq3/a/x2/i1;

    move-result-object v1

    .line 8
    new-instance v3, Ln3/z/f1$b$a;

    invoke-direct {v3, p0, p1}, Ln3/z/f1$b$a;-><init>(Ln3/z/f1$b;Ls1/z/c/c0;)V

    iput v2, p0, Ln3/z/f1$b;->e:I

    invoke-interface {v1, v3, p0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 9
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
