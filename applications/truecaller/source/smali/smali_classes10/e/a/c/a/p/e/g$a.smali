.class public final Le/a/c/a/p/e/g$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/p/e/g;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ln3/z/b2<",
        "Le/a/c/a/p/c/d;",
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
    c = "com.truecaller.insights.ui.smartfeed.view.InsightsSmartFeedFragment$collectLatest$1$1"
    f = "InsightsSmartFeedFragment.kt"
    l = {
        0x8a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/c/a/p/e/g;


# direct methods
.method public constructor <init>(Le/a/c/a/p/e/g;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/p/e/g$a;->g:Le/a/c/a/p/e/g;

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

    new-instance v0, Le/a/c/a/p/e/g$a;

    iget-object v1, p0, Le/a/c/a/p/e/g$a;->g:Le/a/c/a/p/e/g;

    invoke-direct {v0, v1, p2}, Le/a/c/a/p/e/g$a;-><init>(Le/a/c/a/p/e/g;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/a/p/e/g$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/a/p/e/g$a;

    iget-object v1, p0, Le/a/c/a/p/e/g$a;->g:Le/a/c/a/p/e/g;

    invoke-direct {v0, v1, p2}, Le/a/c/a/p/e/g$a;-><init>(Le/a/c/a/p/e/g;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/a/p/e/g$a;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/c/a/p/e/g$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/c/a/p/e/g$a;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/c/a/p/e/g$a;->e:Ljava/lang/Object;

    check-cast p1, Ln3/z/b2;

    iget-object v2, p0, Le/a/c/a/p/e/g$a;->g:Le/a/c/a/p/e/g;

    iget-object v2, v2, Le/a/c/a/p/e/g;->f:Le/a/c/a/p/e/f;

    .line 2
    iget-object v2, v2, Le/a/c/a/p/e/f;->e:Le/a/c/a/p/d/a;

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    .line 3
    iput v3, p0, Le/a/c/a/p/e/g$a;->f:I

    .line 4
    iget-object v2, v2, Ln3/z/f2;->b:Ln3/z/g;

    .line 5
    iget-object v3, v2, Ln3/z/g;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 6
    iget-object v2, v2, Ln3/z/g;->c:Ln3/z/g$a;

    .line 7
    iget-object v3, v2, Ln3/z/g2;->e:Ln3/z/a3;

    new-instance v5, Ln3/z/h2;

    invoke-direct {v5, v2, p1, v4}, Ln3/z/h2;-><init>(Ln3/z/g2;Ln3/z/b2;Ls1/w/d;)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {v3, p1, v5, p0}, Ln3/z/a3;->a(ILs1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v0

    :goto_1
    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object p1, v0

    :goto_2
    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_3
    return-object v0

    :cond_6
    const-string p1, "insightsSmartFeedAdapter"

    .line 9
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4
.end method
