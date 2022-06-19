.class public final Le/a/c/b/m$m;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/b/m;->d(ILs1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.insights.state.InsightsVersionProviderImpl$updateBlockPreferenceVersion$2"
    f = "InsightsVersionProvider.kt"
    l = {
        0x94,
        0x97
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/c/b/m;

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Le/a/c/b/m;ILs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/b/m$m;->f:Le/a/c/b/m;

    iput p2, p0, Le/a/c/b/m$m;->g:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/b/m$m;

    iget-object v0, p0, Le/a/c/b/m$m;->f:Le/a/c/b/m;

    iget v1, p0, Le/a/c/b/m$m;->g:I

    invoke-direct {p1, v0, v1, p2}, Le/a/c/b/m$m;-><init>(Le/a/c/b/m;ILs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/b/m$m;

    iget-object v0, p0, Le/a/c/b/m$m;->f:Le/a/c/b/m;

    iget v1, p0, Le/a/c/b/m$m;->g:I

    invoke-direct {p1, v0, v1, p2}, Le/a/c/b/m$m;-><init>(Le/a/c/b/m;ILs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/b/m$m;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/b/m$m;->e:I

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
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/b/m$m;->f:Le/a/c/b/m;

    .line 5
    iget-object p1, p1, Le/a/c/b/m;->b:Le/a/c/c/f/n;

    .line 6
    iput v3, p0, Le/a/c/b/m$m;->e:I

    const-string v1, "INSIGHTS.FIREBASE.SENDER_BLOCK.PREFERENCE"

    invoke-interface {p1, v1, p0}, Le/a/c/c/f/n;->q(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 7
    :cond_3
    :goto_0
    move-object v4, p1

    check-cast v4, Lcom/truecaller/insights/models/states/InsightState;

    .line 8
    iget p1, p0, Le/a/c/b/m$m;->g:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/truecaller/insights/models/states/InsightState;->setLastUpdatedData(Ljava/lang/String;)V

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating version "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 10
    iget-object p1, p0, Le/a/c/b/m$m;->f:Le/a/c/b/m;

    .line 11
    iget-object v3, p1, Le/a/c/b/m;->b:Le/a/c/c/f/n;

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 12
    iput v2, p0, Le/a/c/b/m$m;->e:I

    move-object v6, p0

    invoke-static/range {v3 .. v8}, Le/a/m0/a1$k;->J1(Le/a/c/c/f/n;Lcom/truecaller/insights/models/states/InsightState;Ljava/util/Date;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 13
    :cond_4
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
