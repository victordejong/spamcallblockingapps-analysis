.class public Lcom/amazon/device/ads/MraidCloseCommand;
.super Lcom/amazon/device/ads/MraidCommand;
.source "SourceFile"


# static fields
.field public static final NAME:Ljava/lang/String; = "close"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazon/device/ads/MraidCommand;-><init>()V

    return-void
.end method

.method public static getMraidName()Ljava/lang/String;
    .locals 1

    const-string v0, "close"

    return-object v0
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;Lcom/amazon/device/ads/DTBAdMRAIDController;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/amazon/device/ads/DTBAdMRAIDController;->onMRAIDClose()V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "close"

    return-object v0
.end method
