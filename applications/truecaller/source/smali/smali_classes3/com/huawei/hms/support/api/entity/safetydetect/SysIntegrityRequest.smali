.class public Lcom/huawei/hms/support/api/entity/safetydetect/SysIntegrityRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private alg:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private nonce:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/safetydetect/SysIntegrityRequest;->alg:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/safetydetect/SysIntegrityRequest;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()[B
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/safetydetect/SysIntegrityRequest;->nonce:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    return-object v0
.end method

.method public setAlg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/safetydetect/SysIntegrityRequest;->alg:Ljava/lang/String;

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/safetydetect/SysIntegrityRequest;->appId:Ljava/lang/String;

    return-void
.end method

.method public setNonce([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/safetydetect/SysIntegrityRequest;->nonce:[B

    return-void
.end method
