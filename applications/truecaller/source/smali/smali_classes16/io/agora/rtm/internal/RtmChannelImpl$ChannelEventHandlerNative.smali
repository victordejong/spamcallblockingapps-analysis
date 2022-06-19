.class public Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;
.super Lio/agora/rtm/jni/IChannelEventHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtm/internal/RtmChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChannelEventHandlerNative"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtm/internal/RtmChannelImpl;


# direct methods
.method private constructor <init>(Lio/agora/rtm/internal/RtmChannelImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-direct {p0}, Lio/agora/rtm/jni/IChannelEventHandler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/agora/rtm/internal/RtmChannelImpl;Lio/agora/rtm/internal/RtmChannelImpl$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;-><init>(Lio/agora/rtm/internal/RtmChannelImpl;)V

    return-void
.end method


# virtual methods
.method public onAttributesUpdated(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/agora/rtm/jni/IRtmChannelAttribute;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmChannelImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAttributesUpdated size: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 2
    iget-object v0, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmChannelImpl;->access$500(Lio/agora/rtm/internal/RtmChannelImpl;)Lio/agora/rtm/RtmChannelListener;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/agora/rtm/jni/IRtmChannelAttribute;

    .line 5
    new-instance v8, Lio/agora/rtm/RtmChannelAttribute;

    invoke-virtual {v1}, Lio/agora/rtm/jni/IRtmChannelAttribute;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lio/agora/rtm/jni/IRtmChannelAttribute;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lio/agora/rtm/jni/IRtmChannelAttribute;->getLastUpdateUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lio/agora/rtm/jni/IRtmChannelAttribute;->getLastUpdateTs()J

    move-result-wide v6

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lio/agora/rtm/RtmChannelAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_2
    iget-object p1, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {p1}, Lio/agora/rtm/internal/RtmChannelImpl;->access$500(Lio/agora/rtm/internal/RtmChannelImpl;)Lio/agora/rtm/RtmChannelListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lio/agora/rtm/RtmChannelListener;->onAttributesUpdated(Ljava/util/List;)V

    return-void

    .line 7
    :cond_3
    :goto_2
    invoke-static {}, Lio/agora/rtm/internal/RtmChannelImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "empty attribute or channel listener"

    invoke-static {p1, v0}, Lio/agora/common/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFileMessageReceived(Ljava/lang/String;Lio/agora/rtm/jni/IFileMessage;)V
    .locals 3

    if-eqz p2, :cond_1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmChannelImpl;->access$500(Lio/agora/rtm/internal/RtmChannelImpl;)Lio/agora/rtm/RtmChannelListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lio/agora/rtm/internal/RtmChannelImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onFileMessageReceived from: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lio/agora/rtm/internal/RtmFileMessageImpl;

    invoke-direct {v0}, Lio/agora/rtm/internal/RtmFileMessageImpl;-><init>()V

    .line 4
    invoke-virtual {p2}, Lio/agora/rtm/jni/IMessage;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/agora/rtm/internal/RtmFileMessageImpl;->setText(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lio/agora/rtm/jni/IFileMessage;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/agora/rtm/internal/RtmFileMessageImpl;->setSize(J)V

    .line 6
    invoke-virtual {p2}, Lio/agora/rtm/jni/IFileMessage;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/agora/rtm/internal/RtmFileMessageImpl;->setFileName(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lio/agora/rtm/jni/IFileMessage;->getMediaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/agora/rtm/internal/RtmFileMessageImpl;->setMediaId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Lio/agora/rtm/jni/IFileMessage;->getThumbnailData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/agora/rtm/internal/RtmFileMessageImpl;->setThumbnail([B)V

    .line 9
    invoke-virtual {p2}, Lio/agora/rtm/jni/IMessage;->getServerReceivedTs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/agora/rtm/internal/RtmFileMessageImpl;->setServerReceivedTs(J)V

    .line 10
    invoke-virtual {p2}, Lio/agora/rtm/jni/IMessage;->isOfflineMessage()Z

    move-result p2

    invoke-virtual {v0, p2}, Lio/agora/rtm/internal/RtmFileMessageImpl;->setIsOfflineMessage(Z)V

    .line 11
    new-instance p2, Lio/agora/rtm/internal/RtmChannelMemberImpl;

    iget-object v1, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmChannelImpl;->access$600(Lio/agora/rtm/internal/RtmChannelImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p1, v1}, Lio/agora/rtm/internal/RtmChannelMemberImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {p1}, Lio/agora/rtm/internal/RtmChannelImpl;->access$500(Lio/agora/rtm/internal/RtmChannelImpl;)Lio/agora/rtm/RtmChannelListener;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Lio/agora/rtm/RtmChannelListener;->onFileMessageReceived(Lio/agora/rtm/RtmFileMessage;Lio/agora/rtm/RtmChannelMember;)V

    return-void

    .line 13
    :cond_1
    :goto_0
    invoke-static {}, Lio/agora/rtm/internal/RtmChannelImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "empty file message or channel listener"

    invoke-static {p1, p2}, Lio/agora/common/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetMembers(Ljava/util/List;Lio/agora/rtm/jni/GET_MEMBERS_ERR;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/agora/rtm/jni/IChannelMember;",
            ">;",
            "Lio/agora/rtm/jni/GET_MEMBERS_ERR;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmChannelImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onGetMembers size: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmChannelImpl;->access$200(Lio/agora/rtm/internal/RtmChannelImpl;)[B

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmChannelImpl;->access$800(Lio/agora/rtm/internal/RtmChannelImpl;)Lio/agora/rtm/ResultCallback;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmChannelImpl;->access$800(Lio/agora/rtm/internal/RtmChannelImpl;)Lio/agora/rtm/ResultCallback;

    move-result-object v1

    .line 5
    iget-object v3, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {v3, v2}, Lio/agora/rtm/internal/RtmChannelImpl;->access$802(Lio/agora/rtm/internal/RtmChannelImpl;Lio/agora/rtm/ResultCallback;)Lio/agora/rtm/ResultCallback;

    move-object v2, v1

    .line 6
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    return-void

    .line 7
    :cond_3
    sget-object v0, Lio/agora/rtm/jni/GET_MEMBERS_ERR;->GET_MEMBERS_ERR_OK:Lio/agora/rtm/jni/GET_MEMBERS_ERR;

    if-eq p2, v0, :cond_4

    .line 8
    new-instance p1, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {p2}, Lio/agora/rtm/jni/GET_MEMBERS_ERR;->swigValue()I

    move-result v0

    invoke-virtual {p2}, Lio/agora/rtm/jni/GET_MEMBERS_ERR;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, p1}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

    goto :goto_2

    :cond_4
    if-nez p1, :cond_5

    .line 9
    new-instance p1, Lio/agora/rtm/ErrorInfo;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lio/agora/rtm/ErrorInfo;-><init>(I)V

    invoke-interface {v2, p1}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

    goto :goto_2

    .line 10
    :cond_5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtm/jni/IChannelMember;

    .line 12
    new-instance v1, Lio/agora/rtm/internal/RtmChannelMemberImpl;

    invoke-direct {v1, v0}, Lio/agora/rtm/internal/RtmChannelMemberImpl;-><init>(Lio/agora/rtm/jni/IChannelMember;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_6
    invoke-interface {v2, p2}, Lio/agora/rtm/ResultCallback;->onSuccess(Ljava/lang/Object;)V

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onImageMessageReceived(Ljava/lang/String;Lio/agora/rtm/jni/IImageMessage;)V
    .locals 3

    if-eqz p2, :cond_1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmChannelImpl;->access$500(Lio/agora/rtm/internal/RtmChannelImpl;)Lio/agora/rtm/RtmChannelListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lio/agora/rtm/internal/RtmChannelImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onImageMessageReceived from: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lio/agora/rtm/internal/RtmImageMessageImpl;

    invoke-direct {v0}, Lio/agora/rtm/internal/RtmImageMessageImpl;-><init>()V

    .line 4
    invoke-virtual {p2}, Lio/agora/rtm/jni/IMessage;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setText(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lio/agora/rtm/jni/IImageMessage;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setSize(J)V

    .line 6
    invoke-virtual {p2}, Lio/agora/rtm/jni/IImageMessage;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setFileName(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lio/agora/rtm/jni/IImageMessage;->getMediaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setMediaId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Lio/agora/rtm/jni/IImageMessage;->getThumbnailData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setThumbnail([B)V

    .line 9
    invoke-virtual {p2}, Lio/agora/rtm/jni/IImageMessage;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setHeight(I)V

    .line 10
    invoke-virtual {p2}, Lio/agora/rtm/jni/IImageMessage;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setWidth(I)V

    .line 11
    invoke-virtual {p2}, Lio/agora/rtm/jni/IImageMessage;->getThumbnailHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setThumbnailHeight(I)V

    .line 12
    invoke-virtual {p2}, Lio/agora/rtm/jni/IImageMessage;->getThumbnailWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setThumbnailWidth(I)V

    .line 13
    invoke-virtual {p2}, Lio/agora/rtm/jni/IMessage;->getServerReceivedTs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setServerReceivedTs(J)V

    .line 14
    invoke-virtual {p2}, Lio/agora/rtm/jni/IMessage;->isOfflineMessage()Z

    move-result p2

    invoke-virtual {v0, p2}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setIsOfflineMessage(Z)V

    .line 15
    new-instance p2, Lio/agora/rtm/internal/RtmChannelMemberImpl;

    iget-object v1, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmChannelImpl;->access$600(Lio/agora/rtm/internal/RtmChannelImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p1, v1}, Lio/agora/rtm/internal/RtmChannelMemberImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {p1}, Lio/agora/rtm/internal/RtmChannelImpl;->access$500(Lio/agora/rtm/internal/RtmChannelImpl;)Lio/agora/rtm/RtmChannelListener;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Lio/agora/rtm/RtmChannelListener;->onImageMessageReceived(Lio/agora/rtm/RtmImageMessage;Lio/agora/rtm/RtmChannelMember;)V

    return-void

    .line 17
    :cond_1
    :goto_0
    invoke-static {}, Lio/agora/rtm/internal/RtmChannelImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "empty image message or channel listener"

    invoke-static {p1, p2}, Lio/agora/common/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onJoinFailure(Lio/agora/rtm/jni/JOIN_CHANNEL_ERR;)V
    .locals 4

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmChannelImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJoinFailure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmChannelImpl;->access$200(Lio/agora/rtm/internal/RtmChannelImpl;)[B

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmChannelImpl;->access$300(Lio/agora/rtm/internal/RtmChannelImpl;)Lio/agora/rtm/ResultCallback;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmChannelImpl;->access$300(Lio/agora/rtm/internal/RtmChannelImpl;)Lio/agora/rtm/ResultCallback;

    move-result-object v1

    .line 5
    iget-object v3, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {v3, v2}, Lio/agora/rtm/internal/RtmChannelImpl;->access$302(Lio/agora/rtm/internal/RtmChannelImpl;Lio/agora/rtm/ResultCallback;)Lio/agora/rtm/ResultCallback;

    move-object v2, v1

    .line 6
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 7
    new-instance v0, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {p1}, Lio/agora/rtm/jni/JOIN_CHANNEL_ERR;->swigValue()I

    move-result v1

    invoke-virtual {p1}, Lio/agora/rtm/jni/JOIN_CHANNEL_ERR;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v0}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onJoinSuccess()V
    .locals 4

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmChannelImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onJoinSuccess"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmChannelImpl;->access$200(Lio/agora/rtm/internal/RtmChannelImpl;)[B

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmChannelImpl;->access$300(Lio/agora/rtm/internal/RtmChannelImpl;)Lio/agora/rtm/ResultCallback;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmChannelImpl;->access$300(Lio/agora/rtm/internal/RtmChannelImpl;)Lio/agora/rtm/ResultCallback;

    move-result-object v1

    .line 5
    iget-object v3, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {v3, v2}, Lio/agora/rtm/internal/RtmChannelImpl;->access$302(Lio/agora/rtm/internal/RtmChannelImpl;Lio/agora/rtm/ResultCallback;)Lio/agora/rtm/ResultCallback;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v1, v2}, Lio/agora/rtm/ResultCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onLeave(Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;)V
    .locals 4

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmChannelImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLeave: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmChannelImpl;->access$200(Lio/agora/rtm/internal/RtmChannelImpl;)[B

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmChannelImpl;->access$400(Lio/agora/rtm/internal/RtmChannelImpl;)Lio/agora/rtm/ResultCallback;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmChannelImpl;->access$400(Lio/agora/rtm/internal/RtmChannelImpl;)Lio/agora/rtm/ResultCallback;

    move-result-object v1

    .line 5
    iget-object v3, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {v3, v2}, Lio/agora/rtm/internal/RtmChannelImpl;->access$402(Lio/agora/rtm/internal/RtmChannelImpl;Lio/agora/rtm/ResultCallback;)Lio/agora/rtm/ResultCallback;

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 7
    sget-object v0, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->LEAVE_CHANNEL_ERR_OK:Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;

    if-ne p1, v0, :cond_2

    .line 8
    invoke-interface {v1, v2}, Lio/agora/rtm/ResultCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_2
    new-instance v0, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {p1}, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->swigValue()I

    move-result v2

    invoke-virtual {p1}, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v0}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onMemberCountUpdated(I)V
    .locals 3

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmChannelImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMemberCountUpdated membercount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmChannelImpl;->access$500(Lio/agora/rtm/internal/RtmChannelImpl;)Lio/agora/rtm/RtmChannelListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/agora/rtm/RtmChannelListener;->onMemberCountUpdated(I)V

    return-void
.end method

.method public onMemberJoined(Lio/agora/rtm/jni/IChannelMember;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmChannelImpl;->access$500(Lio/agora/rtm/internal/RtmChannelImpl;)Lio/agora/rtm/RtmChannelListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lio/agora/rtm/internal/RtmChannelMemberImpl;

    invoke-direct {v0, p1}, Lio/agora/rtm/internal/RtmChannelMemberImpl;-><init>(Lio/agora/rtm/jni/IChannelMember;)V

    .line 3
    invoke-static {}, Lio/agora/rtm/internal/RtmChannelImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v1, "on member "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lio/agora/rtm/internal/RtmChannelMemberImpl;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " joined "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lio/agora/rtm/internal/RtmChannelMemberImpl;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lio/agora/common/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {p1}, Lio/agora/rtm/internal/RtmChannelImpl;->access$500(Lio/agora/rtm/internal/RtmChannelImpl;)Lio/agora/rtm/RtmChannelListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lio/agora/rtm/RtmChannelListener;->onMemberJoined(Lio/agora/rtm/RtmChannelMember;)V

    return-void

    .line 5
    :cond_1
    :goto_0
    invoke-static {}, Lio/agora/rtm/internal/RtmChannelImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "empty member or channel listener"

    invoke-static {p1, v0}, Lio/agora/common/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onMemberLeft(Lio/agora/rtm/jni/IChannelMember;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmChannelImpl;->access$500(Lio/agora/rtm/internal/RtmChannelImpl;)Lio/agora/rtm/RtmChannelListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lio/agora/rtm/internal/RtmChannelMemberImpl;

    invoke-direct {v0, p1}, Lio/agora/rtm/internal/RtmChannelMemberImpl;-><init>(Lio/agora/rtm/jni/IChannelMember;)V

    .line 3
    invoke-static {}, Lio/agora/rtm/internal/RtmChannelImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v1, "on member "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lio/agora/rtm/internal/RtmChannelMemberImpl;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " left "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lio/agora/rtm/internal/RtmChannelMemberImpl;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {p1}, Lio/agora/rtm/internal/RtmChannelImpl;->access$500(Lio/agora/rtm/internal/RtmChannelImpl;)Lio/agora/rtm/RtmChannelListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lio/agora/rtm/RtmChannelListener;->onMemberLeft(Lio/agora/rtm/RtmChannelMember;)V

    return-void

    .line 5
    :cond_1
    :goto_0
    invoke-static {}, Lio/agora/rtm/internal/RtmChannelImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "empty member or channel listener"

    invoke-static {p1, v0}, Lio/agora/common/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onMessageReceived(Ljava/lang/String;Lio/agora/rtm/jni/IMessage;)V
    .locals 9

    if-eqz p2, :cond_3

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmChannelImpl;->access$500(Lio/agora/rtm/internal/RtmChannelImpl;)Lio/agora/rtm/RtmChannelListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lio/agora/rtm/internal/RtmChannelImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onMessageReceived from: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p2}, Lio/agora/rtm/jni/IMessage;->getMessageType()Lio/agora/rtm/jni/MESSAGE_TYPE;

    move-result-object v1

    sget-object v2, Lio/agora/rtm/jni/MESSAGE_TYPE;->MESSAGE_TYPE_TEXT:Lio/agora/rtm/jni/MESSAGE_TYPE;

    if-ne v1, v2, :cond_1

    .line 4
    new-instance v0, Lio/agora/rtm/internal/RtmMessageImpl;

    invoke-virtual {p2}, Lio/agora/rtm/jni/IMessage;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lio/agora/rtm/jni/IMessage;->getServerReceivedTs()J

    move-result-wide v2

    .line 5
    invoke-virtual {p2}, Lio/agora/rtm/jni/IMessage;->isOfflineMessage()Z

    move-result p2

    invoke-direct {v0, v1, v2, v3, p2}, Lio/agora/rtm/internal/RtmMessageImpl;-><init>(Ljava/lang/String;JZ)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p2}, Lio/agora/rtm/jni/IMessage;->getMessageType()Lio/agora/rtm/jni/MESSAGE_TYPE;

    move-result-object v1

    sget-object v2, Lio/agora/rtm/jni/MESSAGE_TYPE;->MESSAGE_TYPE_RAW:Lio/agora/rtm/jni/MESSAGE_TYPE;

    if-ne v1, v2, :cond_2

    .line 7
    new-instance v0, Lio/agora/rtm/internal/RtmMessageImpl;

    invoke-virtual {p2}, Lio/agora/rtm/jni/IMessage;->getRawMessageData()[B

    move-result-object v4

    invoke-virtual {p2}, Lio/agora/rtm/jni/IMessage;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lio/agora/rtm/jni/IMessage;->getServerReceivedTs()J

    move-result-wide v6

    .line 8
    invoke-virtual {p2}, Lio/agora/rtm/jni/IMessage;->isOfflineMessage()Z

    move-result v8

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lio/agora/rtm/internal/RtmMessageImpl;-><init>([BLjava/lang/String;JZ)V

    .line 9
    :cond_2
    :goto_0
    new-instance p2, Lio/agora/rtm/internal/RtmChannelMemberImpl;

    iget-object v1, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmChannelImpl;->access$600(Lio/agora/rtm/internal/RtmChannelImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p1, v1}, Lio/agora/rtm/internal/RtmChannelMemberImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {p1}, Lio/agora/rtm/internal/RtmChannelImpl;->access$500(Lio/agora/rtm/internal/RtmChannelImpl;)Lio/agora/rtm/RtmChannelListener;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Lio/agora/rtm/RtmChannelListener;->onMessageReceived(Lio/agora/rtm/RtmMessage;Lio/agora/rtm/RtmChannelMember;)V

    return-void

    .line 11
    :cond_3
    :goto_1
    invoke-static {}, Lio/agora/rtm/internal/RtmChannelImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "empty message or channel listener"

    invoke-static {p1, p2}, Lio/agora/common/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSendMessageResult(JLio/agora/rtm/jni/CHANNEL_MESSAGE_ERR_CODE;)V
    .locals 3

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmChannelImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSendMessageResult id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmChannelImpl;->access$200(Lio/agora/rtm/internal/RtmChannelImpl;)[B

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmChannelImpl;->access$700(Lio/agora/rtm/internal/RtmChannelImpl;)Lio/agora/common/LruCache;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/ResultCallback;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 5
    sget-object p2, Lio/agora/rtm/jni/CHANNEL_MESSAGE_ERR_CODE;->CHANNEL_MESSAGE_ERR_OK:Lio/agora/rtm/jni/CHANNEL_MESSAGE_ERR_CODE;

    if-ne p3, p2, :cond_1

    const/4 p2, 0x0

    .line 6
    invoke-interface {p1, p2}, Lio/agora/rtm/ResultCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance p2, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {p3}, Lio/agora/rtm/jni/CHANNEL_MESSAGE_ERR_CODE;->swigValue()I

    move-result v0

    invoke-virtual {p3}, Lio/agora/rtm/jni/CHANNEL_MESSAGE_ERR_CODE;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v0, p3}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
