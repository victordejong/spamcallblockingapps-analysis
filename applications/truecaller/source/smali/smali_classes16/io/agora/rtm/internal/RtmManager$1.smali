.class public final Lio/agora/rtm/internal/RtmManager$1;
.super Lio/agora/rtm/internal/RtmSdkContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtm/internal/RtmManager;->createRtmInstance(Landroid/content/Context;Ljava/lang/String;Lio/agora/rtm/RtmClientListener;)Lio/agora/rtm/RtmClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtm/internal/RtmManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lio/agora/rtm/internal/RtmSdkContext;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfigDir()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lio/agora/rtm/internal/AgoraSysUtils;->getAppStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataDir()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lio/agora/rtm/internal/AgoraSysUtils;->getCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/AgoraSysUtils;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/AgoraSysUtils;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginDir()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lio/agora/rtm/internal/AgoraSysUtils;->getNativeLibraryDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemInfo()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/AgoraSysUtils;->getSystemInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
