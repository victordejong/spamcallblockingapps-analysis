.class public final Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;->onScreenCall(Landroid/telecom/Call$Details;)V
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
    c = "com.truecaller.callerid.callstate.TruecallerCallScreeningService$onScreenCall$1"
    f = "TruecallerCallScreeningService.kt"
    l = {
        0x5f,
        0x68,
        0x79
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;

.field public final synthetic h:Le/a/d0/b/i$d;

.field public final synthetic i:Landroid/telecom/Call$Details;

.field public final synthetic j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;Le/a/d0/b/i$d;Landroid/telecom/Call$Details;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->g:Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;

    iput-object p2, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->h:Le/a/d0/b/i$d;

    iput-object p3, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->i:Landroid/telecom/Call$Details;

    iput-object p4, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->j:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;

    iget-object v1, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->g:Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;

    iget-object v2, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->h:Le/a/d0/b/i$d;

    iget-object v3, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->i:Landroid/telecom/Call$Details;

    iget-object v4, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->j:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;-><init>(Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;Le/a/d0/b/i$d;Landroid/telecom/Call$Details;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->f:I

    const/4 v3, 0x0

    const-string v4, "ringer"

    const-string v5, "callProcessor"

    const-string v6, "performanceTracker"

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v9, :cond_2

    if-eq v2, v7, :cond_1

    if-ne v2, v8, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v2, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->e:Ljava/lang/Object;

    check-cast v2, Le/a/d0/b/i;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->e:Ljava/lang/Object;

    check-cast v2, Le/a/p5/l0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->g:Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;

    .line 5
    iget-object p1, p1, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;->d:Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    if-eqz p1, :cond_17

    .line 6
    sget-object v2, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->C_SCREENING_CPROCESSOR_STATE_CHG:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    invoke-interface {p1, v2}, Lcom/truecaller/callerid/CallerIdPerformanceTracker;->b(Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;)Le/a/p5/l0;

    move-result-object v2

    .line 7
    iget-object p1, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->g:Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;

    .line 8
    iget-object v10, p1, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;->a:Le/a/d0/b/d;

    if-eqz v10, :cond_16

    .line 9
    iget-object v11, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->h:Le/a/d0/b/i$d;

    iput-object v2, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->e:Ljava/lang/Object;

    iput v9, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->f:I

    invoke-interface {v10, p1, v11, p0}, Le/a/d0/b/d;->b(Landroid/content/Context;Le/a/d0/b/i;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 10
    :cond_4
    :goto_0
    check-cast p1, Le/a/d0/b/i;

    .line 11
    iget-object v10, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->g:Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;

    .line 12
    iget-object v10, v10, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;->d:Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    if-eqz v10, :cond_15

    .line 13
    invoke-interface {v10, v2}, Lcom/truecaller/callerid/CallerIdPerformanceTracker;->a(Le/a/p5/l0;)V

    if-nez p1, :cond_5

    .line 14
    iget-object p1, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->g:Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;

    iget-object v1, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->i:Landroid/telecom/Call$Details;

    .line 15
    invoke-virtual {p1, v1}, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;->a(Landroid/telecom/Call$Details;)V

    return-object v0

    .line 16
    :cond_5
    iget-object v2, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->j:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 17
    iget-object v6, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->g:Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;

    .line 18
    iget-object v6, v6, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;->f:Le/a/e3/a;

    if-eqz v6, :cond_9

    .line 19
    iput-object p1, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->e:Ljava/lang/Object;

    iput v7, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->f:I

    invoke-interface {v6, v2, p0}, Le/a/e3/a;->d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    return-object v1

    :cond_6
    move-object v12, v2

    move-object v2, p1

    move-object p1, v12

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 20
    iget-object p1, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->g:Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;

    .line 21
    iget-object p1, p1, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;->b:Le/a/r2/f;

    if-eqz p1, :cond_7

    .line 22
    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/t4/c;

    invoke-interface {p1}, Le/a/t4/c;->d()Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p1}, Le/a/r2/x;->g()V

    goto :goto_2

    .line 23
    :cond_7
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_8
    :goto_2
    move-object p1, v2

    goto :goto_3

    :cond_9
    const-string p1, "callAlert"

    .line 24
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 25
    :cond_a
    :goto_3
    instance-of v2, p1, Le/a/d0/b/i$d;

    if-eqz v2, :cond_13

    .line 26
    iget-object v2, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->g:Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;

    invoke-virtual {p1}, Le/a/d0/b/i;->a()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/truecaller/callerid/CallerIdService;->m(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 27
    check-cast p1, Le/a/d0/b/i$d;

    .line 28
    iget-object p1, p1, Le/a/d0/b/i$d;->d:Ljava/lang/Integer;

    if-nez p1, :cond_b

    goto :goto_5

    .line 29
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v9, :cond_f

    .line 30
    iget-object p1, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->g:Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;

    iget-object v2, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->i:Landroid/telecom/Call$Details;

    .line 31
    sget-boolean v4, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;->h:Z

    .line 32
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v4, Landroid/telecom/CallScreeningService$CallResponse$Builder;

    invoke-direct {v4}, Landroid/telecom/CallScreeningService$CallResponse$Builder;-><init>()V

    .line 34
    invoke-virtual {v4, v9}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setDisallowCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    move-result-object v4

    .line 35
    invoke-virtual {v4, v9}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setSkipNotification(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->build()Landroid/telecom/CallScreeningService$CallResponse;

    move-result-object v4

    .line 36
    invoke-virtual {p1, v2, v4}, Landroid/telecom/CallScreeningService;->respondToCall(Landroid/telecom/Call$Details;Landroid/telecom/CallScreeningService$CallResponse;)V

    .line 37
    iget-object p1, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->g:Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;

    .line 38
    iget-object v2, p1, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;->a:Le/a/d0/b/d;

    if-eqz v2, :cond_e

    .line 39
    new-instance v4, Le/a/d0/b/i$a;

    iget-object v5, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->j:Ljava/lang/String;

    .line 40
    iget-object v6, p1, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;->c:Le/a/p5/c;

    if-eqz v6, :cond_d

    .line 41
    invoke-interface {v6}, Le/a/p5/c;->c()J

    move-result-wide v6

    invoke-direct {v4, v5, v6, v7}, Le/a/d0/b/i$a;-><init>(Ljava/lang/String;J)V

    iput-object v3, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->e:Ljava/lang/Object;

    iput v8, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->f:I

    .line 42
    invoke-interface {v2, p1, v4, p0}, Le/a/d0/b/d;->b(Landroid/content/Context;Le/a/d0/b/i;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c

    return-object v1

    .line 43
    :cond_c
    :goto_4
    check-cast p1, Le/a/d0/b/i;

    if-eqz p1, :cond_14

    .line 44
    iget-object v1, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->g:Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;

    invoke-virtual {p1}, Le/a/d0/b/i;->a()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/truecaller/callerid/CallerIdService;->m(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_7

    :cond_d
    const-string p1, "clock"

    .line 45
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 46
    :cond_e
    invoke-static {v5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_f
    :goto_5
    if-nez p1, :cond_10

    goto :goto_6

    .line 47
    :cond_10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v8, :cond_12

    .line 48
    iget-object p1, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->g:Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;

    .line 49
    iget-object p1, p1, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;->b:Le/a/r2/f;

    if-eqz p1, :cond_11

    .line 50
    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/t4/c;

    invoke-interface {p1}, Le/a/t4/c;->d()Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p1}, Le/a/r2/x;->g()V

    .line 51
    iget-object p1, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->g:Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;

    iget-object v1, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->i:Landroid/telecom/Call$Details;

    .line 52
    invoke-virtual {p1, v1}, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;->a(Landroid/telecom/Call$Details;)V

    goto :goto_7

    .line 53
    :cond_11
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 54
    :cond_12
    :goto_6
    iget-object p1, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->g:Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;

    iget-object v1, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->i:Landroid/telecom/Call$Details;

    .line 55
    sget-boolean v2, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;->h:Z

    .line 56
    invoke-virtual {p1, v1}, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;->a(Landroid/telecom/Call$Details;)V

    goto :goto_7

    .line 57
    :cond_13
    iget-object p1, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->g:Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;

    iget-object v1, p0, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService$a;->i:Landroid/telecom/Call$Details;

    .line 58
    sget-boolean v2, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;->h:Z

    .line 59
    invoke-virtual {p1, v1}, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;->a(Landroid/telecom/Call$Details;)V

    :cond_14
    :goto_7
    return-object v0

    .line 60
    :cond_15
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 61
    :cond_16
    invoke-static {v5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 62
    :cond_17
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method
