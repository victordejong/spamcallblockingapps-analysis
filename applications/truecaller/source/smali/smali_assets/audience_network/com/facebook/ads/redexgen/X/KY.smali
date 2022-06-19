.class public final Lcom/facebook/ads/redexgen/X/KY;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/KY;

.field public static A01:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 41767
    invoke-static {}, Lcom/facebook/ads/redexgen/X/KY;->A05()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/KY;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/KY;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/KY;->A00:Lcom/facebook/ads/redexgen/X/KY;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized A00()Lcom/facebook/ads/redexgen/X/KY;
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/KY;

    monitor-enter v1

    .line 41769
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/KY;->A00:Lcom/facebook/ads/redexgen/X/KY;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/XT;Lorg/json/JSONObject;J)Lcom/facebook/ads/redexgen/X/TW;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 41770
    const/16 v2, 0x7c

    const/16 v1, 0xa

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KY;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 41771
    .local p1, "placements":Lorg/json/JSONArray;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 41772
    .local p2, "placement":Lorg/json/JSONObject;
    const/16 v2, 0x58

    const/16 v1, 0xa

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KY;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 41773
    .local p3, "definition":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/95;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/95;

    move-result-object v6

    .line 41774
    .local v4, "placementDefinition":Lcom/facebook/ads/redexgen/X/95;
    const/16 v2, 0x67

    const/16 v1, 0xe

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KY;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41775
    .local p2, "featureConfig":Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KY;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41776
    .local v2, "adReportingConfig":Ljava/lang/String;
    new-instance v5, Lcom/facebook/ads/redexgen/X/94;

    invoke-direct {v5, v6, v3, v0}, Lcom/facebook/ads/redexgen/X/94;-><init>(Lcom/facebook/ads/redexgen/X/95;Ljava/lang/String;Ljava/lang/String;)V

    .line 41777
    .local v1, "adPlacement":Lcom/facebook/ads/redexgen/X/94;
    const/16 v2, 0x1a

    const/4 v1, 0x3

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KY;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41778
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 41779
    .local v0, "ads":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 41780
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 41781
    .local v1, "ad":Lorg/json/JSONObject;
    const/4 v0, 0x0

    invoke-static {p1, v9, p3, p4, v0}, Lcom/facebook/ads/redexgen/X/Jd;->A06(Lcom/facebook/ads/redexgen/X/XT;Lorg/json/JSONObject;JLjava/lang/String;)V

    .line 41782
    const/16 v2, 0x13

    const/4 v1, 0x7

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KY;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 41783
    .local v0, "adapter":Ljava/lang/String;
    const/16 v2, 0x49

    const/16 v1, 0xf

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KY;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 41784
    .local v0, "dataModelType":Ljava/lang/String;
    .end local p1    # "placements":Lorg/json/JSONArray;
    .local v0, "placements":Lorg/json/JSONArray;
    const/16 v2, 0x33

    const/4 v1, 0x4

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KY;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 41785
    .local p1, "data":Lorg/json/JSONObject;
    .end local p2    # "featureConfig":Ljava/lang/String;
    .local v0, "placement":Lorg/json/JSONObject;
    const/16 v2, 0x86

    const/16 v1, 0x8

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KY;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 41786
    .local p2, "trackers":Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    .line 41787
    .end local p3    # "definition":Lorg/json/JSONObject;
    .local v6, "definition":Lorg/json/JSONObject;
    new-instance v0, Lcom/facebook/ads/redexgen/X/92;

    invoke-direct {v0, v8, v4, v3, v1}, Lcom/facebook/ads/redexgen/X/92;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)V

    .line 41788
    .local p3, "adCandidate":Lcom/facebook/ads/redexgen/X/92;
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/94;->A09(Lcom/facebook/ads/redexgen/X/92;)V

    .line 41789
    .end local p3    # "adCandidate":Lcom/facebook/ads/redexgen/X/92;
    .end local v1    # "ad":Lorg/json/JSONObject;
    .end local v0    # "placement":Lorg/json/JSONObject;
    .end local v0
    .end local v2    # "adReportingConfig":Ljava/lang/String;
    .end local v1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 41790
    .end local v6    # "definition":Lorg/json/JSONObject;
    .local p3, "definition":Lorg/json/JSONObject;
    .end local p3    # "definition":Lorg/json/JSONObject;
    .restart local v6    # "definition":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 41791
    .end local p1    # "data":Lorg/json/JSONObject;
    .local v1, "data":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v3

    .end local p2    # "trackers":Lorg/json/JSONArray;
    .local v2, "trackers":Lorg/json/JSONArray;
    const/16 v2, 0x37

    const/16 v1, 0x12

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KY;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/0R;->A4X(ILjava/lang/String;)V

    goto :goto_1

    .line 41792
    .end local p1
    .end local p2
    .end local p3
    .restart local v0    # "placement":Lorg/json/JSONObject;
    .restart local v0    # "placement":Lorg/json/JSONObject;
    .restart local v6    # "definition":Lorg/json/JSONObject;
    :cond_1
    const/16 v2, 0x1d

    const/16 v1, 0x12

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KY;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41793
    .local p1, "anValidationUuid":Ljava/lang/String;
    new-instance v0, Lcom/facebook/ads/redexgen/X/TW;

    invoke-direct {v0, v5, v1}, Lcom/facebook/ads/redexgen/X/TW;-><init>(Lcom/facebook/ads/redexgen/X/94;Ljava/lang/String;)V

    return-object v0
.end method

.method private A02(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/TV;
    .locals 4

    .line 41794
    const/16 v2, 0x75

    const/4 v1, 0x7

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KY;->A04(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KY;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2f

    const/4 v1, 0x4

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KY;->A04(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/TV;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/TV;-><init>(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/94;)V

    .line 41795
    return-object v0
.end method

.method private A03(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/TV;
    .locals 8

    .line 41796
    :try_start_0
    const/16 v2, 0x7c

    const/16 v1, 0xa

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KY;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 41797
    .local p0, "placements":Lorg/json/JSONArray;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 41798
    .local v2, "placement":Lorg/json/JSONObject;
    const/16 v2, 0x58

    const/16 v1, 0xa

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KY;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 41799
    .local v1, "definition":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/95;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/95;

    move-result-object v6

    .line 41800
    .local v0, "placementDefinition":Lcom/facebook/ads/redexgen/X/95;
    const/16 v2, 0x67

    const/16 v1, 0xe

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KY;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 41801
    .local v0, "featureConfig":Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KY;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 41802
    .local v0, "adReportingConfig":Ljava/lang/String;
    const/16 v2, 0x75

    const/4 v1, 0x7

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KY;->A04(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KY;->A04(III)Ljava/lang/String;

    move-result-object v0

    .line 41803
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2f

    const/4 v1, 0x4

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KY;->A04(III)Ljava/lang/String;

    move-result-object v0

    .line 41804
    invoke-virtual {p1, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/94;

    invoke-direct {v1, v6, v5, v4}, Lcom/facebook/ads/redexgen/X/94;-><init>(Lcom/facebook/ads/redexgen/X/95;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/TV;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/TV;-><init>(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/94;)V

    .line 41805
    return-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41806
    .end local p0    # "placements":Lorg/json/JSONArray;
    .end local v2    # "placement":Lorg/json/JSONObject;
    .end local v1    # "definition":Lorg/json/JSONObject;
    .end local v0    # "adReportingConfig":Ljava/lang/String;
    .end local v0
    .end local v0
    .local p0, "e":Lorg/json/JSONException;
    :catch_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KY;->A02(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/TV;

    move-result-object v0

    return-object v0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/KY;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x77

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x92

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KY;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x74t
        0x71t
        0x4at
        0x67t
        0x70t
        0x65t
        0x7at
        0x67t
        0x61t
        0x7ct
        0x7bt
        0x72t
        0x4at
        0x76t
        0x7at
        0x7bt
        0x73t
        0x7ct
        0x72t
        0x31t
        0x34t
        0x31t
        0x20t
        0x24t
        0x35t
        0x22t
        0x2ft
        0x2at
        0x3dt
        0x17t
        0x18t
        0x29t
        0x0t
        0x17t
        0x1at
        0x1ft
        0x12t
        0x17t
        0x2t
        0x1ft
        0x19t
        0x18t
        0x29t
        0x3t
        0x3t
        0x1ft
        0x12t
        0x60t
        0x6ct
        0x67t
        0x66t
        0x10t
        0x15t
        0x0t
        0x15t
        0x67t
        0x62t
        0x77t
        0x62t
        0x4ct
        0x61t
        0x69t
        0x66t
        0x60t
        0x77t
        0x23t
        0x6at
        0x70t
        0x23t
        0x6dt
        0x76t
        0x6ft
        0x6ft
        0x41t
        0x44t
        0x51t
        0x44t
        0x7at
        0x48t
        0x4at
        0x41t
        0x40t
        0x49t
        0x7at
        0x51t
        0x5ct
        0x55t
        0x40t
        0x2ct
        0x2dt
        0x2et
        0x21t
        0x26t
        0x21t
        0x3ct
        0x21t
        0x27t
        0x26t
        0x45t
        0x52t
        0x52t
        0x4ft
        0x52t
        0x57t
        0x54t
        0x50t
        0x45t
        0x44t
        0x43t
        0x54t
        0x6et
        0x52t
        0x5et
        0x5ft
        0x57t
        0x58t
        0x56t
        0x42t
        0x4at
        0x5ct
        0x5ct
        0x4et
        0x48t
        0x4at
        0x15t
        0x9t
        0x4t
        0x6t
        0x0t
        0x8t
        0x0t
        0xbt
        0x11t
        0x16t
        0x16t
        0x10t
        0x3t
        0x1t
        0x9t
        0x7t
        0x10t
        0x11t
        0x4dt
        0x40t
        0x49t
        0x5ct
    .end array-data
.end method


# virtual methods
.method public final A06(Lcom/facebook/ads/redexgen/X/XT;Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Ka;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 41807
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 41808
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 41809
    .local p0, "jsonResponse":Lorg/json/JSONObject;
    const/16 v2, 0x8e

    const/4 v1, 0x4

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KY;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 41810
    .local p1, "type":Ljava/lang/String;
    const/4 v6, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v8, 0x178b0

    const/16 v2, 0x62

    const/4 v1, 0x5

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KY;->A04(III)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    if-eq v9, v8, :cond_2

    const v0, 0x5c4d208

    if-eq v9, v0, :cond_1

    :cond_0
    :goto_0
    if-eqz v6, :cond_4

    if-eq v6, v3, :cond_3

    .line 41811
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 41812
    .local p2, "error":Lorg/json/JSONObject;
    if-eqz v0, :cond_5

    .line 41813
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/KY;->A02(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/TV;

    move-result-object v0

    return-object v0

    .line 41814
    :cond_1
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/16 v2, 0x1a

    const/4 v1, 0x3

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KY;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    .line 41815
    .end local p2    # "error":Lorg/json/JSONObject;
    :cond_3
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/KY;->A03(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/TV;

    move-result-object v0

    return-object v0

    .line 41816
    :cond_4
    invoke-direct {p0, p1, v5, p3, p4}, Lcom/facebook/ads/redexgen/X/KY;->A01(Lcom/facebook/ads/redexgen/X/XT;Lorg/json/JSONObject;J)Lcom/facebook/ads/redexgen/X/TW;

    move-result-object v0

    return-object v0

    .line 41817
    .end local p0    # "jsonResponse":Lorg/json/JSONObject;
    .end local p1    # "type":Ljava/lang/String;
    :cond_5
    sget-object v1, Lcom/facebook/ads/redexgen/X/KZ;->A04:Lcom/facebook/ads/redexgen/X/KZ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ka;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Ka;-><init>(Lcom/facebook/ads/redexgen/X/KZ;)V

    return-object v0
.end method
