.class public Lcom/amazon/device/ads/MraidFirePixelCommand;
.super Lcom/amazon/device/ads/MraidCommand;
.source "SourceFile"


# static fields
.field public static final NAME:Ljava/lang/String; = "impFired"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazon/device/ads/MraidCommand;-><init>()V

    return-void
.end method

.method public static getMraidName()Ljava/lang/String;
    .locals 1

    const-string v0, "impFired"

    return-object v0
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;Lcom/amazon/device/ads/DTBAdMRAIDController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/amazon/device/ads/DTBAdMRAIDController;->impressionFired()V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "impFired"

    return-object v0
.end method
