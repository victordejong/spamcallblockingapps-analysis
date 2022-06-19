.class public synthetic Le/i/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/criteo/publisher/CriteoErrorCode;->values()[Lcom/criteo/publisher/CriteoErrorCode;

    const/4 v0, 0x4

    new-array v1, v0, [I

    sput-object v1, Le/i/a/a/d;->a:[I

    const/4 v2, 0x1

    const/4 v3, 0x3

    :try_start_0
    sget-object v4, Lcom/criteo/publisher/CriteoErrorCode;->ERROR_CODE_INTERNAL_ERROR:Lcom/criteo/publisher/CriteoErrorCode;

    aput v2, v1, v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v4, Le/i/a/a/d;->a:[I

    sget-object v5, Lcom/criteo/publisher/CriteoErrorCode;->ERROR_CODE_NETWORK_ERROR:Lcom/criteo/publisher/CriteoErrorCode;

    aput v1, v4, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Le/i/a/a/d;->a:[I

    sget-object v4, Lcom/criteo/publisher/CriteoErrorCode;->ERROR_CODE_INVALID_REQUEST:Lcom/criteo/publisher/CriteoErrorCode;

    aput v3, v2, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Le/i/a/a/d;->a:[I

    sget-object v2, Lcom/criteo/publisher/CriteoErrorCode;->ERROR_CODE_NO_FILL:Lcom/criteo/publisher/CriteoErrorCode;

    const/4 v2, 0x0

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
