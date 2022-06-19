.class public final Le/a/c/a/p/d/o;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/c/a/p/c/d;",
        "Ls1/w/d<",
        "-",
        "Le/a/c/a/p/c/d;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.ui.smartfeed.presentation.InsightsSmartFeedViewModel$updateTransactionHiddenState$1"
    f = "InsightsSmartFeedViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Z


# direct methods
.method public constructor <init>(ZLs1/w/d;)V
    .locals 0

    iput-boolean p1, p0, Le/a/c/a/p/d/o;->f:Z

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

    new-instance v0, Le/a/c/a/p/d/o;

    iget-boolean v1, p0, Le/a/c/a/p/d/o;->f:Z

    invoke-direct {v0, v1, p2}, Le/a/c/a/p/d/o;-><init>(ZLs1/w/d;)V

    iput-object p1, v0, Le/a/c/a/p/d/o;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Le/a/c/a/p/d/o;->f:Z

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Le/a/c/a/p/c/d;

    .line 5
    instance-of p2, p1, Le/a/c/a/p/c/d$a;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Le/a/c/a/p/c/d$a;

    .line 6
    iget-object v1, p2, Le/a/c/a/p/c/d$a;->c:Le/a/c/y/m;

    .line 7
    iget-object v1, v1, Le/a/c/y/m;->c:Ljava/lang/String;

    const-string v2, "Bank"

    .line 8
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    iget-object v1, p2, Le/a/c/a/p/c/d$a;->c:Le/a/c/y/m;

    .line 10
    iget-object v1, v1, Le/a/c/y/m;->c:Ljava/lang/String;

    const-string v2, "Updates"

    .line 11
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    iget-object v1, p2, Le/a/c/a/p/c/d$a;->c:Le/a/c/y/m;

    .line 13
    iget-object v1, v1, Le/a/c/y/m;->d:Le/a/c/y/l;

    .line 14
    iget-object v1, v1, Le/a/c/y/l;->a:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    .line 15
    sget-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Transaction:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    if-ne v1, v2, :cond_1

    .line 16
    :cond_0
    iget-object p1, p2, Le/a/c/a/p/c/d$a;->b:Le/a/c/a/p/c/a;

    .line 17
    iget-object v1, p1, Le/a/c/a/p/c/a;->a:Le/a/c/a/p/c/b;

    iget-object v2, p1, Le/a/c/a/p/c/a;->b:Lw3/b/a/b;

    .line 18
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "coords"

    invoke-static {v1, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dateTime"

    invoke-static {v2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/a/p/c/a;

    invoke-direct {p1, v1, v2, v0}, Le/a/c/a/p/c/a;-><init>(Le/a/c/a/p/c/b;Lw3/b/a/b;Z)V

    .line 19
    iget-object v0, p2, Le/a/c/a/p/c/d$a;->c:Le/a/c/y/m;

    .line 20
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "meta"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "uiModel"

    invoke-static {v0, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Le/a/c/a/p/c/d$a;

    invoke-direct {p2, p1, v0}, Le/a/c/a/p/c/d$a;-><init>(Le/a/c/a/p/c/a;Le/a/c/y/m;)V

    move-object p1, p2

    :cond_1
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/c/a/p/d/o;->e:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/p/c/d;

    .line 2
    instance-of v0, p1, Le/a/c/a/p/c/d$a;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Le/a/c/a/p/c/d$a;

    .line 3
    iget-object v1, v0, Le/a/c/a/p/c/d$a;->c:Le/a/c/y/m;

    .line 4
    iget-object v1, v1, Le/a/c/y/m;->c:Ljava/lang/String;

    const-string v2, "Bank"

    .line 5
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    iget-object v1, v0, Le/a/c/a/p/c/d$a;->c:Le/a/c/y/m;

    .line 7
    iget-object v1, v1, Le/a/c/y/m;->c:Ljava/lang/String;

    const-string v2, "Updates"

    .line 8
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, v0, Le/a/c/a/p/c/d$a;->c:Le/a/c/y/m;

    .line 10
    iget-object v1, v1, Le/a/c/y/m;->d:Le/a/c/y/l;

    .line 11
    iget-object v1, v1, Le/a/c/y/l;->a:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    .line 12
    sget-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Transaction:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    if-ne v1, v2, :cond_1

    .line 13
    :cond_0
    iget-object p1, v0, Le/a/c/a/p/c/d$a;->b:Le/a/c/a/p/c/a;

    .line 14
    iget-boolean v1, p0, Le/a/c/a/p/d/o;->f:Z

    .line 15
    iget-object v2, p1, Le/a/c/a/p/c/a;->a:Le/a/c/a/p/c/b;

    iget-object v3, p1, Le/a/c/a/p/c/a;->b:Lw3/b/a/b;

    .line 16
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "coords"

    invoke-static {v2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dateTime"

    invoke-static {v3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/a/p/c/a;

    invoke-direct {p1, v2, v3, v1}, Le/a/c/a/p/c/a;-><init>(Le/a/c/a/p/c/b;Lw3/b/a/b;Z)V

    .line 17
    iget-object v1, v0, Le/a/c/a/p/c/d$a;->c:Le/a/c/y/m;

    .line 18
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "meta"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiModel"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/a/p/c/d$a;

    invoke-direct {v0, p1, v1}, Le/a/c/a/p/c/d$a;-><init>(Le/a/c/a/p/c/a;Le/a/c/y/m;)V

    move-object p1, v0

    :cond_1
    return-object p1
.end method
