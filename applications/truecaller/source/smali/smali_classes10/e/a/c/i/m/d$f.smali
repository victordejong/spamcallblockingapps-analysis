.class public final Le/a/c/i/m/d$f;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/i/m/d;->a()V
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
    c = "com.truecaller.insights.core.sync.InsightsSyncManagerImpl$purgeInsightsData$1"
    f = "InsightsSyncManager.kt"
    l = {
        0x59
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/c/i/m/d;


# direct methods
.method public constructor <init>(Le/a/c/i/m/d;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/i/m/d$f;->f:Le/a/c/i/m/d;

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

    new-instance p1, Le/a/c/i/m/d$f;

    iget-object v0, p0, Le/a/c/i/m/d$f;->f:Le/a/c/i/m/d;

    invoke-direct {p1, v0, p2}, Le/a/c/i/m/d$f;-><init>(Le/a/c/i/m/d;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/i/m/d$f;

    iget-object v0, p0, Le/a/c/i/m/d$f;->f:Le/a/c/i/m/d;

    invoke-direct {p1, v0, p2}, Le/a/c/i/m/d$f;-><init>(Le/a/c/i/m/d;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/i/m/d$f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/c/i/m/d$f;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/c/i/m/d$f;->f:Le/a/c/i/m/d;

    .line 2
    iget-object p1, p1, Le/a/c/i/m/d;->i:Le/a/c/c/f/k;

    .line 3
    iput v3, p0, Le/a/c/i/m/d$f;->e:I

    .line 4
    iget-object v2, p1, Le/a/c/c/f/k;->a:Le/a/c/c/d/d0;

    iget-object v3, p1, Le/a/c/c/f/k;->c:Le/a/c/c/d/s;

    iget-object p1, p1, Le/a/c/c/f/k;->b:Le/a/c/c/d/m0;

    invoke-virtual {v2, v3, p1, p0}, Le/a/c/c/d/d0;->b0(Le/a/c/c/d/s;Le/a/c/c/d/m0;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    return-object v0
.end method
