.class public Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;
.super Lio/agora/rtm/jni/IRtmServiceEventHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtm/internal/RtmClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RtmServiceEventHandlerNative"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtm/internal/RtmClientImpl;


# direct methods
.method private constructor <init>(Lio/agora/rtm/internal/RtmClientImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-direct {p0}, Lio/agora/rtm/jni/IRtmServiceEventHandler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/agora/rtm/internal/RtmClientImpl;Lio/agora/rtm/internal/RtmClientImpl$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;-><init>(Lio/agora/rtm/internal/RtmClientImpl;)V

    return-void
.end method

.method private processAttrResultCallbackSimple(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;Lio/agora/common/LruCache;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;",
            "Lio/agora/common/LruCache<",
            "Ljava/lang/Long;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "attr result callback with null error code!"

    invoke-static {p1, p2}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmClientImpl;->access$200(Lio/agora/rtm/internal/RtmClientImpl;)[B

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/ResultCallback;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 5
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "attr result callback target lost!"

    invoke-static {p1, p2}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    sget-object p2, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->ATTRIBUTE_OPERATION_ERR_OK:Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    if-ne p3, p2, :cond_2

    const/4 p2, 0x0

    .line 7
    invoke-interface {p1, p2}, Lio/agora/rtm/ResultCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_2
    new-instance p2, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {p3}, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->swigValue()I

    move-result p4

    invoke-virtual {p3}, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p4, p3}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public onAddOrUpdateChannelAttributesResult(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;)V
    .locals 3

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAddOrUpdateChannelAttributesResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmClientImpl;->access$2300(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->processAttrResultCallbackSimple(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;Lio/agora/common/LruCache;)V

    return-void
.end method

.method public onAddOrUpdateLocalUserAttributesResult(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;)V
    .locals 3

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAddOrUpdateLocalUserAttributesResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmClientImpl;->access$1800(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->processAttrResultCallbackSimple(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;Lio/agora/common/LruCache;)V

    return-void
.end method

.method public onClearChannelAttributesResult(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;)V
    .locals 3

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClearChannelAttributesResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmClientImpl;->access$2500(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->processAttrResultCallbackSimple(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;Lio/agora/common/LruCache;)V

    return-void
.end method

.method public onClearLocalUserAttributesResult(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;)V
    .locals 3

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClearLocalUserAttributesResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmClientImpl;->access$2000(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->processAttrResultCallbackSimple(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;Lio/agora/common/LruCache;)V

    return-void
.end method

.method public onConnectionStateChanged(Lio/agora/rtm/jni/CONNECTION_STATE;Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;)V
    .locals 3

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionStateChanged, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmClientImpl;->access$600(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/rtm/RtmClientListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "empty client listener!"

    invoke-static {p1, p2}, Lio/agora/common/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmClientImpl;->access$600(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/rtm/RtmClientListener;

    move-result-object v0

    invoke-virtual {p1}, Lio/agora/rtm/jni/CONNECTION_STATE;->swigValue()I

    move-result p1

    invoke-virtual {p2}, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;->swigValue()I

    move-result p2

    invoke-interface {v0, p1, p2}, Lio/agora/rtm/RtmClientListener;->onConnectionStateChanged(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDeleteChannelAttributesResult(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;)V
    .locals 3

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeleteChannelAttributesResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmClientImpl;->access$2400(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->processAttrResultCallbackSimple(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;Lio/agora/common/LruCache;)V

    return-void
.end method

.method public onDeleteLocalUserAttributesResult(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;)V
    .locals 3

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeleteLocalUserAttributesResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmClientImpl;->access$1900(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->processAttrResultCallbackSimple(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;Lio/agora/common/LruCache;)V

    return-void
.end method

.method public onFileMediaUploadResult(JLio/agora/rtm/jni/IFileMessage;Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;)V
    .locals 3

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFileMediaUploadResult, requestId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmClientImpl;->access$200(Lio/agora/rtm/internal/RtmClientImpl;)[B

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmClientImpl;->access$700(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;

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
    sget-object p2, Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;->UPLOAD_MEDIA_ERR_OK:Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;

    if-ne p4, p2, :cond_1

    .line 6
    new-instance p2, Lio/agora/rtm/internal/RtmFileMessageImpl;

    invoke-direct {p2}, Lio/agora/rtm/internal/RtmFileMessageImpl;-><init>()V

    .line 7
    invoke-virtual {p3}, Lio/agora/rtm/jni/IMessage;->getText()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lio/agora/rtm/internal/RtmFileMessageImpl;->setText(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p3}, Lio/agora/rtm/jni/IFileMessage;->getSize()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lio/agora/rtm/internal/RtmFileMessageImpl;->setSize(J)V

    .line 9
    invoke-virtual {p3}, Lio/agora/rtm/jni/IFileMessage;->getFileName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lio/agora/rtm/internal/RtmFileMessageImpl;->setFileName(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p3}, Lio/agora/rtm/jni/IFileMessage;->getMediaId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lio/agora/rtm/internal/RtmFileMessageImpl;->setMediaId(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p3}, Lio/agora/rtm/jni/IFileMessage;->getThumbnailData()[B

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/agora/rtm/internal/RtmFileMessageImpl;->setThumbnail([B)V

    .line 12
    invoke-interface {p1, p2}, Lio/agora/rtm/ResultCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_1
    new-instance p2, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {p4}, Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;->swigValue()I

    move-result p3

    invoke-virtual {p4}, Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

    :cond_2
    :goto_0
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

.method public onFileMessageReceivedFromPeer(Ljava/lang/String;Lio/agora/rtm/jni/IFileMessage;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmClientImpl;->access$600(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/rtm/RtmClientListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lio/agora/rtm/internal/RtmFileMessageImpl;

    invoke-direct {v0}, Lio/agora/rtm/internal/RtmFileMessageImpl;-><init>()V

    .line 3
    invoke-virtual {p2}, Lio/agora/rtm/jni/IMessage;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/agora/rtm/internal/RtmFileMessageImpl;->setText(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lio/agora/rtm/jni/IFileMessage;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/agora/rtm/internal/RtmFileMessageImpl;->setSize(J)V

    .line 5
    invoke-virtual {p2}, Lio/agora/rtm/jni/IFileMessage;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/agora/rtm/internal/RtmFileMessageImpl;->setFileName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Lio/agora/rtm/jni/IFileMessage;->getMediaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/agora/rtm/internal/RtmFileMessageImpl;->setMediaId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lio/agora/rtm/jni/IFileMessage;->getThumbnailData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/agora/rtm/internal/RtmFileMessageImpl;->setThumbnail([B)V

    .line 8
    invoke-virtual {p2}, Lio/agora/rtm/jni/IMessage;->getServerReceivedTs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/agora/rtm/internal/RtmFileMessageImpl;->setServerReceivedTs(J)V

    .line 9
    invoke-virtual {p2}, Lio/agora/rtm/jni/IMessage;->isOfflineMessage()Z

    move-result p2

    invoke-virtual {v0, p2}, Lio/agora/rtm/internal/RtmFileMessageImpl;->setIsOfflineMessage(Z)V

    .line 10
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object p2

    const-string v1, "onFileMessageReceivedFromPeer, peerId: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {p2}, Lio/agora/rtm/internal/RtmClientImpl;->access$600(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/rtm/RtmClientListener;

    move-result-object p2

    invoke-interface {p2, v0, p1}, Lio/agora/rtm/RtmClientListener;->onFileMessageReceivedFromPeer(Lio/agora/rtm/RtmFileMessage;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_1
    :goto_0
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "empty listener or invalid message received!"

    invoke-static {p1, p2}, Lio/agora/common/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetChannelAttributesResult(J[Lio/agora/rtm/jni/IRtmChannelAttribute;ILio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;)V
    .locals 7

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetChannelAttributesResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p5, :cond_0

    .line 2
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onGetChannelAttributesResult: null error code!"

    invoke-static {p1, p2}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object p4, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {p4}, Lio/agora/rtm/internal/RtmClientImpl;->access$200(Lio/agora/rtm/internal/RtmClientImpl;)[B

    move-result-object p4

    monitor-enter p4

    .line 4
    :try_start_0
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmClientImpl;->access$2600(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/ResultCallback;

    .line 5
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 6
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onGetChannelAttributesResult: callback target lost!"

    invoke-static {p1, p2}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    sget-object p2, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->ATTRIBUTE_OPERATION_ERR_OK:Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    if-ne p5, p2, :cond_3

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 p4, 0x0

    .line 9
    :goto_0
    array-length p5, p3

    if-ge p4, p5, :cond_2

    .line 10
    aget-object p5, p3, p4

    .line 11
    new-instance v6, Lio/agora/rtm/RtmChannelAttribute;

    invoke-virtual {p5}, Lio/agora/rtm/jni/IRtmChannelAttribute;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5}, Lio/agora/rtm/jni/IRtmChannelAttribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5}, Lio/agora/rtm/jni/IRtmChannelAttribute;->getLastUpdateUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5}, Lio/agora/rtm/jni/IRtmChannelAttribute;->getLastUpdateTs()J

    move-result-wide v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/agora/rtm/RtmChannelAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-interface {p1, p2}, Lio/agora/rtm/ResultCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_3
    new-instance p2, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {p5}, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->swigValue()I

    move-result p3

    invoke-virtual {p5}, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onGetChannelMemberCountResult(J[Lio/agora/rtm/jni/IRtmChannelMemberCount;ILio/agora/rtm/jni/GET_CHANNEL_MEMBER_COUNT_ERR;)V
    .locals 2

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetChannelMemberCountResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p5, :cond_0

    .line 2
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onGetChannelMemberCountResult: null error code!"

    invoke-static {p1, p2}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object p4, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {p4}, Lio/agora/rtm/internal/RtmClientImpl;->access$200(Lio/agora/rtm/internal/RtmClientImpl;)[B

    move-result-object p4

    monitor-enter p4

    .line 4
    :try_start_0
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmClientImpl;->access$2700(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/ResultCallback;

    .line 5
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 6
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onGetChannelMemberCountResult: callback target lost!"

    invoke-static {p1, p2}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    sget-object p2, Lio/agora/rtm/jni/GET_CHANNEL_MEMBER_COUNT_ERR;->GET_CHANNEL_MEMBER_COUNT_ERR_OK:Lio/agora/rtm/jni/GET_CHANNEL_MEMBER_COUNT_ERR;

    if-ne p5, p2, :cond_3

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 p4, 0x0

    .line 9
    :goto_0
    array-length p5, p3

    if-ge p4, p5, :cond_2

    .line 10
    aget-object p5, p3, p4

    .line 11
    new-instance v0, Lio/agora/rtm/RtmChannelMemberCount;

    invoke-virtual {p5}, Lio/agora/rtm/jni/IRtmChannelMemberCount;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5}, Lio/agora/rtm/jni/IRtmChannelMemberCount;->getMemberCount()I

    move-result p5

    invoke-direct {v0, v1, p5}, Lio/agora/rtm/RtmChannelMemberCount;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-interface {p1, p2}, Lio/agora/rtm/ResultCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_3
    new-instance p2, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {p5}, Lio/agora/rtm/jni/GET_CHANNEL_MEMBER_COUNT_ERR;->swigValue()I

    move-result p3

    invoke-virtual {p5}, Lio/agora/rtm/jni/GET_CHANNEL_MEMBER_COUNT_ERR;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onGetUserAttributesResult(JLjava/lang/String;[Lio/agora/rtm/jni/IRtmAttribute;ILio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;)V
    .locals 1

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object p3

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onGetUserAttributesResult: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p3, p5}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p6, :cond_0

    .line 2
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onGetUserAttributesResult: null error code!"

    invoke-static {p1, p2}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object p3, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {p3}, Lio/agora/rtm/internal/RtmClientImpl;->access$200(Lio/agora/rtm/internal/RtmClientImpl;)[B

    move-result-object p3

    monitor-enter p3

    .line 4
    :try_start_0
    iget-object p5, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {p5}, Lio/agora/rtm/internal/RtmClientImpl;->access$2100(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;

    move-result-object p5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/ResultCallback;

    .line 5
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 6
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onGetUserAttributesResult: callback target lost!"

    invoke-static {p1, p2}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    sget-object p2, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->ATTRIBUTE_OPERATION_ERR_OK:Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    if-ne p6, p2, :cond_3

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x0

    .line 9
    :goto_0
    array-length p5, p4

    if-ge p3, p5, :cond_2

    .line 10
    aget-object p5, p4, p3

    .line 11
    new-instance p6, Lio/agora/rtm/RtmAttribute;

    invoke-virtual {p5}, Lio/agora/rtm/jni/IRtmAttribute;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5}, Lio/agora/rtm/jni/IRtmAttribute;->getValue()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p6, v0, p5}, Lio/agora/rtm/RtmAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-interface {p1, p2}, Lio/agora/rtm/ResultCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_3
    new-instance p2, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {p6}, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->swigValue()I

    move-result p3

    invoke-virtual {p6}, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onImageMediaUploadResult(JLio/agora/rtm/jni/IImageMessage;Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;)V
    .locals 3

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageMediaUploadResult, requestId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmClientImpl;->access$200(Lio/agora/rtm/internal/RtmClientImpl;)[B

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmClientImpl;->access$800(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;

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
    sget-object p2, Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;->UPLOAD_MEDIA_ERR_OK:Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;

    if-ne p4, p2, :cond_1

    .line 6
    new-instance p2, Lio/agora/rtm/internal/RtmImageMessageImpl;

    invoke-direct {p2}, Lio/agora/rtm/internal/RtmImageMessageImpl;-><init>()V

    .line 7
    invoke-virtual {p3}, Lio/agora/rtm/jni/IMessage;->getText()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setText(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p3}, Lio/agora/rtm/jni/IImageMessage;->getSize()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setSize(J)V

    .line 9
    invoke-virtual {p3}, Lio/agora/rtm/jni/IImageMessage;->getFileName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setFileName(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p3}, Lio/agora/rtm/jni/IImageMessage;->getMediaId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setMediaId(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p3}, Lio/agora/rtm/jni/IImageMessage;->getThumbnailData()[B

    move-result-object p4

    invoke-virtual {p2, p4}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setThumbnail([B)V

    .line 12
    invoke-virtual {p3}, Lio/agora/rtm/jni/IImageMessage;->getHeight()I

    move-result p4

    invoke-virtual {p2, p4}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setHeight(I)V

    .line 13
    invoke-virtual {p3}, Lio/agora/rtm/jni/IImageMessage;->getWidth()I

    move-result p4

    invoke-virtual {p2, p4}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setWidth(I)V

    .line 14
    invoke-virtual {p3}, Lio/agora/rtm/jni/IImageMessage;->getThumbnailHeight()I

    move-result p4

    invoke-virtual {p2, p4}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setThumbnailHeight(I)V

    .line 15
    invoke-virtual {p3}, Lio/agora/rtm/jni/IImageMessage;->getThumbnailWidth()I

    move-result p3

    invoke-virtual {p2, p3}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setThumbnailWidth(I)V

    .line 16
    invoke-interface {p1, p2}, Lio/agora/rtm/ResultCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 17
    :cond_1
    new-instance p2, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {p4}, Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;->swigValue()I

    move-result p3

    invoke-virtual {p4}, Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 18
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onImageMessageReceivedFromPeer(Ljava/lang/String;Lio/agora/rtm/jni/IImageMessage;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmClientImpl;->access$600(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/rtm/RtmClientListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lio/agora/rtm/internal/RtmImageMessageImpl;

    invoke-direct {v0}, Lio/agora/rtm/internal/RtmImageMessageImpl;-><init>()V

    .line 3
    invoke-virtual {p2}, Lio/agora/rtm/jni/IMessage;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setText(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lio/agora/rtm/jni/IImageMessage;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setSize(J)V

    .line 5
    invoke-virtual {p2}, Lio/agora/rtm/jni/IImageMessage;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setFileName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Lio/agora/rtm/jni/IImageMessage;->getMediaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setMediaId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lio/agora/rtm/jni/IImageMessage;->getThumbnailData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setThumbnail([B)V

    .line 8
    invoke-virtual {p2}, Lio/agora/rtm/jni/IImageMessage;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setHeight(I)V

    .line 9
    invoke-virtual {p2}, Lio/agora/rtm/jni/IImageMessage;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setWidth(I)V

    .line 10
    invoke-virtual {p2}, Lio/agora/rtm/jni/IImageMessage;->getThumbnailHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setThumbnailHeight(I)V

    .line 11
    invoke-virtual {p2}, Lio/agora/rtm/jni/IImageMessage;->getThumbnailWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setThumbnailWidth(I)V

    .line 12
    invoke-virtual {p2}, Lio/agora/rtm/jni/IMessage;->getServerReceivedTs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setServerReceivedTs(J)V

    .line 13
    invoke-virtual {p2}, Lio/agora/rtm/jni/IMessage;->isOfflineMessage()Z

    move-result p2

    invoke-virtual {v0, p2}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setIsOfflineMessage(Z)V

    .line 14
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object p2

    const-string v1, "onImageMessageReceivedFromPeer, peerId: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {p2}, Lio/agora/rtm/internal/RtmClientImpl;->access$600(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/rtm/RtmClientListener;

    move-result-object p2

    invoke-interface {p2, v0, p1}, Lio/agora/rtm/RtmClientListener;->onImageMessageReceivedFromPeer(Lio/agora/rtm/RtmImageMessage;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_1
    :goto_0
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "empty listener or invalid message received!"

    invoke-static {p1, p2}, Lio/agora/common/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLoginFailure(Lio/agora/rtm/jni/LOGIN_ERR_CODE;)V
    .locals 4

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoginFailure, err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmClientImpl;->access$200(Lio/agora/rtm/internal/RtmClientImpl;)[B

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmClientImpl;->access$300(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/rtm/ResultCallback;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmClientImpl;->access$300(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/rtm/ResultCallback;

    move-result-object v1

    .line 5
    iget-object v3, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v3, v2}, Lio/agora/rtm/internal/RtmClientImpl;->access$302(Lio/agora/rtm/internal/RtmClientImpl;Lio/agora/rtm/ResultCallback;)Lio/agora/rtm/ResultCallback;

    move-object v2, v1

    .line 6
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 7
    new-instance v0, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {p1}, Lio/agora/rtm/jni/LOGIN_ERR_CODE;->swigValue()I

    move-result v1

    invoke-virtual {p1}, Lio/agora/rtm/jni/LOGIN_ERR_CODE;->toString()Ljava/lang/String;

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

.method public onLoginSuccess()V
    .locals 4

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLoginSuccess"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmClientImpl;->access$200(Lio/agora/rtm/internal/RtmClientImpl;)[B

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmClientImpl;->access$300(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/rtm/ResultCallback;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmClientImpl;->access$300(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/rtm/ResultCallback;

    move-result-object v1

    .line 5
    iget-object v3, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v3, v2}, Lio/agora/rtm/internal/RtmClientImpl;->access$302(Lio/agora/rtm/internal/RtmClientImpl;Lio/agora/rtm/ResultCallback;)Lio/agora/rtm/ResultCallback;

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

.method public onLogout(Lio/agora/rtm/jni/LOGOUT_ERR_CODE;)V
    .locals 4

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLogout, err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmClientImpl;->access$200(Lio/agora/rtm/internal/RtmClientImpl;)[B

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmClientImpl;->access$400(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/rtm/ResultCallback;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmClientImpl;->access$400(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/rtm/ResultCallback;

    move-result-object v1

    .line 5
    iget-object v3, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v3, v2}, Lio/agora/rtm/internal/RtmClientImpl;->access$402(Lio/agora/rtm/internal/RtmClientImpl;Lio/agora/rtm/ResultCallback;)Lio/agora/rtm/ResultCallback;

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
    sget-object v0, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->LOGOUT_ERR_OK:Lio/agora/rtm/jni/LOGOUT_ERR_CODE;

    if-ne p1, v0, :cond_2

    .line 8
    invoke-interface {v1, v2}, Lio/agora/rtm/ResultCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_2
    new-instance v0, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {p1}, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->swigValue()I

    move-result v2

    invoke-virtual {p1}, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->toString()Ljava/lang/String;

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

.method public onMediaCancelResult(JLio/agora/rtm/jni/CANCEL_MEDIA_ERR_CODE;)V
    .locals 3

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaCancelResult, requestId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmClientImpl;->access$200(Lio/agora/rtm/internal/RtmClientImpl;)[B

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmClientImpl;->access$1100(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;

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
    sget-object p2, Lio/agora/rtm/jni/CANCEL_MEDIA_ERR_CODE;->CANCEL_MEDIA_ERR_OK:Lio/agora/rtm/jni/CANCEL_MEDIA_ERR_CODE;

    if-ne p3, p2, :cond_1

    const/4 p2, 0x0

    .line 6
    invoke-interface {p1, p2}, Lio/agora/rtm/ResultCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance p2, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {p3}, Lio/agora/rtm/jni/CANCEL_MEDIA_ERR_CODE;->swigValue()I

    move-result v0

    invoke-virtual {p3}, Lio/agora/rtm/jni/CANCEL_MEDIA_ERR_CODE;->toString()Ljava/lang/String;

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

.method public onMediaDownloadToFileResult(JLio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;)V
    .locals 3

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaDownloadToFileResult, requestId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmClientImpl;->access$200(Lio/agora/rtm/internal/RtmClientImpl;)[B

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmClientImpl;->access$900(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;

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
    sget-object p2, Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;->DOWNLOAD_MEDIA_ERR_OK:Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;

    if-ne p3, p2, :cond_1

    const/4 p2, 0x0

    .line 6
    invoke-interface {p1, p2}, Lio/agora/rtm/ResultCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance p2, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {p3}, Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;->swigValue()I

    move-result v0

    invoke-virtual {p3}, Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;->toString()Ljava/lang/String;

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

.method public onMediaDownloadToMemoryResult(J[BLio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;)V
    .locals 3

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaDownloadToMemoryResult, requestId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmClientImpl;->access$200(Lio/agora/rtm/internal/RtmClientImpl;)[B

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmClientImpl;->access$1000(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;

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
    sget-object p2, Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;->DOWNLOAD_MEDIA_ERR_OK:Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;

    if-ne p4, p2, :cond_1

    .line 6
    invoke-interface {p1, p3}, Lio/agora/rtm/ResultCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance p2, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {p4}, Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;->swigValue()I

    move-result p3

    invoke-virtual {p4}, Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

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

.method public onMediaDownloadingProgress(JLio/agora/rtm/jni/MediaOperationProgress;)V
    .locals 4

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onMediaDownloadingProgress, requestId: "

    const-string v2, ", totalSize: "

    invoke-static {v1, p1, p2, v2}, Le/d/c/a/a;->G(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-virtual {p3}, Lio/agora/rtm/jni/MediaOperationProgress;->getTotalSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", currentSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lio/agora/rtm/jni/MediaOperationProgress;->getCurrentSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lio/agora/rtm/RtmMediaOperationProgress;

    invoke-direct {v0}, Lio/agora/rtm/RtmMediaOperationProgress;-><init>()V

    .line 5
    invoke-virtual {p3}, Lio/agora/rtm/jni/MediaOperationProgress;->getTotalSize()J

    move-result-wide v1

    iput-wide v1, v0, Lio/agora/rtm/RtmMediaOperationProgress;->totalSize:J

    .line 6
    invoke-virtual {p3}, Lio/agora/rtm/jni/MediaOperationProgress;->getCurrentSize()J

    move-result-wide v1

    iput-wide v1, v0, Lio/agora/rtm/RtmMediaOperationProgress;->currentSize:J

    .line 7
    iget-object p3, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {p3}, Lio/agora/rtm/internal/RtmClientImpl;->access$600(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/rtm/RtmClientListener;

    move-result-object p3

    invoke-interface {p3, v0, p1, p2}, Lio/agora/rtm/RtmClientListener;->onMediaDownloadingProgress(Lio/agora/rtm/RtmMediaOperationProgress;J)V

    return-void
.end method

.method public onMediaUploadingProgress(JLio/agora/rtm/jni/MediaOperationProgress;)V
    .locals 4

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onMediaUploadingProgress, requestId: "

    const-string v2, ", totalSize: "

    invoke-static {v1, p1, p2, v2}, Le/d/c/a/a;->G(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-virtual {p3}, Lio/agora/rtm/jni/MediaOperationProgress;->getTotalSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", currentSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lio/agora/rtm/jni/MediaOperationProgress;->getCurrentSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lio/agora/rtm/RtmMediaOperationProgress;

    invoke-direct {v0}, Lio/agora/rtm/RtmMediaOperationProgress;-><init>()V

    .line 5
    invoke-virtual {p3}, Lio/agora/rtm/jni/MediaOperationProgress;->getTotalSize()J

    move-result-wide v1

    iput-wide v1, v0, Lio/agora/rtm/RtmMediaOperationProgress;->totalSize:J

    .line 6
    invoke-virtual {p3}, Lio/agora/rtm/jni/MediaOperationProgress;->getCurrentSize()J

    move-result-wide v1

    iput-wide v1, v0, Lio/agora/rtm/RtmMediaOperationProgress;->currentSize:J

    .line 7
    iget-object p3, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {p3}, Lio/agora/rtm/internal/RtmClientImpl;->access$600(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/rtm/RtmClientListener;

    move-result-object p3

    invoke-interface {p3, v0, p1, p2}, Lio/agora/rtm/RtmClientListener;->onMediaUploadingProgress(Lio/agora/rtm/RtmMediaOperationProgress;J)V

    return-void
.end method

.method public onMessageReceivedFromPeer(Ljava/lang/String;Lio/agora/rtm/jni/IMessage;)V
    .locals 9

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmClientImpl;->access$600(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/rtm/RtmClientListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2}, Lio/agora/rtm/jni/IMessage;->getMessageType()Lio/agora/rtm/jni/MESSAGE_TYPE;

    move-result-object v1

    sget-object v2, Lio/agora/rtm/jni/MESSAGE_TYPE;->MESSAGE_TYPE_TEXT:Lio/agora/rtm/jni/MESSAGE_TYPE;

    if-ne v1, v2, :cond_1

    .line 3
    new-instance v0, Lio/agora/rtm/internal/RtmMessageImpl;

    invoke-virtual {p2}, Lio/agora/rtm/jni/IMessage;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lio/agora/rtm/jni/IMessage;->getServerReceivedTs()J

    move-result-wide v2

    .line 4
    invoke-virtual {p2}, Lio/agora/rtm/jni/IMessage;->isOfflineMessage()Z

    move-result p2

    invoke-direct {v0, v1, v2, v3, p2}, Lio/agora/rtm/internal/RtmMessageImpl;-><init>(Ljava/lang/String;JZ)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p2}, Lio/agora/rtm/jni/IMessage;->getMessageType()Lio/agora/rtm/jni/MESSAGE_TYPE;

    move-result-object v1

    sget-object v2, Lio/agora/rtm/jni/MESSAGE_TYPE;->MESSAGE_TYPE_RAW:Lio/agora/rtm/jni/MESSAGE_TYPE;

    if-ne v1, v2, :cond_2

    .line 6
    new-instance v0, Lio/agora/rtm/internal/RtmMessageImpl;

    invoke-virtual {p2}, Lio/agora/rtm/jni/IMessage;->getRawMessageData()[B

    move-result-object v4

    invoke-virtual {p2}, Lio/agora/rtm/jni/IMessage;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lio/agora/rtm/jni/IMessage;->getServerReceivedTs()J

    move-result-wide v6

    .line 7
    invoke-virtual {p2}, Lio/agora/rtm/jni/IMessage;->isOfflineMessage()Z

    move-result v8

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lio/agora/rtm/internal/RtmMessageImpl;-><init>([BLjava/lang/String;JZ)V

    .line 8
    :cond_2
    :goto_0
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object p2

    const-string v1, "onMessageReceivedFromPeer, peerId: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {p2}, Lio/agora/rtm/internal/RtmClientImpl;->access$600(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/rtm/RtmClientListener;

    move-result-object p2

    invoke-interface {p2, v0, p1}, Lio/agora/rtm/RtmClientListener;->onMessageReceived(Lio/agora/rtm/RtmMessage;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_3
    :goto_1
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "empty listener or invalid message received!"

    invoke-static {p1, p2}, Lio/agora/common/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPeersOnlineStatusChanged([Lio/agora/rtm/jni/PeerOnlineStatus;I)V
    .locals 5

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPeersOnlineStatusChanged"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    if-gtz p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p2, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {p2}, Lio/agora/rtm/internal/RtmClientImpl;->access$600(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/rtm/RtmClientListener;

    move-result-object p2

    if-nez p2, :cond_1

    .line 3
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "empty client listener!"

    invoke-static {p1, p2}, Lio/agora/common/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 5
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 6
    invoke-virtual {v2}, Lio/agora/rtm/jni/PeerOnlineStatus;->getPeerId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-virtual {v2}, Lio/agora/rtm/jni/PeerOnlineStatus;->getOnlineState()Lio/agora/rtm/jni/PEER_ONLINE_STATE;

    move-result-object v2

    invoke-static {v4, v2}, Lio/agora/rtm/internal/RtmClientImpl;->access$1500(Lio/agora/rtm/internal/RtmClientImpl;Lio/agora/rtm/jni/PEER_ONLINE_STATE;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {p1}, Lio/agora/rtm/internal/RtmClientImpl;->access$600(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/rtm/RtmClientListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lio/agora/rtm/RtmClientListener;->onPeersOnlineStatusChanged(Ljava/util/Map;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onQueryPeersBySubscriptionOptionResult(J[Ljava/lang/String;ILio/agora/rtm/jni/QUERY_PEERS_BY_SUBSCRIPTION_OPTION_ERR;)V
    .locals 3

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryPeersBySubscriptionOptionResult, err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p5, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmClientImpl;->access$200(Lio/agora/rtm/internal/RtmClientImpl;)[B

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmClientImpl;->access$1400(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;

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

    if-eqz p1, :cond_3

    .line 5
    sget-object p2, Lio/agora/rtm/jni/QUERY_PEERS_BY_SUBSCRIPTION_OPTION_ERR;->QUERY_PEERS_BY_SUBSCRIPTION_OPTION_ERR_OK:Lio/agora/rtm/jni/QUERY_PEERS_BY_SUBSCRIPTION_OPTION_ERR;

    if-ne p5, p2, :cond_2

    .line 6
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2, p4}, Ljava/util/HashSet;-><init>(I)V

    .line 7
    array-length p4, p3

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p4, :cond_1

    aget-object v0, p3, p5

    .line 8
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {p1, p2}, Lio/agora/rtm/ResultCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_2
    new-instance p2, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {p5}, Lio/agora/rtm/jni/QUERY_PEERS_BY_SUBSCRIPTION_OPTION_ERR;->swigValue()I

    move-result p3

    invoke-virtual {p5}, Lio/agora/rtm/jni/QUERY_PEERS_BY_SUBSCRIPTION_OPTION_ERR;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onQueryPeersOnlineStatusResult(J[Lio/agora/rtm/jni/PeerOnlineStatus;ILio/agora/rtm/jni/QUERY_PEERS_ONLINE_STATUS_ERR;)V
    .locals 3

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryPeersOnlineStatusResult, err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p5, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmClientImpl;->access$200(Lio/agora/rtm/internal/RtmClientImpl;)[B

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmClientImpl;->access$1200(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;

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

    if-eqz p1, :cond_3

    .line 5
    sget-object p2, Lio/agora/rtm/jni/QUERY_PEERS_ONLINE_STATUS_ERR;->QUERY_PEERS_ONLINE_STATUS_ERR_OK:Lio/agora/rtm/jni/QUERY_PEERS_ONLINE_STATUS_ERR;

    if-ne p5, p2, :cond_2

    .line 6
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2, p4}, Ljava/util/LinkedHashMap;-><init>(I)V

    if-eqz p3, :cond_1

    .line 7
    array-length p4, p3

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p4, :cond_1

    aget-object v0, p3, p5

    .line 8
    invoke-virtual {v0}, Lio/agora/rtm/jni/PeerOnlineStatus;->getPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lio/agora/rtm/jni/PeerOnlineStatus;->getIsOnline()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {p1, p2}, Lio/agora/rtm/ResultCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_2
    new-instance p2, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {p5}, Lio/agora/rtm/jni/QUERY_PEERS_ONLINE_STATUS_ERR;->swigValue()I

    move-result p3

    invoke-virtual {p5}, Lio/agora/rtm/jni/QUERY_PEERS_ONLINE_STATUS_ERR;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onRenewTokenResult(Ljava/lang/String;Lio/agora/rtm/jni/RENEW_TOKEN_ERR_CODE;)V
    .locals 3

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRenewTokenResult, err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmClientImpl;->access$200(Lio/agora/rtm/internal/RtmClientImpl;)[B

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmClientImpl;->access$1600(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/ResultCallback;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 5
    sget-object v0, Lio/agora/rtm/jni/RENEW_TOKEN_ERR_CODE;->RENEW_TOKEN_ERR_OK:Lio/agora/rtm/jni/RENEW_TOKEN_ERR_CODE;

    if-ne p2, v0, :cond_1

    const/4 p2, 0x0

    .line 6
    invoke-interface {p1, p2}, Lio/agora/rtm/ResultCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {p2}, Lio/agora/rtm/jni/RENEW_TOKEN_ERR_CODE;->swigValue()I

    move-result v1

    invoke-virtual {p2}, Lio/agora/rtm/jni/RENEW_TOKEN_ERR_CODE;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

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

.method public onSendMessageResult(JLio/agora/rtm/jni/PEER_MESSAGE_ERR_CODE;)V
    .locals 3

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSendMessageResult, messageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmClientImpl;->access$200(Lio/agora/rtm/internal/RtmClientImpl;)[B

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmClientImpl;->access$500(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;

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
    sget-object p2, Lio/agora/rtm/jni/PEER_MESSAGE_ERR_CODE;->PEER_MESSAGE_ERR_OK:Lio/agora/rtm/jni/PEER_MESSAGE_ERR_CODE;

    if-ne p3, p2, :cond_1

    const/4 p2, 0x0

    .line 6
    invoke-interface {p1, p2}, Lio/agora/rtm/ResultCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance p2, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {p3}, Lio/agora/rtm/jni/PEER_MESSAGE_ERR_CODE;->swigValue()I

    move-result v0

    invoke-virtual {p3}, Lio/agora/rtm/jni/PEER_MESSAGE_ERR_CODE;->toString()Ljava/lang/String;

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

.method public onSetChannelAttributesResult(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;)V
    .locals 3

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetChannelAttributesResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmClientImpl;->access$2200(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->processAttrResultCallbackSimple(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;Lio/agora/common/LruCache;)V

    return-void
.end method

.method public onSetLocalUserAttributesResult(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;)V
    .locals 3

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetLocalUserAttributesResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmClientImpl;->access$1700(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->processAttrResultCallbackSimple(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;Lio/agora/common/LruCache;)V

    return-void
.end method

.method public onSubscriptionRequestResult(JLio/agora/rtm/jni/PEER_SUBSCRIPTION_STATUS_ERR;)V
    .locals 3

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubscriptionRequestResult, err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmClientImpl;->access$200(Lio/agora/rtm/internal/RtmClientImpl;)[B

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v1}, Lio/agora/rtm/internal/RtmClientImpl;->access$1300(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;

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
    sget-object p2, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_STATUS_ERR;->PEER_SUBSCRIPTION_STATUS_ERR_OK:Lio/agora/rtm/jni/PEER_SUBSCRIPTION_STATUS_ERR;

    if-ne p3, p2, :cond_1

    const/4 p2, 0x0

    .line 6
    invoke-interface {p1, p2}, Lio/agora/rtm/ResultCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance p2, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {p3}, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_STATUS_ERR;->swigValue()I

    move-result v0

    invoke-virtual {p3}, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_STATUS_ERR;->toString()Ljava/lang/String;

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

.method public onTokenExpired()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmClientImpl;->access$600(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/rtm/RtmClientListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no listener for token expiration!"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lio/agora/rtm/internal/RtmClientImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "token expired"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;->this$0:Lio/agora/rtm/internal/RtmClientImpl;

    invoke-static {v0}, Lio/agora/rtm/internal/RtmClientImpl;->access$600(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/rtm/RtmClientListener;

    move-result-object v0

    invoke-interface {v0}, Lio/agora/rtm/RtmClientListener;->onTokenExpired()V

    return-void
.end method
