.class public final Lcom/revenuecat/purchases/common/HTTPClient$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/revenuecat/purchases/common/HTTPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field private body:Lorg/json/JSONObject;

.field private responseCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBody()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/HTTPClient$Result;->body:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getResponseCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/revenuecat/purchases/common/HTTPClient$Result;->responseCode:I

    return v0
.end method

.method public final setBody(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/revenuecat/purchases/common/HTTPClient$Result;->body:Lorg/json/JSONObject;

    return-void
.end method

.method public final setResponseCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/revenuecat/purchases/common/HTTPClient$Result;->responseCode:I

    return-void
.end method
