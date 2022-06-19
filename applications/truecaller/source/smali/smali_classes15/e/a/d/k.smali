.class public final Le/a/d/k;
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
    c = "com.truecaller.voip.VoipImpl$listenInviteMessageAfterPush$1"
    f = "Voip.kt"
    l = {
        0x1ee,
        0x1fc
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/d/j;

.field public final synthetic h:Lcom/truecaller/voip/VoipPushNotification;


# direct methods
.method public constructor <init>(Le/a/d/j;Lcom/truecaller/voip/VoipPushNotification;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/k;->g:Le/a/d/j;

    iput-object p2, p0, Le/a/d/k;->h:Lcom/truecaller/voip/VoipPushNotification;

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

    new-instance p1, Le/a/d/k;

    iget-object v0, p0, Le/a/d/k;->g:Le/a/d/j;

    iget-object v1, p0, Le/a/d/k;->h:Lcom/truecaller/voip/VoipPushNotification;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/k;-><init>(Le/a/d/j;Lcom/truecaller/voip/VoipPushNotification;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/k;

    iget-object v0, p0, Le/a/d/k;->g:Le/a/d/j;

    iget-object v1, p0, Le/a/d/k;->h:Lcom/truecaller/voip/VoipPushNotification;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/k;-><init>(Le/a/d/j;Lcom/truecaller/voip/VoipPushNotification;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/k;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v7, p0

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v8, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v7, Le/a/d/k;->f:I

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v11, :cond_1

    if-ne v1, v9, :cond_0

    iget-object v1, v7, Le/a/d/k;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/w2/z;

    :try_start_0
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v2, p1

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-object v1, v7, Le/a/d/k;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v2, v1

    move-object/from16 v1, p1

    goto/16 :goto_5

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v7, Le/a/d/k;->h:Lcom/truecaller/voip/VoipPushNotification;

    .line 5
    iget-object v2, v1, Lcom/truecaller/voip/VoipPushNotification;->c:Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    iget-boolean v2, v1, Lcom/truecaller/voip/VoipPushNotification;->m:Z

    if-eqz v2, :cond_5

    .line 7
    iget-object v2, v1, Lcom/truecaller/voip/VoipPushNotification;->j:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_0

    .line 8
    :cond_4
    iget-object v2, v1, Lcom/truecaller/voip/VoipPushNotification;->l:Ljava/lang/String;

    if-nez v2, :cond_5

    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    move v2, v11

    :goto_1
    if-nez v2, :cond_6

    return-object v0

    .line 9
    :cond_6
    iget-object v2, v7, Le/a/d/k;->g:Le/a/d/j;

    .line 10
    iget-object v2, v2, Le/a/d/j;->u:Le/a/p5/c;

    invoke-interface {v2}, Le/a/p5/c;->c()J

    move-result-wide v2

    .line 11
    iget-wide v4, v1, Lcom/truecaller/voip/VoipPushNotification;->a:J

    sub-long/2addr v2, v4

    .line 12
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3c

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_7

    move v1, v11

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_8

    const-string v1, "Notification is late. Showing missed call notification. Notification: "

    .line 13
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Le/a/d/k;->h:Lcom/truecaller/voip/VoipPushNotification;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    iget-object v1, v7, Le/a/d/k;->g:Le/a/d/j;

    iget-object v2, v7, Le/a/d/k;->h:Lcom/truecaller/voip/VoipPushNotification;

    invoke-static {v1, v2}, Le/a/d/j;->C(Le/a/d/j;Lcom/truecaller/voip/VoipPushNotification;)V

    return-object v0

    .line 15
    :cond_8
    iget-object v1, v7, Le/a/d/k;->h:Lcom/truecaller/voip/VoipPushNotification;

    .line 16
    iget-object v12, v1, Lcom/truecaller/voip/VoipPushNotification;->c:Ljava/lang/String;

    if-eqz v12, :cond_1b

    .line 17
    iget-object v2, v7, Le/a/d/k;->g:Le/a/d/j;

    .line 18
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v3, v1, Lcom/truecaller/voip/VoipPushNotification;->c:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 20
    iget-object v4, v1, Lcom/truecaller/voip/VoipPushNotification;->d:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 21
    iget-object v1, v1, Lcom/truecaller/voip/VoipPushNotification;->k:Ljava/lang/Long;

    if-eqz v1, :cond_9

    .line 22
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 23
    iget-object v1, v2, Le/a/d/j;->l:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/t/a;

    .line 24
    new-instance v2, Lcom/truecaller/voip/db/VoipIdCache;

    const/16 v13, 0x2b

    .line 25
    invoke-static {v13, v4}, Le/d/c/a/a;->I1(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 26
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/truecaller/voip/db/VoipIdCache;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 27
    invoke-interface {v1, v2}, Le/a/d/t/a;->i(Lcom/truecaller/voip/db/VoipIdCache;)V

    .line 28
    :cond_9
    iget-object v1, v7, Le/a/d/k;->g:Le/a/d/j;

    iget-object v2, v7, Le/a/d/k;->h:Lcom/truecaller/voip/VoipPushNotification;

    .line 29
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v3, v2, Lcom/truecaller/voip/VoipPushNotification;->e:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 31
    iget-object v4, v1, Le/a/d/j;->m:Lo3/a;

    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/d/c0/o1;

    invoke-interface {v4, v3}, Le/a/d/c0/o1;->d(Ljava/lang/String;)V

    .line 32
    :cond_a
    iget-object v3, v2, Lcom/truecaller/voip/VoipPushNotification;->j:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 33
    iget-object v4, v2, Lcom/truecaller/voip/VoipPushNotification;->f:Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 34
    iget-object v2, v2, Lcom/truecaller/voip/VoipPushNotification;->g:Ljava/lang/Integer;

    if-eqz v2, :cond_b

    .line 35
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 36
    new-instance v5, Lcom/truecaller/voip/api/RtcTokenRequestDto;

    invoke-direct {v5, v3}, Lcom/truecaller/voip/api/RtcTokenRequestDto;-><init>(Ljava/lang/String;)V

    .line 37
    new-instance v3, Lcom/truecaller/voip/api/RtcTokenDto;

    invoke-direct {v3, v4, v2}, Lcom/truecaller/voip/api/RtcTokenDto;-><init>(Ljava/lang/String;I)V

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caching rtc token for channel:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ". Token:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    iget-object v1, v1, Le/a/d/j;->m:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/c0/o1;

    invoke-interface {v1, v5, v3}, Le/a/d/c0/o1;->a(Lcom/truecaller/voip/api/RtcTokenRequestDto;Lcom/truecaller/voip/api/RtcTokenDto;)V

    .line 40
    :cond_b
    iget-object v1, v7, Le/a/d/k;->g:Le/a/d/j;

    iget-object v2, v7, Le/a/d/k;->h:Lcom/truecaller/voip/VoipPushNotification;

    .line 41
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v3, v2, Lcom/truecaller/voip/VoipPushNotification;->j:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 43
    iget-object v4, v2, Lcom/truecaller/voip/VoipPushNotification;->d:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 44
    invoke-static {v4}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 45
    iget-object v6, v2, Lcom/truecaller/voip/VoipPushNotification;->f:Ljava/lang/String;

    if-eqz v6, :cond_c

    .line 46
    iget-object v13, v2, Lcom/truecaller/voip/VoipPushNotification;->g:Ljava/lang/Integer;

    if-eqz v13, :cond_c

    .line 47
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 48
    iget-object v14, v2, Lcom/truecaller/voip/VoipPushNotification;->h:Ljava/lang/String;

    if-eqz v14, :cond_c

    .line 49
    iget-object v2, v2, Lcom/truecaller/voip/VoipPushNotification;->i:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 50
    new-instance v15, Lcom/truecaller/voip/api/RtcTokenWithEncryptionRequestDto;

    invoke-direct {v15, v3, v4, v5}, Lcom/truecaller/voip/api/RtcTokenWithEncryptionRequestDto;-><init>(Ljava/lang/String;J)V

    .line 51
    new-instance v3, Lcom/truecaller/voip/api/RtcTokenWithEncryptionDto;

    invoke-direct {v3, v6, v13, v2, v14}, Lcom/truecaller/voip/api/RtcTokenWithEncryptionDto;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v1, v1, Le/a/d/j;->m:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/c0/o1;

    invoke-interface {v1, v15, v3}, Le/a/d/c0/o1;->c(Lcom/truecaller/voip/api/RtcTokenWithEncryptionRequestDto;Lcom/truecaller/voip/api/RtcTokenWithEncryptionDto;)V

    .line 53
    :cond_c
    iget-object v1, v7, Le/a/d/k;->g:Le/a/d/j;

    iget-object v2, v7, Le/a/d/k;->h:Lcom/truecaller/voip/VoipPushNotification;

    .line 54
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-boolean v3, v2, Lcom/truecaller/voip/VoipPushNotification;->m:Z

    if-nez v3, :cond_d

    goto :goto_3

    .line 56
    :cond_d
    iget-object v2, v2, Lcom/truecaller/voip/VoipPushNotification;->c:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 57
    iget-object v1, v1, Le/a/d/j;->r:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/c0/a2/a;

    invoke-interface {v1, v2}, Le/a/d/c0/a2/a;->a(Ljava/lang/String;)V

    .line 58
    :cond_e
    :goto_3
    iget-object v1, v7, Le/a/d/k;->g:Le/a/d/j;

    iget-object v2, v7, Le/a/d/k;->h:Lcom/truecaller/voip/VoipPushNotification;

    .line 59
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-boolean v3, v2, Lcom/truecaller/voip/VoipPushNotification;->m:Z

    if-nez v3, :cond_f

    goto :goto_4

    .line 61
    :cond_f
    iget-object v3, v2, Lcom/truecaller/voip/VoipPushNotification;->j:Ljava/lang/String;

    if-eqz v3, :cond_10

    .line 62
    iget-object v2, v2, Lcom/truecaller/voip/VoipPushNotification;->l:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 63
    iget-object v1, v1, Le/a/d/j;->s:Le/a/d/c0/o1;

    invoke-interface {v1, v3, v2}, Le/a/d/c0/o1;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_10
    :goto_4
    iget-object v1, v7, Le/a/d/k;->g:Le/a/d/j;

    .line 65
    iget-object v1, v1, Le/a/d/j;->i:Lo3/a;

    .line 66
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/x/r/n;

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    iput-object v12, v7, Le/a/d/k;->e:Ljava/lang/Object;

    iput v11, v7, Le/a/d/k;->f:I

    move-object/from16 v4, p0

    invoke-static/range {v1 .. v6}, Le/a/p5/s0/g;->B0(Le/a/d/x/r/n;JLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_11

    return-object v8

    :cond_11
    move-object v2, v12

    .line 67
    :goto_5
    check-cast v1, Le/a/d/x/r/m;

    .line 68
    instance-of v3, v1, Le/a/d/x/r/p;

    if-eqz v3, :cond_12

    goto :goto_7

    .line 69
    :cond_12
    instance-of v3, v1, Le/a/d/x/r/g;

    if-eqz v3, :cond_17

    .line 70
    iget-object v3, v7, Le/a/d/k;->h:Lcom/truecaller/voip/VoipPushNotification;

    .line 71
    iget-object v14, v3, Lcom/truecaller/voip/VoipPushNotification;->j:Ljava/lang/String;

    if-eqz v14, :cond_16

    .line 72
    iget-object v3, v7, Le/a/d/k;->g:Le/a/d/j;

    check-cast v1, Le/a/d/x/r/g;

    .line 73
    iget-object v1, v1, Le/a/d/x/r/g;->a:Lcom/truecaller/voip/manager/rtm/FailedRtmLoginReason;

    .line 74
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_15

    if-eq v1, v11, :cond_14

    if-eq v1, v9, :cond_13

    goto :goto_6

    .line 76
    :cond_13
    sget-object v10, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->JOIN_RTM_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    goto :goto_6

    .line 77
    :cond_14
    sget-object v10, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->GET_RTM_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    goto :goto_6

    .line 78
    :cond_15
    sget-object v10, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->GET_VOIP_ID_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    .line 79
    :goto_6
    iget-object v1, v3, Le/a/d/j;->n:Le/a/d/c0/f0;

    .line 80
    new-instance v3, Le/a/d/c0/e0;

    .line 81
    sget-object v13, Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;->INCOMING:Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xec

    move-object v12, v3

    move-object/from16 v17, v2

    .line 82
    invoke-direct/range {v12 .. v21}, Le/a/d/c0/e0;-><init>(Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZI)V

    .line 83
    sget-object v2, Lcom/truecaller/voip/util/VoipAnalyticsState;->INIT_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    .line 84
    invoke-interface {v1, v3, v2, v10}, Le/a/d/c0/f0;->d(Le/a/d/c0/e0;Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V

    :cond_16
    return-object v0

    .line 85
    :cond_17
    :goto_7
    iget-object v1, v7, Le/a/d/k;->g:Le/a/d/j;

    .line 86
    iget-object v1, v1, Le/a/d/j;->j:Lo3/a;

    .line 87
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/x/r/o;

    invoke-interface {v1}, Le/a/d/x/r/o;->e()Lq3/a/w2/h;

    move-result-object v1

    invoke-interface {v1}, Lq3/a/w2/h;->p2()Lq3/a/w2/z;

    move-result-object v1

    const-wide/16 v3, 0x2710

    .line 88
    :try_start_1
    new-instance v5, Le/a/d/k$a;

    invoke-direct {v5, v7, v2, v1, v10}, Le/a/d/k$a;-><init>(Le/a/d/k;Ljava/lang/String;Lq3/a/w2/z;Ls1/w/d;)V

    iput-object v1, v7, Le/a/d/k;->e:Ljava/lang/Object;

    iput v9, v7, Le/a/d/k;->f:I

    invoke-static {v3, v4, v5, v7}, Lq3/a/j;->c(JLs1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_18

    return-object v8

    :cond_18
    :goto_8
    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_9

    :cond_19
    const/4 v2, 0x0

    :goto_9
    if-nez v2, :cond_1a

    .line 89
    iget-object v2, v7, Le/a/d/k;->g:Le/a/d/j;

    iget-object v3, v7, Le/a/d/k;->h:Lcom/truecaller/voip/VoipPushNotification;

    invoke-static {v2, v3}, Le/a/d/j;->C(Le/a/d/j;Lcom/truecaller/voip/VoipPushNotification;)V

    .line 90
    sget-boolean v2, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->l:Z

    if-nez v2, :cond_1a

    .line 91
    sget-boolean v2, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->l:Z

    if-nez v2, :cond_1a

    .line 92
    iget-object v2, v7, Le/a/d/k;->g:Le/a/d/j;

    .line 93
    iget-object v2, v2, Le/a/d/j;->i:Lo3/a;

    .line 94
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/d/x/r/n;

    invoke-interface {v2}, Le/a/d/x/r/n;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :cond_1a
    invoke-static {v1, v10, v11, v10}, Ls1/a/a/a/v0/f/d;->U(Lq3/a/w2/z;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-object v0

    :goto_a
    invoke-static {v1, v10, v11, v10}, Ls1/a/a/a/v0/f/d;->U(Lq3/a/w2/z;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    throw v0

    :cond_1b
    return-object v0
.end method
