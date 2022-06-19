.class public final Le/a/c/b/m$j;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/b/m;->i(Lcom/truecaller/insights/models/states/InsightState;I)Le/a/c/b/n;
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
    c = "com.truecaller.insights.state.InsightsVersionProviderImpl$processState$1"
    f = "InsightsVersionProvider.kt"
    l = {
        0xad
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/c/b/m;

.field public final synthetic g:Lcom/truecaller/insights/models/states/InsightState;

.field public final synthetic h:I


# direct methods
.method public constructor <init>(Le/a/c/b/m;Lcom/truecaller/insights/models/states/InsightState;ILs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/b/m$j;->f:Le/a/c/b/m;

    iput-object p2, p0, Le/a/c/b/m$j;->g:Lcom/truecaller/insights/models/states/InsightState;

    iput p3, p0, Le/a/c/b/m$j;->h:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/b/m$j;

    iget-object v0, p0, Le/a/c/b/m$j;->f:Le/a/c/b/m;

    iget-object v1, p0, Le/a/c/b/m$j;->g:Lcom/truecaller/insights/models/states/InsightState;

    iget v2, p0, Le/a/c/b/m$j;->h:I

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/c/b/m$j;-><init>(Le/a/c/b/m;Lcom/truecaller/insights/models/states/InsightState;ILs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/b/m$j;

    iget-object v0, p0, Le/a/c/b/m$j;->f:Le/a/c/b/m;

    iget-object v1, p0, Le/a/c/b/m$j;->g:Lcom/truecaller/insights/models/states/InsightState;

    iget v2, p0, Le/a/c/b/m$j;->h:I

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/c/b/m$j;-><init>(Le/a/c/b/m;Lcom/truecaller/insights/models/states/InsightState;ILs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/b/m$j;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/b/m$j;->e:I

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
    iget-object p1, p0, Le/a/c/b/m$j;->g:Lcom/truecaller/insights/models/states/InsightState;

    iget v1, p0, Le/a/c/b/m$j;->h:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/truecaller/insights/models/states/InsightState;->setLastUpdatedData(Ljava/lang/String;)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating version "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/b/m$j;->g:Lcom/truecaller/insights/models/states/InsightState;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 6
    iget-object p1, p0, Le/a/c/b/m$j;->f:Le/a/c/b/m;

    .line 7
    iget-object v3, p1, Le/a/c/b/m;->b:Le/a/c/c/f/n;

    .line 8
    iget-object v4, p0, Le/a/c/b/m$j;->g:Lcom/truecaller/insights/models/states/InsightState;

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    iput v2, p0, Le/a/c/b/m$j;->e:I

    move-object v6, p0

    invoke-static/range {v3 .. v8}, Le/a/m0/a1$k;->J1(Le/a/c/c/f/n;Lcom/truecaller/insights/models/states/InsightState;Ljava/util/Date;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 9
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
