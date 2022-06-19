.class public final Le/a/d/x/r/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtm/RtmClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/x/r/f;-><init>(Ls1/w/f;Ls1/w/f;Le/a/d/g;Landroid/content/Context;Le/m/e/k;Le/a/d/c0/f0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/x/r/f;


# direct methods
.method public constructor <init>(Le/a/d/x/r/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/d/x/r/f$b;->a:Le/a/d/x/r/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionStateChanged(II)V
    .locals 0

    .line 1
    iget-object p2, p0, Le/a/d/x/r/f$b;->a:Le/a/d/x/r/f;

    .line 2
    iget-object p2, p2, Le/a/d/x/r/f;->d:Lq3/a/w2/h;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public onFileMessageReceivedFromPeer(Lio/agora/rtm/RtmFileMessage;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onImageMessageReceivedFromPeer(Lio/agora/rtm/RtmImageMessage;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onMediaDownloadingProgress(Lio/agora/rtm/RtmMediaOperationProgress;J)V
    .locals 0

    return-void
.end method

.method public onMediaUploadingProgress(Lio/agora/rtm/RtmMediaOperationProgress;J)V
    .locals 0

    return-void
.end method

.method public onMessageReceived(Lio/agora/rtm/RtmMessage;Ljava/lang/String;)V
    .locals 10

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lio/agora/rtm/RtmMessage;->getText()Ljava/lang/String;

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/d/x/r/f$b;->a:Le/a/d/x/r/f;

    .line 3
    iget-object v0, v0, Le/a/d/x/r/f;->i:Le/a/d/g;

    .line 4
    check-cast v0, Le/a/d/e;

    invoke-virtual {v0}, Le/a/d/e;->a()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_8

    .line 5
    invoke-virtual {p1}, Lio/agora/rtm/RtmMessage;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v2

    :goto_1
    if-eqz v3, :cond_4

    goto/16 :goto_4

    .line 6
    :cond_4
    iget-object v4, p0, Le/a/d/x/r/f$b;->a:Le/a/d/x/r/f;

    invoke-virtual {p1}, Lio/agora/rtm/RtmMessage;->getText()Ljava/lang/String;

    move-result-object p1

    const-string v3, "rtmMessage.text"

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :try_start_0
    iget-object v3, v4, Le/a/d/x/r/f;->k:Le/m/e/k;

    const-class v5, Lcom/truecaller/voip/manager/rtm/RtmMsg;

    .line 9
    invoke-virtual {v3, p1, v5}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    invoke-static {v5}, Le/m/d/y/n;->B1(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    check-cast p1, Lcom/truecaller/voip/manager/rtm/RtmMsg;

    .line 12
    invoke-virtual {p1}, Lcom/truecaller/voip/manager/rtm/RtmMsg;->getAction()Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/truecaller/voip/manager/rtm/RtmMsg;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 14
    invoke-virtual {p1, p2}, Lcom/truecaller/voip/manager/rtm/RtmMsg;->setSenderId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 15
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 16
    iget-object v5, v4, Le/a/d/x/r/f;->h:Ls1/w/f;

    const/4 v6, 0x0

    new-instance v7, Le/a/d/x/r/e;

    invoke-direct {v7, v4, p2, v0}, Le/a/d/x/r/e;-><init>(Le/a/d/x/r/f;Ljava/lang/String;Ls1/w/d;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :goto_2
    if-eqz v0, :cond_7

    .line 17
    iget-object p1, p0, Le/a/d/x/r/f$b;->a:Le/a/d/x/r/f;

    .line 18
    iget-object p1, p1, Le/a/d/x/r/f;->c:Lq3/a/w2/h;

    .line 19
    invoke-interface {p1, v0}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {v0}, Lcom/truecaller/voip/manager/rtm/RtmMsg;->getAction()Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_5

    goto :goto_3

    .line 21
    :cond_5
    iget-object p1, p0, Le/a/d/x/r/f$b;->a:Le/a/d/x/r/f;

    invoke-virtual {v0}, Lcom/truecaller/voip/manager/rtm/RtmMsg;->getSenderId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/truecaller/voip/manager/rtm/RtmMsg;->getChannelId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0, v2}, Le/a/d/x/r/f;->h(Le/a/d/x/r/f;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 22
    :cond_6
    iget-object p1, p0, Le/a/d/x/r/f$b;->a:Le/a/d/x/r/f;

    invoke-virtual {v0}, Lcom/truecaller/voip/manager/rtm/RtmMsg;->getSenderId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/truecaller/voip/manager/rtm/RtmMsg;->getChannelId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0, v1}, Le/a/d/x/r/f;->h(Le/a/d/x/r/f;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_7
    :goto_3
    return-void

    :cond_8
    :goto_4
    const-string p2, "Invalid voip Rtm message. "

    const-string v3, "Rtm message(null = "

    .line 23
    invoke-static {p2, v3}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-nez p1, :cond_9

    move v3, v2

    goto :goto_5

    :cond_9
    move v3, v1

    .line 24
    :goto_5
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "User id(null = "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Rtm message text(blank = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_a

    .line 26
    invoke-virtual {p1}, Lio/agora/rtm/RtmMessage;->getText()Ljava/lang/String;

    move-result-object v0

    :cond_a
    if-eqz v0, :cond_b

    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_b
    move v1, v2

    :cond_c
    const/16 p1, 0x29

    invoke-static {p2, v1, p1}, Le/d/c/a/a;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p1

    .line 27
    new-instance p2, Lcom/truecaller/log/UnmutedException$f;

    invoke-direct {p2, p1}, Lcom/truecaller/log/UnmutedException$f;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onPeersOnlineStatusChanged(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onTokenExpired()V
    .locals 0

    return-void
.end method
