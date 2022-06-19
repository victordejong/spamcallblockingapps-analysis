.class public Lcom/huawei/hms/support/api/entity/safetydetect/UrlCheckResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private urlCheckThreats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hms/support/api/entity/safetydetect/UrlCheckThreat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/safetydetect/UrlCheckResponse;->urlCheckThreats:Ljava/util/List;

    const-string p1, "rtdResults"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "threatType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/huawei/hms/support/api/entity/safetydetect/UrlCheckResponse;->urlCheckThreats:Ljava/util/List;

    new-instance v2, Lcom/huawei/hms/support/api/entity/safetydetect/UrlCheckThreat;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/huawei/hms/support/api/entity/safetydetect/UrlCheckThreat;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getUrlCheckResponse()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huawei/hms/support/api/entity/safetydetect/UrlCheckThreat;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/safetydetect/UrlCheckResponse;->urlCheckThreats:Ljava/util/List;

    return-object v0
.end method
