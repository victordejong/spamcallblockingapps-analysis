.class public Lcom/facebook/ads/redexgen/X/cy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/0i;
.implements Lcom/facebook/ads/redexgen/X/0n;


# static fields
.field public static A0e:[B

.field public static A0f:[Ljava/lang/String;

.field public static final A0g:Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:J

.field public A0A:Landroid/net/Uri;

.field public A0B:Lcom/facebook/ads/redexgen/X/0h;

.field public A0C:Lcom/facebook/ads/redexgen/X/11;

.field public A0D:Lcom/facebook/ads/redexgen/X/16;

.field public A0E:Lcom/facebook/ads/redexgen/X/XT;

.field public A0F:Lcom/facebook/ads/redexgen/X/JT;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0G:Lcom/facebook/ads/redexgen/X/Jq;

.field public A0H:Lcom/facebook/ads/redexgen/X/Jr;

.field public A0I:Lcom/facebook/ads/redexgen/X/Jr;

.field public A0J:Lcom/facebook/ads/redexgen/X/Jr;

.field public A0K:Lcom/facebook/ads/redexgen/X/Js;

.field public A0L:Lcom/facebook/ads/redexgen/X/Jw;

.field public A0M:Ljava/lang/String;

.field public A0N:Ljava/lang/String;

.field public A0O:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0P:Ljava/lang/String;

.field public A0Q:Ljava/lang/String;

.field public A0R:Ljava/lang/String;

.field public A0S:Ljava/lang/String;

.field public A0T:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A0U:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A0V:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Tj;",
            ">;"
        }
    .end annotation
.end field

.field public A0W:Z

.field public A0X:Z

.field public A0Y:Z

.field public A0Z:Z

.field public A0a:Z

.field public A0b:Z

.field public A0c:Z

.field public A0d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "OTBhn"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "woE0GsYsDC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "jJJsRhZ6eh"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RbmDZKGZyk"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "MbYnCV2deeCvNEpfUSPgn7RvJuamywdV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "va4Mi1JJiq4w08mNkhVxy34L1bzftr4W"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "QQZqW8pW387BdDH3gcXSwYVoWAeaIxNz"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "E72k8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/cy;->A0f:[Ljava/lang/String;

    .line 72332
    invoke-static {}, Lcom/facebook/ads/redexgen/X/cy;->A05()V

    const-class v0, Lcom/facebook/ads/redexgen/X/cy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/cy;->A0g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72334
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0U:Ljava/util/HashMap;

    .line 72335
    const/16 v0, 0xc8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A06:I

    .line 72336
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A02:I

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/cy;)Lcom/facebook/ads/redexgen/X/JT;
    .locals 0

    .line 72337
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0F:Lcom/facebook/ads/redexgen/X/JT;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/cy;->A0e:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x6a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/cy;)Ljava/lang/String;
    .locals 0

    .line 72338
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0N:Ljava/lang/String;

    return-object p0
.end method

.method private A03(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72339
    .local v1, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 72340
    .local p0, "postData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x2dc

    const/4 v1, 0x4

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72341
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 72342
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72343
    :cond_0
    const/16 v2, 0x218

    const/16 v1, 0x8

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72344
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 72345
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72346
    :cond_1
    return-object v3
.end method

.method private A04()V
    .locals 4

    .line 72347
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0a:Z

    if-nez v0, :cond_2

    .line 72348
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cy;->A0F:Lcom/facebook/ads/redexgen/X/JT;

    sget-object v1, Lcom/facebook/ads/redexgen/X/cy;->A0f:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/cy;->A0f:[Ljava/lang/String;

    const-string v1, "8ArINtb0xmmgo9NmELWQk3NiIhKYvaDc"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 72349
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0Q:Ljava/lang/String;

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/JT;->ACv(Ljava/lang/String;)V

    .line 72350
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0a:Z

    .line 72351
    :cond_2
    return-void
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x319

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/cy;->A0e:[B

    return-void

    :array_0
    .array-data 1
        0x7ct
        0x59t
        0x7et
        0x55t
        0x52t
        0x54t
        0x5et
        0x58t
        0x4et
        0x5ft
        0x7at
        0x7ft
        0x6et
        0x6at
        0x7bt
        0x6ct
        0x3et
        0x7ft
        0x72t
        0x6ct
        0x7bt
        0x7ft
        0x7at
        0x67t
        0x3et
        0x72t
        0x71t
        0x7ft
        0x7at
        0x7bt
        0x7at
        0x3et
        0x7at
        0x7ft
        0x6at
        0x7ft
        0x6at
        0x5et
        0x4ft
        0x42t
        0x4et
        0x45t
        0x48t
        0x4et
        0xbt
        0x65t
        0x4et
        0x5ft
        0x5ct
        0x44t
        0x59t
        0x40t
        0xbt
        0x67t
        0x44t
        0x4at
        0x4ft
        0x4et
        0x4ft
        0x2bt
        0x4t
        0x1t
        0xbt
        0x3t
        0x48t
        0x0t
        0x9t
        0x18t
        0x18t
        0xdt
        0x6t
        0xdt
        0xct
        0x48t
        0x7t
        0x6t
        0x48t
        0x4t
        0x7t
        0xbt
        0x3t
        0x1bt
        0xbt
        0x1at
        0xdt
        0xdt
        0x6t
        0x48t
        0x9t
        0xct
        0x60t
        0x4ft
        0x4at
        0x40t
        0x48t
        0x3t
        0x4ft
        0x4ct
        0x44t
        0x44t
        0x46t
        0x47t
        0x10t
        0x27t
        0x27t
        0x3at
        0x27t
        0x75t
        0x30t
        0x2dt
        0x30t
        0x36t
        0x20t
        0x21t
        0x3ct
        0x3bt
        0x32t
        0x75t
        0x34t
        0x36t
        0x21t
        0x3ct
        0x3at
        0x3bt
        0x6at
        0x51t
        0x5et
        0x5dt
        0x53t
        0x5at
        0x1ft
        0x4bt
        0x50t
        0x1ft
        0x4ft
        0x5et
        0x4dt
        0x4ct
        0x5at
        0x1ft
        0x5ct
        0x5et
        0x4dt
        0x50t
        0x4at
        0x4ct
        0x5at
        0x53t
        0x1ft
        0x5bt
        0x5et
        0x4bt
        0x5et
        0x11t
        0x22t
        0x27t
        0x1ct
        0x20t
        0x2bt
        0x2ct
        0x2at
        0x20t
        0x26t
        0x30t
        0x1ct
        0x2at
        0x20t
        0x2ct
        0x2dt
        0x55t
        0x50t
        0x6bt
        0x57t
        0x5ct
        0x5bt
        0x5dt
        0x57t
        0x51t
        0x47t
        0x6bt
        0x58t
        0x5dt
        0x5at
        0x5ft
        0x6bt
        0x41t
        0x46t
        0x58t
        0x5dt
        0x58t
        0x63t
        0x48t
        0x4et
        0x5dt
        0x52t
        0x4ft
        0x50t
        0x5dt
        0x48t
        0x55t
        0x53t
        0x52t
        0x3t
        0x6t
        0x14t
        0x7t
        0x10t
        0x16t
        0xbt
        0x11t
        0x7t
        0x10t
        0x3dt
        0xct
        0x3t
        0xft
        0x7t
        0x49t
        0x46t
        0x77t
        0x44t
        0x47t
        0x4ft
        0x47t
        0x77t
        0x5ct
        0x51t
        0x58t
        0x4dt
        0x0t
        0xdt
        0x6t
        0x1bt
        0x1dt
        0x1ft
        0x12t
        0x12t
        0x21t
        0xat
        0x11t
        0x21t
        0x1ft
        0x1dt
        0xat
        0x17t
        0x11t
        0x10t
        0x32t
        0x30t
        0x23t
        0x35t
        0x32t
        0x3ft
        0x25t
        0x4ft
        0x4dt
        0x5et
        0x48t
        0x45t
        0x42t
        0x48t
        0x3et
        0x3ct
        0x2ft
        0x32t
        0x28t
        0x2et
        0x38t
        0x31t
        0x12t
        0x1et
        0x1ft
        0x5t
        0x10t
        0x18t
        0x1ft
        0x14t
        0x3t
        0x2et
        0x7t
        0x18t
        0x14t
        0x6t
        0x10t
        0x13t
        0x18t
        0x1dt
        0x18t
        0x5t
        0x8t
        0x2et
        0x12t
        0x19t
        0x14t
        0x12t
        0x1at
        0x2et
        0x18t
        0x1ft
        0x5t
        0x14t
        0x3t
        0x7t
        0x10t
        0x1dt
        0x6t
        0xat
        0xbt
        0x11t
        0x4t
        0xct
        0xbt
        0x0t
        0x17t
        0x3at
        0x13t
        0xct
        0x0t
        0x12t
        0x4t
        0x7t
        0xct
        0x9t
        0xct
        0x11t
        0x1ct
        0x3at
        0x0t
        0xbt
        0x4t
        0x7t
        0x9t
        0x0t
        0x1t
        0x7t
        0x10t
        0x24t
        0x25t
        0x34t
        0x25t
        0x23t
        0x34t
        0x29t
        0x2ft
        0x2et
        0x1ft
        0x33t
        0x34t
        0x32t
        0x29t
        0x2et
        0x27t
        0x33t
        0x7bt
        0x70t
        0x7ft
        0x7ct
        0x72t
        0x7bt
        0x41t
        0x6dt
        0x70t
        0x7ft
        0x6et
        0x6dt
        0x76t
        0x71t
        0x6at
        0x41t
        0x72t
        0x71t
        0x79t
        0x12t
        0x19t
        0x16t
        0x15t
        0x1bt
        0x12t
        0x28t
        0x1t
        0x1et
        0x12t
        0x0t
        0x28t
        0x1bt
        0x18t
        0x10t
        0x27t
        0x2ct
        0x21t
        0x30t
        0x3bt
        0x32t
        0x36t
        0x27t
        0x26t
        0x1dt
        0x21t
        0x32t
        0x2ft
        0x21t
        0x25t
        0x26t
        0x23t
        0x18t
        0x24t
        0x28t
        0x2at
        0x2at
        0x26t
        0x29t
        0x23t
        0x4ft
        0x42t
        0x46t
        0x43t
        0x4bt
        0x4et
        0x49t
        0x42t
        0x45t
        0x4ft
        0x43t
        0x42t
        0x66t
        0x62t
        0x6et
        0x68t
        0x6at
        0x19t
        0x1et
        0x6t
        0x11t
        0x1ct
        0x19t
        0x14t
        0x11t
        0x4t
        0x19t
        0x1ft
        0x1et
        0x2ft
        0x12t
        0x15t
        0x18t
        0x11t
        0x6t
        0x19t
        0x1ft
        0x2t
        0x47t
        0x42t
        0x45t
        0x40t
        0x74t
        0x4ft
        0x4et
        0x58t
        0x48t
        0x59t
        0x42t
        0x5bt
        0x5ft
        0x42t
        0x44t
        0x45t
        0x1ft
        0xet
        0x1dt
        0x1ct
        0x6t
        0x1t
        0x8t
        0x4bt
        0x5at
        0x4et
        0x48t
        0x5et
        0x64t
        0x4ft
        0x49t
        0x5at
        0x55t
        0x48t
        0x57t
        0x5at
        0x4ft
        0x52t
        0x54t
        0x55t
        0x49t
        0x55t
        0x58t
        0x40t
        0x66t
        0x4dt
        0x4bt
        0x58t
        0x57t
        0x4at
        0x55t
        0x58t
        0x4dt
        0x50t
        0x56t
        0x57t
        0x49t
        0x4bt
        0x56t
        0x54t
        0x56t
        0x4dt
        0x5ct
        0x5dt
        0x66t
        0x4dt
        0x4bt
        0x58t
        0x57t
        0x4at
        0x55t
        0x58t
        0x4dt
        0x50t
        0x56t
        0x57t
        0x0t
        0x17t
        0x3t
        0x7t
        0x17t
        0x1t
        0x6t
        0x2dt
        0x1bt
        0x16t
        0x6et
        0x73t
        0x7ct
        0x6dt
        0x6et
        0x75t
        0x72t
        0x69t
        0x36t
        0x2bt
        0x24t
        0x35t
        0x36t
        0x2dt
        0x2at
        0x31t
        0x1at
        0x26t
        0x2at
        0x28t
        0x35t
        0x37t
        0x20t
        0x36t
        0x36t
        0x1at
        0x34t
        0x30t
        0x24t
        0x29t
        0x2ct
        0x31t
        0x3ct
        0x4t
        0x19t
        0x16t
        0x7t
        0x4t
        0x1ft
        0x18t
        0x3t
        0x28t
        0x1bt
        0x18t
        0x10t
        0x28t
        0x13t
        0x12t
        0x1bt
        0x16t
        0xet
        0x28t
        0x4t
        0x12t
        0x14t
        0x18t
        0x19t
        0x13t
        0x70t
        0x6ct
        0x60t
        0x6at
        0x62t
        0x6ft
        0x5ct
        0x60t
        0x6ct
        0x6dt
        0x77t
        0x66t
        0x7bt
        0x77t
        0x5t
        0x6t
        0x19t
        0x18t
        0x5t
        0x19t
        0x4t
        0x13t
        0x12t
        0x29t
        0x2t
        0x4t
        0x17t
        0x18t
        0x5t
        0x1at
        0x17t
        0x2t
        0x1ft
        0x19t
        0x18t
        0x27t
        0x20t
        0x35t
        0x26t
        0xbt
        0x26t
        0x35t
        0x20t
        0x3dt
        0x3at
        0x33t
        0x22t
        0x24t
        0x33t
        0x25t
        0x38t
        0x25t
        0x3dt
        0x34t
        0x2at
        0x37t
        0x2at
        0x32t
        0x3bt
        0x48t
        0x4et
        0x58t
        0x59t
        0x62t
        0x4ft
        0x58t
        0x4dt
        0x52t
        0x4ft
        0x49t
        0x62t
        0x48t
        0x4ft
        0x51t
        0x79t
        0x66t
        0x6bt
        0x6at
        0x60t
        0x50t
        0x6et
        0x7at
        0x7bt
        0x60t
        0x7ft
        0x63t
        0x6et
        0x76t
        0x50t
        0x6at
        0x61t
        0x6et
        0x6dt
        0x63t
        0x6at
        0x6bt
        0xct
        0x13t
        0x1et
        0x1ft
        0x15t
        0x25t
        0x17t
        0xat
        0x1et
        0x24t
        0x3bt
        0x36t
        0x37t
        0x3dt
        0xdt
        0x22t
        0x20t
        0x37t
        0x3et
        0x3dt
        0x33t
        0x36t
        0xdt
        0x21t
        0x3bt
        0x28t
        0x37t
        0xdt
        0x30t
        0x2bt
        0x26t
        0x37t
        0x21t
        0x6bt
        0x74t
        0x79t
        0x78t
        0x72t
        0x42t
        0x68t
        0x6ft
        0x71t
        0x3bt
        0x24t
        0x28t
        0x3at
        0x69t
        0x76t
        0x7at
        0x68t
        0x7et
        0x7dt
        0x76t
        0x73t
        0x76t
        0x6bt
        0x66t
        0x40t
        0x7ct
        0x77t
        0x7at
        0x7ct
        0x74t
        0x40t
        0x76t
        0x71t
        0x76t
        0x6bt
        0x76t
        0x7et
        0x73t
        0x40t
        0x7bt
        0x7at
        0x73t
        0x7et
        0x66t
        0x57t
        0x48t
        0x44t
        0x56t
        0x40t
        0x43t
        0x48t
        0x4dt
        0x48t
        0x55t
        0x58t
        0x7et
        0x42t
        0x49t
        0x44t
        0x42t
        0x4at
        0x7et
        0x48t
        0x4ft
        0x55t
        0x44t
        0x53t
        0x57t
        0x40t
        0x4dt
    .end array-data
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/XT;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/JT;Ljava/lang/String;II)V
    .locals 1

    .line 72352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0d:Z

    .line 72353
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cy;->A0E:Lcom/facebook/ads/redexgen/X/XT;

    .line 72354
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/cy;->A0F:Lcom/facebook/ads/redexgen/X/JT;

    .line 72355
    iput p5, p0, Lcom/facebook/ads/redexgen/X/cy;->A02:I

    .line 72356
    iput p6, p0, Lcom/facebook/ads/redexgen/X/cy;->A01:I

    .line 72357
    invoke-direct {p0, p2, p4}, Lcom/facebook/ads/redexgen/X/cy;->A08(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 72358
    return-void
.end method

.method private A07(Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72359
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/cy;->A03(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 72360
    .local p0, "postData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 72361
    .local p1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/facebook/ads/redexgen/X/cz;

    invoke-direct {v2, p0, p2, v0}, Lcom/facebook/ads/redexgen/X/cz;-><init>(Lcom/facebook/ads/redexgen/X/cy;Ljava/util/Map;Ljava/util/Map;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A05:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72362
    :catch_0
    return-void
.end method

.method private A08(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 15

    .line 72363
    move-object v4, p0

    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A0X:Z

    if-nez v0, :cond_c

    .line 72364
    move-object/from16 v5, p1

    if-nez v5, :cond_0

    .line 72365
    return-void

    .line 72366
    :cond_0
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/cy;->A0E:Lcom/facebook/ads/redexgen/X/XT;

    const/16 v2, 0x24

    const/16 v1, 0x17

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/LN;->A02(Landroid/content/Context;Ljava/lang/String;)V

    .line 72367
    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A0N:Ljava/lang/String;

    .line 72368
    const/16 v2, 0x20e

    const/16 v1, 0xa

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A0P:Ljava/lang/String;

    .line 72369
    const/4 v3, 0x0

    const/16 v2, 0xd9

    const/16 v1, 0xc

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A00:I

    .line 72370
    const/16 v2, 0x183

    const/16 v1, 0xd

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A0O:Ljava/lang/String;

    .line 72371
    const/16 v2, 0x190

    const/16 v1, 0xc

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/Le;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72372
    .local v5, "fbadCommand":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A0A:Landroid/net/Uri;

    .line 72373
    const/16 v0, 0xc

    new-array v9, v0, [Ljava/lang/String;

    const/16 v2, 0xca

    const/16 v1, 0xf

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v3

    const/4 v6, 0x1

    const/16 v2, 0x288

    const/4 v1, 0x5

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v6

    const/4 v6, 0x2

    const/16 v2, 0x280

    const/16 v1, 0x8

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v6

    const/4 v6, 0x3

    const/16 v2, 0x19c

    const/16 v1, 0x8

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v6

    const/4 v6, 0x4

    const/16 v2, 0xe5

    const/4 v1, 0x4

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v6

    const/4 v7, 0x5

    const/16 v2, 0x252

    const/16 v1, 0xe

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    const/4 v8, 0x6

    const/16 v7, 0x1c2

    sget-object v2, Lcom/facebook/ads/redexgen/X/cy;->A0f:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/cy;->A0f:[Ljava/lang/String;

    const-string v1, "EgjH3"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "aXmwT"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/16 v1, 0x10

    const/16 v0, 0x41

    invoke-static {v7, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v8

    const/4 v7, 0x7

    const/16 v2, 0x260

    const/16 v1, 0x15

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    const/16 v7, 0x8

    const/16 v2, 0xbc

    const/16 v1, 0xe

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    const/16 v7, 0x9

    const/16 v2, 0x1fa

    const/16 v1, 0x14

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    const/16 v7, 0xa

    const/16 v2, 0x1ea

    const/16 v1, 0x10

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    const/16 v7, 0xb

    const/16 v2, 0x1d9

    const/16 v1, 0x11

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    .line 72374
    .local v0, "strKeys":[Ljava/lang/String;
    array-length v8, v9

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v8, :cond_4

    aget-object v2, v9, v7

    .line 72375
    .local v0, "key":Ljava/lang/String;
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/cy;->A0U:Ljava/util/HashMap;

    invoke-static {v5, v2}, Lcom/facebook/ads/redexgen/X/Le;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/facebook/ads/redexgen/X/cy;->A0f:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_2

    goto :goto_1

    .line 72376
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/cy;->A0f:[Ljava/lang/String;

    const-string v1, "eWhcqXkmKwACVp6tQL5WW3qntxITuvc7"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 72377
    :cond_3
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 72378
    :cond_4
    const/16 v2, 0xe9

    const/16 v1, 0xe

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/facebook/ads/redexgen/X/Le;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 72379
    .local v0, "callToAction":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 72380
    iget-object v7, v4, Lcom/facebook/ads/redexgen/X/cy;->A0U:Ljava/util/HashMap;

    sget-object v1, Lcom/facebook/ads/redexgen/X/cy;->A0f:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/cy;->A0f:[Ljava/lang/String;

    const-string v1, "fJLCRXTMzJxf7DhTFL7Dp6MTDwlQmm1t"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v7, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72381
    :cond_5
    :goto_3
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A0E:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/ch;->A02(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/XT;)Lcom/facebook/ads/redexgen/X/ch;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A0D:Lcom/facebook/ads/redexgen/X/16;

    .line 72382
    const/16 v2, 0x1a4

    const/4 v1, 0x4

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jr;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A0I:Lcom/facebook/ads/redexgen/X/Jr;

    .line 72383
    const/16 v2, 0x1a8

    const/4 v1, 0x5

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jr;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A0J:Lcom/facebook/ads/redexgen/X/Jr;

    .line 72384
    const/16 v2, 0x275

    const/16 v1, 0xb

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Js;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Js;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A0K:Lcom/facebook/ads/redexgen/X/Js;

    .line 72385
    const/16 v2, 0x28d

    const/16 v1, 0xf

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/Le;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A0Q:Ljava/lang/String;

    .line 72386
    const/16 v2, 0x174

    const/16 v1, 0xf

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A0b:Z

    .line 72387
    const/16 v2, 0x161

    const/16 v1, 0x13

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A0c:Z

    .line 72388
    const/16 v2, 0x239

    const/16 v1, 0x19

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A05:I

    .line 72389
    const/16 v2, 0x220

    const/16 v1, 0x19

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A04:I

    .line 72390
    const/16 v2, 0x2e0

    const/16 v1, 0x1f

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A07:I

    .line 72391
    const/16 v3, 0x3e8

    .line 72392
    const/16 v2, 0x2ff

    const/16 v1, 0x1a

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A08:I

    .line 72393
    const/16 v2, 0x9a

    const/16 v1, 0xf

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 72394
    .local v1, "adChoicesIconObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_6

    .line 72395
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jr;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A0H:Lcom/facebook/ads/redexgen/X/Jr;

    .line 72396
    :cond_6
    const/16 v2, 0xa9

    const/16 v1, 0x13

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/Le;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A0M:Ljava/lang/String;

    .line 72397
    const/16 v2, 0x1ad

    const/16 v1, 0x15

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0h;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/0h;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A0B:Lcom/facebook/ads/redexgen/X/0h;

    .line 72398
    const/4 v3, 0x0

    goto :goto_4

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/cy;->A0f:[Ljava/lang/String;

    const-string v1, "EZfL37EHMq"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v7, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 72399
    :goto_4
    :try_start_0
    const/16 v2, 0x150

    const/16 v1, 0x11

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72400
    :catch_0
    move-exception v0

    .line 72401
    .local p0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    .line 72402
    :goto_5
    move-object v3, v0

    .line 72403
    .end local p0    # "e":Lorg/json/JSONException;
    :goto_6
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/0j;->A01(Lorg/json/JSONArray;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A0T:Ljava/util/Collection;

    .line 72404
    const/16 v2, 0x2d3

    const/16 v1, 0x9

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/Le;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A0S:Ljava/lang/String;

    .line 72405
    const-wide/16 v1, -0x1

    .line 72406
    const/16 v6, 0x2bb

    const/16 v3, 0x18

    const/16 v0, 0x38

    invoke-static {v6, v3, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A09:J

    .line 72407
    const/16 v2, 0x2b2

    const/16 v1, 0x9

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/Le;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A0R:Ljava/lang/String;

    .line 72408
    const/16 v2, 0x29c

    const/16 v1, 0x16

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 72409
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jw;->A03:Lcom/facebook/ads/redexgen/X/Jw;

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A0L:Lcom/facebook/ads/redexgen/X/Jw;

    .line 72410
    :goto_7
    const/16 v2, 0x131

    const/16 v1, 0x1d

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A0W:Z

    .line 72411
    const/16 v3, 0x64

    .line 72412
    const/16 v2, 0x10d

    const/16 v1, 0x24

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A03:I

    goto :goto_9

    .line 72413
    :cond_8
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 72414
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jw;->A05:Lcom/facebook/ads/redexgen/X/Jw;

    .line 72415
    :goto_8
    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A0L:Lcom/facebook/ads/redexgen/X/Jw;

    goto :goto_7

    :cond_9
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jw;->A04:Lcom/facebook/ads/redexgen/X/Jw;

    goto :goto_8

    .line 72416
    :goto_9
    :try_start_1
    const/16 v2, 0x105

    const/16 v1, 0x8

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 72417
    .local p0, "carouselArray":Lorg/json/JSONArray;
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 72418
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v14

    .line 72419
    .local v0, "cardCount":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 72420
    .local v0, "carouselList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    const/4 v13, 0x0

    .local v0, "cardIndex":I
    :goto_a
    if-ge v13, v14, :cond_a

    .line 72421
    new-instance v8, Lcom/facebook/ads/redexgen/X/cy;

    invoke-direct {v8}, Lcom/facebook/ads/redexgen/X/cy;-><init>()V

    .line 72422
    .local v1, "adapter":Lcom/facebook/ads/redexgen/X/cy;
    iget-object v9, v4, Lcom/facebook/ads/redexgen/X/cy;->A0E:Lcom/facebook/ads/redexgen/X/XT;

    .line 72423
    invoke-virtual {v7, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    iget-object v11, v4, Lcom/facebook/ads/redexgen/X/cy;->A0F:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v12, v4, Lcom/facebook/ads/redexgen/X/cy;->A0N:Ljava/lang/String;

    .line 72424
    move-object v5, v8

    .end local v1    # "adapter":Lcom/facebook/ads/redexgen/X/cy;
    .local p0, "adapter":Lcom/facebook/ads/redexgen/X/cy;
    .local v1, "carouselArray":Lorg/json/JSONArray;
    .end local v0    # "cardIndex":I
    .local v0, "cardIndex":I
    .end local v0    # "cardIndex":I
    .local v0, "carouselList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    invoke-direct/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/cy;->A06(Lcom/facebook/ads/redexgen/X/XT;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/JT;Ljava/lang/String;II)V

    .line 72425
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/cy;->A0E:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/cy;->A0G:Lcom/facebook/ads/redexgen/X/Jq;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Tj;

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/facebook/ads/redexgen/X/Tj;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/cy;Lcom/facebook/ads/redexgen/X/95;Lcom/facebook/ads/redexgen/X/Jq;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72426
    .end local p0    # "adapter":Lcom/facebook/ads/redexgen/X/cy;
    add-int/lit8 v13, v13, 0x1

    .end local v0    # "carouselList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    .restart local v0    # "carouselList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    goto :goto_a

    .line 72427
    .end local v0    # "carouselList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    .end local v1    # "carouselArray":Lorg/json/JSONArray;
    .local p0, "carouselArray":Lorg/json/JSONArray;
    .restart local v0    # "carouselList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    .end local p0    # "carouselArray":Lorg/json/JSONArray;
    .end local v0    # "carouselList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    .end local v0
    .restart local v0    # "carouselList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    .restart local v1    # "carouselArray":Lorg/json/JSONArray;
    :cond_a
    iput-object v6, v4, Lcom/facebook/ads/redexgen/X/cy;->A0V:Ljava/util/List;

    goto :goto_b
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 72428
    :catch_1
    move-exception v7

    .line 72429
    .local p0, "je":Lorg/json/JSONException;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A0E:Lcom/facebook/ads/redexgen/X/XT;

    .line 72430
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v6

    sget v5, Lcom/facebook/ads/redexgen/X/8m;->A1x:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v3, v7}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/Throwable;)V

    .line 72431
    const/16 v2, 0x1d2

    const/4 v1, 0x7

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v5, v3}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 72432
    sget-object v3, Lcom/facebook/ads/redexgen/X/cy;->A0g:Ljava/lang/String;

    const/16 v2, 0x7c

    const/16 v1, 0x1e

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72433
    .end local p0    # "je":Lorg/json/JSONException;
    :cond_b
    :goto_b
    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A0X:Z

    .line 72434
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/cy;->A09()Z

    move-result v0

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/cy;->A0Y:Z

    .line 72435
    return-void

    .line 72436
    .end local v5    # "fbadCommand":Ljava/lang/String;
    .end local v0    # "carouselList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    .end local v1    # "carouselArray":Lorg/json/JSONArray;
    .end local v0
    .end local v0
    :cond_c
    const/16 v2, 0x9

    const/16 v1, 0x1b

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A09()Z
    .locals 4

    .line 72437
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0d:Z

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cy;->A0U:Ljava/util/HashMap;

    const/16 v2, 0xca

    const/16 v1, 0xf

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cy;->A0U:Ljava/util/HashMap;

    .line 72438
    const/16 v2, 0x288

    const/4 v1, 0x5

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0d:Z

    if-eqz v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0I:Lcom/facebook/ads/redexgen/X/Jr;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0d:Z

    if-eqz v0, :cond_5

    :cond_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cy;->A0J:Lcom/facebook/ads/redexgen/X/Jr;

    sget-object v1, Lcom/facebook/ads/redexgen/X/cy;->A0f:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/cy;->A0f:[Ljava/lang/String;

    const-string v1, "coz4LHwVNN2LSDndRSBnj9WvwXuRM5HO"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v3, :cond_4

    .line 72439
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cy;->A75()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE_BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-ne v1, v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 72440
    :goto_0
    return v0
.end method


# virtual methods
.method public final A0A()I
    .locals 1

    .line 72441
    iget v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A00:I

    return v0
.end method

.method public final A0B()I
    .locals 1

    .line 72442
    iget v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A01:I

    return v0
.end method

.method public final A0C()I
    .locals 1

    .line 72443
    iget v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A02:I

    return v0
.end method

.method public final A0D()I
    .locals 1

    .line 72444
    iget v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A03:I

    return v0
.end method

.method public final A0E()I
    .locals 2

    .line 72445
    iget v1, p0, Lcom/facebook/ads/redexgen/X/cy;->A04:I

    if-ltz v1, :cond_0

    const/16 v0, 0x64

    if-le v1, v0, :cond_1

    .line 72446
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 72447
    :cond_1
    return v1
.end method

.method public final A0F()I
    .locals 1

    .line 72448
    iget v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A06:I

    return v0
.end method

.method public final A0G()I
    .locals 1

    .line 72449
    iget v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A07:I

    return v0
.end method

.method public final A0H()I
    .locals 1

    .line 72450
    iget v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A08:I

    return v0
.end method

.method public final A0I()Lcom/facebook/ads/redexgen/X/16;
    .locals 1

    .line 72451
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0D:Lcom/facebook/ads/redexgen/X/16;

    return-object v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/Jr;
    .locals 1

    .line 72452
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cy;->A0h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72453
    const/4 v0, 0x0

    return-object v0

    .line 72454
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0H:Lcom/facebook/ads/redexgen/X/Jr;

    return-object v0
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/Jr;
    .locals 1

    .line 72455
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cy;->A0h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72456
    const/4 v0, 0x0

    return-object v0

    .line 72457
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0J:Lcom/facebook/ads/redexgen/X/Jr;

    return-object v0
.end method

.method public final A0L()Lcom/facebook/ads/redexgen/X/Jr;
    .locals 1

    .line 72458
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cy;->A0h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72459
    const/4 v0, 0x0

    return-object v0

    .line 72460
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0I:Lcom/facebook/ads/redexgen/X/Jr;

    return-object v0
.end method

.method public final A0M()Lcom/facebook/ads/redexgen/X/Js;
    .locals 1

    .line 72461
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cy;->A0h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72462
    const/4 v0, 0x0

    return-object v0

    .line 72463
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/cy;->A04()V

    .line 72464
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0K:Lcom/facebook/ads/redexgen/X/Js;

    return-object v0
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/Jw;
    .locals 1

    .line 72465
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cy;->A0h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72466
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jw;->A03:Lcom/facebook/ads/redexgen/X/Jw;

    return-object v0

    .line 72467
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0L:Lcom/facebook/ads/redexgen/X/Jw;

    return-object v0
.end method

.method public final A0O()Ljava/lang/Long;
    .locals 2

    .line 72468
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cy;->A0h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72469
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 72470
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A09:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final A0P()Ljava/lang/String;
    .locals 4

    .line 72471
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cy;->A0h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72472
    const/4 v0, 0x0

    return-object v0

    .line 72473
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/cy;->A04()V

    .line 72474
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cy;->A0U:Ljava/util/HashMap;

    const/16 v2, 0xe5

    const/4 v1, 0x4

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lr;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0Q()Ljava/lang/String;
    .locals 1

    .line 72475
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cy;->A0h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72476
    const/4 v0, 0x0

    return-object v0

    .line 72477
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0M:Ljava/lang/String;

    return-object v0
.end method

.method public final A0R()Ljava/lang/String;
    .locals 4

    .line 72478
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cy;->A0h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72479
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/cy;->A0f:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/cy;->A0f:[Ljava/lang/String;

    const-string v1, "6LnlrboEXfVkWbJfSSNj7sObvXF9GrkL"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-object v3

    .line 72480
    :cond_1
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0S()Ljava/lang/String;
    .locals 1

    .line 72481
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0P:Ljava/lang/String;

    return-object v0
.end method

.method public final A0T()Ljava/lang/String;
    .locals 1

    .line 72482
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cy;->A0h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72483
    const/4 v0, 0x0

    return-object v0

    .line 72484
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0R:Ljava/lang/String;

    return-object v0
.end method

.method public final A0U()Ljava/lang/String;
    .locals 1

    .line 72485
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cy;->A0h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72486
    const/4 v0, 0x0

    return-object v0

    .line 72487
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0S:Ljava/lang/String;

    return-object v0
.end method

.method public final A0V(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 72488
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cy;->A0h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72489
    const/4 v0, 0x0

    return-object v0

    .line 72490
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/cy;->A04()V

    .line 72491
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0U:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final A0W()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Tj;",
            ">;"
        }
    .end annotation

    .line 72492
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cy;->A0h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72493
    const/4 v0, 0x0

    return-object v0

    .line 72494
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0V:Ljava/util/List;

    return-object v0
.end method

.method public final A0X()V
    .locals 5

    .line 72495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0V:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/cy;->A0f:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/cy;->A0f:[Ljava/lang/String;

    const-string v1, "kj4WnsmCok25qDrlf1kxSYggARLvW33C"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v3, :cond_3

    .line 72496
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cy;->A0V:Ljava/util/List;

    sget-object v1, Lcom/facebook/ads/redexgen/X/cy;->A0f:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/cy;->A0f:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/cy;->A0f:[Ljava/lang/String;

    const-string v1, "0lb5BUzW8n1EJDWyWAqaA7d0lZJNpkzV"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Tj;

    .line 72497
    .local v0, "internalNativeAd":Lcom/facebook/ads/redexgen/X/Tj;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tj;->unregisterView()V

    .line 72498
    .end local v0    # "internalNativeAd":Lcom/facebook/ads/redexgen/X/Tj;
    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/cy;->A0f:[Ljava/lang/String;

    const-string v1, "QJQdkpg5cmGOeaue26HVF3aLtsB2qwfM"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/cy;->A0f:[Ljava/lang/String;

    const-string v1, "wGXHpE1nya"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    goto :goto_0

    .line 72499
    :cond_3
    return-void
.end method

.method public final A0Y(Lcom/facebook/ads/redexgen/X/11;)V
    .locals 0

    .line 72500
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cy;->A0C:Lcom/facebook/ads/redexgen/X/11;

    .line 72501
    return-void
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/11;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/1p;Lcom/facebook/ads/redexgen/X/Jq;)V
    .locals 4

    .line 72502
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cy;->A0E:Lcom/facebook/ads/redexgen/X/XT;

    .line 72503
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/cy;->A0C:Lcom/facebook/ads/redexgen/X/11;

    .line 72504
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/cy;->A0F:Lcom/facebook/ads/redexgen/X/JT;

    .line 72505
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/cy;->A0G:Lcom/facebook/ads/redexgen/X/Jq;

    .line 72506
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/1p;->A03()Lorg/json/JSONObject;

    move-result-object v3

    .line 72507
    .local p0, "dataObject":Lorg/json/JSONObject;
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/1p;->A01()Lcom/facebook/ads/redexgen/X/95;

    move-result-object v0

    .line 72508
    .local p1, "definition":Lcom/facebook/ads/redexgen/X/95;
    if-eqz v0, :cond_0

    .line 72509
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/95;->A06()I

    move-result v0

    .line 72510
    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A06:I

    .line 72511
    const/16 v2, 0x14e

    const/4 v1, 0x2

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Le;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/cy;->A08(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 72512
    invoke-static {p1, p0, p3}, Lcom/facebook/ads/redexgen/X/0j;->A03(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/0i;Lcom/facebook/ads/redexgen/X/JT;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72513
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A3z()V

    .line 72514
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/K3;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/K3;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lcom/facebook/ads/redexgen/X/11;->ABP(Lcom/facebook/ads/redexgen/X/cy;Lcom/facebook/ads/redexgen/X/K3;)V

    .line 72515
    return-void

    .line 72516
    :cond_0
    const/16 v0, 0xc8

    goto :goto_0

    .line 72517
    :cond_1
    if-eqz p2, :cond_2

    .line 72518
    invoke-interface {p2, p0}, Lcom/facebook/ads/redexgen/X/11;->ABM(Lcom/facebook/ads/redexgen/X/cy;)V

    .line 72519
    :cond_2
    return-void
.end method

.method public final A0a(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72520
    .local v5, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cy;->A0h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72521
    return-void

    .line 72522
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0E:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A1H(Landroid/content/Context;)Z

    move-result v0

    .line 72523
    .local p0, "shouldBlockLockscreenClicks":Z
    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/M6;->A03(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72524
    sget-object v6, Lcom/facebook/ads/redexgen/X/cy;->A0g:Ljava/lang/String;

    const/16 v5, 0x3b

    const/16 v4, 0x1f

    const/4 v3, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/cy;->A0f:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/cy;->A0f:[Ljava/lang/String;

    const-string v1, "D3JUlaax70Z19DqZX7Vx94n8SobUQcIP"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72525
    return-void

    .line 72526
    :cond_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 72527
    .local p1, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_3

    .line 72528
    invoke-interface {v4, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 72529
    :cond_3
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cy;->A0E:Lcom/facebook/ads/redexgen/X/XT;

    const/16 v2, 0x5a

    const/16 v1, 0xc

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/LN;->A02(Landroid/content/Context;Ljava/lang/String;)V

    .line 72530
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0C:Lcom/facebook/ads/redexgen/X/11;

    if-eqz v0, :cond_4

    .line 72531
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/11;->ABL(Lcom/facebook/ads/redexgen/X/cy;)V

    .line 72532
    :cond_4
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0d:Z

    if-eqz v0, :cond_5

    .line 72533
    iget v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A02:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xfe

    const/4 v1, 0x7

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72534
    iget v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A01:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xf7

    const/4 v1, 0x7

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72535
    :cond_5
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cy;->A0E:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/cy;->A0F:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cy;->A0N:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0A:Landroid/net/Uri;

    .line 72536
    invoke-static {v3, v2, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/0g;->A00(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/0f;

    move-result-object v0

    .line 72537
    .local v0, "adAction":Lcom/facebook/ads/redexgen/X/0f;
    if-eqz v0, :cond_6

    .line 72538
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0f;->A0B()V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72539
    :catch_0
    move-exception v4

    .line 72540
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v3, Lcom/facebook/ads/redexgen/X/cy;->A0g:Ljava/lang/String;

    const/16 v2, 0x66

    const/16 v1, 0x16

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72541
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_6
    :goto_0
    return-void
.end method

.method public final A0b(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72542
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cy;->A0F:Lcom/facebook/ads/redexgen/X/JT;

    if-eqz v1, :cond_0

    .line 72543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0N:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/JT;->A8m(Ljava/lang/String;Ljava/util/Map;)V

    .line 72544
    :cond_0
    return-void
.end method

.method public final A0c(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72545
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cy;->A0h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72546
    return-void

    .line 72547
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0Z:Z

    if-nez v0, :cond_8

    .line 72548
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0C:Lcom/facebook/ads/redexgen/X/11;

    if-eqz v0, :cond_1

    .line 72549
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/11;->ABN(Lcom/facebook/ads/redexgen/X/cy;)V

    .line 72550
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 72551
    .local p0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    .line 72552
    invoke-interface {v2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 72553
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0d:Z

    if-eqz v0, :cond_3

    .line 72554
    iget v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A02:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0xfe

    const/4 v1, 0x7

    const/16 v0, 0x46

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72555
    iget v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A01:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0xf7

    const/4 v1, 0x7

    const/16 v0, 0x3b

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72556
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cy;->A61()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0F:Lcom/facebook/ads/redexgen/X/JT;

    if-eqz v0, :cond_5

    .line 72557
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0d:Z

    if-nez v0, :cond_4

    .line 72558
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0E:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2Y()V

    .line 72559
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0O:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/26;->A00(Ljava/lang/String;)V

    .line 72560
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cy;->A0F:Lcom/facebook/ads/redexgen/X/JT;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cy;->A61()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/JT;->A8v(Ljava/lang/String;Ljava/util/Map;)V

    .line 72561
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cy;->A0k()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cy;->A0l()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 72562
    :cond_6
    invoke-direct {p0, p1, v2}, Lcom/facebook/ads/redexgen/X/cy;->A07(Ljava/util/Map;Ljava/util/Map;)V

    .line 72563
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0Z:Z

    .line 72564
    .end local p0    # "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    return-void
.end method

.method public final A0d(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72565
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cy;->A0F:Lcom/facebook/ads/redexgen/X/JT;

    if-eqz v1, :cond_0

    .line 72566
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0N:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/JT;->A9D(Ljava/lang/String;Ljava/util/Map;)V

    .line 72567
    :cond_0
    return-void
.end method

.method public final A0e(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72568
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cy;->A0F:Lcom/facebook/ads/redexgen/X/JT;

    if-eqz v1, :cond_0

    .line 72569
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0N:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/JT;->A9E(Ljava/lang/String;Ljava/util/Map;)V

    .line 72570
    :cond_0
    return-void
.end method

.method public final A0f()Z
    .locals 1

    .line 72571
    const/4 v0, 0x1

    return v0
.end method

.method public final A0g()Z
    .locals 1

    .line 72572
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cy;->A0h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0A:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0h()Z
    .locals 1

    .line 72573
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0X:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0Y:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0i()Z
    .locals 1

    .line 72574
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0W:Z

    return v0
.end method

.method public final A0j()Z
    .locals 1

    .line 72575
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0d:Z

    return v0
.end method

.method public final A0k()Z
    .locals 4

    .line 72576
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0E:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A0x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72577
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cy;->A0h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/cy;->A0b:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/cy;->A0f:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/cy;->A0f:[Ljava/lang/String;

    const-string v1, "hsrOxssvGH6abDOIeI9T6FJFSNjQSl4a"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 72578
    :goto_0
    return v0
.end method

.method public final A0l()Z
    .locals 4

    .line 72579
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0E:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A0x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72580
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cy;->A0h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/cy;->A0c:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/cy;->A0f:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/cy;->A0f:[Ljava/lang/String;

    const-string v1, "qputmJyOXU"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 72581
    :goto_0
    return v0
.end method

.method public final A61()Ljava/lang/String;
    .locals 1

    .line 72582
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0N:Ljava/lang/String;

    return-object v0
.end method

.method public final A6K()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72583
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0T:Ljava/util/Collection;

    return-object v0
.end method

.method public final A6l()Lcom/facebook/ads/redexgen/X/0h;
    .locals 1

    .line 72584
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A0B:Lcom/facebook/ads/redexgen/X/0h;

    return-object v0
.end method

.method public A75()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 1

    .line 72585
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method public final onDestroy()V
    .locals 0

    .line 72586
    return-void
.end method
