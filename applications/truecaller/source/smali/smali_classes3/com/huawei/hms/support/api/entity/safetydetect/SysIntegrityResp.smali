.class public Lcom/huawei/hms/support/api/entity/safetydetect/SysIntegrityResp;
.super Lcom/huawei/hms/support/api/entity/safetydetect/base/BaseResp;
.source "SourceFile"


# instance fields
.field private result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/hms/support/api/entity/safetydetect/base/BaseResp;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/huawei/hms/support/api/entity/safetydetect/base/BaseResp;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "jwsResult"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/safetydetect/SysIntegrityResp;->result:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/safetydetect/SysIntegrityResp;->result:Ljava/lang/String;

    return-object v0
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/safetydetect/SysIntegrityResp;->result:Ljava/lang/String;

    return-void
.end method
