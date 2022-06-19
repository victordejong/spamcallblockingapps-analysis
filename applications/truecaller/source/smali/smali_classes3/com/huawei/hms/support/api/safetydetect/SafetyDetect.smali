.class public Lcom/huawei/hms/support/api/safetydetect/SafetyDetect;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClient(Landroid/app/Activity;)Lcom/huawei/hms/support/api/safetydetect/SafetyDetectClient;
    .locals 2

    invoke-static {p0}, Lcom/huawei/hms/utils/Checker;->assertNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/huawei/hms/support/api/safetydetect/d;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/safetydetect/d;-><init>()V

    new-instance v1, Lcom/huawei/hms/support/api/safetydetect/b;

    invoke-direct {v1, p0, v0}, Lcom/huawei/hms/support/api/safetydetect/b;-><init>(Landroid/app/Activity;Lcom/huawei/hms/support/api/safetydetect/d;)V

    return-object v1
.end method

.method public static getClient(Landroid/content/Context;)Lcom/huawei/hms/support/api/safetydetect/SafetyDetectClient;
    .locals 2

    invoke-static {p0}, Lcom/huawei/hms/utils/Checker;->assertNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/huawei/hms/support/api/safetydetect/d;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/safetydetect/d;-><init>()V

    new-instance v1, Lcom/huawei/hms/support/api/safetydetect/b;

    invoke-direct {v1, p0, v0}, Lcom/huawei/hms/support/api/safetydetect/b;-><init>(Landroid/content/Context;Lcom/huawei/hms/support/api/safetydetect/d;)V

    return-object v1
.end method
