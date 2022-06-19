.class public final Le/a/d/c0/i0;
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
    c = "com.truecaller.voip.util.VoipAnalyticsUtilImpl$listenServiceStates$1"
    f = "VoipAnalyticsUtilImpl.kt"
    l = {
        0x156
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/d/c0/k0;

.field public final synthetic h:Lq3/a/w2/z;

.field public final synthetic i:Ls1/z/b/a;


# direct methods
.method public constructor <init>(Le/a/d/c0/k0;Lq3/a/w2/z;Ls1/z/b/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/i0;->g:Le/a/d/c0/k0;

    iput-object p2, p0, Le/a/d/c0/i0;->h:Lq3/a/w2/z;

    iput-object p3, p0, Le/a/d/c0/i0;->i:Ls1/z/b/a;

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

    new-instance p1, Le/a/d/c0/i0;

    iget-object v0, p0, Le/a/d/c0/i0;->g:Le/a/d/c0/k0;

    iget-object v1, p0, Le/a/d/c0/i0;->h:Lq3/a/w2/z;

    iget-object v2, p0, Le/a/d/c0/i0;->i:Ls1/z/b/a;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/c0/i0;-><init>(Le/a/d/c0/k0;Lq3/a/w2/z;Ls1/z/b/a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c0/i0;

    iget-object v0, p0, Le/a/d/c0/i0;->g:Le/a/d/c0/k0;

    iget-object v1, p0, Le/a/d/c0/i0;->h:Lq3/a/w2/z;

    iget-object v2, p0, Le/a/d/c0/i0;->i:Ls1/z/b/a;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/c0/i0;-><init>(Le/a/d/c0/k0;Lq3/a/w2/z;Ls1/z/b/a;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c0/i0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/c0/i0;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Le/a/d/c0/i0;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/w2/l;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v3, v1

    move-object v1, v0

    move-object v0, p0

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

    .line 4
    iget-object p1, p0, Le/a/d/c0/i0;->h:Lq3/a/w2/z;

    invoke-interface {p1}, Lq3/a/w2/z;->iterator()Lq3/a/w2/l;

    move-result-object p1

    move-object v1, p1

    move-object p1, p0

    :goto_0
    iput-object v1, p1, Le/a/d/c0/i0;->e:Ljava/lang/Object;

    iput v2, p1, Le/a/d/c0/i0;->f:I

    invoke-interface {v1, p1}, Lq3/a/w2/l;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_2

    return-object v0

    :cond_2
    move-object v11, v0

    move-object v0, p1

    move-object p1, v3

    move-object v3, v1

    move-object v1, v11

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {v3}, Lq3/a/w2/l;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/l;

    .line 5
    iget-object v4, v0, Le/a/d/c0/i0;->i:Ls1/z/b/a;

    invoke-interface {v4}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Le/a/d/c0/e0;

    .line 6
    iget-object v4, p1, Le/a/d/l;->b:Lcom/truecaller/voip/VoipStateReason;

    .line 7
    sget-object v5, Lcom/truecaller/voip/VoipStateReason;->CONNECTION_STATE_CHANGED:Lcom/truecaller/voip/VoipStateReason;

    if-ne v4, v5, :cond_6

    .line 8
    iget-object v5, v0, Le/a/d/c0/i0;->g:Le/a/d/c0/k0;

    .line 9
    iget-object p1, p1, Le/a/d/l;->c:Lcom/truecaller/voip/ConnectionState;

    .line 10
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_4

    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    .line 12
    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->DISCONNECTED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    goto :goto_2

    :cond_3
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 13
    :cond_4
    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->RECONNECTING:Lcom/truecaller/voip/util/VoipAnalyticsState;

    goto :goto_2

    .line 14
    :cond_5
    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->RECONNECTED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    :goto_2
    move-object v7, p1

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    .line 15
    invoke-static/range {v5 .. v10}, Le/a/p5/s0/g;->A0(Le/a/d/c0/f0;Le/a/d/c0/e0;Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 16
    :cond_6
    iget-object v4, v0, Le/a/d/c0/i0;->g:Le/a/d/c0/k0;

    .line 17
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v5, p1, Le/a/d/l;->a:Lcom/truecaller/voip/VoipState;

    .line 19
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v7, 0x0

    packed-switch v5, :pswitch_data_0

    .line 20
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 21
    :pswitch_0
    iget-object p1, p1, Le/a/d/l;->b:Lcom/truecaller/voip/VoipStateReason;

    if-eqz p1, :cond_7

    .line 22
    iget-object v5, v6, Le/a/d/c0/e0;->a:Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;

    .line 23
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_1

    .line 24
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 25
    :pswitch_1
    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->END:Lcom/truecaller/voip/util/VoipAnalyticsState;

    sget-object v5, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->RECEIVED_END:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    .line 26
    new-instance v7, Ls1/k;

    invoke-direct {v7, p1, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 27
    :pswitch_2
    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->END:Lcom/truecaller/voip/util/VoipAnalyticsState;

    sget-object v5, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->PRESSED_END:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    .line 28
    new-instance v7, Ls1/k;

    invoke-direct {v7, p1, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 29
    :pswitch_3
    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->CANCELLED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    .line 30
    new-instance v5, Ls1/k;

    invoke-direct {v5, p1, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 31
    :pswitch_4
    invoke-virtual {v4, v5}, Le/a/d/c0/k0;->m(Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;)Lcom/truecaller/voip/util/VoipAnalyticsState;

    move-result-object p1

    sget-object v5, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->WAKE_UP_TIMEOUT:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    .line 32
    new-instance v7, Ls1/k;

    invoke-direct {v7, p1, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 33
    :pswitch_5
    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->END:Lcom/truecaller/voip/util/VoipAnalyticsState;

    sget-object v5, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->INVITE_TIMEOUT:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    .line 34
    new-instance v7, Ls1/k;

    invoke-direct {v7, p1, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 35
    :pswitch_6
    invoke-virtual {v4, v5}, Le/a/d/c0/k0;->m(Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;)Lcom/truecaller/voip/util/VoipAnalyticsState;

    move-result-object p1

    sget-object v5, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->WAKE_UP_SENT_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    .line 36
    new-instance v7, Ls1/k;

    invoke-direct {v7, p1, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 37
    :pswitch_7
    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->END:Lcom/truecaller/voip/util/VoipAnalyticsState;

    sget-object v5, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->POLL_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    .line 38
    new-instance v7, Ls1/k;

    invoke-direct {v7, p1, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 39
    :pswitch_8
    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->END:Lcom/truecaller/voip/util/VoipAnalyticsState;

    sget-object v5, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->REMOTE_LEFT_CHANNEL:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    .line 40
    new-instance v7, Ls1/k;

    invoke-direct {v7, p1, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 41
    :pswitch_9
    invoke-virtual {v4, v5}, Le/a/d/c0/k0;->m(Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;)Lcom/truecaller/voip/util/VoipAnalyticsState;

    move-result-object p1

    sget-object v5, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->JOIN_RTC_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    .line 42
    new-instance v7, Ls1/k;

    invoke-direct {v7, p1, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 43
    :pswitch_a
    invoke-virtual {v4, v5}, Le/a/d/c0/k0;->m(Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;)Lcom/truecaller/voip/util/VoipAnalyticsState;

    move-result-object p1

    sget-object v5, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->JOIN_RTM_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    .line 44
    new-instance v7, Ls1/k;

    invoke-direct {v7, p1, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 45
    :pswitch_b
    invoke-virtual {v4, v5}, Le/a/d/c0/k0;->m(Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;)Lcom/truecaller/voip/util/VoipAnalyticsState;

    move-result-object p1

    sget-object v5, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->GET_RTC_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    .line 46
    new-instance v7, Ls1/k;

    invoke-direct {v7, p1, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 47
    :pswitch_c
    invoke-virtual {v4, v5}, Le/a/d/c0/k0;->m(Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;)Lcom/truecaller/voip/util/VoipAnalyticsState;

    move-result-object p1

    sget-object v5, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->GET_RTM_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    .line 48
    new-instance v7, Ls1/k;

    invoke-direct {v7, p1, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 49
    :pswitch_d
    invoke-virtual {v4, v5}, Le/a/d/c0/k0;->m(Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;)Lcom/truecaller/voip/util/VoipAnalyticsState;

    move-result-object p1

    sget-object v5, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->GET_VOIP_ID_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    .line 50
    new-instance v7, Ls1/k;

    invoke-direct {v7, p1, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 51
    :pswitch_e
    invoke-virtual {v4, v5}, Le/a/d/c0/k0;->m(Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;)Lcom/truecaller/voip/util/VoipAnalyticsState;

    move-result-object p1

    sget-object v5, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->GET_PHONE_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    .line 52
    new-instance v7, Ls1/k;

    invoke-direct {v7, p1, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 53
    :pswitch_f
    invoke-virtual {v4, v5}, Le/a/d/c0/k0;->m(Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;)Lcom/truecaller/voip/util/VoipAnalyticsState;

    move-result-object p1

    sget-object v5, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->SEARCH_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    .line 54
    new-instance v7, Ls1/k;

    invoke-direct {v7, p1, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 55
    :pswitch_10
    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->BLOCKED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    .line 56
    new-instance v5, Ls1/k;

    invoke-direct {v5, p1, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 57
    :pswitch_11
    iget-object p1, v6, Le/a/d/c0/e0;->a:Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;

    .line 58
    sget-object v5, Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;->OUTGOING:Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;

    if-ne p1, v5, :cond_7

    .line 59
    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->ACCEPTED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    .line 60
    new-instance v5, Ls1/k;

    invoke-direct {v5, p1, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 61
    :pswitch_12
    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->BUSY:Lcom/truecaller/voip/util/VoipAnalyticsState;

    .line 62
    new-instance v5, Ls1/k;

    invoke-direct {v5, p1, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 63
    :pswitch_13
    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->REJECTED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    .line 64
    new-instance v5, Ls1/k;

    invoke-direct {v5, p1, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 65
    :pswitch_14
    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->ACCEPTED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    .line 66
    new-instance v5, Ls1/k;

    invoke-direct {v5, p1, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 67
    :pswitch_15
    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->END:Lcom/truecaller/voip/util/VoipAnalyticsState;

    sget-object v5, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->RING_TIMEOUT:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    .line 68
    new-instance v7, Ls1/k;

    invoke-direct {v7, p1, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 69
    :pswitch_16
    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->RINGING:Lcom/truecaller/voip/util/VoipAnalyticsState;

    .line 70
    new-instance v5, Ls1/k;

    invoke-direct {v5, p1, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 71
    :pswitch_17
    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->INVITED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    .line 72
    new-instance v5, Ls1/k;

    invoke-direct {v5, p1, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    move-object v7, v5

    goto :goto_4

    .line 73
    :pswitch_18
    iget-object p1, v6, Le/a/d/c0/e0;->a:Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;

    .line 74
    sget-object v5, Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;->OUTGOING:Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;

    if-ne p1, v5, :cond_7

    .line 75
    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->INITIATED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    .line 76
    new-instance v5, Ls1/k;

    invoke-direct {v5, p1, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    :goto_4
    :pswitch_19
    if-eqz v7, :cond_8

    .line 77
    iget-object p1, v7, Ls1/k;->a:Ljava/lang/Object;

    .line 78
    check-cast p1, Lcom/truecaller/voip/util/VoipAnalyticsState;

    .line 79
    iget-object v5, v7, Ls1/k;->b:Ljava/lang/Object;

    .line 80
    check-cast v5, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    .line 81
    invoke-virtual {v4, v6, p1, v5}, Le/a/d/c0/k0;->d(Le/a/d/c0/e0;Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V

    :cond_8
    :goto_5
    move-object p1, v0

    move-object v0, v1

    move-object v1, v3

    goto/16 :goto_0

    .line 82
    :cond_9
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_19
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_19
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
