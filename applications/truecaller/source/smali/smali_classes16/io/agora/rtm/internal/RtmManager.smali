.class public Lio/agora/rtm/internal/RtmManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final RTM_SDK_LIBRARY_NAME:Ljava/lang/String; = "agora-rtm-sdk-jni"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRtmInstance(Landroid/content/Context;Ljava/lang/String;Lio/agora/rtm/RtmClientListener;)Lio/agora/rtm/RtmClient;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/agora/rtm/RtmClientListener;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lio/agora/rtm/internal/RtmClientImpl;

    new-instance v1, Lio/agora/rtm/internal/RtmManager$1;

    invoke-direct {v1, p0}, Lio/agora/rtm/internal/RtmManager$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, p1, p2}, Lio/agora/rtm/internal/RtmClientImpl;-><init>(Lio/agora/rtm/internal/RtmSdkContext;Ljava/lang/String;Lio/agora/rtm/RtmClientListener;)V

    return-object v0
.end method

.method public static initializeNative()V
    .locals 1

    const-string v0, "agora-rtm-sdk-jni"

    .line 1
    invoke-static {v0}, Lio/agora/rtm/internal/RtmSdkContext;->setLibraryName(Ljava/lang/String;)V

    return-void
.end method

.method public static setRtmServiceContext(Lio/agora/rtm/RtmServiceContext;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lio/agora/rtm/jni/IRtmService;->setRtmServiceContext(Lio/agora/rtm/RtmServiceContext;)I

    move-result p0

    return p0
.end method
