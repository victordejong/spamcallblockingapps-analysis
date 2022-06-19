.class public final Le/a/d/x/d$i;
.super Lio/agora/rtc/IRtcEngineEventHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/x/d;-><init>(Landroid/content/Context;Lq3/a/g0;Le/a/d/c0/o1;Le/a/d/c0/f0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/x/d;


# direct methods
.method public constructor <init>(Le/a/d/x/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/d/x/d$i;->a:Le/a/d/x/d;

    invoke-direct {p0}, Lio/agora/rtc/IRtcEngineEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionLost()V
    .locals 5

    .line 1
    invoke-super {p0}, Lio/agora/rtc/IRtcEngineEventHandler;->onConnectionLost()V

    .line 2
    iget-object v0, p0, Le/a/d/x/d$i;->a:Le/a/d/x/d;

    .line 3
    iget-object v0, v0, Le/a/d/x/d;->b:Lq3/a/x2/z0;

    .line 4
    new-instance v1, Lcom/truecaller/voip/manager/VoipMsg;

    sget-object v2, Lcom/truecaller/voip/manager/VoipMsgAction;->LOST:Lcom/truecaller/voip/manager/VoipMsgAction;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3, v4}, Lcom/truecaller/voip/manager/VoipMsg;-><init>(Lcom/truecaller/voip/manager/VoipMsgAction;Lcom/truecaller/voip/manager/VoipMsgExtras;ILs1/z/c/f;)V

    invoke-interface {v0, v1}, Lq3/a/x2/z0;->g(Ljava/lang/Object;)Z

    return-void
.end method

.method public onConnectionStateChanged(II)V
    .locals 11

    .line 1
    invoke-super {p0, p1, p2}, Lio/agora/rtc/IRtcEngineEventHandler;->onConnectionStateChanged(II)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 2
    iget-object v2, p0, Le/a/d/x/d$i;->a:Le/a/d/x/d;

    .line 3
    iget-object p1, v2, Le/a/d/x/d;->d:Le/a/d/c0/r;

    .line 4
    invoke-virtual {p1}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 5
    new-instance v5, Le/a/d/x/g;

    invoke-direct {v5, v2, p1, v0}, Le/a/d/x/g;-><init>(Le/a/d/x/d;ZLs1/w/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    const/4 v0, 0x6

    if-eq p2, v0, :cond_2

    const/4 v0, 0x7

    if-eq p2, v0, :cond_2

    const/16 v0, 0x8

    if-eq p2, v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Lcom/truecaller/voip/manager/VoipMsgExtras;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v9, 0x1f

    const/4 v10, 0x0

    move-object v1, v0

    move v7, p1

    move v8, p2

    invoke-direct/range {v1 .. v10}, Lcom/truecaller/voip/manager/VoipMsgExtras;-><init>(Ljava/lang/Integer;Ljava/lang/String;ZIIIIILs1/z/c/f;)V

    .line 7
    iget-object p1, p0, Le/a/d/x/d$i;->a:Le/a/d/x/d;

    .line 8
    iget-object p1, p1, Le/a/d/x/d;->b:Lq3/a/x2/z0;

    .line 9
    new-instance p2, Lcom/truecaller/voip/manager/VoipMsg;

    sget-object v1, Lcom/truecaller/voip/manager/VoipMsgAction;->JOIN_FAILED:Lcom/truecaller/voip/manager/VoipMsgAction;

    invoke-direct {p2, v1, v0}, Lcom/truecaller/voip/manager/VoipMsg;-><init>(Lcom/truecaller/voip/manager/VoipMsgAction;Lcom/truecaller/voip/manager/VoipMsgExtras;)V

    invoke-interface {p1, p2}, Lq3/a/x2/z0;->g(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, Le/a/d/x/d$i;->a:Le/a/d/x/d;

    .line 11
    iget-object p1, p1, Le/a/d/x/d;->b:Lq3/a/x2/z0;

    .line 12
    new-instance p2, Lcom/truecaller/voip/manager/VoipMsg;

    sget-object v2, Lcom/truecaller/voip/manager/VoipMsgAction;->INTERRUPTED:Lcom/truecaller/voip/manager/VoipMsgAction;

    invoke-direct {p2, v2, v0, v1, v0}, Lcom/truecaller/voip/manager/VoipMsg;-><init>(Lcom/truecaller/voip/manager/VoipMsgAction;Lcom/truecaller/voip/manager/VoipMsgExtras;ILs1/z/c/f;)V

    invoke-interface {p1, p2}, Lq3/a/x2/z0;->g(Ljava/lang/Object;)Z

    .line 13
    iget-object v3, p0, Le/a/d/x/d$i;->a:Le/a/d/x/d;

    const/4 p1, 0x1

    .line 14
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v6, Le/a/d/x/g;

    invoke-direct {v6, v3, p1, v0}, Le/a/d/x/g;-><init>(Le/a/d/x/d;ZLs1/w/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :goto_0
    return-void
.end method

.method public onError(I)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onError(I)V

    .line 2
    iget-object v0, p0, Le/a/d/x/d$i;->a:Le/a/d/x/d;

    .line 3
    iget-object v0, v0, Le/a/d/x/d;->b:Lq3/a/x2/z0;

    .line 4
    new-instance v1, Lcom/truecaller/voip/manager/VoipMsg;

    sget-object v2, Lcom/truecaller/voip/manager/VoipMsgAction;->ERROR:Lcom/truecaller/voip/manager/VoipMsgAction;

    new-instance v13, Lcom/truecaller/voip/manager/VoipMsgExtras;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x6f

    const/4 v12, 0x0

    move-object v3, v13

    move v8, p1

    invoke-direct/range {v3 .. v12}, Lcom/truecaller/voip/manager/VoipMsgExtras;-><init>(Ljava/lang/Integer;Ljava/lang/String;ZIIIIILs1/z/c/f;)V

    invoke-direct {v1, v2, v13}, Lcom/truecaller/voip/manager/VoipMsg;-><init>(Lcom/truecaller/voip/manager/VoipMsgAction;Lcom/truecaller/voip/manager/VoipMsgExtras;)V

    invoke-interface {v0, v1}, Lq3/a/x2/z0;->g(Ljava/lang/Object;)Z

    return-void
.end method

.method public onJoinChannelSuccess(Ljava/lang/String;II)V
    .locals 12

    .line 1
    invoke-super {p0, p1, p2, p3}, Lio/agora/rtc/IRtcEngineEventHandler;->onJoinChannelSuccess(Ljava/lang/String;II)V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p3, p0, Le/a/d/x/d$i;->a:Le/a/d/x/d;

    new-instance v0, Le/a/d/x/j;

    invoke-direct {v0, p1, p2}, Le/a/d/x/j;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object v0, p3, Le/a/d/x/d;->c:Le/a/d/x/j;

    .line 4
    iget-object p2, p0, Le/a/d/x/d$i;->a:Le/a/d/x/d;

    .line 5
    iget-object p2, p2, Le/a/d/x/d;->b:Lq3/a/x2/z0;

    .line 6
    new-instance p3, Lcom/truecaller/voip/manager/VoipMsg;

    sget-object v0, Lcom/truecaller/voip/manager/VoipMsgAction;->JOINED:Lcom/truecaller/voip/manager/VoipMsgAction;

    new-instance v11, Lcom/truecaller/voip/manager/VoipMsgExtras;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7d

    const/4 v10, 0x0

    move-object v1, v11

    move-object v3, p1

    invoke-direct/range {v1 .. v10}, Lcom/truecaller/voip/manager/VoipMsgExtras;-><init>(Ljava/lang/Integer;Ljava/lang/String;ZIIIIILs1/z/c/f;)V

    invoke-direct {p3, v0, v11}, Lcom/truecaller/voip/manager/VoipMsg;-><init>(Lcom/truecaller/voip/manager/VoipMsgAction;Lcom/truecaller/voip/manager/VoipMsgExtras;)V

    invoke-interface {p2, p3}, Lq3/a/x2/z0;->g(Ljava/lang/Object;)Z

    return-void
.end method

.method public onLeaveChannel(Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onLeaveChannel(Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;)V

    .line 2
    iget-object p1, p0, Le/a/d/x/d$i;->a:Le/a/d/x/d;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Le/a/d/x/d;->c:Le/a/d/x/j;

    .line 4
    iget-object p1, p1, Le/a/d/x/d;->b:Lq3/a/x2/z0;

    .line 5
    new-instance v1, Lcom/truecaller/voip/manager/VoipMsg;

    sget-object v2, Lcom/truecaller/voip/manager/VoipMsgAction;->LEFT_CHANNEL:Lcom/truecaller/voip/manager/VoipMsgAction;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v0, v3, v0}, Lcom/truecaller/voip/manager/VoipMsg;-><init>(Lcom/truecaller/voip/manager/VoipMsgAction;Lcom/truecaller/voip/manager/VoipMsgExtras;ILs1/z/c/f;)V

    invoke-interface {p1, v1}, Lq3/a/x2/z0;->g(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRejoinChannelSuccess(Ljava/lang/String;II)V
    .locals 15

    .line 1
    invoke-super/range {p0 .. p3}, Lio/agora/rtc/IRtcEngineEventHandler;->onRejoinChannelSuccess(Ljava/lang/String;II)V

    move-object v0, p0

    .line 2
    iget-object v1, v0, Le/a/d/x/d$i;->a:Le/a/d/x/d;

    .line 3
    iget-object v1, v1, Le/a/d/x/d;->b:Lq3/a/x2/z0;

    .line 4
    new-instance v2, Lcom/truecaller/voip/manager/VoipMsg;

    sget-object v3, Lcom/truecaller/voip/manager/VoipMsgAction;->REJOINED:Lcom/truecaller/voip/manager/VoipMsgAction;

    new-instance v14, Lcom/truecaller/voip/manager/VoipMsgExtras;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7c

    const/4 v13, 0x0

    move-object v4, v14

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v13}, Lcom/truecaller/voip/manager/VoipMsgExtras;-><init>(Ljava/lang/Integer;Ljava/lang/String;ZIIIIILs1/z/c/f;)V

    invoke-direct {v2, v3, v14}, Lcom/truecaller/voip/manager/VoipMsg;-><init>(Lcom/truecaller/voip/manager/VoipMsgAction;Lcom/truecaller/voip/manager/VoipMsgExtras;)V

    invoke-interface {v1, v2}, Lq3/a/x2/z0;->g(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRequestToken()V
    .locals 5

    .line 1
    invoke-super {p0}, Lio/agora/rtc/IRtcEngineEventHandler;->onRequestToken()V

    .line 2
    iget-object v0, p0, Le/a/d/x/d$i;->a:Le/a/d/x/d;

    .line 3
    iget-object v0, v0, Le/a/d/x/d;->b:Lq3/a/x2/z0;

    .line 4
    new-instance v1, Lcom/truecaller/voip/manager/VoipMsg;

    sget-object v2, Lcom/truecaller/voip/manager/VoipMsgAction;->NEW_TOKEN_REQUIRED:Lcom/truecaller/voip/manager/VoipMsgAction;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3, v4}, Lcom/truecaller/voip/manager/VoipMsg;-><init>(Lcom/truecaller/voip/manager/VoipMsgAction;Lcom/truecaller/voip/manager/VoipMsgExtras;ILs1/z/c/f;)V

    invoke-interface {v0, v1}, Lq3/a/x2/z0;->g(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRtcStats(Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onRtcStats(Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;)V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v4, p1, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->users:I

    .line 3
    iget-object p1, p0, Le/a/d/x/d$i;->a:Le/a/d/x/d;

    .line 4
    iget-object p1, p1, Le/a/d/x/d;->b:Lq3/a/x2/z0;

    .line 5
    new-instance v10, Lcom/truecaller/voip/manager/VoipMsg;

    sget-object v11, Lcom/truecaller/voip/manager/VoipMsgAction;->STATS_RECEIVED:Lcom/truecaller/voip/manager/VoipMsgAction;

    new-instance v12, Lcom/truecaller/voip/manager/VoipMsgExtras;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x77

    const/4 v9, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v9}, Lcom/truecaller/voip/manager/VoipMsgExtras;-><init>(Ljava/lang/Integer;Ljava/lang/String;ZIIIIILs1/z/c/f;)V

    invoke-direct {v10, v11, v12}, Lcom/truecaller/voip/manager/VoipMsg;-><init>(Lcom/truecaller/voip/manager/VoipMsgAction;Lcom/truecaller/voip/manager/VoipMsgExtras;)V

    invoke-interface {p1, v10}, Lq3/a/x2/z0;->g(Ljava/lang/Object;)Z

    return-void
.end method

.method public onTokenPrivilegeWillExpire(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onTokenPrivilegeWillExpire(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Le/a/d/x/d$i;->a:Le/a/d/x/d;

    .line 3
    iget-object p1, p1, Le/a/d/x/d;->b:Lq3/a/x2/z0;

    .line 4
    new-instance v0, Lcom/truecaller/voip/manager/VoipMsg;

    sget-object v1, Lcom/truecaller/voip/manager/VoipMsgAction;->NEW_TOKEN_REQUIRED:Lcom/truecaller/voip/manager/VoipMsgAction;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/truecaller/voip/manager/VoipMsg;-><init>(Lcom/truecaller/voip/manager/VoipMsgAction;Lcom/truecaller/voip/manager/VoipMsgExtras;ILs1/z/c/f;)V

    invoke-interface {p1, v0}, Lq3/a/x2/z0;->g(Ljava/lang/Object;)Z

    return-void
.end method

.method public onUserJoined(II)V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p2}, Lio/agora/rtc/IRtcEngineEventHandler;->onUserJoined(II)V

    .line 2
    iget-object v1, v0, Le/a/d/x/d$i;->a:Le/a/d/x/d;

    .line 3
    iget-object v1, v1, Le/a/d/x/d;->b:Lq3/a/x2/z0;

    .line 4
    new-instance v2, Lcom/truecaller/voip/manager/VoipMsg;

    sget-object v3, Lcom/truecaller/voip/manager/VoipMsgAction;->USER_JOINED:Lcom/truecaller/voip/manager/VoipMsgAction;

    new-instance v14, Lcom/truecaller/voip/manager/VoipMsgExtras;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7e

    const/4 v13, 0x0

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/truecaller/voip/manager/VoipMsgExtras;-><init>(Ljava/lang/Integer;Ljava/lang/String;ZIIIIILs1/z/c/f;)V

    invoke-direct {v2, v3, v14}, Lcom/truecaller/voip/manager/VoipMsg;-><init>(Lcom/truecaller/voip/manager/VoipMsgAction;Lcom/truecaller/voip/manager/VoipMsgExtras;)V

    invoke-interface {v1, v2}, Lq3/a/x2/z0;->g(Ljava/lang/Object;)Z

    .line 5
    iget-object v15, v0, Le/a/d/x/d$i;->a:Le/a/d/x/d;

    .line 6
    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v1, Le/a/d/x/a;

    const/4 v2, 0x0

    move/from16 v3, p1

    invoke-direct {v1, v15, v3, v2}, Le/a/d/x/a;-><init>(Le/a/d/x/d;ILs1/w/d;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x3

    const/16 v20, 0x0

    move-object/from16 v18, v1

    invoke-static/range {v15 .. v20}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public onUserMuteAudio(IZ)V
    .locals 15

    .line 1
    invoke-super/range {p0 .. p2}, Lio/agora/rtc/IRtcEngineEventHandler;->onUserMuteAudio(IZ)V

    move-object v0, p0

    .line 2
    iget-object v1, v0, Le/a/d/x/d$i;->a:Le/a/d/x/d;

    .line 3
    iget-object v1, v1, Le/a/d/x/d;->b:Lq3/a/x2/z0;

    .line 4
    new-instance v2, Lcom/truecaller/voip/manager/VoipMsg;

    sget-object v3, Lcom/truecaller/voip/manager/VoipMsgAction;->USER_MUTE_CHANGED:Lcom/truecaller/voip/manager/VoipMsgAction;

    new-instance v14, Lcom/truecaller/voip/manager/VoipMsgExtras;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7a

    const/4 v13, 0x0

    move-object v4, v14

    move/from16 v7, p2

    invoke-direct/range {v4 .. v13}, Lcom/truecaller/voip/manager/VoipMsgExtras;-><init>(Ljava/lang/Integer;Ljava/lang/String;ZIIIIILs1/z/c/f;)V

    invoke-direct {v2, v3, v14}, Lcom/truecaller/voip/manager/VoipMsg;-><init>(Lcom/truecaller/voip/manager/VoipMsgAction;Lcom/truecaller/voip/manager/VoipMsgExtras;)V

    invoke-interface {v1, v2}, Lq3/a/x2/z0;->g(Ljava/lang/Object;)Z

    return-void
.end method

.method public onUserOffline(II)V
    .locals 10

    .line 1
    invoke-super {p0, p1, p2}, Lio/agora/rtc/IRtcEngineEventHandler;->onUserOffline(II)V

    .line 2
    iget-object p2, p0, Le/a/d/x/d$i;->a:Le/a/d/x/d;

    .line 3
    iget-object p2, p2, Le/a/d/x/d;->b:Lq3/a/x2/z0;

    .line 4
    new-instance v0, Lcom/truecaller/voip/manager/VoipMsg;

    sget-object v1, Lcom/truecaller/voip/manager/VoipMsgAction;->OFFLINE:Lcom/truecaller/voip/manager/VoipMsgAction;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/truecaller/voip/manager/VoipMsg;-><init>(Lcom/truecaller/voip/manager/VoipMsgAction;Lcom/truecaller/voip/manager/VoipMsgExtras;ILs1/z/c/f;)V

    invoke-interface {p2, v0}, Lq3/a/x2/z0;->g(Ljava/lang/Object;)Z

    .line 5
    iget-object v4, p0, Le/a/d/x/d$i;->a:Le/a/d/x/d;

    .line 6
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v7, Le/a/d/x/c;

    invoke-direct {v7, v4, p1, v3}, Le/a/d/x/c;-><init>(Le/a/d/x/d;ILs1/w/d;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
