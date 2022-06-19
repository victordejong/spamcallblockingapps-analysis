.class public final Le/a/c/a/c/f/a;
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
        "-",
        "Le/a/c/a/c/g/a;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.ui.important.domain.GetFinanceFlowUseCase$execute$1"
    f = "GetFinanceFlowUseCase.kt"
    l = {
        0x32,
        0x90
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/c/a/c/f/b;


# direct methods
.method public constructor <init>(Le/a/c/a/c/f/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/c/f/a;->g:Le/a/c/a/c/f/b;

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

    new-instance v0, Le/a/c/a/c/f/a;

    iget-object v1, p0, Le/a/c/a/c/f/a;->g:Le/a/c/a/c/f/b;

    invoke-direct {v0, v1, p2}, Le/a/c/a/c/f/a;-><init>(Le/a/c/a/c/f/b;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/a/c/f/a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/a/c/f/a;

    iget-object v1, p0, Le/a/c/a/c/f/a;->g:Le/a/c/a/c/f/b;

    invoke-direct {v0, v1, p2}, Le/a/c/a/c/f/a;-><init>(Le/a/c/a/c/f/b;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/a/c/f/a;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/c/a/c/f/a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/c/a/c/f/a;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

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
    iget-object v2, p0, Le/a/c/a/c/f/a;->e:Ljava/lang/Object;

    check-cast v2, Lq3/a/x2/g;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/c/a/c/f/a;->e:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lq3/a/x2/g;

    .line 4
    iget-object p1, p0, Le/a/c/a/c/f/a;->g:Le/a/c/a/c/f/b;

    .line 5
    iget-object p1, p1, Le/a/c/a/c/f/b;->f:Le/a/c/a/d/d/a;

    .line 6
    iput-object v2, p0, Le/a/c/a/c/f/a;->e:Ljava/lang/Object;

    iput v5, p0, Le/a/c/a/c/f/a;->f:I

    .line 7
    iget-object v5, p1, Le/a/c/a/i/k;->a:Ls1/w/f;

    new-instance v6, Le/a/c/a/i/k$a;

    invoke-direct {v6, p1, v0, v3}, Le/a/c/a/i/k$a;-><init>(Le/a/c/a/i/k;Ljava/lang/Object;Ls1/w/d;)V

    invoke-static {v5, v6, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 8
    :cond_3
    :goto_0
    check-cast p1, Le/a/c/q/i;

    .line 9
    new-instance v5, Lw3/b/a/p;

    .line 10
    iget-wide v6, p1, Le/a/c/q/i;->b:J

    .line 11
    invoke-direct {v5, v6, v7}, Lw3/b/a/p;-><init>(J)V

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Lw3/b/a/p;->g(I)Lw3/b/a/p;

    move-result-object v5

    .line 12
    iget-object v6, p0, Le/a/c/a/c/f/a;->g:Le/a/c/a/c/f/b;

    .line 13
    iget-object v6, v6, Le/a/c/a/c/f/b;->b:Le/a/c/q/d;

    const/4 v7, 0x5

    const-string v8, "showForLast"

    .line 14
    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v7, v5}, Le/a/c/q/d;->y(ILw3/b/a/p;)Lq3/a/x2/f;

    move-result-object v5

    .line 15
    new-instance v6, Le/a/c/a/c/f/a$a;

    invoke-direct {v6, p0, v2, p1}, Le/a/c/a/c/f/a$a;-><init>(Le/a/c/a/c/f/a;Lq3/a/x2/g;Le/a/c/q/i;)V

    iput-object v3, p0, Le/a/c/a/c/f/a;->e:Ljava/lang/Object;

    iput v4, p0, Le/a/c/a/c/f/a;->f:I

    invoke-interface {v5, v6, p0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    return-object v0
.end method
