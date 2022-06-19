.class public final Lcom/facebook/ads/redexgen/X/9B;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/lang/String;

.field public static final A03:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Zl9Gy"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "71kQi3IibsstuH4HIc9NqplK3KKhyeB5"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "mg3crekamZV3aPoxR2E4kv0bqU3kjrTA"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "tDWcsuqYwEAdFujtzhVkOh2ka7NI4A0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "PNHzgcYnRnalJ1JX3eWvzB80MfZWvl"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "qlQSSPcQAlkQmsVxSKI5q3x7hOoP3mTT"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zrCnzE5ZwKYUMsAQc774FEfNlTnoEqKy"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Bh9hDulTgnsRRUxUYqeR6BXC7"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9B;->A01:[Ljava/lang/String;

    .line 19943
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9B;->A06()V

    const-class v0, Lcom/facebook/ads/redexgen/X/9B;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9B;->A02:Ljava/lang/String;

    .line 19944
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/9B;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()I
    .locals 1

    .line 19946
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    return v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/8J;)J
    .locals 8

    .line 19947
    const-wide/16 v6, -0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8J;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 19948
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 19949
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8J;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 19950
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 19951
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    return-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19952
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 19953
    .local v3, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/facebook/ads/redexgen/X/9B;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19954
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8m;->A13:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v3, v2}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/Throwable;)V

    .line 19955
    const/16 v2, 0x90

    const/4 v1, 0x7

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9B;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 19956
    :cond_1
    return-wide v6
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/9B;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x69

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 19957
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9B;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 19958
    .local p0, "buildConfigClass":Ljava/lang/Class;
    const/16 v2, 0x25

    const/16 v1, 0xa

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9B;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 19959
    .local v3, "buildType":Ljava/lang/reflect/Field;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19960
    .end local p0    # "buildConfigClass":Ljava/lang/Class;
    .end local v3    # "buildType":Ljava/lang/reflect/Field;
    .local p0, "e":Ljava/lang/Exception;
    :catch_0
    const/16 v2, 0x5e

    const/4 v1, 0x3

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9B;->A02(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A04(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 19961
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9B;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 19962
    .local p0, "buildConfigClass":Ljava/lang/Class;
    const/16 v2, 0x47

    const/4 v1, 0x5

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9B;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 19963
    .local v3, "buildType":Ljava/lang/reflect/Field;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19964
    .end local p0    # "buildConfigClass":Ljava/lang/Class;
    .end local v3    # "buildType":Ljava/lang/reflect/Field;
    .local p0, "e":Ljava/lang/Exception;
    :catch_0
    const/16 v2, 0x5e

    const/4 v1, 0x3

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9B;->A02(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/8J;)Ljava/lang/String;
    .locals 5

    .line 19965
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 19966
    .local p0, "extraParams":Lorg/json/JSONObject;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9B;->A08()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xae

    const/4 v1, 0x6

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9B;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v4, v0, v3}, Lcom/facebook/ads/redexgen/X/9B;->A07(Lcom/facebook/ads/redexgen/X/8J;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 19967
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/9B;->A01(Lcom/facebook/ads/redexgen/X/8J;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x61

    const/16 v1, 0x8

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9B;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v4, v0, v3}, Lcom/facebook/ads/redexgen/X/9B;->A07(Lcom/facebook/ads/redexgen/X/8J;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 19968
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9B;->A00()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xb4

    const/16 v1, 0xf

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9B;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v4, v0, v3}, Lcom/facebook/ads/redexgen/X/9B;->A07(Lcom/facebook/ads/redexgen/X/8J;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 19969
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/L5;->A01(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/L4;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 19970
    const/16 v2, 0x69

    const/16 v1, 0x12

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9B;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v4, v0, v3}, Lcom/facebook/ads/redexgen/X/9B;->A07(Lcom/facebook/ads/redexgen/X/8J;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 19971
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/9B;->A09(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xa1

    const/16 v1, 0xd

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9B;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v4, v0, v3}, Lcom/facebook/ads/redexgen/X/9B;->A07(Lcom/facebook/ads/redexgen/X/8J;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 19972
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/9B;->A04(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x85

    const/16 v1, 0xb

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9B;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v4, v0, v3}, Lcom/facebook/ads/redexgen/X/9B;->A07(Lcom/facebook/ads/redexgen/X/8J;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 19973
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/9B;->A03(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x7b

    const/16 v1, 0xa

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9B;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v4, v0, v3}, Lcom/facebook/ads/redexgen/X/9B;->A07(Lcom/facebook/ads/redexgen/X/8J;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 19974
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0xca

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9B;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x13t
        0x27t
        0x5at
        0x4et
        0x51t
        0x49t
        0x28t
        0x54t
        0x53t
        0x4bt
        0x4et
        0x4ct
        0x28t
        0x55t
        0x4bt
        0x59t
        0x56t
        0x50t
        0x4bt
        0x7t
        0x3at
        0x2bt
        0x32t
        0x7t
        0x49t
        0x5ct
        0x50t
        0x53t
        0x5bt
        0x7t
        0x4dt
        0x56t
        0x59t
        0x7t
        0x5ft
        0x1ft
        0x1dt
        0xet
        0x21t
        0x15t
        0x18t
        0x10t
        0x2bt
        0x20t
        0x25t
        0x1ct
        0x11t
        -0x22t
        0xat
        0x10t
        0x7t
        -0x1t
        -0x45t
        0x9t
        0xat
        0xft
        -0x45t
        -0x4t
        -0x1t
        -0x1t
        -0x45t
        0xbt
        -0x4t
        0xdt
        -0x4t
        0x8t
        0x0t
        0xft
        0x0t
        0xdt
        -0x2bt
        -0x52t
        -0x51t
        -0x54t
        -0x41t
        -0x4ft
        0x29t
        0x51t
        0x59t
        0x50t
        0x45t
        0x58t
        0x53t
        0x56t
        -0x3t
        0x1bt
        0x24t
        0x2ft
        0x23t
        0x25t
        0x2at
        0x1ft
        0x25t
        0x24t
        0x7t
        -0x18t
        -0x6t
        -0x2t
        0xdt
        0x8t
        -0x4t
        0x10t
        0x6t
        0x17t
        0x2t
        0x3bt
        0x4at
        0x4at
        0x39t
        0x4dt
        0x4et
        0x3bt
        0x4ct
        0x4et
        0x3ft
        0x3et
        0x39t
        0x4ct
        0x3ft
        0x3bt
        0x4dt
        0x49t
        0x48t
        0x2bt
        0x3et
        0x32t
        0x35t
        0x2dt
        0x28t
        0x3dt
        0x42t
        0x39t
        0x2et
        0xat
        0xbt
        0x8t
        0x1bt
        0xdt
        0x5t
        0x1ct
        0x7t
        0x12t
        0x1bt
        0xbt
        0x45t
        0x43t
        0x4ct
        0x43t
        0x50t
        0x47t
        0x41t
        0x34t
        0x3ct
        0x3ct
        0x34t
        0x39t
        0x32t
        0x2ct
        0x40t
        0x31t
        0x38t
        0x41t
        0x4bt
        0x37t
        0x3ct
        0x3dt
        0x3at
        0x4dt
        0x3ft
        0x3ft
        0x39t
        0x3at
        0x44t
        0x3dt
        0x51t
        0x5bt
        0x47t
        0x4dt
        0x55t
        0x5dt
        0x26t
        0x1bt
        0x1ft
        0x17t
        0x2ct
        0x21t
        0x20t
        0x17t
        0x11t
        0x21t
        0x18t
        0x18t
        0x25t
        0x17t
        0x26t
        0x3bt
        0x34t
        0x31t
        0x34t
        0x35t
        0x3dt
        0x34t
    .end array-data
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/8J;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 19975
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19976
    :catch_0
    move-exception p3

    .line 19977
    .local p0, "e":Lorg/json/JSONException;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8J;->A03()Lcom/facebook/ads/redexgen/X/8O;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8O;->A8H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19978
    sget-object p2, Lcom/facebook/ads/redexgen/X/9B;->A02:Ljava/lang/String;

    const/16 p1, 0x2f

    const/16 p0, 0x18

    const/16 v0, 0x32

    invoke-static {p1, p0, v0}, Lcom/facebook/ads/redexgen/X/9B;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19979
    .end local p0    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static A08()Z
    .locals 6

    .line 19980
    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const/16 v2, 0x90

    const/4 v1, 0x7

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9B;->A02(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 19981
    const/16 v2, 0xc3

    const/4 v1, 0x7

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9B;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 19982
    const/16 v2, 0x97

    const/16 v1, 0xa

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9B;->A02(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/9B;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/9B;->A01:[Ljava/lang/String;

    const-string v1, "pyp5tHHiNqtWEHhOUDcaxWXpzbT8klnO"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "oLUMgMxReJrH8Y2AxnJ9tXY49GWGMSpB"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_3

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/9B;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 19983
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/9B;->A01:[Ljava/lang/String;

    const-string v1, "kPRAmUopJCVKL3kgnj9rN6E7NTwJXhY"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/16 v2, 0x4c

    const/16 v1, 0x8

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9B;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 19984
    const/16 v2, 0xc

    const/16 v1, 0x19

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9B;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 19985
    const/16 v2, 0x54

    const/16 v1, 0xa

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9B;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 19986
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 19987
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 19988
    :goto_0
    return v0

    .line 19989
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A09(Landroid/content/Context;)Z
    .locals 0

    .line 19990
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method
