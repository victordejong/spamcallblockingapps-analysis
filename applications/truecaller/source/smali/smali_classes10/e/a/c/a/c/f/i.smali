.class public final Le/a/c/a/c/f/i;
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
        "Le/a/c/a/c/g/f;",
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
    c = "com.truecaller.insights.ui.important.domain.GetUpdatesFlowUseCase$execute$1"
    f = "GetUpdatesFlowUseCase.kt"
    l = {
        0x50
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/c/a/c/f/j;


# direct methods
.method public constructor <init>(Le/a/c/a/c/f/j;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/c/f/i;->g:Le/a/c/a/c/f/j;

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

    new-instance v0, Le/a/c/a/c/f/i;

    iget-object v1, p0, Le/a/c/a/c/f/i;->g:Le/a/c/a/c/f/j;

    invoke-direct {v0, v1, p2}, Le/a/c/a/c/f/i;-><init>(Le/a/c/a/c/f/j;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/a/c/f/i;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/a/c/f/i;

    iget-object v1, p0, Le/a/c/a/c/f/i;->g:Le/a/c/a/c/f/j;

    invoke-direct {v0, v1, p2}, Le/a/c/a/c/f/i;-><init>(Le/a/c/a/c/f/j;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/a/c/f/i;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/c/a/c/f/i;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/a/c/f/i;->f:I

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

    iget-object p1, p0, Le/a/c/a/c/f/i;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/x2/g;

    .line 4
    invoke-static {}, Le/d/c/a/a;->c()J

    move-result-wide v3

    const/16 v1, 0x1e

    invoke-static {v1}, Lw3/b/a/h;->q(I)Lw3/b/a/h;

    move-result-object v1

    .line 5
    iget v1, v1, Lw3/b/a/e0/i;->a:I

    int-to-long v5, v1

    const-wide/32 v7, 0x5265c00

    mul-long/2addr v5, v7

    sub-long/2addr v3, v5

    .line 6
    iget-object v1, p0, Le/a/c/a/c/f/i;->g:Le/a/c/a/c/f/j;

    .line 7
    iget-object v1, v1, Le/a/c/a/c/f/j;->b:Le/a/c/q/d;

    const/4 v5, 0x3

    .line 8
    invoke-interface {v1, v5, v3, v4}, Le/a/c/q/d;->t(IJ)Lq3/a/x2/f;

    move-result-object v1

    .line 9
    new-instance v3, Le/a/c/a/c/f/i$a;

    invoke-direct {v3, p0, p1}, Le/a/c/a/c/f/i$a;-><init>(Le/a/c/a/c/f/i;Lq3/a/x2/g;)V

    iput v2, p0, Le/a/c/a/c/f/i;->f:I

    invoke-interface {v1, v3, p0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 10
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
