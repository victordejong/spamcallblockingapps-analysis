.class public final Lcom/facebook/ads/redexgen/X/af;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6B;


# static fields
.field public static A01:[B

.field public static final A02:Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/XS;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 68209
    invoke-static {}, Lcom/facebook/ads/redexgen/X/af;->A01()V

    const-class v0, Lcom/facebook/ads/redexgen/X/af;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/af;->A02:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XS;)V
    .locals 0

    .line 68210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68211
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/af;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 68212
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/af;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x43

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/af;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x49t
        0x74t
        0x6ft
        0x69t
        0x7ct
        0x78t
        0x65t
        0x63t
        0x62t
        0x2ct
        0x6et
        0x79t
        0x65t
        0x60t
        0x68t
        0x65t
        0x62t
        0x6bt
        0x2ct
        0x4at
        0x4dt
        0x42t
        0x2ct
        0x60t
        0x63t
        0x6bt
        0x6bt
        0x65t
        0x62t
        0x6bt
        0x2ct
        0x46t
        0x5ft
        0x43t
        0x42t
        0x45t
        0x57t
        0x4dt
        0x40t
        0x47t
        0x41t
        0x7at
        0x41t
        0x44t
        0x51t
        0x44t
        0x7at
        0x49t
        0x4at
        0x42t
        0x42t
        0x4ct
        0x4bt
        0x42t
        0x48t
        0x43t
        0x4et
        0x79t
        0x6et
        0x41t
        0x47t
        0x20t
        0x36t
        0x27t
        0x9t
        0x10t
        0x1et
    .end array-data
.end method


# virtual methods
.method public final A9A(Ljava/lang/String;Ljava/lang/String;IIILorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/6p;)V
    .locals 5

    .line 68213
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 68214
    .local p0, "loggingData":Lorg/json/JSONObject;
    :try_start_0
    const/16 v2, 0x23

    const/4 v1, 0x4

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/af;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68215
    const/16 v2, 0x36

    const/4 v1, 0x3

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/af;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68216
    const/16 v2, 0x39

    const/4 v1, 0x2

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/af;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 68217
    const/16 v2, 0x3b

    const/4 v1, 0x2

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/af;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 68218
    const/16 v2, 0x3d

    const/4 v1, 0x3

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/af;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 68219
    const/16 v2, 0x40

    const/4 v1, 0x3

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/af;->A00(III)Ljava/lang/String;

    move-result-object v1

    .line 68220
    invoke-virtual {p6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/facebook/ads/redexgen/X/76;->A01(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68221
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68222
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/String;)V

    .line 68223
    .local p1, "bdSignalData":Lcom/facebook/ads/redexgen/X/8n;
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/8n;->A03(I)V

    .line 68224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/af;->A00:Lcom/facebook/ads/redexgen/X/XS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v3

    const/16 v2, 0x27

    const/16 v1, 0xf

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/af;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0xc81

    invoke-interface {v3, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/8l;->A8r(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68225
    :catch_0
    move-exception v4

    .line 68226
    .local p1, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/facebook/ads/redexgen/X/af;->A02:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x23

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/af;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68227
    .end local p1    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method
