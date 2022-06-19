.class public final enum Lcom/mopub/mobileads/MoPubErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/MoPubError;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/mobileads/MoPubErrorCode;",
        ">;",
        "Lcom/mopub/mobileads/MoPubError;"
    }
.end annotation


# static fields
.field public static final enum ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum ADAPTER_INITIALIZATION_SUCCESS:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum ADAPTER_NOT_FOUND:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum AD_NOT_AVAILABLE:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum AD_SHOW_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum AD_SUCCESS:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum CANCELLED:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum DO_NOT_TRACK:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum EXPIRED:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum FULLSCREEN_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum FULLSCREEN_SHOW_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum GDPR_DOES_NOT_APPLY:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum HTML_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum INLINE_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum INLINE_SHOW_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum MISSING_AD_UNIT_ID:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum MRAID_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum NETWORK_TIMEOUT:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum RENDER_PROCESS_GONE_UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum RENDER_PROCESS_GONE_WITH_CRASH:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum REWARDED_CURRENCIES_PARSING_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum REWARD_NOT_SELECTED:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum TOO_MANY_REQUESTS:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum VIDEO_CACHE_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum VIDEO_DOWNLOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum VIDEO_NOT_AVAILABLE:Lcom/mopub/mobileads/MoPubErrorCode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum VIDEO_PLAYBACK_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum WARMUP:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final synthetic b:[Lcom/mopub/mobileads/MoPubErrorCode;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 38

    .line 1
    new-instance v0, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "AD_SUCCESS"

    const/4 v2, 0x0

    const-string v3, "ad successfully loaded."

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->AD_SUCCESS:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 2
    new-instance v1, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v3, "DO_NOT_TRACK"

    const/4 v4, 0x1

    const-string v5, "Do not track is enabled."

    invoke-direct {v1, v3, v4, v5}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->DO_NOT_TRACK:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 3
    new-instance v3, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v5, "UNSPECIFIED"

    const/4 v6, 0x2

    const-string v7, "Unspecified error."

    invoke-direct {v3, v5, v6, v7}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 4
    new-instance v5, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v7, "NO_FILL"

    const/4 v8, 0x3

    const-string v9, "No ads found."

    invoke-direct {v5, v7, v8, v9}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 5
    new-instance v7, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v9, "WARMUP"

    const/4 v10, 0x4

    const-string v11, "Ad unit is warming up. Try again in a few minutes."

    invoke-direct {v7, v9, v10, v11}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/mopub/mobileads/MoPubErrorCode;->WARMUP:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 6
    new-instance v9, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v11, "SERVER_ERROR"

    const/4 v12, 0x5

    const-string v13, "Unable to connect to MoPub adserver."

    invoke-direct {v9, v11, v12, v13}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 7
    new-instance v11, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v13, "TOO_MANY_REQUESTS"

    const/4 v14, 0x6

    const-string v15, "Too many failed requests have been made. Please try again later."

    invoke-direct {v11, v13, v14, v15}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/mopub/mobileads/MoPubErrorCode;->TOO_MANY_REQUESTS:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 8
    new-instance v13, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v15, "INTERNAL_ERROR"

    const/4 v14, 0x7

    const-string v12, "Unable to serve ad due to invalid internal state."

    invoke-direct {v13, v15, v14, v12}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 9
    new-instance v12, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v15, "RENDER_PROCESS_GONE_WITH_CRASH"

    const/16 v14, 0x8

    const-string v10, "Render process for this WebView has crashed."

    invoke-direct {v12, v15, v14, v10}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/mopub/mobileads/MoPubErrorCode;->RENDER_PROCESS_GONE_WITH_CRASH:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 10
    new-instance v10, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v15, "RENDER_PROCESS_GONE_UNSPECIFIED"

    const/16 v14, 0x9

    const-string v8, "Render process is gone for this WebView. Unspecified cause."

    invoke-direct {v10, v15, v14, v8}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/mopub/mobileads/MoPubErrorCode;->RENDER_PROCESS_GONE_UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 11
    new-instance v8, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v15, "CANCELLED"

    const/16 v14, 0xa

    const-string v6, "Ad request was cancelled."

    invoke-direct {v8, v15, v14, v6}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/mopub/mobileads/MoPubErrorCode;->CANCELLED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 12
    new-instance v6, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v15, "MISSING_AD_UNIT_ID"

    const/16 v14, 0xb

    const-string v4, "Unable to serve ad due to missing or empty ad unit ID."

    invoke-direct {v6, v15, v14, v4}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/mopub/mobileads/MoPubErrorCode;->MISSING_AD_UNIT_ID:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 13
    new-instance v4, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v15, "NO_CONNECTION"

    const/16 v14, 0xc

    const-string v2, "No internet connection detected."

    invoke-direct {v4, v15, v14, v2}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 14
    new-instance v2, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v15, "ADAPTER_NOT_FOUND"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "Unable to find Native Network or ad adapter."

    invoke-direct {v2, v15, v14, v4}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 15
    new-instance v4, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v15, "ADAPTER_CONFIGURATION_ERROR"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "Native Network or ad adapter was configured incorrectly."

    invoke-direct {v4, v15, v14, v2}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 16
    new-instance v2, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v15, "ADAPTER_INITIALIZATION_SUCCESS"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "AdapterConfiguration initialization success."

    invoke-direct {v2, v15, v14, v4}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_INITIALIZATION_SUCCESS:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 17
    new-instance v4, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v15, "EXPIRED"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const-string v2, "Ad expired since it was not shown within 4 hours."

    invoke-direct {v4, v15, v14, v2}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->EXPIRED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 18
    new-instance v2, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v15, "NETWORK_TIMEOUT"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const-string v4, "Third-party network failed to respond in a timely manner."

    invoke-direct {v2, v15, v14, v4}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_TIMEOUT:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 19
    new-instance v4, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v15, "NETWORK_NO_FILL"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const-string v2, "Third-party network failed to provide an ad."

    invoke-direct {v4, v15, v14, v2}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 20
    new-instance v2, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v15, "NETWORK_INVALID_STATE"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const-string v4, "Third-party network failed due to invalid internal state."

    invoke-direct {v2, v15, v14, v4}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 21
    new-instance v4, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v15, "MRAID_LOAD_ERROR"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const-string v2, "Error loading MRAID ad."

    invoke-direct {v4, v15, v14, v2}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 22
    new-instance v15, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v14, "HTML_LOAD_ERROR"

    move-object/from16 v24, v4

    const/16 v4, 0x15

    invoke-direct {v15, v14, v4, v2}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/mopub/mobileads/MoPubErrorCode;->HTML_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 23
    new-instance v2, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v4, "INLINE_LOAD_ERROR"

    const/16 v14, 0x16

    move-object/from16 v25, v15

    const-string v15, "Error loading INLINE ad."

    invoke-direct {v2, v4, v14, v15}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->INLINE_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 24
    new-instance v4, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v14, "FULLSCREEN_LOAD_ERROR"

    const/16 v15, 0x17

    move-object/from16 v26, v2

    const-string v2, "Error loading FULLSCREEN ad."

    invoke-direct {v4, v14, v15, v2}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->FULLSCREEN_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 25
    new-instance v2, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v14, "INLINE_SHOW_ERROR"

    const/16 v15, 0x18

    move-object/from16 v27, v4

    const-string v4, "Error showing INLINE ad."

    invoke-direct {v2, v14, v15, v4}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->INLINE_SHOW_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 26
    new-instance v4, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v14, "FULLSCREEN_SHOW_ERROR"

    const/16 v15, 0x19

    move-object/from16 v28, v2

    const-string v2, "Error showing FULLSCREEN ad."

    invoke-direct {v4, v14, v15, v2}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->FULLSCREEN_SHOW_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 27
    new-instance v2, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v14, "VIDEO_CACHE_ERROR"

    const/16 v15, 0x1a

    move-object/from16 v29, v4

    const-string v4, "Error creating a cache to store downloaded videos."

    invoke-direct {v2, v14, v15, v4}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_CACHE_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 28
    new-instance v4, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v14, "VIDEO_DOWNLOAD_ERROR"

    const/16 v15, 0x1b

    move-object/from16 v30, v2

    const-string v2, "Error downloading video."

    invoke-direct {v4, v14, v15, v2}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_DOWNLOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 29
    new-instance v2, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v14, "GDPR_DOES_NOT_APPLY"

    const/16 v15, 0x1c

    move-object/from16 v31, v4

    const-string v4, "GDPR does not apply. Ignoring consent-related actions."

    invoke-direct {v2, v14, v15, v4}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->GDPR_DOES_NOT_APPLY:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 30
    new-instance v4, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v14, "REWARDED_CURRENCIES_PARSING_ERROR"

    const/16 v15, 0x1d

    move-object/from16 v32, v2

    const-string v2, "Error parsing rewarded currencies JSON header."

    invoke-direct {v4, v14, v15, v2}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->REWARDED_CURRENCIES_PARSING_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 31
    new-instance v2, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v14, "REWARD_NOT_SELECTED"

    const/16 v15, 0x1e

    move-object/from16 v33, v4

    const-string v4, "Reward not selected for rewarded ad."

    invoke-direct {v2, v14, v15, v4}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->REWARD_NOT_SELECTED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 32
    new-instance v4, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v14, "AD_NOT_AVAILABLE"

    const/16 v15, 0x1f

    move-object/from16 v34, v2

    const-string v2, "No ad loaded for ad unit."

    invoke-direct {v4, v14, v15, v2}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->AD_NOT_AVAILABLE:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 33
    new-instance v2, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v14, "AD_SHOW_ERROR"

    const/16 v15, 0x20

    move-object/from16 v35, v4

    const-string v4, "Error showing an ad."

    invoke-direct {v2, v14, v15, v4}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->AD_SHOW_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 34
    new-instance v4, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v14, "VIDEO_NOT_AVAILABLE"

    const/16 v15, 0x21

    move-object/from16 v36, v2

    const-string v2, "No video loaded for ad unit."

    invoke-direct {v4, v14, v15, v2}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_NOT_AVAILABLE:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 35
    new-instance v2, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v14, "VIDEO_PLAYBACK_ERROR"

    const/16 v15, 0x22

    move-object/from16 v37, v4

    const-string v4, "Error playing a video."

    invoke-direct {v2, v14, v15, v4}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_PLAYBACK_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    const/16 v4, 0x23

    new-array v4, v4, [Lcom/mopub/mobileads/MoPubErrorCode;

    const/4 v14, 0x0

    aput-object v0, v4, v14

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    const/16 v0, 0x15

    aput-object v25, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v27, v4, v0

    const/16 v0, 0x18

    aput-object v28, v4, v0

    const/16 v0, 0x19

    aput-object v29, v4, v0

    const/16 v0, 0x1a

    aput-object v30, v4, v0

    const/16 v0, 0x1b

    aput-object v31, v4, v0

    const/16 v0, 0x1c

    aput-object v32, v4, v0

    const/16 v0, 0x1d

    aput-object v33, v4, v0

    const/16 v0, 0x1e

    aput-object v34, v4, v0

    const/16 v0, 0x1f

    aput-object v35, v4, v0

    const/16 v0, 0x20

    aput-object v36, v4, v0

    const/16 v0, 0x21

    aput-object v37, v4, v0

    const/16 v0, 0x22

    aput-object v2, v4, v0

    .line 36
    sput-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->b:[Lcom/mopub/mobileads/MoPubErrorCode;

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
    iput-object p3, p0, Lcom/mopub/mobileads/MoPubErrorCode;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/MoPubErrorCode;
    .locals 1

    .line 1
    const-class v0, Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/mopub/mobileads/MoPubErrorCode;
    .locals 1

    .line 1
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->b:[Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/MoPubErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/MoPubErrorCode;

    return-object v0
.end method


# virtual methods
.method public getIntCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    const/16 v0, 0x2710

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubErrorCode;->a:Ljava/lang/String;

    return-object v0
.end method
