.class public final Lcom/facebook/ads/redexgen/X/ZA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Z9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceFeature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/6r<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 67417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67418
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZA;->A00:Ljava/lang/String;

    .line 67419
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Z9;->A01()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZA;->A01:Z

    .line 67420
    return-void
.end method

.method private final A00(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 67421
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZA;->A00:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZA;->A01:Z

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 67422
    return-object p2
.end method


# virtual methods
.method public final A8K(Ljava/lang/Object;)Z
    .locals 2

    .line 67423
    check-cast p1, Lcom/facebook/ads/redexgen/X/ZA;

    .line 67424
    .local p0, "newDeviceFeature":Lcom/facebook/ads/redexgen/X/ZA;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZA;->A00:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/ZA;->A00:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/ZA;->A01:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/ZA;->A01:Z

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AEd()I
    .locals 1

    .line 67425
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZA;->A00:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final bridge synthetic AEz(Ljava/lang/Object;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 67426
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/ZA;->A00(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
