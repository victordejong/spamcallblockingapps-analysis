.class public final Le/a/d/c/z/l;
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
    c = "com.truecaller.voip.ui.calldetails.VoipGroupCallDetailsPresenter$fetchHistoryDetails$1"
    f = "VoipGroupCallDetailsPresenter.kt"
    l = {
        0x2f,
        0x30
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/d/c/z/m;

.field public final synthetic h:Lcom/truecaller/voip/VoipCallHistory;


# direct methods
.method public constructor <init>(Le/a/d/c/z/m;Lcom/truecaller/voip/VoipCallHistory;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/z/l;->g:Le/a/d/c/z/m;

    iput-object p2, p0, Le/a/d/c/z/l;->h:Lcom/truecaller/voip/VoipCallHistory;

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

    new-instance v0, Le/a/d/c/z/l;

    iget-object v1, p0, Le/a/d/c/z/l;->g:Le/a/d/c/z/m;

    iget-object v2, p0, Le/a/d/c/z/l;->h:Lcom/truecaller/voip/VoipCallHistory;

    invoke-direct {v0, v1, v2, p2}, Le/a/d/c/z/l;-><init>(Le/a/d/c/z/m;Lcom/truecaller/voip/VoipCallHistory;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/c/z/l;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/c/z/l;

    iget-object v1, p0, Le/a/d/c/z/l;->g:Le/a/d/c/z/m;

    iget-object v2, p0, Le/a/d/c/z/l;->h:Lcom/truecaller/voip/VoipCallHistory;

    invoke-direct {v0, v1, v2, p2}, Le/a/d/c/z/l;-><init>(Le/a/d/c/z/m;Lcom/truecaller/voip/VoipCallHistory;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/c/z/l;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/d/c/z/l;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/c/z/l;->f:I

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

    iget-object p1, p0, Le/a/d/c/z/l;->e:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Lq3/a/i0;

    .line 4
    iget-object p1, p0, Le/a/d/c/z/l;->g:Le/a/d/c/z/m;

    .line 5
    iget-object p1, p1, Le/a/d/c/z/m;->f:Le/a/d/c0/q0;

    .line 6
    iget-object v1, p0, Le/a/d/c/z/l;->h:Lcom/truecaller/voip/VoipCallHistory;

    .line 7
    iget-wide v6, v1, Lcom/truecaller/voip/VoipCallHistory;->a:J

    .line 8
    iput v3, p0, Le/a/d/c/z/l;->f:I

    move-object v5, p1

    check-cast v5, Le/a/d/c0/s0;

    .line 9
    iget-object p1, v5, Le/a/d/c0/s0;->a:Ls1/w/f;

    new-instance v1, Le/a/d/c0/r0;

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Le/a/d/c0/r0;-><init>(Le/a/d/c0/s0;JLq3/a/i0;Ls1/w/d;)V

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 10
    :cond_3
    :goto_0
    check-cast p1, Lq3/a/x2/f;

    .line 11
    new-instance v1, Le/a/d/c/z/l$a;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Le/a/d/c/z/l$a;-><init>(Le/a/d/c/z/l;Ls1/w/d;)V

    iput v2, p0, Le/a/d/c/z/l;->f:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->g0(Lq3/a/x2/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 12
    :cond_4
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
