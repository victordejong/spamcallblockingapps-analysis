.class public final Le/a/c/a/k/b/a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/w2/x<",
        "-",
        "Le/a/c/a/k/c/d;",
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
    c = "com.truecaller.insights.ui.markedimportantpage.domain.FetchImportantMessageFlowUseCase$execute$1"
    f = "FetchImportantMessageFlowUseCase.kt"
    l = {
        0x29,
        0x2d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/c/a/k/b/b;

.field public final synthetic h:Le/a/c/a/k/d/a;


# direct methods
.method public constructor <init>(Le/a/c/a/k/b/b;Le/a/c/a/k/d/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/k/b/a;->g:Le/a/c/a/k/b/b;

    iput-object p2, p0, Le/a/c/a/k/b/a;->h:Le/a/c/a/k/d/a;

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

    new-instance v0, Le/a/c/a/k/b/a;

    iget-object v1, p0, Le/a/c/a/k/b/a;->g:Le/a/c/a/k/b/b;

    iget-object v2, p0, Le/a/c/a/k/b/a;->h:Le/a/c/a/k/d/a;

    invoke-direct {v0, v1, v2, p2}, Le/a/c/a/k/b/a;-><init>(Le/a/c/a/k/b/b;Le/a/c/a/k/d/a;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/a/k/b/a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/a/k/b/a;

    iget-object v1, p0, Le/a/c/a/k/b/a;->g:Le/a/c/a/k/b/b;

    iget-object v2, p0, Le/a/c/a/k/b/a;->h:Le/a/c/a/k/d/a;

    invoke-direct {v0, v1, v2, p2}, Le/a/c/a/k/b/a;-><init>(Le/a/c/a/k/b/b;Le/a/c/a/k/d/a;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/a/k/b/a;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/c/a/k/b/a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/a/k/b/a;->f:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

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
    iget-object v1, p0, Le/a/c/a/k/b/a;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/w2/x;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/c/a/k/b/a;->e:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lq3/a/w2/x;

    .line 4
    iget-object p1, p0, Le/a/c/a/k/b/a;->g:Le/a/c/a/k/b/b;

    .line 5
    iget-object v4, p1, Le/a/c/a/k/b/b;->c:Le/a/c/h/g;

    .line 6
    iget-object p1, p1, Le/a/c/a/k/b/b;->f:Ljava/lang/Long;

    .line 7
    new-instance v5, Le/a/c/a/k/b/a$a;

    invoke-direct {v5, p0, v1}, Le/a/c/a/k/b/a$a;-><init>(Le/a/c/a/k/b/a;Lq3/a/w2/x;)V

    .line 8
    new-instance v6, Le/a/c/a/k/b/a$b;

    invoke-direct {v6, p0, v1}, Le/a/c/a/k/b/a$b;-><init>(Le/a/c/a/k/b/a;Lq3/a/w2/x;)V

    iput-object v1, p0, Le/a/c/a/k/b/a;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/c/a/k/b/a;->f:I

    .line 9
    invoke-interface {v4, p1, v5, v6, p0}, Le/a/c/h/g;->a(Ljava/lang/Long;Ls1/z/b/l;Ls1/z/b/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 10
    :cond_3
    :goto_0
    new-instance p1, Le/a/c/a/k/b/a$c;

    invoke-direct {p1, p0}, Le/a/c/a/k/b/a$c;-><init>(Le/a/c/a/k/b/a;)V

    const/4 v3, 0x0

    iput-object v3, p0, Le/a/c/a/k/b/a;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/c/a/k/b/a;->f:I

    invoke-static {v1, p1, p0}, Lq3/a/w2/v;->a(Lq3/a/w2/x;Ls1/z/b/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 11
    :cond_4
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
