.class public final Le/a/c/a/m/b/c0;
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
        "Le/a/c/q/k;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.ui.qa.presentation.UpdatesTestingViewModel$getRecentUpdates$2"
    f = "UpdatesTestingViewModel.kt"
    l = {
        0x1c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/c/a/m/b/x;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:I

.field public final synthetic i:J


# direct methods
.method public constructor <init>(Le/a/c/a/m/b/x;Ljava/lang/String;IJLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/b/c0;->f:Le/a/c/a/m/b/x;

    iput-object p2, p0, Le/a/c/a/m/b/c0;->g:Ljava/lang/String;

    iput p3, p0, Le/a/c/a/m/b/c0;->h:I

    iput-wide p4, p0, Le/a/c/a/m/b/c0;->i:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 7
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

    new-instance p1, Le/a/c/a/m/b/c0;

    iget-object v1, p0, Le/a/c/a/m/b/c0;->f:Le/a/c/a/m/b/x;

    iget-object v2, p0, Le/a/c/a/m/b/c0;->g:Ljava/lang/String;

    iget v3, p0, Le/a/c/a/m/b/c0;->h:I

    iget-wide v4, p0, Le/a/c/a/m/b/c0;->i:J

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Le/a/c/a/m/b/c0;-><init>(Le/a/c/a/m/b/x;Ljava/lang/String;IJLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/c/a/m/b/c0;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/c/a/m/b/c0;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/a/m/b/c0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/a/m/b/c0;->e:I

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
    iget-object p1, p0, Le/a/c/a/m/b/c0;->f:Le/a/c/a/m/b/x;

    .line 5
    iget-object v3, p1, Le/a/c/a/m/b/x;->a:Le/a/c/b0/d;

    .line 6
    iget-object v4, p0, Le/a/c/a/m/b/c0;->g:Ljava/lang/String;

    iget v5, p0, Le/a/c/a/m/b/c0;->h:I

    iget-wide v6, p0, Le/a/c/a/m/b/c0;->i:J

    iput v2, p0, Le/a/c/a/m/b/c0;->e:I

    move-object v8, p0

    invoke-interface/range {v3 .. v8}, Le/a/c/b0/d;->b(Ljava/lang/String;IJLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
