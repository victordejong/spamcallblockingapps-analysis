.class public Lcom/huawei/hms/support/api/safetydetect/SafetyDetectStatusCodes;
.super Lcom/huawei/hms/common/api/CommonStatusCodes;
.source "SourceFile"


# static fields
.field public static final ANTI_FRAUD_INIT_FAIL:I = 0x4d6c

.field public static final ANTI_FRAUD_INIT_PARAM_INVALID:I = 0x4d6d

.field public static final APPS_CHECK_INTERNAL_ERROR:I = 0x4bc9

.field public static final CHECK_WITHOUT_INIT:I = 0x4c91

.field public static final DETECT_FAIL:I = 0x4d58

.field public static final INVALID_APPID:I = 0x4a3c

.field public static final NETWORK_ERROR:I = 0x4a3a

.field public static final PARAM_ERROR_EMPTY:I = 0x4ace

.field public static final PARAM_ERROR_INVALID:I = 0x4acf

.field public static final RISK_TOKEN_GET_FAIL:I = 0x4d76

.field public static final RISK_TOKEN_INNER_ERROR:I = 0x4d77

.field public static final SDK_INTERNAL_ERROR:I = 0x4a39

.field public static final UNSUPPORTED_AREA:I = 0x4a3b

.field public static final UNSUPPORTED_EMUI_VERSION:I = 0x4b02

.field public static final URL_CHECK_INNER_ERROR:I = 0x4c90

.field public static final URL_CHECK_REQUEST_APPID_INVALID:I = 0x4c94

.field public static final URL_CHECK_REQUEST_PARAM_INVALID:I = 0x4c93

.field public static final URL_CHECK_THREAT_TYPE_INVALID:I = 0x4c92

.field public static final USER_DETECT_INVALID_APPID:I = 0x4d5a

.field public static final USER_DETECT_TIMEOUT:I = 0x4d59

.field public static final VERIFY_APPS_VIRUS_NUMBER_EXCEEDED:I = 0x4bca


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/hms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/huawei/hms/support/api/entity/core/CommonCode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/huawei/hms/support/api/entity/core/CommonCode$StatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/huawei/hms/support/api/entity/core/CommonCode$ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/huawei/hms/support/api/entity/auth/AuthCode$StatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/huawei/hms/support/api/entity/auth/AuthCode$ErrorCode;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/huawei/hms/support/api/safetydetect/SafetyDetectStatusCodes;->a(I[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/huawei/hms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string v0, "FRAMEWORK_INNER_ERROR"

    :cond_1
    return-object v0
.end method

.method private static varargs a(I[Ljava/lang/Class;)Ljava/lang/String;
    .locals 11

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    :try_start_0
    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v9, :cond_1

    return-object v8

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    return-object v0
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/huawei/hms/support/api/safetydetect/SafetyDetectStatusCodes;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/huawei/hms/support/api/safetydetect/SafetyDetectStatusCodes;->a(I[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/huawei/hms/support/api/safetydetect/SafetyDetectStatusCodes;->a(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
