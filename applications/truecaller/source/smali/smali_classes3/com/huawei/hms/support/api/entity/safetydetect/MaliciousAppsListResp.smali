.class public Lcom/huawei/hms/support/api/entity/safetydetect/MaliciousAppsListResp;
.super Lcom/huawei/hms/support/api/entity/safetydetect/base/BaseResp;
.source "SourceFile"


# instance fields
.field private maliciousAppsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/hms/support/api/entity/safetydetect/MaliciousAppsData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/huawei/hms/support/api/entity/safetydetect/base/BaseResp;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/support/api/entity/safetydetect/MaliciousAppsListResp;->maliciousAppsList:Ljava/util/ArrayList;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "harmfulAppsList"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/huawei/hms/support/api/entity/safetydetect/MaliciousAppsListResp;->maliciousAppsList:Ljava/util/ArrayList;

    new-instance v2, Lcom/huawei/hms/support/api/entity/safetydetect/MaliciousAppsData;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/huawei/hms/support/api/entity/safetydetect/MaliciousAppsData;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getMaliciousAppsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/hms/support/api/entity/safetydetect/MaliciousAppsData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/safetydetect/MaliciousAppsListResp;->maliciousAppsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setMaliciousAppsList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/hms/support/api/entity/safetydetect/MaliciousAppsData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/safetydetect/MaliciousAppsListResp;->maliciousAppsList:Ljava/util/ArrayList;

    return-void
.end method
