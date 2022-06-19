.class public final Le/a/d/w/j/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;
.implements Le/a/d/w/j/s;


# instance fields
.field public final a:Lq3/a/i0;

.field public final b:Le/a/d/c0/f0;

.field public final c:Le/a/d/w/i;


# direct methods
.method public constructor <init>(Lq3/a/i0;Le/a/d/c0/f0;Le/a/d/w/i;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateMachine"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/w/j/u;->a:Lq3/a/i0;

    iput-object p2, p0, Le/a/d/w/j/u;->b:Le/a/d/c0/f0;

    iput-object p3, p0, Le/a/d/w/j/u;->c:Le/a/d/w/i;

    .line 2
    new-instance p1, Le/a/d/w/j/t;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/d/w/j/t;-><init>(Le/a/d/w/j/u;Ls1/w/d;)V

    .line 3
    new-instance p2, Lq3/a/x2/u0;

    invoke-direct {p2, p3, p1}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 4
    invoke-static {p2, p0}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V
    .locals 11

    .line 1
    new-instance v10, Le/a/d/c0/e0;

    .line 2
    sget-object v1, Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;->INCOMING:Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x7e

    move-object v0, v10

    .line 3
    invoke-direct/range {v0 .. v9}, Le/a/d/c0/e0;-><init>(Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZI)V

    .line 4
    iget-object v0, p0, Le/a/d/w/j/u;->b:Le/a/d/c0/f0;

    invoke-interface {v0, v10, p1, p2}, Le/a/d/c0/f0;->d(Le/a/d/c0/e0;Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V

    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    iget-object v0, p0, Le/a/d/w/j/u;->a:Lq3/a/i0;

    invoke-interface {v0}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public j(Le/a/d/w/h$b;)V
    .locals 1

    const-string v0, "endState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Le/a/d/w/h$b$a;

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    instance-of v0, p1, Le/a/d/w/h$b$c;

    if-eqz v0, :cond_1

    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->END:Lcom/truecaller/voip/util/VoipAnalyticsState;

    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->BLOCKED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    invoke-virtual {p0, p1, v0}, Le/a/d/w/j/u;->a(Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V

    goto/16 :goto_1

    .line 3
    :cond_1
    instance-of v0, p1, Le/a/d/w/h$b$d;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    instance-of v0, p1, Le/a/d/w/h$b$l;

    if-eqz v0, :cond_3

    :goto_0
    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->END:Lcom/truecaller/voip/util/VoipAnalyticsState;

    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->REJECTED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    invoke-virtual {p0, p1, v0}, Le/a/d/w/j/u;->a(Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V

    goto :goto_1

    .line 5
    :cond_3
    instance-of v0, p1, Le/a/d/w/h$b$j;

    if-eqz v0, :cond_4

    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->END:Lcom/truecaller/voip/util/VoipAnalyticsState;

    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->RING_TIMEOUT:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    invoke-virtual {p0, p1, v0}, Le/a/d/w/j/u;->a(Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V

    goto :goto_1

    .line 6
    :cond_4
    instance-of v0, p1, Le/a/d/w/h$b$e;

    if-eqz v0, :cond_5

    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->END:Lcom/truecaller/voip/util/VoipAnalyticsState;

    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->CANCELLED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    invoke-virtual {p0, p1, v0}, Le/a/d/w/j/u;->a(Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V

    goto :goto_1

    .line 7
    :cond_5
    instance-of v0, p1, Le/a/d/w/h$b$i;

    if-eqz v0, :cond_6

    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->END:Lcom/truecaller/voip/util/VoipAnalyticsState;

    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->LAST_ON_CALL:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    invoke-virtual {p0, p1, v0}, Le/a/d/w/j/u;->a(Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V

    goto :goto_1

    .line 8
    :cond_6
    instance-of v0, p1, Le/a/d/w/h$b$b;

    if-eqz v0, :cond_7

    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->END:Lcom/truecaller/voip/util/VoipAnalyticsState;

    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->ALL_MEMBERS_RINGING:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    invoke-virtual {p0, p1, v0}, Le/a/d/w/j/u;->a(Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V

    goto :goto_1

    .line 9
    :cond_7
    instance-of v0, p1, Le/a/d/w/h$b$f;

    if-eqz v0, :cond_8

    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->INIT_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->SET_RINGING_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    invoke-virtual {p0, p1, v0}, Le/a/d/w/j/u;->a(Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V

    goto :goto_1

    .line 10
    :cond_8
    instance-of v0, p1, Le/a/d/w/h$b$h;

    if-eqz v0, :cond_9

    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->INIT_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->INVITED_STATE_NOT_RECEIVED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    invoke-virtual {p0, p1, v0}, Le/a/d/w/j/u;->a(Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V

    goto :goto_1

    .line 11
    :cond_9
    instance-of v0, p1, Le/a/d/w/h$b$k;

    if-eqz v0, :cond_a

    goto :goto_1

    .line 12
    :cond_a
    instance-of p1, p1, Le/a/d/w/h$b$g;

    if-eqz p1, :cond_b

    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->END:Lcom/truecaller/voip/util/VoipAnalyticsState;

    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->DELETED_ON_REMOTE:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    invoke-virtual {p0, p1, v0}, Le/a/d/w/j/u;->a(Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V

    :cond_b
    :goto_1
    return-void
.end method
