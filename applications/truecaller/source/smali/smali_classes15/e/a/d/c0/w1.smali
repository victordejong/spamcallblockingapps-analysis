.class public final Le/a/d/c0/w1;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.util.VoipWakeUpPushManagerImpl$sendWakeUpPush$2"
    f = "VoipWakeUpPushManager.kt"
    l = {
        0x25,
        0x29,
        0x2b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/c0/v1;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/d/c0/v1;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/w1;->f:Le/a/d/c0/v1;

    iput-object p2, p0, Le/a/d/c0/w1;->g:Ljava/lang/String;

    iput-object p3, p0, Le/a/d/c0/w1;->h:Ljava/lang/String;

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

    new-instance p1, Le/a/d/c0/w1;

    iget-object v0, p0, Le/a/d/c0/w1;->f:Le/a/d/c0/v1;

    iget-object v1, p0, Le/a/d/c0/w1;->g:Ljava/lang/String;

    iget-object v2, p0, Le/a/d/c0/w1;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/c0/w1;-><init>(Le/a/d/c0/v1;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c0/w1;

    iget-object v0, p0, Le/a/d/c0/w1;->f:Le/a/d/c0/v1;

    iget-object v1, p0, Le/a/d/c0/w1;->g:Ljava/lang/String;

    iget-object v2, p0, Le/a/d/c0/w1;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/c0/w1;-><init>(Le/a/d/c0/v1;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c0/w1;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/c0/w1;->e:I

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
    iget-object p1, p0, Le/a/d/c0/w1;->f:Le/a/d/c0/v1;

    .line 5
    iget-object p1, p1, Le/a/d/c0/v1;->d:Le/a/d/c0/a2/a;

    .line 6
    iget-object v1, p0, Le/a/d/c0/w1;->g:Ljava/lang/String;

    iput v4, p0, Le/a/d/c0/w1;->e:I

    invoke-interface {p1, v1, p0}, Le/a/d/c0/a2/a;->e(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 7
    :cond_4
    :goto_0
    move-object v6, p1

    check-cast v6, Le/a/b0/b/e;

    .line 8
    iget-object p1, p0, Le/a/d/c0/w1;->g:Ljava/lang/String;

    invoke-static {p1}, Le/a/p5/s0/f;->v(Ljava/lang/String;)J

    move-result-wide v7

    .line 9
    instance-of p1, v6, Le/a/b0/b/e$a;

    if-eqz p1, :cond_6

    iget-object p1, p0, Le/a/d/c0/w1;->f:Le/a/d/c0/v1;

    iget-object v1, p0, Le/a/d/c0/w1;->h:Ljava/lang/String;

    iput v3, p0, Le/a/d/c0/w1;->e:I

    invoke-virtual {p1, v7, v8, v1, p0}, Le/a/d/c0/v1;->b(JLjava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_3

    .line 10
    :cond_6
    instance-of p1, v6, Le/a/b0/b/e$b;

    if-eqz p1, :cond_9

    .line 11
    iget-object v5, p0, Le/a/d/c0/w1;->f:Le/a/d/c0/v1;

    iget-object v9, p0, Le/a/d/c0/w1;->h:Ljava/lang/String;

    iput v2, p0, Le/a/d/c0/w1;->e:I

    move-object v10, p0

    invoke-virtual/range {v5 .. v10}, Le/a/d/c0/v1;->a(Le/a/b0/b/e;JLjava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_2
    check-cast p1, Lcom/truecaller/voip/api/CrossDcWakeUpDto;

    if-eqz p1, :cond_8

    .line 12
    iget-object v0, p0, Le/a/d/c0/w1;->f:Le/a/d/c0/v1;

    .line 13
    iget-object v0, v0, Le/a/d/c0/v1;->e:Le/a/d/c0/o1;

    .line 14
    iget-object v1, p0, Le/a/d/c0/w1;->h:Ljava/lang/String;

    .line 15
    new-instance v2, Le/a/d/c0/k;

    .line 16
    invoke-virtual {p1}, Lcom/truecaller/voip/api/CrossDcWakeUpDto;->getSecret()Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-virtual {p1}, Lcom/truecaller/voip/api/CrossDcWakeUpDto;->getMode()Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-direct {v2, v3, p1}, Le/a/d/c0/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-interface {v0, v1, v2}, Le/a/d/c0/o1;->b(Ljava/lang/String;Le/a/d/c0/k;)V

    .line 20
    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 21
    :cond_8
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 22
    :cond_9
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
