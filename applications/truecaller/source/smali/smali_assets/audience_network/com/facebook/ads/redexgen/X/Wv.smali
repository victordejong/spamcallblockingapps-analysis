.class public final Lcom/facebook/ads/redexgen/X/Wv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/9T;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/9U;
    }
.end annotation


# static fields
.field public static A03:[B

.field public static final A04:Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/XS;

.field public final A01:Lcom/facebook/ads/redexgen/X/9e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9e<",
            "Lcom/facebook/ads/redexgen/X/JQ;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Lcom/facebook/ads/redexgen/X/9e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9e<",
            "Lcom/facebook/ads/redexgen/X/JQ;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 65455
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wv;->A03()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Wv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wv;->A04:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XS;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65457
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Wv;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 65458
    const/16 v2, 0xb

    const/16 v1, 0x1c

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/9b;->A00(Ljava/lang/String;Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/9b;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Wx;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/Wx;-><init>(Lcom/facebook/ads/redexgen/X/Wv;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ws;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ws;-><init>(Lcom/facebook/ads/redexgen/X/9b;Lcom/facebook/ads/redexgen/X/9j;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wv;->A01:Lcom/facebook/ads/redexgen/X/9e;

    .line 65459
    const/16 v2, 0x142

    const/16 v1, 0x25

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/9b;->A00(Ljava/lang/String;Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/9b;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ww;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/Ww;-><init>(Lcom/facebook/ads/redexgen/X/Wv;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ws;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ws;-><init>(Lcom/facebook/ads/redexgen/X/9b;Lcom/facebook/ads/redexgen/X/9j;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wv;->A02:Lcom/facebook/ads/redexgen/X/9e;

    .line 65460
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wv;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x46

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01(Ljava/util/List;[B[I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;[B[I)",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 65461
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    const/4 v8, 0x0

    .line 65462
    .local p0, "start":I
    array-length v7, p3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    aget v5, p3, v6

    .line 65463
    .local p3, "size":I
    if-nez v5, :cond_1

    .line 65464
    :cond_0
    return-object p1

    .line 65465
    :cond_1
    :try_start_0
    invoke-static {p2, v8, v5}, Lcom/facebook/ads/redexgen/X/Wv;->A02([BII)Lorg/json/JSONObject;

    move-result-object v0

    .line 65466
    .local v8, "event":Lorg/json/JSONObject;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65467
    :catch_0
    move-exception v4

    .line 65468
    .local v8, "jsone":Lorg/json/JSONException;
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65469
    sget-object v3, Lcom/facebook/ads/redexgen/X/Wv;->A04:Ljava/lang/String;

    const/16 v2, 0x55

    const/16 v1, 0x2d

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65470
    :cond_2
    sget v0, Lcom/facebook/ads/redexgen/X/8m;->A2B:I

    invoke-direct {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/Wv;->A05(ILjava/lang/Throwable;)V

    .line 65471
    .end local v8    # "jsone":Lorg/json/JSONException;
    :goto_1
    add-int/2addr v8, v5

    .line 65472
    .end local p3    # "size":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static A02([BII)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 65473
    add-int v0, p1, p2

    invoke-static {p0, p1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x1e2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wv;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x66t
        0x64t
        0x2bt
        0x22t
        0x64t
        0x30t
        0x3dt
        0x34t
        0x21t
        0x7et
        0x64t
        0x18t
        0x3dt
        0x1ct
        0x2ft
        0x3ct
        0x37t
        0x2dt
        0xat
        0x2dt
        0x36t
        0x2bt
        0x38t
        0x3et
        0x3ct
        0xbt
        0x3ct
        0x3at
        0x36t
        0x2bt
        0x3dt
        0x1dt
        0x38t
        0x2dt
        0x38t
        0x3bt
        0x38t
        0x2at
        0x3ct
        0x69t
        0x48t
        0x41t
        0x48t
        0x59t
        0x48t
        0x49t
        0xdt
        0x48t
        0x5bt
        0x48t
        0x43t
        0x59t
        0x17t
        0xdt
        0xft
        0x42t
        0x65t
        0x6dt
        0x68t
        0x61t
        0x60t
        0x24t
        0x70t
        0x6bt
        0x24t
        0x67t
        0x68t
        0x61t
        0x65t
        0x76t
        0x24t
        0x61t
        0x72t
        0x61t
        0x6at
        0x70t
        0x77t
        0x24t
        0x77t
        0x70t
        0x6bt
        0x76t
        0x65t
        0x63t
        0x61t
        0x61t
        0x46t
        0x4et
        0x4bt
        0x42t
        0x43t
        0x7t
        0x53t
        0x48t
        0x7t
        0x43t
        0x42t
        0x54t
        0x42t
        0x55t
        0x4et
        0x46t
        0x4bt
        0x4et
        0x5dt
        0x42t
        0x7t
        0x46t
        0x49t
        0x7t
        0x42t
        0x51t
        0x42t
        0x49t
        0x53t
        0x7t
        0x41t
        0x55t
        0x48t
        0x4at
        0x7t
        0x43t
        0x46t
        0x53t
        0x46t
        0x45t
        0x46t
        0x54t
        0x42t
        0x7t
        0x6bt
        0x4ct
        0x44t
        0x41t
        0x48t
        0x49t
        0xdt
        0x59t
        0x42t
        0xdt
        0x40t
        0x42t
        0x5bt
        0x48t
        0xdt
        0x48t
        0x5bt
        0x48t
        0x43t
        0x59t
        0x5et
        0xdt
        0x4bt
        0x5ft
        0x42t
        0x40t
        0xdt
        0x44t
        0x43t
        0x0t
        0x4bt
        0x41t
        0x44t
        0x4at
        0x45t
        0x59t
        0xdt
        0x5et
        0x59t
        0x42t
        0x5ft
        0x4ct
        0x4at
        0x48t
        0xdt
        0x4ft
        0x4ct
        0x4et
        0x46t
        0xdt
        0x59t
        0x42t
        0xdt
        0x48t
        0x5bt
        0x48t
        0x43t
        0x59t
        0x5et
        0xdt
        0x49t
        0x4ct
        0x59t
        0x4ct
        0x4ft
        0x4ct
        0x5et
        0x48t
        0x76t
        0x51t
        0x59t
        0x5ct
        0x55t
        0x54t
        0x10t
        0x44t
        0x5ft
        0x10t
        0x40t
        0x51t
        0x42t
        0x43t
        0x55t
        0x10t
        0x51t
        0x5et
        0x10t
        0x55t
        0x46t
        0x55t
        0x5et
        0x44t
        0x10t
        0x56t
        0x42t
        0x5ft
        0x5dt
        0x10t
        0x59t
        0x5et
        0x1dt
        0x56t
        0x5ct
        0x59t
        0x57t
        0x58t
        0x44t
        0x10t
        0x43t
        0x44t
        0x5ft
        0x42t
        0x51t
        0x57t
        0x55t
        0x7bt
        0x5ct
        0x54t
        0x51t
        0x58t
        0x59t
        0x1dt
        0x49t
        0x52t
        0x1dt
        0x4ft
        0x58t
        0x5ct
        0x59t
        0x1dt
        0x49t
        0x55t
        0x58t
        0x1dt
        0x53t
        0x48t
        0x50t
        0x5ft
        0x58t
        0x4ft
        0x1dt
        0x52t
        0x5bt
        0x1dt
        0x58t
        0x4bt
        0x58t
        0x53t
        0x49t
        0x4et
        0x1dt
        0x5bt
        0x4ft
        0x52t
        0x50t
        0x1dt
        0x59t
        0x5ct
        0x49t
        0x5ct
        0x5ft
        0x5ct
        0x4et
        0x58t
        0xct
        0x2bt
        0x23t
        0x26t
        0x2ft
        0x2et
        0x6at
        0x3et
        0x25t
        0x6at
        0x39t
        0x2ft
        0x38t
        0x23t
        0x2bt
        0x26t
        0x23t
        0x30t
        0x2ft
        0x6at
        0x2bt
        0x2et
        0x6at
        0x2ft
        0x3ct
        0x2ft
        0x24t
        0x3et
        0x69t
        0x4et
        0x46t
        0x4ct
        0x49t
        0x47t
        0x48t
        0x54t
        0xdt
        0x61t
        0x44t
        0x65t
        0x56t
        0x45t
        0x4et
        0x54t
        0x73t
        0x54t
        0x4ft
        0x52t
        0x41t
        0x47t
        0x45t
        0x72t
        0x45t
        0x43t
        0x4ft
        0x52t
        0x44t
        0x64t
        0x41t
        0x54t
        0x41t
        0x42t
        0x41t
        0x53t
        0x45t
        0x38t
        0xft
        0x9t
        0x5t
        0x18t
        0xet
        0x4at
        0xet
        0xbt
        0x1et
        0xbt
        0x8t
        0xbt
        0x19t
        0xft
        0x4at
        0xct
        0xbt
        0x3t
        0x6t
        0x1ft
        0x18t
        0xft
        0x4at
        0x5t
        0x9t
        0x9t
        0x1ft
        0x18t
        0x18t
        0xft
        0xet
        0x4at
        0x1dt
        0x2t
        0xft
        0x4t
        0x4at
        0x18t
        0xft
        0xbt
        0xet
        0x3t
        0x4t
        0xdt
        0x4at
        0xft
        0x1ct
        0xft
        0x4t
        0x1et
        0x19t
        0x44t
        0x3dt
        0x28t
        0x28t
        0x39t
        0x31t
        0x2ct
        0x28t
        0x1ct
        0x19t
        0xct
        0x19t
        0x2ft
        0x22t
        0x5ft
        0x48t
        0x4et
        0x42t
        0x5ft
        0x49t
        0x72t
        0x49t
        0x4ct
        0x59t
        0x4ct
        0x4ft
        0x4ct
        0x5et
        0x48t
        0x41t
        0x57t
        0x41t
        0x41t
        0x5bt
        0x5dt
        0x5ct
        0x6dt
        0x5bt
        0x56t
        0x2et
        0x38t
        0x2et
        0x2et
        0x34t
        0x32t
        0x33t
        0x2t
        0x29t
        0x34t
        0x30t
        0x38t
        0x64t
        0x79t
        0x7dt
        0x75t
        0x31t
        0x2at
        0x2et
        0x20t
        0x2bt
        0x58t
        0x55t
        0x5ct
        0x49t
        0xct
        0x17t
        0x12t
        0x17t
        0x16t
        0xet
        0x17t
    .end array-data
.end method

.method private A04(ILjava/lang/String;)V
    .locals 5

    .line 65474
    new-instance v4, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v4, p2}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/String;)V

    .line 65475
    .local p0, "event":Lcom/facebook/ads/redexgen/X/8n;
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/8n;->A03(I)V

    .line 65476
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wv;->A00:Lcom/facebook/ads/redexgen/X/XS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v3

    const/16 v2, 0x1a9

    const/16 v1, 0xf

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, p1, v4}, Lcom/facebook/ads/redexgen/X/8l;->A8r(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 65477
    return-void
.end method

.method private A05(ILjava/lang/Throwable;)V
    .locals 5

    .line 65478
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wv;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 65479
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v4

    new-instance v3, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v3, p2}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/Throwable;)V

    .line 65480
    const/16 v2, 0x1a9

    const/16 v1, 0xf

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, p1, v3}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 65481
    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Wv;ILjava/lang/String;)V
    .locals 0

    .line 65482
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Wv;->A04(ILjava/lang/String;)V

    return-void
.end method

.method public static A07(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JQ;)[B
    .locals 6

    .line 65483
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 65484
    .local p0, "eventJson":Lorg/json/JSONObject;
    :try_start_0
    const/16 v2, 0x1a7

    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65485
    const/16 v2, 0x1d2

    const/4 v1, 0x5

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wv;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/JQ;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65486
    const/16 v2, 0x1d7

    const/4 v1, 0x4

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wv;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/JQ;->A06()Lcom/facebook/ads/redexgen/X/JW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JW;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65487
    const/16 v2, 0x1ce

    const/4 v1, 0x4

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wv;->A00(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/JQ;->A04()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ly;->A02(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65488
    const/16 v2, 0x1c2

    const/16 v1, 0xc

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wv;->A00(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/JQ;->A03()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ly;->A02(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65489
    const/16 v2, 0x1b8

    const/16 v1, 0xa

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wv;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/JQ;->A07()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65490
    const/16 v2, 0x1a3

    const/4 v1, 0x4

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wv;->A00(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/JQ;->A09()Ljava/util/Map;

    move-result-object v1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65491
    const/16 v2, 0x19c

    const/4 v1, 0x7

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wv;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65492
    :catch_0
    move-exception v4

    .line 65493
    .local p1, "jsone":Lorg/json/JSONException;
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65494
    sget-object v3, Lcom/facebook/ads/redexgen/X/Wv;->A04:Ljava/lang/String;

    const/16 v2, 0x126

    const/16 v1, 0x1c

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65495
    .end local p1    # "jsone":Lorg/json/JSONException;
    :cond_0
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static synthetic A08(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JQ;)[B
    .locals 0

    .line 65496
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Wv;->A07(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JQ;)[B

    move-result-object p0

    return-object p0
.end method

.method public static A09(Lorg/json/JSONObject;)[B
    .locals 0

    .line 65497
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A0A()I
    .locals 5

    .line 65498
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wv;->A01:Lcom/facebook/ads/redexgen/X/9e;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9e;->A7C()I

    move-result v0

    return v0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/9n; {:try_start_0 .. :try_end_0} :catch_0

    .line 65499
    :catch_0
    move-exception v4

    .line 65500
    .local p0, "e":Lcom/facebook/ads/redexgen/X/9n;
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65501
    sget-object v3, Lcom/facebook/ads/redexgen/X/Wv;->A04:Ljava/lang/String;

    const/16 v2, 0xf5

    const/16 v1, 0x31

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65502
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final A0B(ILjava/util/Set;Ljava/util/Set;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 65503
    .local v6, "eventsToRetry":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v6, "eventsToDelete":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v4, p0

    const/16 v2, 0x19c

    const/4 v1, 0x7

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wv;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    .line 65504
    .local p3, "attemptsExceededCount":I
    const/16 v0, 0x1e

    new-array v2, v0, [I

    .line 65505
    .local v4, "eventSizes":[I
    const/16 v0, 0x7530

    new-array v1, v0, [B

    .line 65506
    .local v2, "eventData":[B
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 65507
    .local v1, "eventFetches":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/facebook/ads/internal/eventstorage/record/RecordDatabase$Fetch;>;"
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Wv;->A02:Lcom/facebook/ads/redexgen/X/9e;

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/9e;->A5J([B[I)Lcom/facebook/ads/redexgen/X/9d;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 65508
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {v4, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Wv;->A01(Ljava/util/List;[B[I)Ljava/util/List;

    move-result-object v6

    .line 65509
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    :goto_0
    invoke-virtual {v5}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9d;->A9L()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65510
    const/4 v0, 0x0

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([II)V

    .line 65511
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Wv;->A02:Lcom/facebook/ads/redexgen/X/9e;

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/9e;->A5J([B[I)Lcom/facebook/ads/redexgen/X/9d;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 65512
    invoke-direct {v4, v6, v1, v2}, Lcom/facebook/ads/redexgen/X/Wv;->A01(Ljava/util/List;[B[I)Ljava/util/List;

    move-result-object v6

    goto :goto_0

    .line 65513
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v7, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/json/JSONObject;>;"
    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 65514
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/9n; {:try_start_0 .. :try_end_0} :catch_6

    .line 65515
    .local v11, "event":Lorg/json/JSONObject;
    :try_start_1
    const/16 v2, 0x1a7

    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/facebook/ads/redexgen/X/9n; {:try_start_1 .. :try_end_1} :catch_6

    .line 65516
    .local p0, "eventId":Ljava/lang/String;
    :try_start_2
    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65517
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 65518
    .local v2, "attempt":I
    if-ge v0, p1, :cond_2

    goto :goto_2

    .line 65519
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/facebook/ads/redexgen/X/9n; {:try_start_2 .. :try_end_2} :catch_4

    .line 65520
    :goto_2
    :try_start_3
    invoke-virtual {v9, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65521
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Wv;->A01:Lcom/facebook/ads/redexgen/X/9e;

    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/Wv;->A09(Lorg/json/JSONObject;)[B

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/9e;->AEt([B)V

    .line 65522
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/facebook/ads/redexgen/X/9n; {:try_start_3 .. :try_end_3} :catch_7

    .line 65523
    .restart local v0    # "events":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    .restart local v7    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/json/JSONObject;>;"
    .restart local v11    # "event":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    goto :goto_4

    .line 65524
    :cond_3
    :try_start_4
    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65525
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 65526
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x27

    const/16 v1, 0x10

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xb

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1d7

    const/4 v1, 0x4

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wv;->A00(III)Ljava/lang/String;

    move-result-object v3

    .end local p0    # "eventId":Ljava/lang/String;
    .local v0, "eventId":Ljava/lang/String;
    const/16 v2, 0x1db

    const/4 v1, 0x7

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wv;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 65527
    invoke-virtual {v9, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65528
    .end local p0
    .restart local v0    # "eventId":Ljava/lang/String;
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/facebook/ads/redexgen/X/9n; {:try_start_4 .. :try_end_4} :catch_5

    .line 65529
    .end local v0    # "eventId":Ljava/lang/String;
    :catch_1
    move-exception v8

    goto :goto_4

    .restart local v0    # "eventId":Ljava/lang/String;
    .restart local v7    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/json/JSONObject;>;"
    .restart local v11    # "event":Lorg/json/JSONObject;
    :catch_2
    move-exception v8

    goto :goto_4

    :catch_3
    move-exception v8

    .line 65530
    .local p0, "jsone":Lorg/json/JSONException;
    :goto_4
    :try_start_5
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65531
    sget-object v3, Lcom/facebook/ads/redexgen/X/Wv;->A04:Ljava/lang/String;

    const/16 v2, 0xc6

    const/16 v1, 0x2f

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65532
    :cond_5
    sget v0, Lcom/facebook/ads/redexgen/X/8m;->A2B:I

    invoke-direct {v4, v0, v8}, Lcom/facebook/ads/redexgen/X/Wv;->A05(ILjava/lang/Throwable;)V

    goto/16 :goto_1
    :try_end_5
    .catch Lcom/facebook/ads/redexgen/X/9n; {:try_start_5 .. :try_end_5} :catch_5

    .line 65533
    .end local v0    # "eventId":Ljava/lang/String;
    .end local v7    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/json/JSONObject;>;"
    .end local v11    # "event":Lorg/json/JSONObject;
    :catch_4
    move-exception v5

    goto :goto_7

    .line 65534
    .end local v7
    :cond_6
    :try_start_6
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 65535
    .local p2, "event":Lorg/json/JSONObject;
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Wv;->A02:Lcom/facebook/ads/redexgen/X/9e;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wv;->A09(Lorg/json/JSONObject;)[B

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/9e;->AEt([B)V

    goto :goto_5

    .line 65536
    :cond_7
    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9d;

    .line 65537
    .local p2, "fetch":Lcom/facebook/ads/redexgen/X/9d;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9d;->A4g()V

    goto :goto_6
    :try_end_6
    .catch Lcom/facebook/ads/redexgen/X/9n; {:try_start_6 .. :try_end_6} :catch_5

    .line 65538
    .end local v0
    :catch_5
    move-exception v5

    goto :goto_7

    :catch_6
    move-exception v5

    goto :goto_7

    .end local p0    # "jsone":Lorg/json/JSONException;
    .end local v0
    .end local v7
    .end local v11
    :catch_7
    move-exception v5

    .line 65539
    .local p0, "e":Lcom/facebook/ads/redexgen/X/9n;
    :goto_7
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 65540
    sget-object v3, Lcom/facebook/ads/redexgen/X/Wv;->A04:Ljava/lang/String;

    const/16 v2, 0x82

    const/16 v1, 0x44

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65541
    :cond_8
    sget v0, Lcom/facebook/ads/redexgen/X/8m;->A27:I

    invoke-direct {v4, v0, v5}, Lcom/facebook/ads/redexgen/X/Wv;->A05(ILjava/lang/Throwable;)V

    .line 65542
    .end local p0    # "e":Lcom/facebook/ads/redexgen/X/9n;
    :cond_9
    return v11
.end method

.method public final A0C(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 65543
    const/4 v6, 0x0

    .line 65544
    .local p0, "noLimit":Z
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 65545
    const/4 v6, 0x1

    .line 65546
    const/16 p1, 0x1e

    .line 65547
    :cond_0
    new-array v1, p1, [I

    .line 65548
    .local p1, "eventSizes":[I
    mul-int/lit16 v0, p1, 0x3e8

    new-array v4, v0, [B

    .line 65549
    .local v6, "eventData":[B
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 65550
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 65551
    .local v1, "eventFetches":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/facebook/ads/internal/eventstorage/record/RecordDatabase$Fetch;>;"
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wv;->A01:Lcom/facebook/ads/redexgen/X/9e;

    invoke-interface {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/9e;->A5J([B[I)Lcom/facebook/ads/redexgen/X/9d;

    move-result-object v0

    .line 65552
    .local v0, "lastFetch":Lcom/facebook/ads/redexgen/X/9d;
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 65553
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9d;->A5K()I

    move-result v2

    .line 65554
    .local v4, "totalFetched":I
    invoke-direct {p0, v5, v4, v1}, Lcom/facebook/ads/redexgen/X/Wv;->A01(Ljava/util/List;[B[I)Ljava/util/List;

    move-result-object v5

    .line 65555
    :goto_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9d;->A9L()Z

    move-result v0

    if-eqz v0, :cond_3

    if-lt v2, p1, :cond_1

    if-eqz v6, :cond_3

    .line 65556
    :cond_1
    if-eqz v6, :cond_2

    goto :goto_1

    .line 65557
    :cond_2
    sub-int v0, p1, v2

    new-array v1, v0, [I

    goto :goto_2

    .line 65558
    :goto_1
    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 65559
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wv;->A01:Lcom/facebook/ads/redexgen/X/9e;

    invoke-interface {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/9e;->A5J([B[I)Lcom/facebook/ads/redexgen/X/9d;

    move-result-object v0

    .line 65560
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 65561
    invoke-direct {p0, v5, v4, v1}, Lcom/facebook/ads/redexgen/X/Wv;->A01(Ljava/util/List;[B[I)Ljava/util/List;

    move-result-object v5

    goto :goto_0

    .line 65562
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 65563
    .local v3, "event":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wv;->A02:Lcom/facebook/ads/redexgen/X/9e;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wv;->A09(Lorg/json/JSONObject;)[B

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/9e;->AEt([B)V

    goto :goto_3

    .line 65564
    :cond_4
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9d;

    .line 65565
    .local v3, "fetch":Lcom/facebook/ads/redexgen/X/9d;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9d;->A4g()V

    goto :goto_4
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/9n; {:try_start_0 .. :try_end_0} :catch_0

    .line 65566
    :catch_0
    move-exception v4

    .line 65567
    .local v0, "e":Lcom/facebook/ads/redexgen/X/9n;
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65568
    sget-object v3, Lcom/facebook/ads/redexgen/X/Wv;->A04:Ljava/lang/String;

    const/16 v2, 0x167

    const/16 v1, 0x35

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65569
    :cond_5
    sget v0, Lcom/facebook/ads/redexgen/X/8m;->A28:I

    invoke-direct {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/Wv;->A05(ILjava/lang/Throwable;)V

    .line 65570
    .end local v0    # "e":Lcom/facebook/ads/redexgen/X/9n;
    :cond_6
    return-object v5
.end method

.method public final A3y()V
    .locals 5

    .line 65571
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wv;->A01:Lcom/facebook/ads/redexgen/X/9e;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9e;->clear()V

    .line 65572
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wv;->A02:Lcom/facebook/ads/redexgen/X/9e;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9e;->clear()V

    goto :goto_0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/9n; {:try_start_0 .. :try_end_0} :catch_0

    .line 65573
    :catch_0
    move-exception v4

    .line 65574
    .local p0, "e":Lcom/facebook/ads/redexgen/X/9n;
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65575
    sget-object v3, Lcom/facebook/ads/redexgen/X/Wv;->A04:Ljava/lang/String;

    const/16 v2, 0x37

    const/16 v1, 0x1e

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65576
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/8m;->A25:I

    invoke-direct {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/Wv;->A05(ILjava/lang/Throwable;)V

    .line 65577
    .end local p0    # "e":Lcom/facebook/ads/redexgen/X/9n;
    :goto_0
    return-void
.end method

.method public final AFV(Lcom/facebook/ads/redexgen/X/JQ;Lcom/facebook/ads/redexgen/X/9Q;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/JQ;",
            "Lcom/facebook/ads/redexgen/X/9Q<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 65578
    .local v1, "callback":Lcom/facebook/ads/redexgen/X/9Q;, "Lcom/facebook/ads/internal/eventstorage/AdEventStorageCallback<Ljava/lang/String;>;"
    sget-object v3, Lcom/facebook/ads/redexgen/X/MA;->A07:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Wv;->A01:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wv;->A00:Lcom/facebook/ads/redexgen/X/XS;

    new-instance v1, Lcom/facebook/ads/redexgen/X/9U;

    invoke-direct {v1, p1, p2, v2, v0}, Lcom/facebook/ads/redexgen/X/9U;-><init>(Lcom/facebook/ads/redexgen/X/JQ;Lcom/facebook/ads/redexgen/X/9Q;Lcom/facebook/ads/redexgen/X/9e;Lcom/facebook/ads/redexgen/X/8J;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/M7;->A00(Ljava/util/concurrent/Executor;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65579
    return-void
.end method
