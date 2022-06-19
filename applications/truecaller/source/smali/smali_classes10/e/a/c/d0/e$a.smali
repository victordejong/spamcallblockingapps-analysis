.class public final Le/a/c/d0/e$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/d0/e;->a()Landroidx/work/ListenableWorker$a;
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
    c = "com.truecaller.insights.workActions.InsightsRemindersWorkAction$execute$1"
    f = "InsightsRemindersWorkAction.kt"
    l = {
        0x1c,
        0x1f,
        0x21
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/c/d0/e;


# direct methods
.method public constructor <init>(Le/a/c/d0/e;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/d0/e$a;->f:Le/a/c/d0/e;

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

    new-instance p1, Le/a/c/d0/e$a;

    iget-object v0, p0, Le/a/c/d0/e$a;->f:Le/a/c/d0/e;

    invoke-direct {p1, v0, p2}, Le/a/c/d0/e$a;-><init>(Le/a/c/d0/e;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/d0/e$a;

    iget-object v0, p0, Le/a/c/d0/e$a;->f:Le/a/c/d0/e;

    invoke-direct {p1, v0, p2}, Le/a/c/d0/e$a;-><init>(Le/a/c/d0/e;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/d0/e$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/d0/e$a;->e:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/d0/e$a;->f:Le/a/c/d0/e;

    .line 5
    iget-object p1, p1, Le/a/c/d0/e;->c:Le/a/c/c/f/n;

    .line 6
    iput v4, p0, Le/a/c/d0/e$a;->e:I

    invoke-interface {p1, p0}, Le/a/c/c/f/n;->n(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 7
    :cond_4
    :goto_0
    check-cast p1, Lcom/truecaller/insights/models/states/InsightState;

    .line 8
    new-instance p1, Lw3/b/a/b;

    invoke-direct {p1}, Lw3/b/a/b;-><init>()V

    .line 9
    invoke-virtual {p1}, Lw3/b/a/e0/c;->n()Ljava/util/Date;

    move-result-object p1

    .line 10
    iget-object v1, p0, Le/a/c/d0/e$a;->f:Le/a/c/d0/e;

    .line 11
    iget-object v1, v1, Le/a/c/d0/e;->d:Le/a/c/v/a;

    const-string v4, "now"

    .line 12
    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput v3, p0, Le/a/c/d0/e$a;->e:I

    invoke-interface {v1, p1, p0}, Le/a/c/v/a;->i(Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 13
    :cond_5
    :goto_1
    iget-object p1, p0, Le/a/c/d0/e$a;->f:Le/a/c/d0/e;

    .line 14
    iget-object p1, p1, Le/a/c/d0/e;->d:Le/a/c/v/a;

    .line 15
    iput v2, p0, Le/a/c/d0/e$a;->e:I

    invoke-interface {p1, p0}, Le/a/c/v/a;->c(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 16
    :cond_6
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
