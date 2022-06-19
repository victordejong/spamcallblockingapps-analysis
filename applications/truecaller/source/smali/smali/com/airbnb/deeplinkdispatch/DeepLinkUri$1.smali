.class public synthetic Lcom/airbnb/deeplinkdispatch/DeepLinkUri$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/deeplinkdispatch/DeepLinkUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$airbnb$deeplinkdispatch$DeepLinkUri$Builder$ParseResult:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/airbnb/deeplinkdispatch/DeepLinkUri$Builder$ParseResult;->values()[Lcom/airbnb/deeplinkdispatch/DeepLinkUri$Builder$ParseResult;

    const/4 v0, 0x5

    new-array v1, v0, [I

    sput-object v1, Lcom/airbnb/deeplinkdispatch/DeepLinkUri$1;->$SwitchMap$com$airbnb$deeplinkdispatch$DeepLinkUri$Builder$ParseResult:[I

    const/4 v2, 0x1

    :try_start_0
    sget-object v3, Lcom/airbnb/deeplinkdispatch/DeepLinkUri$Builder$ParseResult;->SUCCESS:Lcom/airbnb/deeplinkdispatch/DeepLinkUri$Builder$ParseResult;

    const/4 v3, 0x0

    aput v2, v1, v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    const/4 v3, 0x4

    :try_start_1
    sget-object v4, Lcom/airbnb/deeplinkdispatch/DeepLinkUri$1;->$SwitchMap$com$airbnb$deeplinkdispatch$DeepLinkUri$Builder$ParseResult:[I

    sget-object v5, Lcom/airbnb/deeplinkdispatch/DeepLinkUri$Builder$ParseResult;->INVALID_HOST:Lcom/airbnb/deeplinkdispatch/DeepLinkUri$Builder$ParseResult;

    aput v1, v4, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v4, 0x3

    :try_start_2
    sget-object v5, Lcom/airbnb/deeplinkdispatch/DeepLinkUri$1;->$SwitchMap$com$airbnb$deeplinkdispatch$DeepLinkUri$Builder$ParseResult:[I

    sget-object v6, Lcom/airbnb/deeplinkdispatch/DeepLinkUri$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lcom/airbnb/deeplinkdispatch/DeepLinkUri$Builder$ParseResult;

    aput v4, v5, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/airbnb/deeplinkdispatch/DeepLinkUri$1;->$SwitchMap$com$airbnb$deeplinkdispatch$DeepLinkUri$Builder$ParseResult:[I

    sget-object v5, Lcom/airbnb/deeplinkdispatch/DeepLinkUri$Builder$ParseResult;->MISSING_SCHEME:Lcom/airbnb/deeplinkdispatch/DeepLinkUri$Builder$ParseResult;

    aput v3, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/airbnb/deeplinkdispatch/DeepLinkUri$1;->$SwitchMap$com$airbnb$deeplinkdispatch$DeepLinkUri$Builder$ParseResult:[I

    sget-object v2, Lcom/airbnb/deeplinkdispatch/DeepLinkUri$Builder$ParseResult;->INVALID_PORT:Lcom/airbnb/deeplinkdispatch/DeepLinkUri$Builder$ParseResult;

    aput v0, v1, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
