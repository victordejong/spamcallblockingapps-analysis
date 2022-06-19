.class public final Ln3/z/x2$a$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/x2$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1$1$producer$1"
    f = "SimpleChannelFlow.kt"
    l = {
        0x34
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Ln3/z/x2$a;

.field public final synthetic g:Lq3/a/w2/j;


# direct methods
.method public constructor <init>(Ln3/z/x2$a;Lq3/a/w2/j;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/x2$a$a;->f:Ln3/z/x2$a;

    iput-object p2, p0, Ln3/z/x2$a$a;->g:Lq3/a/w2/j;

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

    new-instance p1, Ln3/z/x2$a$a;

    iget-object v0, p0, Ln3/z/x2$a$a;->f:Ln3/z/x2$a;

    iget-object v1, p0, Ln3/z/x2$a$a;->g:Lq3/a/w2/j;

    invoke-direct {p1, v0, v1, p2}, Ln3/z/x2$a$a;-><init>(Ln3/z/x2$a;Lq3/a/w2/j;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ln3/z/x2$a$a;

    iget-object v0, p0, Ln3/z/x2$a$a;->f:Ln3/z/x2$a;

    iget-object v1, p0, Ln3/z/x2$a$a;->g:Lq3/a/w2/j;

    invoke-direct {p1, v0, v1, p2}, Ln3/z/x2$a$a;-><init>(Ln3/z/x2$a;Lq3/a/w2/j;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Ln3/z/x2$a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Ln3/z/x2$a$a;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    :try_start_1
    new-instance p1, Ln3/z/x2$a$a$a;

    invoke-direct {p1, p0, v2}, Ln3/z/x2$a$a$a;-><init>(Ln3/z/x2$a$a;Ls1/w/d;)V

    iput v3, p0, Ln3/z/x2$a$a;->e:I

    invoke-static {p1, p0}, Ls1/a/a/a/v0/f/d;->o0(Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Ln3/z/x2$a$a;->g:Lq3/a/w2/j;

    invoke-static {p1, v2, v3, v2}, Ls1/a/a/a/v0/f/d;->f0(Lq3/a/w2/d0;Ljava/lang/Throwable;ILjava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 6
    iget-object v0, p0, Ln3/z/x2$a$a;->g:Lq3/a/w2/j;

    invoke-interface {v0, p1}, Lq3/a/w2/d0;->u(Ljava/lang/Throwable;)Z

    .line 7
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
