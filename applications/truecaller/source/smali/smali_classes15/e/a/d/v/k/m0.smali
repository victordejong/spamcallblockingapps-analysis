.class public final Le/a/d/v/k/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;
.implements Le/a/d/v/k/i0;


# instance fields
.field public final a:Lq3/a/i0;

.field public final b:Lcom/truecaller/voip/groupcall/call/CallDirection;

.field public final c:Le/a/d/c0/f0;

.field public final d:Le/a/d/v/i;

.field public final e:Le/a/d/v/k/w0;


# direct methods
.method public constructor <init>(Lq3/a/i0;Lcom/truecaller/voip/groupcall/call/CallDirection;Le/a/d/c0/f0;Le/a/d/v/i;Le/a/d/v/k/w0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateMachine"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provideConnectedTime"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/v/k/m0;->a:Lq3/a/i0;

    iput-object p2, p0, Le/a/d/v/k/m0;->b:Lcom/truecaller/voip/groupcall/call/CallDirection;

    iput-object p3, p0, Le/a/d/v/k/m0;->c:Le/a/d/c0/f0;

    iput-object p4, p0, Le/a/d/v/k/m0;->d:Le/a/d/v/i;

    iput-object p5, p0, Le/a/d/v/k/m0;->e:Le/a/d/v/k/w0;

    .line 2
    new-instance p1, Le/a/d/v/k/k0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/d/v/k/k0;-><init>(Le/a/d/v/k/m0;Ls1/w/d;)V

    .line 3
    new-instance p3, Lq3/a/x2/u0;

    invoke-direct {p3, p4, p1}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 4
    invoke-static {p3, p0}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    .line 5
    invoke-interface {p5}, Le/a/d/v/k/w0;->f()Lq3/a/x2/i1;

    move-result-object p1

    .line 6
    new-instance p3, Le/a/d/v/k/j0;

    invoke-direct {p3, p1}, Le/a/d/v/k/j0;-><init>(Lq3/a/x2/f;)V

    .line 7
    new-instance p1, Le/a/d/v/k/l0;

    invoke-direct {p1, p0, p2}, Le/a/d/v/k/l0;-><init>(Le/a/d/v/k/m0;Ls1/w/d;)V

    .line 8
    new-instance p2, Lq3/a/x2/u0;

    invoke-direct {p2, p3, p1}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 9
    invoke-static {p2, p0}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V
    .locals 11

    .line 1
    new-instance v10, Le/a/d/c0/e0;

    .line 2
    iget-object v0, p0, Le/a/d/v/k/m0;->b:Lcom/truecaller/voip/groupcall/call/CallDirection;

    const-string v1, "$this$toAnalyticsDirection"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcom/truecaller/voip/groupcall/call/CallDirection;->INCOMING:Lcom/truecaller/voip/groupcall/call/CallDirection;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;->INCOMING:Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;->OUTGOING:Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;

    :goto_0
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x7e

    move-object v0, v10

    .line 5
    invoke-direct/range {v0 .. v9}, Le/a/d/c0/e0;-><init>(Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZI)V

    .line 6
    iget-object v0, p0, Le/a/d/v/k/m0;->c:Le/a/d/c0/f0;

    invoke-interface {v0, v10, p1, p2}, Le/a/d/c0/f0;->d(Le/a/d/c0/e0;Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V

    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    iget-object v0, p0, Le/a/d/v/k/m0;->a:Lq3/a/i0;

    invoke-interface {v0}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public p(Le/a/d/v/h$b;)V
    .locals 1

    const-string v0, "endState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Le/a/d/v/h$b$h;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Le/a/d/v/h$b$a;

    if-eqz v0, :cond_1

    :goto_0
    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->END:Lcom/truecaller/voip/util/VoipAnalyticsState;

    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->PRESSED_END:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    invoke-virtual {p0, p1, v0}, Le/a/d/v/k/m0;->a(Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V

    goto :goto_2

    .line 3
    :cond_1
    instance-of v0, p1, Le/a/d/v/h$b$f;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    instance-of v0, p1, Le/a/d/v/h$b$g;

    if-eqz v0, :cond_3

    :goto_1
    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->END:Lcom/truecaller/voip/util/VoipAnalyticsState;

    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->LAST_ON_CALL:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    invoke-virtual {p0, p1, v0}, Le/a/d/v/k/m0;->a(Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V

    goto :goto_2

    .line 5
    :cond_3
    instance-of v0, p1, Le/a/d/v/h$b$e;

    if-eqz v0, :cond_4

    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->INIT_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->JOIN_RTC_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    invoke-virtual {p0, p1, v0}, Le/a/d/v/k/m0;->a(Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V

    goto :goto_2

    .line 6
    :cond_4
    instance-of v0, p1, Le/a/d/v/h$b$b;

    if-eqz v0, :cond_5

    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->INIT_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->SET_JOINED_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    invoke-virtual {p0, p1, v0}, Le/a/d/v/k/m0;->a(Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V

    goto :goto_2

    .line 7
    :cond_5
    instance-of v0, p1, Le/a/d/v/h$b$d;

    if-eqz v0, :cond_6

    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->END:Lcom/truecaller/voip/util/VoipAnalyticsState;

    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->DELETED_ON_REMOTE:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    invoke-virtual {p0, p1, v0}, Le/a/d/v/k/m0;->a(Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V

    goto :goto_2

    .line 8
    :cond_6
    instance-of p1, p1, Le/a/d/v/h$b$c;

    if-eqz p1, :cond_7

    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->END:Lcom/truecaller/voip/util/VoipAnalyticsState;

    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->CONNECTION_LOST:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    invoke-virtual {p0, p1, v0}, Le/a/d/v/k/m0;->a(Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V

    :cond_7
    :goto_2
    return-void
.end method
