.class public final Lcom/facebook/ads/redexgen/X/Ns;
.super Landroid/graphics/drawable/Drawable;
.source ""


# static fields
.field public static A0G:[B

.field public static A0H:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:Ljava/lang/String;

.field public A05:Ljava/lang/String;

.field public A06:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A07:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/QZ;",
            ">;"
        }
    .end annotation
.end field

.field public A08:Z

.field public final A09:Landroid/graphics/Paint;

.field public final A0A:Landroid/graphics/Paint;

.field public final A0B:Landroid/graphics/Paint;

.field public final A0C:Landroid/graphics/Path;

.field public final A0D:Landroid/os/Handler;

.field public final A0E:Landroid/text/TextPaint;

.field public final A0F:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Mp"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "s1okci9AACeOEsTaqEhejkWwVhqIiyNU"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "empHZDdin7c86b5ED3ajK85vhcLRVQYd"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QRrQz6m9v7aBhecCWxUXgpf0lUmjJya0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Hctlswo9ad12sYru2lKVThOw6NzJy2jW"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0MQcFv6TsH62DS4QTRzsSvzajYizZeJ9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "0Y"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3fR7fZsYHtoPr7aoRN1kO3di1PlcoJD4"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ns;->A0H:[Ljava/lang/String;

    .line 46336
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ns;->A04()V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 46337
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 46338
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A09:Landroid/graphics/Paint;

    .line 46339
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A0A:Landroid/graphics/Paint;

    .line 46340
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A0C:Landroid/graphics/Path;

    .line 46341
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A0E:Landroid/text/TextPaint;

    .line 46342
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A0B:Landroid/graphics/Paint;

    .line 46343
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A0D:Landroid/os/Handler;

    .line 46344
    new-instance v0, Lcom/facebook/ads/redexgen/X/Sc;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Sc;-><init>(Lcom/facebook/ads/redexgen/X/Ns;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A0F:Ljava/lang/Runnable;

    .line 46345
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ns;->A09:Landroid/graphics/Paint;

    const/16 v1, 0x24

    const/16 v0, 0x7f

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 46346
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ns;->A09:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46347
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A0A:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46348
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ns;->A0A:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/16 v1, 0xbf

    const/16 v0, 0xff

    invoke-static {v1, v2, v0, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 46349
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ns;->A0A:Landroid/graphics/Paint;

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 46350
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ns;->A0A:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A0E:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 46352
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ns;->A0E:Landroid/text/TextPaint;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 46353
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ns;->A0E:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46354
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ns;->A0E:Landroid/text/TextPaint;

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 46355
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ns;->A0B:Landroid/graphics/Paint;

    const/16 v0, 0xd4

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 46356
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ns;->A0B:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46357
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->A07()V

    .line 46358
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Ns;)Landroid/os/Handler;
    .locals 0

    .line 46359
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A0D:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Ns;)Ljava/lang/Runnable;
    .locals 0

    .line 46360
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A0F:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ns;->A0G:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A03()V
    .locals 12

    .line 46361
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 46362
    .local p0, "sb":Ljava/lang/StringBuilder;
    iget v5, p0, Lcom/facebook/ads/redexgen/X/Ns;->A00:I

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ns;->A02(III)Ljava/lang/String;

    move-result-object v3

    if-gtz v5, :cond_8

    .line 46363
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A06:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46364
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A06:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46365
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46366
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A04:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46367
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A04:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46368
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46369
    :cond_1
    const/16 v2, 0x2e

    const/4 v1, 0x4

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ns;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46370
    const/16 v2, 0x15

    const/4 v1, 0x5

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ns;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46371
    const/16 v2, 0xc

    const/16 v1, 0x9

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ns;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46372
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Ns;->A03:J

    const-wide/16 v5, 0x0

    cmp-long v0, v1, v5

    if-lez v0, :cond_7

    .line 46373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v7, p0, Lcom/facebook/ads/redexgen/X/Ns;->A03:J

    sub-long/2addr v0, v7

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 46374
    .local v2, "rawMs":J
    const-wide/32 v10, 0x36ee80

    div-long v0, v6, v10

    long-to-int v9, v0

    .line 46375
    .local v4, "hours":I
    rem-long/2addr v6, v10

    .line 46376
    const-wide/32 v10, 0xea60

    div-long v0, v6, v10

    long-to-int v8, v0

    .line 46377
    .local v0, "minutes":I
    rem-long/2addr v6, v10

    .line 46378
    const-wide/16 v0, 0x3e8

    div-long/2addr v6, v0

    long-to-int v5, v6

    .line 46379
    .local v3, "seconds":I
    if-lez v9, :cond_2

    .line 46380
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46381
    const/16 v2, 0x54

    const/4 v1, 0x2

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ns;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46382
    :cond_2
    if-gtz v9, :cond_3

    if-lez v8, :cond_4

    .line 46383
    :cond_3
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46384
    const/16 v2, 0x56

    const/4 v1, 0x2

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ns;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46385
    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46386
    const/16 v2, 0x58

    const/4 v1, 0x5

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ns;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46387
    .end local v4    # "hours":I
    .end local v2    # "rawMs":J
    .end local v3    # "seconds":I
    .end local v0    # "minutes":I
    :goto_0
    const/4 v2, 0x1

    const/4 v1, 0x7

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ns;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46388
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A07:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    .line 46389
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 46390
    .end local v4
    :cond_5
    const/16 v2, 0x39

    const/16 v1, 0x1b

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ns;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46391
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A05:Ljava/lang/String;

    .line 46392
    const/high16 v7, -0x31000000

    .line 46393
    .local v4, "maxWidth":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A05:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v5, v6

    const/4 v4, 0x0

    const/4 v3, 0x0

    .end local v4    # "maxWidth":F
    .local v0, "maxWidth":F
    :goto_2
    if-ge v3, v5, :cond_9

    aget-object v2, v6, v3

    .line 46394
    .local v3, "line":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ns;->A0E:Landroid/text/TextPaint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v4, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 46395
    .end local v3    # "line":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 46396
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A07:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/QZ;

    .line 46397
    .local v4, "vc":Lcom/facebook/ads/redexgen/X/QZ;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QZ;->A0R()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 46398
    :cond_7
    const/16 v6, 0x32

    const/4 v5, 0x7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ns;->A0H:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ns;->A0H:[Ljava/lang/String;

    const-string v1, "KaVl90AUCQiyYrscuVoIg37eW2R2JvQo"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "0pxfQADbA4sIF5gDourAGVlubWCldmoZ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/16 v0, 0x2f

    invoke-static {v6, v5, v0}, Lcom/facebook/ads/redexgen/X/Ns;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 46399
    :cond_8
    const/16 v2, 0x1a

    const/4 v1, 0x5

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ns;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46400
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A01:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46401
    const/16 v2, 0x8

    const/4 v1, 0x4

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ns;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46402
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A00:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 46403
    :cond_9
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A02:I

    .line 46404
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->invalidateSelf()V

    .line 46405
    return-void

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x5d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ns;->A0G:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x49t
        0x15t
        0x2at
        0x26t
        0x34t
        0x79t
        0x63t
        0x18t
        0x57t
        0x5et
        0x18t
        0x51t
        0x5dt
        0x31t
        0x12t
        0x1ct
        0x19t
        0x18t
        0x19t
        0x5dt
        0x75t
        0x6dt
        0x76t
        0x6dt
        0x73t
        0x37t
        0x15t
        0x6t
        0x10t
        0x54t
        0x56t
        0x71t
        0x76t
        0x6bt
        0x76t
        0x7et
        0x73t
        0x76t
        0x65t
        0x76t
        0x71t
        0x78t
        0x31t
        0x31t
        0x31t
        0x3ct
        0xbt
        0x4t
        0x4ft
        0x44t
        0x7ft
        0x7at
        0x7ft
        0x7et
        0x66t
        0x7ft
        0x6ct
        0x53t
        0x5ft
        0x4dt
        0x5bt
        0x58t
        0x53t
        0x56t
        0x53t
        0x4et
        0x43t
        0x1at
        0x79t
        0x52t
        0x5ft
        0x59t
        0x51t
        0x5ft
        0x48t
        0x1at
        0x54t
        0x55t
        0x4et
        0x1at
        0x49t
        0x5ft
        0x4et
        0x20t
        0x68t
        0x30t
        0x7dt
        0x33t
        0x60t
        0x21t
        0x27t
        0x2ft
    .end array-data
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Ns;)V
    .locals 0

    .line 46406
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ns;->A03()V

    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Ns;)Z
    .locals 0

    .line 46407
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A08:Z

    return p0
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 46408
    const/4 v3, 0x0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Ns;->A00:I

    .line 46409
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A01:I

    .line 46410
    const/16 v2, 0x1f

    const/16 v1, 0xf

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ns;->A02(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A05:Ljava/lang/String;

    .line 46411
    const/16 v0, 0x64

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A02:I

    .line 46412
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Ns;->A06:Ljava/lang/String;

    .line 46413
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A03:J

    .line 46414
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Ns;->A07:Ljava/lang/ref/WeakReference;

    .line 46415
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Ns;->A0D(Z)V

    .line 46416
    return-void
.end method

.method public final A08(II)V
    .locals 0

    .line 46417
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ns;->A00:I

    .line 46418
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Ns;->A01:I

    .line 46419
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ns;->A03()V

    .line 46420
    return-void
.end method

.method public final A09(J)V
    .locals 0

    .line 46421
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Ns;->A03:J

    .line 46422
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ns;->A03()V

    .line 46423
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/QZ;)V
    .locals 1

    .line 46424
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A07:Ljava/lang/ref/WeakReference;

    .line 46425
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ns;->A03()V

    .line 46426
    return-void
.end method

.method public final A0B(Ljava/lang/String;)V
    .locals 0

    .line 46427
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ns;->A04:Ljava/lang/String;

    .line 46428
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ns;->A03()V

    .line 46429
    return-void
.end method

.method public final A0C(Ljava/lang/String;)V
    .locals 0

    .line 46430
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ns;->A06:Ljava/lang/String;

    .line 46431
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ns;->A03()V

    .line 46432
    return-void
.end method

.method public final A0D(Z)V
    .locals 2

    .line 46433
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Ns;->A08:Z

    .line 46434
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A08:Z

    if-eqz v0, :cond_0

    .line 46435
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ns;->A0D:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A0F:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46436
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->invalidateSelf()V

    .line 46437
    return-void

    .line 46438
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ns;->A0D:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A0F:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final A0E()Z
    .locals 1

    .line 46439
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A08:Z

    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 18

    .line 46440
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Ns;->A08:Z

    if-nez v1, :cond_0

    .line 46441
    return-void

    .line 46442
    :cond_0
    move-object/from16 v3, p1

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    .line 46443
    .local v5, "canvasWidth":I
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 46444
    .local v6, "canvasHeight":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v2

    int-to-float v7, v1

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/Ns;->A09:Landroid/graphics/Paint;

    move-object v3, v3

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 46445
    new-instance v10, Landroid/text/StaticLayout;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/Ns;->A05:Ljava/lang/String;

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/Ns;->A0E:Landroid/text/TextPaint;

    iget v13, v0, Lcom/facebook/ads/redexgen/X/Ns;->A02:I

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 46446
    .local v7, "textLayout":Landroid/text/StaticLayout;
    int-to-float v8, v2

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    .line 46447
    .local v8, "canvasMiddleX":F
    int-to-float v7, v1

    div-float/2addr v7, v9

    .line 46448
    .local v3, "canvasMiddleY":F
    invoke-virtual {v10}, Landroid/text/StaticLayout;->getWidth()I

    move-result v4

    int-to-float v6, v4

    div-float/2addr v6, v9

    .line 46449
    .local v10, "textMiddleX":F
    invoke-virtual {v10}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    int-to-float v5, v4

    div-float/2addr v5, v9

    .line 46450
    .local v11, "textMiddleY":F
    sub-float v12, v8, v6

    const/high16 v4, 0x42200000    # 40.0f

    sub-float/2addr v12, v4

    sub-float v13, v7, v5

    sub-float/2addr v13, v4

    add-float v14, v8, v6

    add-float/2addr v14, v4

    add-float v15, v7, v5

    add-float/2addr v15, v4

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Ns;->A0B:Landroid/graphics/Paint;

    move-object v11, v3

    move-object/from16 v16, v4

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 46451
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 46452
    sub-float/2addr v8, v6

    sub-float/2addr v7, v5

    invoke-virtual {v3, v8, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 46453
    invoke-virtual {v10, v3}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 46454
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 46455
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Ns;->A0C:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 46456
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Ns;->A0C:Landroid/graphics/Path;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 46457
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Ns;->A0C:Landroid/graphics/Path;

    int-to-float v4, v2

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 46458
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Ns;->A0C:Landroid/graphics/Path;

    int-to-float v4, v2

    int-to-float v2, v1

    invoke-virtual {v5, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 46459
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ns;->A0C:Landroid/graphics/Path;

    int-to-float v1, v1

    invoke-virtual {v2, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 46460
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ns;->A0C:Landroid/graphics/Path;

    invoke-virtual {v1, v6, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 46461
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ns;->A0C:Landroid/graphics/Path;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ns;->A0A:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 46462
    return-void
.end method

.method public final getOpacity()I
    .locals 1

    .line 46463
    const/4 v0, -0x3

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 46464
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 46465
    return-void
.end method
