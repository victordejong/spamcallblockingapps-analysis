.class public Lcom/amazon/device/ads/DtbLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG_ERROR:Ljava/lang/String; = "DTBERROR::"

.field private static androidLogAvailable:Z = false

.field private static isCallerInfoEnabled:Z = false

.field private static final listenerLock:Ljava/lang/Object;

.field private static logLevel:Lcom/amazon/device/ads/DTBLogLevel; = null

.field private static logListener:Lcom/amazon/device/ads/DtbLogListener; = null

.field private static final sdkName:Ljava/lang/String; = "Amazon DTB Ads API"


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "1234"

    const/4 v2, 0x7

    .line 1
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    const/4 v1, 0x1

    .line 2
    sput-boolean v1, Lcom/amazon/device/ads/DtbLog;->androidLogAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3
    :catchall_0
    sput-boolean v0, Lcom/amazon/device/ads/DtbLog;->androidLogAvailable:Z

    .line 4
    :goto_0
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/amazon/device/ads/DtbLog;->listenerLock:Ljava/lang/Object;

    .line 5
    sput-boolean v0, Lcom/amazon/device/ads/DtbLog;->isCallerInfoEnabled:Z

    .line 6
    sget-object v0, Lcom/amazon/device/ads/DTBLogLevel;->Warn:Lcom/amazon/device/ads/DTBLogLevel;

    sput-object v0, Lcom/amazon/device/ads/DtbLog;->logLevel:Lcom/amazon/device/ads/DTBLogLevel;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object p0, Lcom/amazon/device/ads/DtbLog;->logLevel:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result p0

    sget-object v0, Lcom/amazon/device/ads/DTBLogLevel;->Debug:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v0

    if-gt p0, v0, :cond_0

    sget-boolean p0, Lcom/amazon/device/ads/DtbLog;->androidLogAvailable:Z

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->getTag()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 3
    sget-object v0, Lcom/amazon/device/ads/DtbLog;->logLevel:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v0

    sget-object v1, Lcom/amazon/device/ads/DTBLogLevel;->Debug:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v1}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v2

    if-gt v0, v2, :cond_0

    sget-boolean v0, Lcom/amazon/device/ads/DtbLog;->androidLogAvailable:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0, v1, p1}, Lcom/amazon/device/ads/DtbLog;->postMessageToListener(Ljava/lang/String;Lcom/amazon/device/ads/DTBLogLevel;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static debugError(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object p0, Lcom/amazon/device/ads/DtbLog;->logLevel:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result p0

    sget-object v0, Lcom/amazon/device/ads/DTBLogLevel;->Debug:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v0

    if-gt p0, v0, :cond_0

    sget-boolean p0, Lcom/amazon/device/ads/DtbLog;->androidLogAvailable:Z

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->getTag()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static debugError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 3
    sget-object v0, Lcom/amazon/device/ads/DtbLog;->logLevel:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v0

    sget-object v1, Lcom/amazon/device/ads/DTBLogLevel;->Debug:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v1}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v2

    if-gt v0, v2, :cond_0

    sget-boolean v0, Lcom/amazon/device/ads/DtbLog;->androidLogAvailable:Z

    if-eqz v0, :cond_0

    const-string v0, "DTBERROR::"

    .line 4
    invoke-static {v0, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/amazon/device/ads/DtbLog;->postMessageToListener(Ljava/lang/String;Lcom/amazon/device/ads/DTBLogLevel;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static enableCallerInfo(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/amazon/device/ads/DtbLog;->isCallerInfoEnabled:Z

    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object p0, Lcom/amazon/device/ads/DtbLog;->logLevel:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result p0

    sget-object v0, Lcom/amazon/device/ads/DTBLogLevel;->Error:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v0

    if-gt p0, v0, :cond_0

    sget-boolean p0, Lcom/amazon/device/ads/DtbLog;->androidLogAvailable:Z

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->getTag()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 3
    sget-object v0, Lcom/amazon/device/ads/DtbLog;->logLevel:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v0

    sget-object v1, Lcom/amazon/device/ads/DTBLogLevel;->Error:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v1}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v2

    if-gt v0, v2, :cond_0

    sget-boolean v0, Lcom/amazon/device/ads/DtbLog;->androidLogAvailable:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0, v1, p1}, Lcom/amazon/device/ads/DtbLog;->postMessageToListener(Ljava/lang/String;Lcom/amazon/device/ads/DTBLogLevel;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static fatal(Ljava/lang/String;)V
    .locals 1

    .line 3
    sget-object p0, Lcom/amazon/device/ads/DtbLog;->logLevel:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result p0

    sget-object v0, Lcom/amazon/device/ads/DTBLogLevel;->Fatal:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v0

    if-gt p0, v0, :cond_0

    sget-boolean p0, Lcom/amazon/device/ads/DtbLog;->androidLogAvailable:Z

    if-eqz p0, :cond_0

    .line 4
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->getTag()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static fatal(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 5
    sget-object p0, Lcom/amazon/device/ads/DtbLog;->logLevel:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result p0

    sget-object p1, Lcom/amazon/device/ads/DTBLogLevel;->Fatal:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result p1

    if-gt p0, p1, :cond_0

    sget-boolean p0, Lcom/amazon/device/ads/DtbLog;->androidLogAvailable:Z

    if-eqz p0, :cond_0

    .line 6
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->getTag()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static fatal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/amazon/device/ads/DtbLog;->logLevel:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v0

    sget-object v1, Lcom/amazon/device/ads/DTBLogLevel;->Fatal:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v1}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v2

    if-gt v0, v2, :cond_0

    sget-boolean v0, Lcom/amazon/device/ads/DtbLog;->androidLogAvailable:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, v1, p1}, Lcom/amazon/device/ads/DtbLog;->postMessageToListener(Ljava/lang/String;Lcom/amazon/device/ads/DTBLogLevel;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static fatal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 7
    sget-object p2, Lcom/amazon/device/ads/DtbLog;->logLevel:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {p2}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result p2

    sget-object v0, Lcom/amazon/device/ads/DTBLogLevel;->Fatal:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v1

    if-gt p2, v1, :cond_0

    sget-boolean p2, Lcom/amazon/device/ads/DtbLog;->androidLogAvailable:Z

    if-eqz p2, :cond_0

    .line 8
    invoke-static {p0, v0, p1}, Lcom/amazon/device/ads/DtbLog;->postMessageToListener(Ljava/lang/String;Lcom/amazon/device/ads/DTBLogLevel;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static getCallerInfo()Ljava/lang/String;
    .locals 6

    .line 1
    sget-boolean v0, Lcom/amazon/device/ads/DtbLog;->isCallerInfoEnabled:Z

    const-string v1, "Amazon DTB Ads API"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    .line 3
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 4
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dalvik"

    .line 5
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "java"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v0, v3, 0x2

    .line 6
    array-length v4, v2

    if-ge v0, v4, :cond_1

    move v3, v0

    :cond_1
    aget-object v0, v2, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method private static getTag()Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/amazon/device/ads/DtbLog;->isCallerInfoEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->getCallerInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Amazon DTB Ads API"

    :goto_0
    return-object v0
.end method

.method public static info(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object p0, Lcom/amazon/device/ads/DtbLog;->logLevel:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result p0

    sget-object v0, Lcom/amazon/device/ads/DTBLogLevel;->Info:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v0

    if-gt p0, v0, :cond_0

    sget-boolean p0, Lcom/amazon/device/ads/DtbLog;->androidLogAvailable:Z

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->getTag()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 3
    sget-object v0, Lcom/amazon/device/ads/DtbLog;->logLevel:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v0

    sget-object v1, Lcom/amazon/device/ads/DTBLogLevel;->Info:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v1}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v2

    if-gt v0, v2, :cond_0

    sget-boolean v0, Lcom/amazon/device/ads/DtbLog;->androidLogAvailable:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0, v1, p1}, Lcom/amazon/device/ads/DtbLog;->postMessageToListener(Ljava/lang/String;Lcom/amazon/device/ads/DTBLogLevel;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static postMessageToListener(Ljava/lang/String;Lcom/amazon/device/ads/DTBLogLevel;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/amazon/device/ads/DtbLog;->logListener:Lcom/amazon/device/ads/DtbLogListener;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/amazon/device/ads/DtbLog;->listenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/amazon/device/ads/DtbLog;->logListener:Lcom/amazon/device/ads/DtbLogListener;

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Lcom/amazon/device/ads/DtbLogListener;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5
    sget-object p0, Lcom/amazon/device/ads/DtbLog;->logListener:Lcom/amazon/device/ads/DtbLogListener;

    invoke-interface {p0, p1, p2}, Lcom/amazon/device/ads/DtbLogListener;->postMessage(Lcom/amazon/device/ads/DTBLogLevel;Ljava/lang/String;)V

    .line 6
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setLogLevel(Lcom/amazon/device/ads/DTBLogLevel;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amazon/device/ads/DtbLog;->logLevel:Lcom/amazon/device/ads/DTBLogLevel;

    return-void
.end method

.method public static setLogListener(Lcom/amazon/device/ads/DtbLogListener;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/device/ads/DtbLog;->listenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sput-object p0, Lcom/amazon/device/ads/DtbLog;->logListener:Lcom/amazon/device/ads/DtbLogListener;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object p0, Lcom/amazon/device/ads/DtbLog;->logLevel:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result p0

    sget-object v0, Lcom/amazon/device/ads/DTBLogLevel;->Warn:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v0

    if-gt p0, v0, :cond_0

    sget-boolean p0, Lcom/amazon/device/ads/DtbLog;->androidLogAvailable:Z

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->getTag()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 3
    sget-object v0, Lcom/amazon/device/ads/DtbLog;->logLevel:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v0

    sget-object v1, Lcom/amazon/device/ads/DTBLogLevel;->Warn:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v1}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v2

    if-gt v0, v2, :cond_0

    sget-boolean v0, Lcom/amazon/device/ads/DtbLog;->androidLogAvailable:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0, v1, p1}, Lcom/amazon/device/ads/DtbLog;->postMessageToListener(Ljava/lang/String;Lcom/amazon/device/ads/DTBLogLevel;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
