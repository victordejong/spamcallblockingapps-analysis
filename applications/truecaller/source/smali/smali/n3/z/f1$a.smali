.class public final Ln3/z/f1$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


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
        "Ls1/z/b/q<",
        "Ln3/z/t0;",
        "Ln3/z/r0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.PageFetcher$injectRemoteEvents$1$1"
    f = "PageFetcher.kt"
    l = {
        0x8c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Ln3/z/y2;


# direct methods
.method public constructor <init>(Ln3/z/y2;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/f1$a;->h:Ln3/z/y2;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ln3/z/t0;

    check-cast p2, Ln3/z/r0;

    check-cast p3, Ls1/w/d;

    invoke-virtual {p0, p1, p2, p3}, Ln3/z/f1$a;->v(Ln3/z/t0;Ln3/z/r0;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Ln3/z/f1$a;->g:I

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

    iget-object p1, p0, Ln3/z/f1$a;->e:Ljava/lang/Object;

    check-cast p1, Ln3/z/t0;

    iget-object v1, p0, Ln3/z/f1$a;->f:Ljava/lang/Object;

    check-cast v1, Ln3/z/r0;

    const-string v3, "loadState"

    .line 4
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    instance-of v3, v1, Ln3/z/r0$b;

    if-nez v3, :cond_2

    instance-of v3, v1, Ln3/z/r0$a;

    .line 6
    :cond_2
    iget-object v3, p0, Ln3/z/f1$a;->h:Ln3/z/y2;

    .line 7
    new-instance v4, Ln3/z/c1$c;

    invoke-direct {v4, p1, v2, v1}, Ln3/z/c1$c;-><init>(Ln3/z/t0;ZLn3/z/r0;)V

    const/4 p1, 0x0

    iput-object p1, p0, Ln3/z/f1$a;->e:Ljava/lang/Object;

    iput v2, p0, Ln3/z/f1$a;->g:I

    .line 8
    invoke-interface {v3, v4, p0}, Lq3/a/w2/d0;->v(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 9
    :cond_3
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final v(Ln3/z/t0;Ln3/z/r0;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/t0;",
            "Ln3/z/r0;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "type"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/z/f1$a;

    iget-object v1, p0, Ln3/z/f1$a;->h:Ln3/z/y2;

    invoke-direct {v0, v1, p3}, Ln3/z/f1$a;-><init>(Ln3/z/y2;Ls1/w/d;)V

    iput-object p1, v0, Ln3/z/f1$a;->e:Ljava/lang/Object;

    iput-object p2, v0, Ln3/z/f1$a;->f:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Ln3/z/f1$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
