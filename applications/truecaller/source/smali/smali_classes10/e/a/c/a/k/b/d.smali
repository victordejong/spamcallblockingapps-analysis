.class public final Le/a/c/a/k/b/d;
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
        "Ljava/lang/Boolean;",
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
    c = "com.truecaller.insights.ui.markedimportantpage.domain.MarkImportantMessageFlowUseCase$execute$1"
    f = "MarkImportantMessageFlowUseCase.kt"
    l = {
        0x1b,
        0x1e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/c/a/k/b/e;

.field public final synthetic h:Le/a/c/a/k/c/a;


# direct methods
.method public constructor <init>(Le/a/c/a/k/b/e;Le/a/c/a/k/c/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/k/b/d;->g:Le/a/c/a/k/b/e;

    iput-object p2, p0, Le/a/c/a/k/b/d;->h:Le/a/c/a/k/c/a;

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

    new-instance v0, Le/a/c/a/k/b/d;

    iget-object v1, p0, Le/a/c/a/k/b/d;->g:Le/a/c/a/k/b/e;

    iget-object v2, p0, Le/a/c/a/k/b/d;->h:Le/a/c/a/k/c/a;

    invoke-direct {v0, v1, v2, p2}, Le/a/c/a/k/b/d;-><init>(Le/a/c/a/k/b/e;Le/a/c/a/k/c/a;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/a/k/b/d;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/a/k/b/d;

    iget-object v1, p0, Le/a/c/a/k/b/d;->g:Le/a/c/a/k/b/e;

    iget-object v2, p0, Le/a/c/a/k/b/d;->h:Le/a/c/a/k/c/a;

    invoke-direct {v0, v1, v2, p2}, Le/a/c/a/k/b/d;-><init>(Le/a/c/a/k/b/e;Le/a/c/a/k/c/a;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/a/k/b/d;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/c/a/k/b/d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/a/k/b/d;->f:I

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
    iget-object v1, p0, Le/a/c/a/k/b/d;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/w2/x;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/c/a/k/b/d;->e:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lq3/a/w2/x;

    .line 4
    iget-object p1, p0, Le/a/c/a/k/b/d;->g:Le/a/c/a/k/b/e;

    .line 5
    iget-object v4, p1, Le/a/c/a/k/b/e;->b:Le/a/c/h/g;

    .line 6
    iget-object p1, p0, Le/a/c/a/k/b/d;->h:Le/a/c/a/k/c/a;

    .line 7
    iget-boolean v5, p1, Le/a/c/a/k/c/a;->a:Z

    .line 8
    iget-object v6, p1, Le/a/c/a/k/c/a;->b:Ljava/util/List;

    .line 9
    iget-object v7, p1, Le/a/c/a/k/c/a;->c:Ljava/util/List;

    .line 10
    new-instance v8, Le/a/c/a/k/b/d$a;

    invoke-direct {v8, v1}, Le/a/c/a/k/b/d$a;-><init>(Lq3/a/w2/x;)V

    .line 11
    new-instance v9, Le/a/c/a/k/b/d$b;

    invoke-direct {v9, p0, v1}, Le/a/c/a/k/b/d$b;-><init>(Le/a/c/a/k/b/d;Lq3/a/w2/x;)V

    iput-object v1, p0, Le/a/c/a/k/b/d;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/c/a/k/b/d;->f:I

    move-object v10, p0

    .line 12
    invoke-interface/range {v4 .. v10}, Le/a/c/h/g;->b(ZLjava/util/List;Ljava/util/List;Ls1/z/b/l;Ls1/z/b/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 13
    :cond_3
    :goto_0
    sget-object p1, Le/a/c/a/k/b/d$c;->b:Le/a/c/a/k/b/d$c;

    const/4 v3, 0x0

    iput-object v3, p0, Le/a/c/a/k/b/d;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/c/a/k/b/d;->f:I

    invoke-static {v1, p1, p0}, Lq3/a/w2/v;->a(Lq3/a/w2/x;Ls1/z/b/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 14
    :cond_4
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
