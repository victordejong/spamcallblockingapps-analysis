.class public abstract Lio/agora/rtm/internal/RtmSdkContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static libraryName:Ljava/lang/String; = "agora_rtm_sdk"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLibraryName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmSdkContext;->libraryName:Ljava/lang/String;

    return-object v0
.end method

.method public static setLibraryName(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lio/agora/rtm/internal/RtmSdkContext;->libraryName:Ljava/lang/String;

    return-void
.end method

.method public static swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "swigToEnum"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 1
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v5

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RTM_EXCEPTION"

    invoke-static {p1, p0}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static swigValueToStringSafe(ILjava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RTM_EXCEPTION"

    invoke-static {p1, p0}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public abstract getConfigDir()Ljava/lang/String;
.end method

.method public abstract getDataDir()Ljava/lang/String;
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getDeviceInfo()Ljava/lang/String;
.end method

.method public abstract getPluginDir()Ljava/lang/String;
.end method

.method public abstract getSystemInfo()Ljava/lang/String;
.end method
