.class public Lcom/huawei/hms/availableupdate/w;
.super Lcom/huawei/hms/availableupdate/v;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/huawei/hms/availableupdate/v;-><init>(Lcom/huawei/hms/availableupdate/u;)V

    return-void
.end method


# virtual methods
.method public h()I
    .locals 1

    const-string v0, "hms_update_nettype"

    .line 1
    invoke-static {v0}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getStringId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    const-string v0, "hms_cancel"

    .line 1
    invoke-static {v0}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getStringId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    const-string v0, "hms_update_continue"

    .line 1
    invoke-static {v0}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getStringId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
