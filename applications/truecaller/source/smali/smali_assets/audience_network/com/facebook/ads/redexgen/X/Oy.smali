.class public final Lcom/facebook/ads/redexgen/X/Oy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ow;,
        Lcom/facebook/ads/redexgen/X/Ox;,
        Lcom/facebook/ads/redexgen/X/S3;
    }
.end annotation


# static fields
.field public static A08:[B

.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/On;",
            ">;"
        }
    .end annotation
.end field

.field public A01:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/S3;",
            ">;"
        }
    .end annotation
.end field

.field public A02:Z

.field public final A03:Lcom/facebook/ads/redexgen/X/XT;

.field public final A04:Lcom/facebook/ads/redexgen/X/Ob;

.field public final A05:Ljava/lang/String;

.field public final A06:Ljava/lang/String;

.field public final A07:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/JT;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "hIbWNT8G4MjoEpKcmCAiH71tt2UY5WuL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vgUzcpAvpAsCCZCRSC1b"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Sfqxb6DlRQYvsgOWHhSjg"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "C3c3lBEuxcYH"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "4kl26afgh1M6MAKE7183tIpE6spY1anG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pra5BXg8TSfQw4xRWMXJu2Yr8KXKWbnB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "WtHlj7qauylK44K79"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "wmYNSpHKqPFT"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Oy;->A09:[Ljava/lang/String;

    .line 47876
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Oy;->A08()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/On;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Ob;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 47877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47878
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Oy;->A03:Lcom/facebook/ads/redexgen/X/XT;

    .line 47879
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A00:Ljava/lang/ref/WeakReference;

    .line 47880
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A01:Ljava/lang/ref/WeakReference;

    .line 47881
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A07:Ljava/lang/ref/WeakReference;

    .line 47882
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Oy;->A04:Lcom/facebook/ads/redexgen/X/Ob;

    .line 47883
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Oy;->A05:Ljava/lang/String;

    .line 47884
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Oy;->A06:Ljava/lang/String;

    .line 47885
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A02:Z

    .line 47886
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Oy;)Lcom/facebook/ads/redexgen/X/Ob;
    .locals 0

    .line 47887
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A04:Lcom/facebook/ads/redexgen/X/Ob;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Oy;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x74

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Oy;)Ljava/lang/String;
    .locals 0

    .line 47888
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A05:Ljava/lang/String;

    return-object p0
.end method

.method public static A03(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47889
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 47890
    .local p0, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 47891
    .local v3, "extraDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47892
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 47893
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47894
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 47895
    :cond_0
    return-object v2
.end method

.method private A04()V
    .locals 1

    .line 47896
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/S3;

    .line 47897
    .local p0, "uxListener":Lcom/facebook/ads/redexgen/X/S3;
    if-nez v0, :cond_0

    .line 47898
    return-void

    .line 47899
    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/S3;->close()V

    .line 47900
    return-void
.end method

.method private A05()V
    .locals 1

    .line 47901
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/S3;

    .line 47902
    .local p0, "uxListener":Lcom/facebook/ads/redexgen/X/S3;
    if-nez v0, :cond_0

    .line 47903
    return-void

    .line 47904
    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/S3;->A7s()V

    .line 47905
    return-void
.end method

.method private A06()V
    .locals 1

    .line 47906
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/S3;

    .line 47907
    .local p0, "uxListener":Lcom/facebook/ads/redexgen/X/S3;
    if-nez v0, :cond_0

    .line 47908
    return-void

    .line 47909
    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/S3;->A8Z()V

    .line 47910
    return-void
.end method

.method private A07()V
    .locals 1

    .line 47911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A03:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4s()V

    .line 47912
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A02:Z

    .line 47913
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/S3;

    .line 47914
    .local p0, "uxListener":Lcom/facebook/ads/redexgen/X/S3;
    if-nez v0, :cond_0

    .line 47915
    return-void

    .line 47916
    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/S3;->AEq()V

    .line 47917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A03:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A1D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47918
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A03:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A09()Lcom/facebook/ads/redexgen/X/Jf;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Jf;->AAH()V

    .line 47919
    :cond_1
    return-void
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x61

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Oy;->A08:[B

    return-void

    :array_0
    .array-data 1
        0x2ct
        0x38t
        0x36t
        0x36t
        0x2at
        0x37t
        0x2dt
        0xat
        0xbt
        0xct
        0x7t
        0x1bt
        0x12t
        0x1at
        0x3ft
        0x4et
        0x47t
        0x3at
        -0x1dt
        -0xet
        -0x15t
        -0x15t
        -0x1et
        -0x17t
        -0x24t
        -0x20t
        -0x14t
        -0x1ft
        -0x1et
        0xct
        0x1bt
        0x14t
        0x14t
        0xbt
        0x12t
        0x5t
        0x13t
        0xbt
        0x19t
        0x19t
        0x7t
        0xdt
        0xbt
        -0x25t
        -0x16t
        -0x1dt
        -0x1dt
        -0x26t
        -0x1ft
        -0x2ct
        -0x17t
        -0x12t
        -0x1bt
        -0x26t
        -0x17t
        -0x1dt
        -0x9t
        0x34t
        0x35t
        0x24t
        0x2et
        0x29t
        0x5at
        0x4bt
        0x5ft
        0x5dt
        0x4ft
        0x4et
        0x2ct
        0x63t
        0x3ft
        0x5dt
        0x4ft
        0x5ct
        0x39t
        0x3at
        0x27t
        0x38t
        0x3at
        0x2bt
        0x2at
        0x8t
        0x3ft
        0x1bt
        0x39t
        0x2bt
        0x38t
        0x53t
        0x54t
        0x41t
        0x54t
        0x45t
        0x31t
        0x1ct
        0x27t
        0x30t
        0x20t
    .end array-data
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/On;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 47920
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47921
    .local p0, "extrasJSON":Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A03:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Kg;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 47922
    .local p1, "sp":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oy;->A01(III)Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0x39

    const/4 v1, 0x5

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 47923
    .local v4, "opId":Ljava/lang/String;
    const/16 v2, 0x36

    const/4 v1, 0x3

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oy;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x7

    const/4 v1, 0x7

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 47924
    .local v0, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe

    const/4 v1, 0x4

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47925
    .local v7, "storageValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v6, v0

    :cond_0
    invoke-virtual {p1, v5, v6}, Lcom/facebook/ads/redexgen/X/On;->A0b(Ljava/lang/String;Ljava/lang/String;)V

    .line 47926
    return-void
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/On;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 47927
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47928
    .local p0, "extrasJSON":Lorg/json/JSONObject;
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oy;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x5c

    const/4 v1, 0x5

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 47929
    .local p2, "value":Ljava/lang/String;
    const/16 v2, 0x39

    const/4 v1, 0x5

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 47930
    .local p1, "opId":Ljava/lang/String;
    const/16 v2, 0x36

    const/4 v1, 0x3

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oy;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x7

    const/4 v1, 0x7

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 47931
    .local v4, "key":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A03:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Kg;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 47932
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe

    const/4 v1, 0x4

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 47933
    invoke-virtual {p1, v6}, Lcom/facebook/ads/redexgen/X/On;->A0a(Ljava/lang/String;)V

    .line 47934
    return-void
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/Ow;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 47935
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ov;->A00:[I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ow;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 47936
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/On;

    .line 47937
    .local p0, "webViewController":Lcom/facebook/ads/redexgen/X/On;
    if-nez v2, :cond_2

    .line 47938
    return-void

    .line 47939
    :pswitch_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Oy;->A0H(Lorg/json/JSONObject;)V

    .line 47940
    goto :goto_0

    .line 47941
    :pswitch_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Oy;->A06()V

    .line 47942
    goto :goto_0

    .line 47943
    :pswitch_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Oy;->A04()V

    .line 47944
    goto :goto_0

    .line 47945
    :pswitch_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Oy;->A07()V

    .line 47946
    goto :goto_0

    .line 47947
    :pswitch_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Oy;->A0J(Lorg/json/JSONObject;)V

    .line 47948
    goto :goto_0

    .line 47949
    :pswitch_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Oy;->A0K(Lorg/json/JSONObject;)V

    .line 47950
    goto :goto_0

    .line 47951
    :pswitch_6
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Oy;->A09:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Oy;->A09:[Ljava/lang/String;

    const-string v1, "82CtEW90xgTIEKmcKO6cRAhvcJ6YWgt9"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "sNvNVkO7190a6sNSaTVbukGZJruYpBFd"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    goto :goto_0

    .line 47952
    :pswitch_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Oy;->A05()V

    .line 47953
    :pswitch_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A03:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/0R;->A54(Ljava/lang/String;)V

    .line 47954
    goto :goto_0

    .line 47955
    :pswitch_9
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Oy;->A0C(Lcom/facebook/ads/redexgen/X/Ow;Ljava/lang/String;)V

    .line 47956
    goto :goto_0

    .line 47957
    :pswitch_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Oy;->A0I(Lorg/json/JSONObject;)V

    .line 47958
    goto :goto_0

    .line 47959
    :cond_2
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ov;->A00:[I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ow;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 47960
    :goto_1
    return-void

    .line 47961
    :pswitch_b
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/On;->A0S()V

    .line 47962
    goto :goto_1

    .line 47963
    :pswitch_c
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/On;->A0R()V

    .line 47964
    goto :goto_1

    .line 47965
    :pswitch_d
    invoke-direct {p0, v2, p2}, Lcom/facebook/ads/redexgen/X/Oy;->A0A(Lcom/facebook/ads/redexgen/X/On;Ljava/lang/String;)V

    .line 47966
    goto :goto_1

    .line 47967
    :pswitch_e
    invoke-direct {p0, v2, p2}, Lcom/facebook/ads/redexgen/X/Oy;->A09(Lcom/facebook/ads/redexgen/X/On;Ljava/lang/String;)V

    .line 47968
    goto :goto_1

    .line 47969
    :pswitch_f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oy;->A03(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/On;->A0d(Ljava/util/Map;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/Ow;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 47970
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/S3;

    .line 47971
    .local p0, "uxActionsJavascriptListener":Lcom/facebook/ads/redexgen/X/S3;
    if-nez v2, :cond_0

    .line 47972
    return-void

    .line 47973
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ov;->A00:[I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ow;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 47974
    :goto_0
    return-void

    .line 47975
    :pswitch_0
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/S3;->AAf()V

    .line 47976
    goto :goto_0

    .line 47977
    :pswitch_1
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/S3;->AC4()V

    .line 47978
    goto :goto_0

    .line 47979
    :pswitch_2
    invoke-direct {p0, v2, p2}, Lcom/facebook/ads/redexgen/X/Oy;->A0F(Lcom/facebook/ads/redexgen/X/S3;Ljava/lang/String;)V

    .line 47980
    goto :goto_0

    .line 47981
    :pswitch_3
    invoke-direct {p0, v2, p2}, Lcom/facebook/ads/redexgen/X/Oy;->A0E(Lcom/facebook/ads/redexgen/X/S3;Ljava/lang/String;)V

    .line 47982
    goto :goto_0

    .line 47983
    :pswitch_4
    invoke-direct {p0, v2, p2}, Lcom/facebook/ads/redexgen/X/Oy;->A0D(Lcom/facebook/ads/redexgen/X/S3;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/S3;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 47984
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47985
    .local p0, "extrasJSON":Lorg/json/JSONObject;
    const/16 v2, 0x57

    const/4 v1, 0x5

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oy;->A01(III)Ljava/lang/String;

    move-result-object v1

    .line 47986
    .local p1, "STATE_KEY":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 47987
    .local p2, "state":Z
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/S3;->ABK(Z)V

    .line 47988
    return-void
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/S3;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 47989
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47990
    .local p0, "extrasJSON":Lorg/json/JSONObject;
    const/16 v2, 0x3e

    const/16 v1, 0xc

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oy;->A01(III)Ljava/lang/String;

    move-result-object v1

    .line 47991
    .local p1, "PAUSED_BY_USER_KEY":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 47992
    .local p2, "pausedByUser":Z
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/S3;->ACW(Z)V

    .line 47993
    return-void
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/S3;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 47994
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47995
    .local p0, "extrasJSON":Lorg/json/JSONObject;
    const/16 v2, 0x4a

    const/16 v1, 0xd

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oy;->A01(III)Ljava/lang/String;

    move-result-object v1

    .line 47996
    .local p1, "STARTED_BY_USER_KEY":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 47997
    .local p2, "startedByUser":Z
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/S3;->ACY(Z)V

    .line 47998
    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/Oy;Lcom/facebook/ads/redexgen/X/Ow;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 47999
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Oy;->A0B(Lcom/facebook/ads/redexgen/X/Ow;Ljava/lang/String;)V

    return-void
.end method

.method private A0H(Lorg/json/JSONObject;)V
    .locals 4

    .line 48000
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/S3;

    .line 48001
    .local p0, "uxListener":Lcom/facebook/ads/redexgen/X/S3;
    if-nez v3, :cond_0

    .line 48002
    return-void

    .line 48003
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48004
    .local p1, "productUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48005
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/S3;->A7n()V

    .line 48006
    :goto_0
    return-void

    .line 48007
    :cond_1
    invoke-interface {v3, v1}, Lcom/facebook/ads/redexgen/X/S3;->A7o(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private A0I(Lorg/json/JSONObject;)V
    .locals 4

    .line 48008
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/S3;

    .line 48009
    .local p0, "uxListener":Lcom/facebook/ads/redexgen/X/S3;
    if-nez v3, :cond_0

    .line 48010
    return-void

    .line 48011
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48012
    .local p1, "action":Ljava/lang/String;
    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/Ox;->A7t(Ljava/lang/String;)V

    .line 48013
    return-void
.end method

.method private A0J(Lorg/json/JSONObject;)V
    .locals 4

    .line 48014
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A07:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/JT;

    .line 48015
    .local p0, "adEventManager":Lcom/facebook/ads/redexgen/X/JT;
    if-nez v3, :cond_0

    .line 48016
    return-void

    .line 48017
    :cond_0
    const/16 v2, 0x2b

    const/16 v1, 0xb

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48018
    .local p1, "key":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48019
    return-void

    .line 48020
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A06:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Jb;

    invoke-direct {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Jb;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JT;)V

    .line 48021
    .local v0, "handler":Lcom/facebook/ads/redexgen/X/Jb;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Oy;->A03(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Jb;->A03(Ljava/lang/String;Ljava/util/Map;)V

    .line 48022
    return-void
.end method

.method private A0K(Lorg/json/JSONObject;)V
    .locals 5

    .line 48023
    const/4 v4, -0x1

    const/16 v2, 0x12

    const/16 v1, 0xb

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 48024
    .local p1, "code":I
    if-ne v3, v4, :cond_0

    .line 48025
    return-void

    .line 48026
    :cond_0
    const/16 v2, 0x1d

    const/16 v1, 0xe

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48027
    .local p0, "message":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48028
    return-void

    .line 48029
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A03:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/0R;->A8o(ILjava/lang/String;)V

    .line 48030
    return-void
.end method


# virtual methods
.method public final A0L(Lcom/facebook/ads/redexgen/X/S3;)V
    .locals 1

    .line 48031
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A01:Ljava/lang/ref/WeakReference;

    .line 48032
    return-void
.end method

.method public final A0M()Z
    .locals 1

    .line 48033
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A02:Z

    return v0
.end method

.method public postMessage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 48034
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ou;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Ou;-><init>(Lcom/facebook/ads/redexgen/X/Oy;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M1;->A00(Ljava/lang/Runnable;)V

    .line 48035
    return-void
.end method
