.class public final Le/a/d/b/a/p;
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.legacy.incall.LegacyVoipServicePresenter$scheduleRingingEnd$1"
    f = "LegacyVoipServicePresenter.kt"
    l = {
        0x362
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/b/a/b;


# direct methods
.method public constructor <init>(Le/a/d/b/a/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/b/a/p;->f:Le/a/d/b/a/b;

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

    new-instance p1, Le/a/d/b/a/p;

    iget-object v0, p0, Le/a/d/b/a/p;->f:Le/a/d/b/a/b;

    invoke-direct {p1, v0, p2}, Le/a/d/b/a/p;-><init>(Le/a/d/b/a/b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/b/a/p;

    iget-object v0, p0, Le/a/d/b/a/p;->f:Le/a/d/b/a/b;

    invoke-direct {p1, v0, p2}, Le/a/d/b/a/p;-><init>(Le/a/d/b/a/b;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/b/a/p;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/b/a/p;->e:I

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

    const-wide/32 v3, 0xea60

    .line 4
    iput v2, p0, Le/a/d/b/a/p;->e:I

    invoke-static {v3, v4, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/d/b/a/p;->f:Le/a/d/b/a/b;

    .line 6
    iget-object v0, p1, Le/a/d/b/a/b;->i:Le/a/d/l;

    .line 7
    iget-object v0, v0, Le/a/d/l;->a:Lcom/truecaller/voip/VoipState;

    .line 8
    sget-object v1, Lcom/truecaller/voip/VoipState;->RINGING:Lcom/truecaller/voip/VoipState;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/truecaller/voip/VoipState;->NO_ANSWER:Lcom/truecaller/voip/VoipState;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2}, Le/a/d/b/a/b;->hk(Le/a/d/b/a/b;Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;I)V

    .line 9
    :cond_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
