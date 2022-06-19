.class public final enum Lcom/mopub/nativeads/NativeErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/MoPubError;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/nativeads/NativeErrorCode;",
        ">;",
        "Lcom/mopub/mobileads/MoPubError;"
    }
.end annotation


# static fields
.field public static final enum AD_SUCCESS:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum CONNECTION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum EMPTY_AD_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum IMAGE_DOWNLOAD_FAILURE:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum INVALID_REQUEST_URL:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum INVALID_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum NATIVE_ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum NATIVE_ADAPTER_NOT_FOUND:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum NATIVE_RENDERER_CONFIGURATION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum NETWORK_INVALID_REQUEST:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum NETWORK_INVALID_STATE:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum NETWORK_TIMEOUT:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum SERVER_ERROR_RESPONSE_CODE:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum TOO_MANY_REQUESTS:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum UNEXPECTED_RESPONSE_CODE:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final synthetic b:[Lcom/mopub/nativeads/NativeErrorCode;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v0, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v1, "AD_SUCCESS"

    const/4 v2, 0x0

    const-string v3, "ad successfully loaded."

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/nativeads/NativeErrorCode;->AD_SUCCESS:Lcom/mopub/nativeads/NativeErrorCode;

    .line 2
    new-instance v1, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v3, "EMPTY_AD_RESPONSE"

    const/4 v4, 0x1

    const-string v5, "Server returned empty response."

    invoke-direct {v1, v3, v4, v5}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mopub/nativeads/NativeErrorCode;->EMPTY_AD_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    .line 3
    new-instance v3, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v5, "INVALID_RESPONSE"

    const/4 v6, 0x2

    const-string v7, "Unable to parse response from server."

    invoke-direct {v3, v5, v6, v7}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    .line 4
    new-instance v5, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v7, "IMAGE_DOWNLOAD_FAILURE"

    const/4 v8, 0x3

    const-string v9, "Unable to download images associated with ad."

    invoke-direct {v5, v7, v8, v9}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/mopub/nativeads/NativeErrorCode;->IMAGE_DOWNLOAD_FAILURE:Lcom/mopub/nativeads/NativeErrorCode;

    .line 5
    new-instance v7, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v9, "INVALID_REQUEST_URL"

    const/4 v10, 0x4

    const-string v11, "Invalid request url."

    invoke-direct {v7, v9, v10, v11}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_REQUEST_URL:Lcom/mopub/nativeads/NativeErrorCode;

    .line 6
    new-instance v9, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v11, "UNEXPECTED_RESPONSE_CODE"

    const/4 v12, 0x5

    const-string v13, "Received unexpected response code from server."

    invoke-direct {v9, v11, v12, v13}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/mopub/nativeads/NativeErrorCode;->UNEXPECTED_RESPONSE_CODE:Lcom/mopub/nativeads/NativeErrorCode;

    .line 7
    new-instance v11, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v13, "SERVER_ERROR_RESPONSE_CODE"

    const/4 v14, 0x6

    const-string v15, "Server returned erroneous response code."

    invoke-direct {v11, v13, v14, v15}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/mopub/nativeads/NativeErrorCode;->SERVER_ERROR_RESPONSE_CODE:Lcom/mopub/nativeads/NativeErrorCode;

    .line 8
    new-instance v13, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v15, "CONNECTION_ERROR"

    const/4 v14, 0x7

    const-string v12, "Network is unavailable."

    invoke-direct {v13, v15, v14, v12}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/mopub/nativeads/NativeErrorCode;->CONNECTION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    .line 9
    new-instance v12, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v15, "TOO_MANY_REQUESTS"

    const/16 v14, 0x8

    const-string v10, "Too many failed requests have been made. Please try again later."

    invoke-direct {v12, v15, v14, v10}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/mopub/nativeads/NativeErrorCode;->TOO_MANY_REQUESTS:Lcom/mopub/nativeads/NativeErrorCode;

    .line 10
    new-instance v10, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v15, "UNSPECIFIED"

    const/16 v14, 0x9

    const-string v8, "Unspecified error occurred."

    invoke-direct {v10, v15, v14, v8}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    .line 11
    new-instance v8, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v15, "NETWORK_INVALID_REQUEST"

    const/16 v14, 0xa

    const-string v6, "Third-party network received invalid request."

    invoke-direct {v8, v15, v14, v6}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_INVALID_REQUEST:Lcom/mopub/nativeads/NativeErrorCode;

    .line 12
    new-instance v6, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v15, "NETWORK_TIMEOUT"

    const/16 v14, 0xb

    const-string v4, "Third-party network failed to respond in a timely manner."

    invoke-direct {v6, v15, v14, v4}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_TIMEOUT:Lcom/mopub/nativeads/NativeErrorCode;

    .line 13
    new-instance v4, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v15, "NETWORK_NO_FILL"

    const/16 v14, 0xc

    const-string v2, "Third-party network failed to provide an ad."

    invoke-direct {v4, v15, v14, v2}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    .line 14
    new-instance v2, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v15, "NETWORK_INVALID_STATE"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "Third-party network failed due to invalid internal state."

    invoke-direct {v2, v15, v14, v4}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/nativeads/NativeErrorCode;

    .line 15
    new-instance v4, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v15, "NATIVE_RENDERER_CONFIGURATION_ERROR"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "A required renderer was not registered for the CustomEventNative."

    invoke-direct {v4, v15, v14, v2}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/mopub/nativeads/NativeErrorCode;->NATIVE_RENDERER_CONFIGURATION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    .line 16
    new-instance v2, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v15, "NATIVE_ADAPTER_CONFIGURATION_ERROR"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "CustomEventNative was configured incorrectly."

    invoke-direct {v2, v15, v14, v4}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/mopub/nativeads/NativeErrorCode;->NATIVE_ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    .line 17
    new-instance v4, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v15, "NATIVE_ADAPTER_NOT_FOUND"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const-string v2, "Unable to find CustomEventNative."

    invoke-direct {v4, v15, v14, v2}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/mopub/nativeads/NativeErrorCode;->NATIVE_ADAPTER_NOT_FOUND:Lcom/mopub/nativeads/NativeErrorCode;

    const/16 v2, 0x11

    new-array v2, v2, [Lcom/mopub/nativeads/NativeErrorCode;

    const/4 v15, 0x0

    aput-object v0, v2, v15

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    aput-object v4, v2, v14

    .line 18
    sput-object v2, Lcom/mopub/nativeads/NativeErrorCode;->b:[Lcom/mopub/nativeads/NativeErrorCode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/mopub/nativeads/NativeErrorCode;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/nativeads/NativeErrorCode;
    .locals 1

    .line 1
    const-class v0, Lcom/mopub/nativeads/NativeErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/nativeads/NativeErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/mopub/nativeads/NativeErrorCode;
    .locals 1

    .line 1
    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->b:[Lcom/mopub/nativeads/NativeErrorCode;

    invoke-virtual {v0}, [Lcom/mopub/nativeads/NativeErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/nativeads/NativeErrorCode;

    return-object v0
.end method


# virtual methods
.method public getIntCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/16 v0, 0x2710

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/nativeads/NativeErrorCode;->a:Ljava/lang/String;

    return-object v0
.end method
