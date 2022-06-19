.class public Lcom/huawei/hms/support/api/entity/safetydetect/MaliciousAppsData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private apkCategory:I

.field private apkPackageName:Ljava/lang/String;

.field private apkSha256:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "apkPackageName"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/safetydetect/MaliciousAppsData;->apkPackageName:Ljava/lang/String;

    const-string p1, "apkCategory"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/huawei/hms/support/api/entity/safetydetect/MaliciousAppsData;->apkCategory:I

    const-string p1, "apkSha256"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/safetydetect/MaliciousAppsData;->apkSha256:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApkCategory()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/support/api/entity/safetydetect/MaliciousAppsData;->apkCategory:I

    return v0
.end method

.method public getApkPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/safetydetect/MaliciousAppsData;->apkPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getApkSha256()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/safetydetect/MaliciousAppsData;->apkSha256:Ljava/lang/String;

    return-object v0
.end method

.method public setApkCategory(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/hms/support/api/entity/safetydetect/MaliciousAppsData;->apkCategory:I

    return-void
.end method

.method public setApkPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/safetydetect/MaliciousAppsData;->apkPackageName:Ljava/lang/String;

    return-void
.end method

.method public setApkSha256(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/safetydetect/MaliciousAppsData;->apkSha256:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "MaliciousAppsData{apkPackageName=\'"

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/support/api/entity/safetydetect/MaliciousAppsData;->apkPackageName:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", apkCategory="

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget v1, p0, Lcom/huawei/hms/support/api/entity/safetydetect/MaliciousAppsData;->apkCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", apkSha256=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/support/api/entity/safetydetect/MaliciousAppsData;->apkSha256:Ljava/lang/String;

    const/16 v3, 0x7d

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->f(Ljava/lang/StringBuilder;Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
