.class public Lcom/huawei/hms/support/api/entity/safetydetect/base/BaseResp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private errorReason:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private rtnCode:I
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/safetydetect/base/BaseResp;->errorReason:Ljava/lang/String;

    return-object v0
.end method

.method public getRtnCode()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/support/api/entity/safetydetect/base/BaseResp;->rtnCode:I

    return v0
.end method

.method public setErrorReason(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/safetydetect/base/BaseResp;->errorReason:Ljava/lang/String;

    return-void
.end method

.method public setRtnCode(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/hms/support/api/entity/safetydetect/base/BaseResp;->rtnCode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "rtnCode="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huawei/hms/support/api/entity/safetydetect/base/BaseResp;->getRtnCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "|errorReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/huawei/hms/support/api/entity/safetydetect/base/BaseResp;->getErrorReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
