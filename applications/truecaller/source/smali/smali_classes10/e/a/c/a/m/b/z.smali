.class public final Le/a/c/a/m/b/z;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.ui.qa.presentation.UpdatesTestingViewModel$getAllPdos$2"
    f = "UpdatesTestingViewModel.kt"
    l = {
        0x2c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/c/a/m/b/x;


# direct methods
.method public constructor <init>(Le/a/c/a/m/b/x;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/b/z;->f:Le/a/c/a/m/b/x;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/c/a/m/b/z;

    iget-object v0, p0, Le/a/c/a/m/b/z;->f:Le/a/c/a/m/b/x;

    invoke-direct {p1, v0, p2}, Le/a/c/a/m/b/z;-><init>(Le/a/c/a/m/b/x;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/a/m/b/z;

    iget-object v0, p0, Le/a/c/a/m/b/z;->f:Le/a/c/a/m/b/x;

    invoke-direct {p1, v0, p2}, Le/a/c/a/m/b/z;-><init>(Le/a/c/a/m/b/x;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/a/m/b/z;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/a/m/b/z;->e:I

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

    .line 4
    new-instance p1, Ljava/util/GregorianCalendar;

    const/16 v1, 0x7e3

    const/4 v3, 0x0

    invoke-direct {p1, v1, v3, v2}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {p1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 5
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 6
    iget-object v3, p0, Le/a/c/a/m/b/z;->f:Le/a/c/a/m/b/x;

    .line 7
    iget-object v3, v3, Le/a/c/a/m/b/x;->d:Le/a/c/w/a;

    const-string v4, "minDate"

    .line 8
    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput v2, p0, Le/a/c/a/m/b/z;->e:I

    invoke-interface {v3, p1, v1, p0}, Le/a/c/w/a;->b(Ljava/util/Date;Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
