.class public final Lcom/facebook/ads/redexgen/X/1M;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A06:I

.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:Ljava/lang/String;

.field public A05:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
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

    const-string v0, "Du56ltgKKs1OVAX5"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "GkTmjkH3MPiTFcKSZdtZeP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "KEGdoxZZnAdDUnYCV96i9ePmYlw0nVcs"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "eeVVi2jaa6aVR"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "fQADRcl3z4I9sbyUvoxt9O6e4jXdGtkI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3SSpimwT8orOGywmbz8JxKLw4xXAqR"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "PizR3LI8tsUKIk44MqfkEczppTSirtIQ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "PpMlGdJ0WRh5qmood9xHloOk"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1M;->A08:[Ljava/lang/String;

    .line 3263
    invoke-static {}, Lcom/facebook/ads/redexgen/X/1M;->A03()V

    const/16 v0, 0x32

    sput v0, Lcom/facebook/ads/redexgen/X/1M;->A06:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3265
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1M;->A02:I

    .line 3266
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1M;->A05:Ljava/util/LinkedList;

    .line 3267
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1M;->A04:Ljava/lang/String;

    .line 3268
    return-void
.end method

.method public static A00()I
    .locals 1

    .line 3269
    sget v0, Lcom/facebook/ads/redexgen/X/1M;->A06:I

    return v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/1M;->A07:[B

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

.method private A02()V
    .locals 7

    .line 3270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v0, 0x3e8

    div-long/2addr v5, v0

    .line 3271
    .local p0, "currentTime":J
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1M;->A05:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1M;->A05:Ljava/util/LinkedList;

    .line 3272
    invoke-virtual {v0}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1M;->A05:Ljava/util/LinkedList;

    .line 3273
    invoke-virtual {v0}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sub-long v3, v5, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1M;->A00:I

    int-to-long v1, v0

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    .line 3274
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1M;->A05:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 3275
    :cond_0
    return-void
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x8c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1M;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x46t
        0x1bt
        0xct
        0x6dt
        0x3ct
        0x8t
        0x1ft
        0xbt
        0xft
        0x1ft
        0x14t
        0x19t
        0x3t
        0x5at
        0x39t
        0x1bt
        0xat
        0xat
        0x13t
        0x14t
        0x1dt
        0x5at
        0x3et
        0x1bt
        0xet
        0x1bt
        0x40t
        0x5at
        0x14t
        0x15t
        0x14t
        0x1ft
        0x5at
        0x33t
        0x14t
        0xet
        0x1ft
        0x1dt
        0x1ft
        0x8t
        0x5at
        0x15t
        0x19t
        0x19t
        0xft
        0x8t
        0x8t
        0x1ft
        0x14t
        0x19t
        0x1ft
        0x1t
        0xbt
        0x9t
        0x18t
        0x35t
        0x3et
        0x33t
        0x22t
        0x29t
        0x20t
        0x24t
        0x35t
        0x34t
        0xft
        0x39t
        0x34t
        0x35t
        0x39t
        0x20t
        0x7t
        0x3bt
        0x39t
        0x28t
        0x28t
        0x3dt
        0x3ct
        0x7t
        0x39t
        0x2at
        0x2at
        0x39t
        0x21t
        0x7t
        0x34t
        0x3dt
        0x36t
        0x3ft
        0x2ct
        0x30t
        0x68t
        0x64t
        0x64t
        0x72t
        0x75t
        0x75t
        0x62t
        0x69t
        0x64t
        0x62t
        0x74t
        0x31t
        0x24t
        0x33t
        0x28t
        0x2et
        0x25t
        0x66t
        0x71t
        0x6bt
        0x6at
        0x41t
        0x71t
        0x7dt
        0x7dt
        0x6bt
        0x6ct
        0x6ct
        0x7bt
        0x70t
        0x7dt
        0x7bt
        0x41t
        0x6dt
        0x7bt
        0x7dt
        0x6dt
        0x21t
        0x36t
        0x2ct
        0x2dt
        0x6t
        0x29t
        0x3ct
        0x2bt
        0x30t
        0x36t
        0x3dt
        0x1dt
        0x5t
    .end array-data
.end method


# virtual methods
.method public final A04(I)V
    .locals 0

    .line 3276
    iput p1, p0, Lcom/facebook/ads/redexgen/X/1M;->A02:I

    .line 3277
    return-void
.end method

.method public final A05(IIJI)V
    .locals 0

    .line 3278
    iput p1, p0, Lcom/facebook/ads/redexgen/X/1M;->A00:I

    .line 3279
    iput p2, p0, Lcom/facebook/ads/redexgen/X/1M;->A01:I

    .line 3280
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/1M;->A03:J

    .line 3281
    sput p5, Lcom/facebook/ads/redexgen/X/1M;->A06:I

    .line 3282
    return-void
.end method

.method public final A06(Lorg/json/JSONArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3283
    const/4 v2, 0x0

    .local p0, "idx":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 3284
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3285
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1M;->A05:Ljava/util/LinkedList;

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 3286
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3287
    :cond_0
    const/4 v2, 0x4

    const/16 v1, 0x2f

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1M;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/json/JSONException;

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3288
    .end local p0    # "idx":I
    :cond_1
    return-void
.end method

.method public final A07(Z)V
    .locals 5

    .line 3289
    if-eqz p1, :cond_0

    .line 3290
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/1M;->A05:Ljava/util/LinkedList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 3291
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1M;->A02()V

    .line 3292
    return-void
.end method

.method public final A08()Z
    .locals 5

    .line 3293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1M;->A05:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    int-to-long v3, v0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/1M;->A03:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A09()Z
    .locals 5

    .line 3294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v0, 0x3e8

    div-long/2addr v3, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1M;->A02:I

    int-to-long v0, v0

    sub-long/2addr v3, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1M;->A01:I

    int-to-long v1, v0

    cmp-long v0, v3, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 3295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3296
    .local p0, "builder":Ljava/lang/StringBuilder;
    const/16 v2, 0x8a

    const/4 v1, 0x1

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1M;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3297
    const/16 v2, 0x37

    const/16 v1, 0xc

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1M;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3298
    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1M;->A01(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3299
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1M;->A04:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3300
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1M;->A01(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3301
    const/16 v2, 0x65

    const/4 v1, 0x6

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1M;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3302
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3303
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1M;->A00:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3304
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3305
    const/16 v2, 0x7f

    const/16 v1, 0xb

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1M;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3306
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3307
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1M;->A01:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3308
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3309
    const/16 v2, 0x34

    const/4 v1, 0x3

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1M;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3310
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3311
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1M;->A03:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3312
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3313
    const/16 v2, 0x6b

    const/16 v1, 0x14

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1M;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3314
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3315
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1M;->A02:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3316
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3317
    const/16 v2, 0x43

    const/16 v1, 0x17

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1M;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3318
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3319
    sget v0, Lcom/facebook/ads/redexgen/X/1M;->A06:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3320
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3321
    const/16 v2, 0x5a

    const/16 v1, 0xb

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1M;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3322
    const/4 v2, 0x2

    const/4 v1, 0x2

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1M;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1M;->A05:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 3324
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/1M;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/1M;->A08:[Ljava/lang/String;

    const-string v1, "ktnl640oaPGPfDqOI7"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v4, :cond_2

    .line 3325
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3326
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3327
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3328
    :cond_2
    const/16 v2, 0x33

    const/4 v1, 0x1

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1M;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3329
    const/16 v2, 0x8b

    const/4 v1, 0x1

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1M;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3330
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
