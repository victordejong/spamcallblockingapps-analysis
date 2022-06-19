.class public final enum Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/logging/MoPubLog$MPLogEventType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/logging/MoPubLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SdkLogEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;",
        ">;",
        "Lcom/mopub/common/logging/MoPubLog$MPLogEventType;"
    }
.end annotation


# static fields
.field public static final enum CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

.field public static final enum CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

.field public static final enum ERROR:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

.field public static final enum ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

.field public static final enum INIT_FAILED:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

.field public static final enum INIT_FINISHED:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

.field public static final enum INIT_STARTED:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

.field public static final synthetic c:[Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;


# instance fields
.field public a:Lcom/mopub/common/logging/MoPubLog$LogLevel;

.field public b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v2, "INIT_STARTED"

    const/4 v3, 0x0

    const-string v4, "SDK initialization started"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->INIT_STARTED:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    .line 2
    new-instance v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    sget-object v4, Lcom/mopub/common/logging/MoPubLog$LogLevel;->INFO:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v5, "INIT_FINISHED"

    const/4 v6, 0x1

    const-string v7, "SDK initialized and ready to display ads.\nInitialized adapters:\n{0}"

    invoke-direct {v2, v5, v6, v4, v7}, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->INIT_FINISHED:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    .line 3
    new-instance v5, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const-string v7, "INIT_FAILED"

    const/4 v8, 0x2

    const-string v9, "SDK initialization failed - {0}\n{1}"

    invoke-direct {v5, v7, v8, v4, v9}, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v5, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->INIT_FAILED:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    .line 4
    new-instance v4, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const-string v7, "CUSTOM"

    const/4 v9, 0x3

    const-string v10, "SDK Log - {0}"

    invoke-direct {v4, v7, v9, v1, v10}, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v4, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    .line 5
    new-instance v7, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const-string v10, "CUSTOM_WITH_THROWABLE"

    const/4 v11, 0x4

    const-string v12, "SDK Log With Throwable - {0}, {1}"

    invoke-direct {v7, v10, v11, v1, v12}, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v7, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    .line 6
    new-instance v10, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const-string v12, "ERROR"

    const/4 v13, 0x5

    const-string v14, "SDK Error Log - {0}"

    invoke-direct {v10, v12, v13, v1, v14}, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v10, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    .line 7
    new-instance v12, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const-string v14, "ERROR_WITH_THROWABLE"

    const/4 v15, 0x6

    const-string v13, "SDK Error Log - {0}, {1}"

    invoke-direct {v12, v14, v15, v1, v13}, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v12, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    aput-object v0, v1, v3

    aput-object v2, v1, v6

    aput-object v5, v1, v8

    aput-object v4, v1, v9

    aput-object v7, v1, v11

    const/4 v0, 0x5

    aput-object v10, v1, v0

    aput-object v12, v1, v15

    .line 8
    sput-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->c:[Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/common/logging/MoPubLog$LogLevel;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    iput-object p3, p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->a:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    .line 5
    iput-object p4, p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;
    .locals 1

    .line 1
    const-class v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->c:[Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    invoke-virtual {v0}, [Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    return-object v0
.end method


# virtual methods
.method public getLogLevel()Lcom/mopub/common/logging/MoPubLog$LogLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->a:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    return-object v0
.end method

.method public varargs getMessage([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->INIT_FINISHED:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    if-ne p0, v0, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    aget-object v1, p1, v0

    const-string v2, "\n"

    invoke-static {v1, v2}, Lcom/mopub/common/util/Strings;->getDelimitedString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "No adapters initialized."

    .line 4
    aput-object v1, p1, v0

    goto :goto_0

    .line 5
    :cond_0
    aput-object v1, p1, v0

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
