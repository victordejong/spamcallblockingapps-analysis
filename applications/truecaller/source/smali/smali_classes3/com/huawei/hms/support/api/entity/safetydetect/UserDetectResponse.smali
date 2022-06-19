.class public Lcom/huawei/hms/support/api/entity/safetydetect/UserDetectResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private responseToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "responseToken"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/safetydetect/UserDetectResponse;->responseToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getResponseToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/safetydetect/UserDetectResponse;->responseToken:Ljava/lang/String;

    return-object v0
.end method
