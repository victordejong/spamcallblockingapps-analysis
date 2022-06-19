.class public Lcom/huawei/hms/support/api/entity/safetydetect/VerifyAppsCheckEnabledResp;
.super Lcom/huawei/hms/support/api/entity/safetydetect/base/BaseResp;
.source "SourceFile"


# instance fields
.field private result:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/huawei/hms/support/api/entity/safetydetect/base/BaseResp;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "result"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/huawei/hms/support/api/entity/safetydetect/VerifyAppsCheckEnabledResp;->result:Z

    return-void
.end method


# virtual methods
.method public getResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/hms/support/api/entity/safetydetect/VerifyAppsCheckEnabledResp;->result:Z

    return v0
.end method

.method public setResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/hms/support/api/entity/safetydetect/VerifyAppsCheckEnabledResp;->result:Z

    return-void
.end method
