.class public final Ln3/z/x2$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/x2;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1$1"
    f = "SimpleChannelFlow.kt"
    l = {
        0x40,
        0x41
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Ln3/z/x2;

.field public final synthetic i:Lq3/a/x2/g;


# direct methods
.method public constructor <init>(Ln3/z/x2;Lq3/a/x2/g;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/x2$a;->h:Ln3/z/x2;

    iput-object p2, p0, Ln3/z/x2$a;->i:Lq3/a/x2/g;

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

    new-instance v0, Ln3/z/x2$a;

    iget-object v1, p0, Ln3/z/x2$a;->h:Ln3/z/x2;

    iget-object v2, p0, Ln3/z/x2$a;->i:Lq3/a/x2/g;

    invoke-direct {v0, v1, v2, p2}, Ln3/z/x2$a;-><init>(Ln3/z/x2;Lq3/a/x2/g;Ls1/w/d;)V

    iput-object p1, v0, Ln3/z/x2$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/z/x2$a;

    iget-object v1, p0, Ln3/z/x2$a;->h:Ln3/z/x2;

    iget-object v2, p0, Ln3/z/x2$a;->i:Lq3/a/x2/g;

    invoke-direct {v0, v1, v2, p2}, Ln3/z/x2$a;-><init>(Ln3/z/x2;Lq3/a/x2/g;Ls1/w/d;)V

    iput-object p1, v0, Ln3/z/x2$a;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Ln3/z/x2$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Ln3/z/x2$a;->g:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Ln3/z/x2$a;->f:Ljava/lang/Object;

    check-cast v1, Lq3/a/w2/l;

    iget-object v5, p0, Ln3/z/x2$a;->e:Ljava/lang/Object;

    check-cast v5, Lq3/a/p1;

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
    iget-object v1, p0, Ln3/z/x2$a;->f:Ljava/lang/Object;

    check-cast v1, Lq3/a/w2/l;

    iget-object v5, p0, Ln3/z/x2$a;->e:Ljava/lang/Object;

    check-cast v5, Lq3/a/p1;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v6, v5

    move-object v5, v1

    move-object v1, v0

    move-object v0, p0

    goto :goto_2

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Ln3/z/x2$a;->e:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lq3/a/i0;

    const/4 p1, 0x0

    const/4 v1, 0x6

    .line 4
    invoke-static {p1, v2, v2, v1}, Ls1/a/a/a/v0/f/d;->f(ILq3/a/w2/i;Ls1/z/b/l;I)Lq3/a/w2/j;

    move-result-object p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 5
    new-instance v8, Ln3/z/x2$a$a;

    invoke-direct {v8, p0, p1, v2}, Ln3/z/x2$a$a;-><init>(Ln3/z/x2$a;Lq3/a/w2/j;Ls1/w/d;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v5

    .line 6
    check-cast p1, Lq3/a/w2/a;

    .line 7
    new-instance v1, Lq3/a/w2/a$a;

    invoke-direct {v1, p1}, Lq3/a/w2/a$a;-><init>(Lq3/a/w2/a;)V

    :goto_0
    move-object p1, p0

    .line 8
    :goto_1
    iput-object v5, p1, Ln3/z/x2$a;->e:Ljava/lang/Object;

    iput-object v1, p1, Ln3/z/x2$a;->f:Ljava/lang/Object;

    iput v4, p1, Ln3/z/x2$a;->g:I

    invoke-interface {v1, p1}, Lq3/a/w2/l;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_3

    return-object v0

    :cond_3
    move-object v11, v0

    move-object v0, p1

    move-object p1, v6

    move-object v6, v5

    move-object v5, v1

    move-object v1, v11

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v5}, Lq3/a/w2/l;->next()Ljava/lang/Object;

    move-result-object p1

    .line 9
    iget-object v7, v0, Ln3/z/x2$a;->i:Lq3/a/x2/g;

    iput-object v6, v0, Ln3/z/x2$a;->e:Ljava/lang/Object;

    iput-object v5, v0, Ln3/z/x2$a;->f:Ljava/lang/Object;

    iput v3, v0, Ln3/z/x2$a;->g:I

    invoke-interface {v7, p1, v0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, v0

    move-object v0, v1

    move-object v1, v5

    move-object v5, v6

    goto :goto_1

    .line 10
    :cond_5
    invoke-static {v6, v2, v4, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 11
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
