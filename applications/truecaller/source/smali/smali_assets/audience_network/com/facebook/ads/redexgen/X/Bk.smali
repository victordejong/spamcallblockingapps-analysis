.class public final Lcom/facebook/ads/redexgen/X/Bk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/V3;
.implements Lcom/facebook/ads/redexgen/X/CR;
.implements Lcom/facebook/ads/redexgen/X/Hc;
.implements Lcom/facebook/ads/redexgen/X/Hf;
.implements Lcom/facebook/ads/redexgen/X/Fh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/FH;,
        Lcom/facebook/ads/redexgen/X/V7;,
        Lcom/facebook/ads/redexgen/X/V6;,
        Lcom/facebook/ads/redexgen/X/FI;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/V3;",
        "Lcom/facebook/ads/redexgen/X/CR;",
        "Lcom/facebook/ads/redexgen/X/Hc<",
        "Lcom/facebook/ads/redexgen/X/V7;",
        ">;",
        "Lcom/facebook/ads/redexgen/X/Hf;",
        "Lcom/facebook/ads/redexgen/X/Fh;"
    }
.end annotation


# static fields
.field public static A0c:[B

.field public static A0d:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:J

.field public A07:Lcom/facebook/ads/redexgen/X/CY;

.field public A08:Lcom/facebook/ads/redexgen/X/V4;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A09:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public A0D:Z

.field public A0E:Z

.field public A0F:Z

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:[I

.field public A0K:[Lcom/facebook/ads/redexgen/X/V2;

.field public A0L:[Z

.field public A0M:[Z

.field public A0N:[Z

.field public final A0O:I

.field public final A0P:J

.field public final A0Q:Landroid/net/Uri;

.field public final A0R:Landroid/os/Handler;

.field public final A0S:Lcom/facebook/ads/redexgen/X/FH;

.field public final A0T:Lcom/facebook/ads/redexgen/X/FI;

.field public final A0U:Lcom/facebook/ads/redexgen/X/FY;

.field public final A0V:Lcom/facebook/ads/redexgen/X/HJ;

.field public final A0W:Lcom/facebook/ads/redexgen/X/HR;

.field public final A0X:Lcom/facebook/ads/redexgen/X/UT;

.field public final A0Y:Lcom/facebook/ads/redexgen/X/IC;

.field public final A0Z:Ljava/lang/Runnable;

.field public final A0a:Ljava/lang/Runnable;

.field public final A0b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "iI0ZOGUFhjVKOFZqbUjTJbzZriBk"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "wCM5SpVnQk8vEGvx3xuFkFQnwN8gnHkn"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CC"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "sZUrtXRAji2vfBWVwphN9cenOJ8FQWpp"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "F506DqgxlNyYyNAR0eHuGAxqIBb0RwxX"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "mj8nEZtHpBznvwUNQKJPsV2u1H4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "sYtV3FATfn8NsU7nH3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "hZDPske6mXbyt4vhVom9Ng"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    .line 24279
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Bk;->A0B()V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/HR;[Lcom/facebook/ads/redexgen/X/CP;ILcom/facebook/ads/redexgen/X/FY;Lcom/facebook/ads/redexgen/X/FI;Lcom/facebook/ads/redexgen/X/HJ;Ljava/lang/String;I)V
    .locals 4
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 24280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24281
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0Q:Landroid/net/Uri;

    .line 24282
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0W:Lcom/facebook/ads/redexgen/X/HR;

    .line 24283
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0O:I

    .line 24284
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0U:Lcom/facebook/ads/redexgen/X/FY;

    .line 24285
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0T:Lcom/facebook/ads/redexgen/X/FI;

    .line 24286
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0V:Lcom/facebook/ads/redexgen/X/HJ;

    .line 24287
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0b:Ljava/lang/String;

    .line 24288
    int-to-long v0, p9

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0P:J

    .line 24289
    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bk;->A07(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/UT;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/UT;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0X:Lcom/facebook/ads/redexgen/X/UT;

    .line 24290
    new-instance v0, Lcom/facebook/ads/redexgen/X/FH;

    invoke-direct {v0, p3, p0}, Lcom/facebook/ads/redexgen/X/FH;-><init>([Lcom/facebook/ads/redexgen/X/CP;Lcom/facebook/ads/redexgen/X/CR;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0S:Lcom/facebook/ads/redexgen/X/FH;

    .line 24291
    new-instance v0, Lcom/facebook/ads/redexgen/X/IC;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IC;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0Y:Lcom/facebook/ads/redexgen/X/IC;

    .line 24292
    new-instance v0, Lcom/facebook/ads/redexgen/X/FF;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/FF;-><init>(Lcom/facebook/ads/redexgen/X/Bk;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0Z:Ljava/lang/Runnable;

    .line 24293
    new-instance v0, Lcom/facebook/ads/redexgen/X/FG;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/FG;-><init>(Lcom/facebook/ads/redexgen/X/Bk;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0a:Ljava/lang/Runnable;

    .line 24294
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0R:Landroid/os/Handler;

    .line 24295
    const/4 v1, 0x0

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0J:[I

    .line 24296
    new-array v0, v1, [Lcom/facebook/ads/redexgen/X/V2;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0K:[Lcom/facebook/ads/redexgen/X/V2;

    .line 24297
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Bk;->A06:J

    .line 24298
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A05:J

    .line 24299
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Bk;->A03:J

    .line 24300
    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    .line 24301
    const/4 p4, 0x3

    .line 24302
    :cond_0
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Bk;->A00:I

    .line 24303
    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/FY;->A03()V

    .line 24304
    return-void
.end method

.method private A00()I
    .locals 8

    .line 24305
    const/4 v7, 0x0

    .line 24306
    .local p0, "extractedSamplesCount":I
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0K:[Lcom/facebook/ads/redexgen/X/V2;

    array-length v4, v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v6, v5, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 24307
    .local v3, "sampleQueue":Lcom/facebook/ads/redexgen/X/V2;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const-string v1, "qSOUgbz3JlJaX9UdXA1gn9agrJ83m9Y6"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "wkCF1xtIBevCyUX610AjJpYT598Om9ct"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/V2;->A0C()I

    move-result v0

    add-int/2addr v7, v0

    .line 24308
    .end local v3    # "sampleQueue":Lcom/facebook/ads/redexgen/X/V2;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 24309
    :cond_1
    return v7
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/V7;JJLjava/io/IOException;)I
    .locals 21

    move-object/from16 v0, p0

    move-object v0, v0

    .line 24310
    move-object/from16 v19, p6

    invoke-static/range {v19 .. v19}, Lcom/facebook/ads/redexgen/X/Bk;->A0N(Ljava/io/IOException;)Z

    move-result v20

    .line 24311
    .local v20, "isErrorFatal":Z
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Bk;->A0U:Lcom/facebook/ads/redexgen/X/FY;

    .line 24312
    move-object/from16 v1, p1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/V7;->A03(Lcom/facebook/ads/redexgen/X/V7;)Lcom/facebook/ads/redexgen/X/HV;

    move-result-object v3

    .line 24313
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/V7;->A00(Lcom/facebook/ads/redexgen/X/V7;)J

    move-result-wide v9

    iget-wide v11, v0, Lcom/facebook/ads/redexgen/X/Bk;->A03:J

    .line 24314
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/V7;->A01(Lcom/facebook/ads/redexgen/X/V7;)J

    move-result-wide v17

    .line 24315
    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide/from16 v15, p4

    move-wide/from16 v13, p2

    invoke-virtual/range {v2 .. v20}, Lcom/facebook/ads/redexgen/X/FY;->A0H(Lcom/facebook/ads/redexgen/X/HV;IILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    .line 24316
    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Bk;->A0E(Lcom/facebook/ads/redexgen/X/V7;)V

    .line 24317
    if-eqz v20, :cond_0

    .line 24318
    const/4 v0, 0x3

    return v0

    .line 24319
    :cond_0
    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Bk;->A00()I

    move-result v4

    .line 24320
    .local v1, "extractedSamplesCount":I
    iget v2, v0, Lcom/facebook/ads/redexgen/X/Bk;->A02:I

    const/4 v3, 0x1

    if-le v4, v2, :cond_3

    const/4 v2, 0x1

    .line 24321
    .local v13, "madeProgress":Z
    :goto_0
    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/Bk;->A0L(Lcom/facebook/ads/redexgen/X/V7;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24322
    if-eqz v2, :cond_1

    .line 24323
    :goto_1
    return v3

    .line 24324
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 24325
    :cond_2
    const/4 v3, 0x2

    goto :goto_1

    .line 24326
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private A02()J
    .locals 9

    .line 24327
    const-wide/high16 v2, -0x8000000000000000L

    .line 24328
    .local p0, "largestQueuedTimestampUs":J
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0K:[Lcom/facebook/ads/redexgen/X/V2;

    array-length v6, v7

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v8, v7, v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 24329
    .local v5, "sampleQueue":Lcom/facebook/ads/redexgen/X/V2;
    :cond_0
    sget-object v4, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const-string v1, "ZyGj31aUIwj7oXhThZ"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/V2;->A0F()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 24330
    .end local v5    # "sampleQueue":Lcom/facebook/ads/redexgen/X/V2;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 24331
    :cond_1
    return-wide v2
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Bk;)J
    .locals 1

    .line 24332
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0P:J

    return-wide v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Bk;)Landroid/os/Handler;
    .locals 0

    .line 24333
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0R:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Bk;)Lcom/facebook/ads/redexgen/X/V4;
    .locals 0

    .line 24334
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A08:Lcom/facebook/ads/redexgen/X/V4;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Bk;)Ljava/lang/Runnable;
    .locals 0

    .line 24335
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0a:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Bk;->A0c:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const-string v1, "Up"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_1

    aget-byte v0, p1, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x78

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Bk;)Ljava/lang/String;
    .locals 0

    .line 24336
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0b:Ljava/lang/String;

    return-object p0
.end method

.method private A09()V
    .locals 9

    .line 24337
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0G:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0F:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A07:Lcom/facebook/ads/redexgen/X/CY;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0H:Z

    if-nez v0, :cond_1

    .line 24338
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Bk;
    .end local v0
    :cond_0
    return-void

    .line 24339
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0K:[Lcom/facebook/ads/redexgen/X/V2;

    array-length v2, v3

    const/4 v8, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v0, v3, v1

    .line 24340
    .local v0, "sampleQueue":Lcom/facebook/ads/redexgen/X/V2;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V2;->A0G()Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    if-nez v0, :cond_2

    .line 24341
    return-void

    .line 24342
    .end local v0    # "sampleQueue":Lcom/facebook/ads/redexgen/X/V2;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24343
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0Y:Lcom/facebook/ads/redexgen/X/IC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IC;->A01()Z

    .line 24344
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0K:[Lcom/facebook/ads/redexgen/X/V2;

    array-length v7, v0

    .line 24345
    .local p0, "trackCount":I
    new-array v6, v7, [Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    .line 24346
    .local v0, "trackArray":[Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;
    new-array v0, v7, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0N:[Z

    .line 24347
    new-array v0, v7, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0L:[Z

    .line 24348
    new-array v0, v7, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0M:[Z

    .line 24349
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A07:Lcom/facebook/ads/redexgen/X/CY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CY;->A6O()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A03:J

    .line 24350
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v5, 0x1

    if-ge v4, v7, :cond_7

    .line 24351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0K:[Lcom/facebook/ads/redexgen/X/V2;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V2;->A0G()Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v2

    .line 24352
    .local v3, "trackFormat":Lcom/facebook/ads/internal/exoplayer2/Format;
    new-array v1, v5, [Lcom/facebook/ads/internal/exoplayer2/Format;

    aput-object v2, v1, v8

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;-><init>([Lcom/facebook/ads/internal/exoplayer2/Format;)V

    aput-object v0, v6, v4

    .line 24353
    iget-object v1, v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    .line 24354
    .local v2, "mimeType":Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/IO;->A0B(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/IO;->A09(Ljava/lang/String;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const-string v1, "sORkCePcQUNrHwPTmIu9z8sBJIN6eDJt"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_6

    .line 24355
    .local v0, "isAudioVideo":Z
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0N:[Z

    aput-boolean v5, v0, v4

    .line 24356
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0A:Z

    or-int/2addr v0, v5

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0A:Z

    .line 24357
    .end local v0    # "isAudioVideo":Z
    .end local v3    # "trackFormat":Lcom/facebook/ads/internal/exoplayer2/Format;
    .end local v2    # "mimeType":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 24358
    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    .line 24359
    .end local v0
    :cond_7
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    invoke-direct {v0, v6}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;-><init>([Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A09:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    .line 24360
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0O:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_8

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Bk;->A05:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A07:Lcom/facebook/ads/redexgen/X/CY;

    .line 24361
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CY;->A6O()J

    move-result-wide v3

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_8

    .line 24362
    const/4 v0, 0x6

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A00:I

    .line 24363
    :cond_8
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0F:Z

    .line 24364
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0T:Lcom/facebook/ads/redexgen/X/FI;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Bk;->A03:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A07:Lcom/facebook/ads/redexgen/X/CY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CY;->A8Y()Z

    move-result v0

    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/FI;->AC5(JZ)V

    .line 24365
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A08:Lcom/facebook/ads/redexgen/X/V4;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/V4;->ABh(Lcom/facebook/ads/redexgen/X/V3;)V

    .line 24366
    return-void
.end method

.method private A0A()V
    .locals 15

    .line 24367
    move-object v0, p0

    new-instance v9, Lcom/facebook/ads/redexgen/X/V7;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/Bk;->A0Q:Landroid/net/Uri;

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/Bk;->A0W:Lcom/facebook/ads/redexgen/X/HR;

    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/Bk;->A0S:Lcom/facebook/ads/redexgen/X/FH;

    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/Bk;->A0Y:Lcom/facebook/ads/redexgen/X/IC;

    move-object v10, p0

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/V7;-><init>(Lcom/facebook/ads/redexgen/X/Bk;Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/HR;Lcom/facebook/ads/redexgen/X/FH;Lcom/facebook/ads/redexgen/X/IC;)V

    .line 24368
    .local p0, "loadable":Lcom/facebook/ads/redexgen/X/V7;
    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Bk;->A0F:Z

    if-eqz v1, :cond_1

    .line 24369
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bk;->A0I()Z

    move-result v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 24370
    iget-wide v7, v0, Lcom/facebook/ads/redexgen/X/Bk;->A03:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v7, v5

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/Bk;->A06:J

    cmp-long v1, v2, v7

    if-ltz v1, :cond_0

    .line 24371
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Bk;->A0B:Z

    .line 24372
    iput-wide v5, v0, Lcom/facebook/ads/redexgen/X/Bk;->A06:J

    .line 24373
    return-void

    .line 24374
    :cond_0
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Bk;->A07:Lcom/facebook/ads/redexgen/X/CY;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Bk;->A06:J

    .line 24375
    invoke-interface {v3, v1, v2}, Lcom/facebook/ads/redexgen/X/CY;->A7I(J)Lcom/facebook/ads/redexgen/X/CX;

    move-result-object v1

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/CX;->A00:Lcom/facebook/ads/redexgen/X/CZ;

    iget-wide v3, v1, Lcom/facebook/ads/redexgen/X/CZ;->A00:J

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Bk;->A06:J

    .line 24376
    invoke-virtual {v9, v3, v4, v1, v2}, Lcom/facebook/ads/redexgen/X/V7;->A04(JJ)V

    .line 24377
    iput-wide v5, v0, Lcom/facebook/ads/redexgen/X/Bk;->A06:J

    .line 24378
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bk;->A00()I

    move-result v1

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Bk;->A02:I

    .line 24379
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Bk;->A0X:Lcom/facebook/ads/redexgen/X/UT;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Bk;->A00:I

    invoke-virtual {v2, v9, v0, v1}, Lcom/facebook/ads/redexgen/X/UT;->A04(Lcom/facebook/ads/redexgen/X/He;Lcom/facebook/ads/redexgen/X/Hc;I)J

    move-result-wide v12

    .line 24380
    .local v0, "elapsedRealtimeMs":J
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Bk;->A0U:Lcom/facebook/ads/redexgen/X/FY;

    .line 24381
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/V7;->A03(Lcom/facebook/ads/redexgen/X/V7;)Lcom/facebook/ads/redexgen/X/HV;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 24382
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/V7;->A00(Lcom/facebook/ads/redexgen/X/V7;)J

    move-result-wide v8

    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/Bk;->A03:J

    .line 24383
    invoke-virtual/range {v1 .. v13}, Lcom/facebook/ads/redexgen/X/FY;->A0E(Lcom/facebook/ads/redexgen/X/HV;IILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    .line 24384
    return-void
.end method

.method public static A0B()V
    .locals 1

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Bk;->A0c:[B

    return-void

    :array_0
    .array-data 1
        0x66t
        0x45t
        0x4bt
        0x4et
        0x4ft
        0x58t
        0x10t
        0x6ft
        0x52t
        0x5et
        0x58t
        0x4bt
        0x49t
        0x5et
        0x45t
        0x58t
        0x67t
        0x4ft
        0x4et
        0x43t
        0x4bt
        0x7at
        0x4ft
        0x58t
        0x43t
        0x45t
        0x4et
    .end array-data
.end method

.method private A0C(I)V
    .locals 8

    .line 24385
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0M:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    .line 24386
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A09:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A01(I)Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v3

    .line 24387
    .local p0, "trackFormat":Lcom/facebook/ads/internal/exoplayer2/Format;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0U:Lcom/facebook/ads/redexgen/X/FY;

    iget-object v0, v3, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    .line 24388
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IO;->A01(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/Bk;->A04:J

    .line 24389
    invoke-virtual/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/FY;->A06(ILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;J)V

    .line 24390
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0M:[Z

    const/4 v0, 0x1

    aput-boolean v0, v1, p1

    .line 24391
    .end local p0    # "trackFormat":Lcom/facebook/ads/internal/exoplayer2/Format;
    :cond_0
    return-void
.end method

.method private A0D(I)V
    .locals 4

    .line 24392
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0N:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0K:[Lcom/facebook/ads/redexgen/X/V2;

    aget-object v0, v0, p1

    .line 24393
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V2;->A0M()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24394
    :cond_0
    return-void

    .line 24395
    :cond_1
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/Bk;->A06:J

    .line 24396
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0E:Z

    .line 24397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0D:Z

    .line 24398
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/Bk;->A04:J

    .line 24399
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Bk;->A02:I

    .line 24400
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0K:[Lcom/facebook/ads/redexgen/X/V2;

    array-length v1, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v0, v2, v3

    .line 24401
    .local v0, "sampleQueue":Lcom/facebook/ads/redexgen/X/V2;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V2;->A0I()V

    .line 24402
    .end local v0    # "sampleQueue":Lcom/facebook/ads/redexgen/X/V2;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 24403
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A08:Lcom/facebook/ads/redexgen/X/V4;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Fj;->AAD(Lcom/facebook/ads/redexgen/X/Fk;)V

    .line 24404
    return-void
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/V7;)V
    .locals 5

    .line 24405
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Bk;->A05:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 24406
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/V7;->A02(Lcom/facebook/ads/redexgen/X/V7;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A05:J

    .line 24407
    :cond_0
    return-void
.end method

.method private final A0F(Lcom/facebook/ads/redexgen/X/V7;JJ)V
    .locals 20

    .line 24408
    move-object/from16 v2, p0

    move-object v2, v2

    iget-wide v5, v2, Lcom/facebook/ads/redexgen/X/Bk;->A03:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v3

    if-nez v0, :cond_0

    .line 24409
    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/Bk;->A02()J

    move-result-wide v5

    .line 24410
    .local v0, "largestQueuedTimestampUs":J
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, v5, v3

    if-nez v0, :cond_1

    .line 24411
    const-wide/16 v0, 0x0

    .line 24412
    :goto_0
    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/Bk;->A03:J

    .line 24413
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Bk;->A0T:Lcom/facebook/ads/redexgen/X/FI;

    iget-wide v3, v2, Lcom/facebook/ads/redexgen/X/Bk;->A03:J

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Bk;->A07:Lcom/facebook/ads/redexgen/X/CY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CY;->A8Y()Z

    move-result v0

    invoke-interface {v1, v3, v4, v0}, Lcom/facebook/ads/redexgen/X/FI;->AC5(JZ)V

    .line 24414
    .end local v0    # "largestQueuedTimestampUs":J
    :cond_0
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/Bk;->A0U:Lcom/facebook/ads/redexgen/X/FY;

    .line 24415
    move-object/from16 v0, p1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/V7;->A03(Lcom/facebook/ads/redexgen/X/V7;)Lcom/facebook/ads/redexgen/X/HV;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 24416
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/V7;->A00(Lcom/facebook/ads/redexgen/X/V7;)J

    move-result-wide v10

    iget-wide v12, v2, Lcom/facebook/ads/redexgen/X/Bk;->A03:J

    .line 24417
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/V7;->A01(Lcom/facebook/ads/redexgen/X/V7;)J

    move-result-wide v18

    .line 24418
    move-wide/from16 v16, p4

    move-wide/from16 v14, p2

    invoke-virtual/range {v3 .. v19}, Lcom/facebook/ads/redexgen/X/FY;->A0G(Lcom/facebook/ads/redexgen/X/HV;IILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 24419
    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Bk;->A0E(Lcom/facebook/ads/redexgen/X/V7;)V

    .line 24420
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Bk;->A0B:Z

    .line 24421
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Bk;->A08:Lcom/facebook/ads/redexgen/X/V4;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Fj;->AAD(Lcom/facebook/ads/redexgen/X/Fk;)V

    .line 24422
    return-void

    .line 24423
    :cond_1
    const-wide/16 v0, 0x2710

    add-long/2addr v0, v5

    goto :goto_0
.end method

.method private final A0G(Lcom/facebook/ads/redexgen/X/V7;JJZ)V
    .locals 19

    move-object/from16 v1, p0

    move-object v1, v1

    .line 24424
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Bk;->A0U:Lcom/facebook/ads/redexgen/X/FY;

    .line 24425
    move-object/from16 v0, p1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/V7;->A03(Lcom/facebook/ads/redexgen/X/V7;)Lcom/facebook/ads/redexgen/X/HV;

    move-result-object v3

    .line 24426
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/V7;->A00(Lcom/facebook/ads/redexgen/X/V7;)J

    move-result-wide v9

    iget-wide v11, v1, Lcom/facebook/ads/redexgen/X/Bk;->A03:J

    .line 24427
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/V7;->A01(Lcom/facebook/ads/redexgen/X/V7;)J

    move-result-wide v17

    .line 24428
    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide/from16 v15, p4

    move-wide/from16 v13, p2

    invoke-virtual/range {v2 .. v18}, Lcom/facebook/ads/redexgen/X/FY;->A0F(Lcom/facebook/ads/redexgen/X/HV;IILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 24429
    if-nez p6, :cond_1

    .line 24430
    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Bk;->A0E(Lcom/facebook/ads/redexgen/X/V7;)V

    .line 24431
    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/Bk;->A0K:[Lcom/facebook/ads/redexgen/X/V2;

    array-length v3, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v4, v2

    .line 24432
    .local v15, "sampleQueue":Lcom/facebook/ads/redexgen/X/V2;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V2;->A0I()V

    .line 24433
    .end local v15    # "sampleQueue":Lcom/facebook/ads/redexgen/X/V2;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24434
    :cond_0
    iget v0, v1, Lcom/facebook/ads/redexgen/X/Bk;->A01:I

    if-lez v0, :cond_1

    .line 24435
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Bk;->A08:Lcom/facebook/ads/redexgen/X/V4;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Fj;->AAD(Lcom/facebook/ads/redexgen/X/Fk;)V

    .line 24436
    :cond_1
    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/Bk;)V
    .locals 0

    .line 24437
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bk;->A09()V

    return-void
.end method

.method private A0I()Z
    .locals 5

    .line 24438
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Bk;->A06:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0J()Z
    .locals 4

    .line 24439
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0D:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bk;->A0I()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const-string v1, "wEe5Kid34hKwvsAXbAWEFW"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0K(J)Z
    .locals 6

    .line 24440
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0K:[Lcom/facebook/ads/redexgen/X/V2;

    array-length v5, v0

    .line 24441
    .local p0, "trackCount":I
    const/4 v4, 0x0

    .local p1, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v4, v5, :cond_3

    .line 24442
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0K:[Lcom/facebook/ads/redexgen/X/V2;

    aget-object v0, v0, v4

    .line 24443
    .local v0, "sampleQueue":Lcom/facebook/ads/redexgen/X/V2;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V2;->A0J()V

    .line 24444
    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v3, v2}, Lcom/facebook/ads/redexgen/X/V2;->A0D(JZZ)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    .line 24445
    .local v2, "seekInsideQueue":Z
    :goto_1
    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0N:[Z

    aget-boolean v0, v0, v4

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0A:Z

    if-nez v0, :cond_1

    .line 24446
    :cond_0
    return v2

    .line 24447
    .end local v2    # "seekInsideQueue":Z
    .end local v0    # "sampleQueue":Lcom/facebook/ads/redexgen/X/V2;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 24448
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 24449
    .end local p1    # "i":I
    :cond_3
    return v3
.end method

.method private A0L(Lcom/facebook/ads/redexgen/X/V7;I)Z
    .locals 9

    .line 24450
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Bk;->A05:J

    const/4 v6, 0x1

    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A07:Lcom/facebook/ads/redexgen/X/CY;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CY;->A6O()J

    move-result-wide v7

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    sget-object v2, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const-string v1, "Q0rpoNhjqPePbxzXOOIqRvZr1JNrttpQ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    cmp-long v0, v7, v3

    if-eqz v0, :cond_2

    .line 24451
    :cond_0
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Bk;->A02:I

    .line 24452
    return v6

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 24453
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0F:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bk;->A0J()Z

    move-result v0

    if-nez v0, :cond_4

    .line 24454
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0E:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_3

    .line 24455
    sget-object v2, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const-string v1, "yM"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return v5

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 24456
    :cond_4
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0F:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0D:Z

    .line 24457
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Bk;->A04:J

    .line 24458
    iput v5, p0, Lcom/facebook/ads/redexgen/X/Bk;->A02:I

    .line 24459
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0K:[Lcom/facebook/ads/redexgen/X/V2;

    array-length v1, v4

    :goto_0
    if-ge v5, v1, :cond_5

    aget-object v0, v4, v5

    .line 24460
    .local v3, "sampleQueue":Lcom/facebook/ads/redexgen/X/V2;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V2;->A0I()V

    .line 24461
    .end local v3    # "sampleQueue":Lcom/facebook/ads/redexgen/X/V2;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 24462
    :cond_5
    invoke-virtual {p1, v2, v3, v2, v3}, Lcom/facebook/ads/redexgen/X/V7;->A04(JJ)V

    .line 24463
    return v6
.end method

.method public static synthetic A0M(Lcom/facebook/ads/redexgen/X/Bk;)Z
    .locals 0

    .line 24464
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0G:Z

    return p0
.end method

.method public static A0N(Ljava/io/IOException;)Z
    .locals 0

    .line 24465
    instance-of p0, p0, Lcom/facebook/ads/redexgen/X/V0;

    return p0
.end method


# virtual methods
.method public final A0O(IJ)I
    .locals 4

    .line 24466
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bk;->A0J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24467
    const/4 v0, 0x0

    return v0

    .line 24468
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0K:[Lcom/facebook/ads/redexgen/X/V2;

    aget-object v3, v0, p1

    .line 24469
    .local p0, "sampleQueue":Lcom/facebook/ads/redexgen/X/V2;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0B:Z

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/V2;->A0F()J

    move-result-wide v1

    cmp-long v0, p2, v1

    if-lez v0, :cond_3

    .line 24470
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/V2;->A0A()I

    move-result v1

    .line 24471
    .local p1, "skipCount":I
    :cond_1
    :goto_0
    if-lez v1, :cond_2

    .line 24472
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Bk;->A0C(I)V

    .line 24473
    :goto_1
    return v1

    .line 24474
    :cond_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Bk;->A0D(I)V

    goto :goto_1

    .line 24475
    .end local p1    # "skipCount":I
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {v3, p2, p3, v0, v0}, Lcom/facebook/ads/redexgen/X/V2;->A0D(JZZ)I

    move-result v1

    .line 24476
    .restart local p1    # "skipCount":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 24477
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final A0P(ILcom/facebook/ads/redexgen/X/AM;Lcom/facebook/ads/redexgen/X/WZ;Z)I
    .locals 11

    .line 24478
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bk;->A0J()Z

    move-result v0

    const/4 v3, -0x3

    if-eqz v0, :cond_0

    .line 24479
    return v3

    .line 24480
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0K:[Lcom/facebook/ads/redexgen/X/V2;

    aget-object v4, v0, p1

    iget-boolean v8, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0B:Z

    iget-wide v9, p0, Lcom/facebook/ads/redexgen/X/Bk;->A04:J

    .line 24481
    sget-object v1, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const-string v1, "BZZhA5HnQ267vlJC28K7sY9wv6QGzHwf"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    move-object v6, p3

    move v7, p4

    move-object v5, p2

    invoke-virtual/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/V2;->A0E(Lcom/facebook/ads/redexgen/X/AM;Lcom/facebook/ads/redexgen/X/WZ;ZZJ)I

    move-result v1

    .line 24482
    .local p0, "result":I
    const/4 v0, -0x4

    if-ne v1, v0, :cond_3

    .line 24483
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Bk;->A0C(I)V

    .line 24484
    :cond_2
    :goto_0
    return v1

    .line 24485
    :cond_3
    if-ne v1, v3, :cond_2

    .line 24486
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Bk;->A0D(I)V

    goto :goto_0
.end method

.method public final A0Q()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24487
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0X:Lcom/facebook/ads/redexgen/X/UT;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/UT;->A06(I)V

    .line 24488
    return-void
.end method

.method public final A0R()V
    .locals 4

    .line 24489
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0F:Z

    if-eqz v0, :cond_0

    .line 24490
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0K:[Lcom/facebook/ads/redexgen/X/V2;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, v3, v1

    .line 24491
    .local v2, "sampleQueue":Lcom/facebook/ads/redexgen/X/V2;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V2;->A0H()V

    .line 24492
    .end local v2    # "sampleQueue":Lcom/facebook/ads/redexgen/X/V2;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24493
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0X:Lcom/facebook/ads/redexgen/X/UT;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/UT;->A07(Lcom/facebook/ads/redexgen/X/Hf;)V

    .line 24494
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0R:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 24495
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A08:Lcom/facebook/ads/redexgen/X/V4;

    .line 24496
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0G:Z

    .line 24497
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0U:Lcom/facebook/ads/redexgen/X/FY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FY;->A04()V

    .line 24498
    return-void
.end method

.method public final A0S(I)Z
    .locals 1

    .line 24499
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bk;->A0J()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0B:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0K:[Lcom/facebook/ads/redexgen/X/V2;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V2;->A0M()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A48(J)Z
    .locals 4

    .line 24500
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0B:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0E:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0F:Z

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Bk;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const-string v1, "7rVHsGRdVZCry1KpVG9eopTEFKGRMHdR"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    .line 24501
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Bk;
    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 24502
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0Y:Lcom/facebook/ads/redexgen/X/IC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IC;->A02()Z

    move-result v1

    .line 24503
    .local p0, "continuedLoading":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0X:Lcom/facebook/ads/redexgen/X/UT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UT;->A08()Z

    move-result v0

    if-nez v0, :cond_3

    .line 24504
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bk;->A0A()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    .line 24505
    sget-object v2, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const-string v1, "GZZ8Yg3MT0LKLUTCQO9quz1OXrB3914Q"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v1, 0x1

    .line 24506
    :cond_3
    :goto_0
    return v1

    .line 24507
    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const-string v1, "KAHjzw5ailzTQNPlHwAo2zZrrjfyTj4F"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final A4n(JZ)V
    .locals 4

    .line 24508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0K:[Lcom/facebook/ads/redexgen/X/V2;

    array-length v3, v0

    .line 24509
    .local p0, "trackCount":I
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 24510
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0K:[Lcom/facebook/ads/redexgen/X/V2;

    aget-object v1, v0, v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0L:[Z

    aget-boolean v0, v0, v2

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/V2;->A0K(JZZ)V

    .line 24511
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24512
    .end local p1    # "i":I
    :cond_0
    return-void
.end method

.method public final A5A()V
    .locals 2

    .line 24513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0H:Z

    .line 24514
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0R:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0Z:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24515
    return-void
.end method

.method public final A5b(JLcom/facebook/ads/redexgen/X/Ak;)J
    .locals 9

    .line 24516
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A07:Lcom/facebook/ads/redexgen/X/CY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CY;->A8Y()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24517
    const-wide/16 v0, 0x0

    return-wide v0

    .line 24518
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A07:Lcom/facebook/ads/redexgen/X/CY;

    move-wide v2, p1

    invoke-interface {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/CY;->A7I(J)Lcom/facebook/ads/redexgen/X/CX;

    move-result-object v1

    .line 24519
    .local p0, "seekPoints":Lcom/facebook/ads/redexgen/X/CX;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/CX;->A00:Lcom/facebook/ads/redexgen/X/CZ;

    iget-wide v5, v0, Lcom/facebook/ads/redexgen/X/CZ;->A01:J

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/CX;->A01:Lcom/facebook/ads/redexgen/X/CZ;

    iget-wide v7, v0, Lcom/facebook/ads/redexgen/X/CZ;->A01:J

    move-object v4, p3

    invoke-static/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Il;->A0I(JLcom/facebook/ads/redexgen/X/Ak;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A5q()J
    .locals 10

    .line 24520
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0B:Z

    const-wide/high16 v8, -0x8000000000000000L

    if-eqz v0, :cond_0

    .line 24521
    return-wide v8

    .line 24522
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bk;->A0I()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24523
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Bk;->A06:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_2

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 24524
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0A:Z

    if-eqz v0, :cond_6

    .line 24525
    const-wide v2, 0x7fffffffffffffffL

    sget-object v1, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_3

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const-string v1, "v1DtQTmxA3FTsqocwnKPSJWZapJDPMlv"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-wide v3

    .line 24526
    .local v3, "largestQueuedTimestampUs":J
    :cond_3
    sget-object v4, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const-string v1, "vaKypmx8P8ApWe5d9yUSyn"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0K:[Lcom/facebook/ads/redexgen/X/V2;

    array-length v6, v0

    .line 24527
    .local p0, "trackCount":I
    const/4 v5, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v5, v6, :cond_7

    .line 24528
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0N:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_4

    .line 24529
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0K:[Lcom/facebook/ads/redexgen/X/V2;

    aget-object v7, v0, v5

    sget-object v4, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v4, v0

    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    .line 24530
    sget-object v4, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const-string v1, "ClOx81htkGLxdwhy5PY2qE"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/V2;->A0F()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 24531
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 24532
    .end local v3    # "i":I
    :cond_6
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bk;->A02()J

    move-result-wide v2

    .line 24533
    .restart local v3    # "i":I
    :cond_7
    cmp-long v0, v2, v8

    if-nez v0, :cond_8

    .line 24534
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Bk;->A04:J

    .line 24535
    :cond_8
    return-wide v2
.end method

.method public final A6w()J
    .locals 2

    .line 24536
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A01:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Bk;->A5q()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final A7a()Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 24537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A09:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public final A9O()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24538
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Bk;->A0Q()V

    .line 24539
    return-void
.end method

.method public final bridge synthetic AB0(Lcom/facebook/ads/redexgen/X/He;JJZ)V
    .locals 7

    move-object v1, p1

    .line 24540
    check-cast v1, Lcom/facebook/ads/redexgen/X/V7;

    move-object v0, p0

    move-wide v2, p2

    move v6, p6

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Bk;->A0G(Lcom/facebook/ads/redexgen/X/V7;JJZ)V

    return-void
.end method

.method public final bridge synthetic AB2(Lcom/facebook/ads/redexgen/X/He;JJ)V
    .locals 6

    move-object v1, p1

    .line 24541
    check-cast v1, Lcom/facebook/ads/redexgen/X/V7;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Bk;->A0F(Lcom/facebook/ads/redexgen/X/V7;JJ)V

    return-void
.end method

.method public final bridge synthetic AB3(Lcom/facebook/ads/redexgen/X/He;JJLjava/io/IOException;)I
    .locals 7

    move-object v1, p1

    .line 24542
    check-cast v1, Lcom/facebook/ads/redexgen/X/V7;

    move-object v0, p0

    move-wide v2, p2

    move-object v6, p6

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Bk;->A01(Lcom/facebook/ads/redexgen/X/V7;JJLjava/io/IOException;)I

    move-result v0

    return v0
.end method

.method public final AB7()V
    .locals 4

    .line 24543
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0K:[Lcom/facebook/ads/redexgen/X/V2;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, v3, v1

    .line 24544
    .local v1, "sampleQueue":Lcom/facebook/ads/redexgen/X/V2;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V2;->A0I()V

    .line 24545
    .end local v1    # "sampleQueue":Lcom/facebook/ads/redexgen/X/V2;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24546
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0S:Lcom/facebook/ads/redexgen/X/FH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FH;->A03()V

    .line 24547
    return-void
.end method

.method public final ACN(Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 2

    .line 24548
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0R:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0Z:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24549
    return-void
.end method

.method public final ACy(Lcom/facebook/ads/redexgen/X/V4;J)V
    .locals 1

    .line 24550
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Bk;->A08:Lcom/facebook/ads/redexgen/X/V4;

    .line 24551
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0Y:Lcom/facebook/ads/redexgen/X/IC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IC;->A02()Z

    .line 24552
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bk;->A0A()V

    .line 24553
    return-void
.end method

.method public final ADH()J
    .locals 2

    .line 24554
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0C:Z

    if-nez v0, :cond_0

    .line 24555
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0U:Lcom/facebook/ads/redexgen/X/FY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FY;->A05()V

    .line 24556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0C:Z

    .line 24557
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0D:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0B:Z

    if-nez v0, :cond_1

    .line 24558
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bk;->A00()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A02:I

    if-le v1, v0, :cond_2

    .line 24559
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0D:Z

    .line 24560
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A04:J

    return-wide v0

    .line 24561
    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final ADO(J)V
    .locals 0

    .line 24562
    return-void
.end method

.method public final AEA(Lcom/facebook/ads/redexgen/X/CY;)V
    .locals 2

    .line 24563
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Bk;->A07:Lcom/facebook/ads/redexgen/X/CY;

    .line 24564
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0R:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0Z:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24565
    return-void
.end method

.method public final AED(J)J
    .locals 4

    .line 24566
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A07:Lcom/facebook/ads/redexgen/X/CY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CY;->A8Y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24567
    :goto_0
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Bk;->A04:J

    .line 24568
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0D:Z

    .line 24569
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bk;->A0I()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Bk;->A0K(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24570
    return-wide p1

    .line 24571
    :cond_0
    const-wide/16 p1, 0x0

    goto :goto_0

    .line 24572
    :cond_1
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0E:Z

    .line 24573
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Bk;->A06:J

    .line 24574
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0B:Z

    .line 24575
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0X:Lcom/facebook/ads/redexgen/X/UT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UT;->A08()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24576
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0X:Lcom/facebook/ads/redexgen/X/UT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UT;->A05()V

    .line 24577
    :cond_2
    return-wide p1

    .line 24578
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0K:[Lcom/facebook/ads/redexgen/X/V2;

    array-length v1, v2

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v0, v2, v3

    .line 24579
    .local v0, "sampleQueue":Lcom/facebook/ads/redexgen/X/V2;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V2;->A0I()V

    .line 24580
    .end local v0    # "sampleQueue":Lcom/facebook/ads/redexgen/X/V2;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public final AEE([Lcom/facebook/ads/redexgen/X/HD;[Z[Lcom/facebook/ads/redexgen/X/Fi;[ZJ)J
    .locals 12

    move-wide/from16 v0, p5

    .line 24581
    move-object v6, p0

    iget-boolean v2, v6, Lcom/facebook/ads/redexgen/X/Bk;->A0F:Z

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 24582
    iget v3, v6, Lcom/facebook/ads/redexgen/X/Bk;->A01:I

    .line 24583
    .local v0, "oldEnabledTrackCount":I
    const/4 v4, 0x0

    .local v6, "i":I
    :goto_0
    array-length v8, p1

    const/4 v7, 0x0

    sget-object v5, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v5, v5, v2

    const/4 v2, 0x6

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v2, 0x59

    if-eq v5, v2, :cond_12

    sget-object v9, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const-string v5, "SYrZ4V4BuS5f1iQivHtPvbJPBq8KYGcV"

    const/4 v2, 0x3

    aput-object v5, v9, v2

    const-string v5, "Qj6kIai7maHlsMhbAYZIdrm5vw8KbeiE"

    const/4 v2, 0x1

    aput-object v5, v9, v2

    const/4 v5, 0x1

    if-ge v4, v8, :cond_2

    .line 24584
    aget-object v2, p3, v4

    if-eqz v2, :cond_1

    aget-object v2, p1, v4

    if-eqz v2, :cond_0

    aget-boolean v2, p2, v4

    if-nez v2, :cond_1

    .line 24585
    :cond_0
    aget-object v2, p3, v4

    check-cast v2, Lcom/facebook/ads/redexgen/X/V6;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/V6;->A00(Lcom/facebook/ads/redexgen/X/V6;)I

    move-result v8

    .line 24586
    .local v6, "track":I
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/Bk;->A0L:[Z

    aget-boolean v2, v2, v8

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 24587
    iget v2, v6, Lcom/facebook/ads/redexgen/X/Bk;->A01:I

    sub-int/2addr v2, v5

    iput v2, v6, Lcom/facebook/ads/redexgen/X/Bk;->A01:I

    .line 24588
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/Bk;->A0L:[Z

    aput-boolean v7, v2, v8

    .line 24589
    const/4 v2, 0x0

    aput-object v2, p3, v4

    .line 24590
    .end local v6    # "track":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 24591
    .end local v6
    :cond_2
    iget-boolean v2, v6, Lcom/facebook/ads/redexgen/X/Bk;->A0I:Z

    if-eqz v2, :cond_8

    if-nez v3, :cond_9

    :goto_1
    const/4 v3, 0x1

    .line 24592
    .local v6, "seekRequired":Z
    :goto_2
    const/4 v9, 0x0

    .local v6, "i":I
    :goto_3
    array-length v2, p1

    if-ge v9, v2, :cond_a

    .line 24593
    aget-object v2, p3, v9

    if-nez v2, :cond_6

    aget-object v2, p1, v9

    if-eqz v2, :cond_6

    .line 24594
    aget-object v8, p1, v9

    .line 24595
    .local v0, "selection":Lcom/facebook/ads/redexgen/X/HD;
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/HD;->length()I

    move-result v2

    if-ne v2, v5, :cond_4

    const/4 v2, 0x1

    :goto_4
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 24596
    invoke-interface {v8, v7}, Lcom/facebook/ads/redexgen/X/HD;->A6j(I)I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 24597
    iget-object v4, v6, Lcom/facebook/ads/redexgen/X/Bk;->A09:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/HD;->A7Z()Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A00(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;)I

    move-result v4

    .line 24598
    .local v11, "track":I
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/Bk;->A0L:[Z

    aget-boolean v2, v2, v4

    xor-int/2addr v2, v5

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 24599
    iget v2, v6, Lcom/facebook/ads/redexgen/X/Bk;->A01:I

    add-int/2addr v2, v5

    iput v2, v6, Lcom/facebook/ads/redexgen/X/Bk;->A01:I

    .line 24600
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/Bk;->A0L:[Z

    aput-boolean v5, v2, v4

    .line 24601
    new-instance v2, Lcom/facebook/ads/redexgen/X/V6;

    invoke-direct {v2, p0, v4}, Lcom/facebook/ads/redexgen/X/V6;-><init>(Lcom/facebook/ads/redexgen/X/Bk;I)V

    aput-object v2, p3, v9

    .line 24602
    aput-boolean v5, p4, v9

    .line 24603
    if-nez v3, :cond_6

    .line 24604
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/Bk;->A0K:[Lcom/facebook/ads/redexgen/X/V2;

    aget-object v11, v2, v4

    .line 24605
    .local v2, "sampleQueue":Lcom/facebook/ads/redexgen/X/V2;
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/V2;->A0J()V

    .line 24606
    invoke-virtual {v11, v0, v1, v5, v5}, Lcom/facebook/ads/redexgen/X/V2;->A0D(JZZ)I

    move-result v10

    const/4 v8, -0x1

    sget-object v3, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v2, 0x16

    if-eq v3, v2, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 24607
    :cond_3
    const/4 v2, 0x0

    goto :goto_5

    .line 24608
    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 24609
    :cond_5
    sget-object v4, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const-string v3, "lOsySJaFgyeJ3Ig8A3"

    const/4 v2, 0x6

    aput-object v3, v4, v2

    if-ne v10, v8, :cond_7

    .line 24610
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/V2;->A0B()I

    move-result v2

    if-eqz v2, :cond_7

    const/4 v3, 0x1

    .line 24611
    .end local v0    # "selection":Lcom/facebook/ads/redexgen/X/HD;
    .end local v11    # "track":I
    .end local v2    # "sampleQueue":Lcom/facebook/ads/redexgen/X/V2;
    :cond_6
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 24612
    :cond_7
    const/4 v3, 0x0

    goto :goto_6

    .line 24613
    :cond_8
    const-wide/16 v3, 0x0

    cmp-long v2, v0, v3

    if-eqz v2, :cond_9

    goto/16 :goto_1

    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 24614
    .end local v6    # "i":I
    :cond_a
    iget v2, v6, Lcom/facebook/ads/redexgen/X/Bk;->A01:I

    if-nez v2, :cond_d

    .line 24615
    iput-boolean v7, v6, Lcom/facebook/ads/redexgen/X/Bk;->A0E:Z

    .line 24616
    iput-boolean v7, v6, Lcom/facebook/ads/redexgen/X/Bk;->A0D:Z

    .line 24617
    iget-object v8, v6, Lcom/facebook/ads/redexgen/X/Bk;->A0X:Lcom/facebook/ads/redexgen/X/UT;

    sget-object v4, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v3, v4, v2

    const/4 v2, 0x1

    aget-object v4, v4, v2

    const/16 v2, 0x1a

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v3, v2, :cond_b

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/UT;->A08()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 24618
    :goto_7
    iget-object v4, v6, Lcom/facebook/ads/redexgen/X/Bk;->A0K:[Lcom/facebook/ads/redexgen/X/V2;

    array-length v3, v4

    :goto_8
    if-ge v7, v3, :cond_10

    aget-object v2, v4, v7

    .line 24619
    .local v11, "sampleQueue":Lcom/facebook/ads/redexgen/X/V2;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/V2;->A0H()V

    .line 24620
    .end local v11    # "sampleQueue":Lcom/facebook/ads/redexgen/X/V2;
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_b
    sget-object v4, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const-string v3, "gg"

    const/4 v2, 0x2

    aput-object v3, v4, v2

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/UT;->A08()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_7

    .line 24621
    :cond_c
    iget-object v4, v6, Lcom/facebook/ads/redexgen/X/Bk;->A0K:[Lcom/facebook/ads/redexgen/X/V2;

    array-length v3, v4

    :goto_9
    if-ge v7, v3, :cond_11

    aget-object v2, v4, v7

    .line 24622
    .restart local v11    # "sampleQueue":Lcom/facebook/ads/redexgen/X/V2;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/V2;->A0I()V

    .line 24623
    .end local v11    # "sampleQueue":Lcom/facebook/ads/redexgen/X/V2;
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 24624
    :cond_d
    if-eqz v3, :cond_11

    .line 24625
    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Bk;->AED(J)J

    move-result-wide v0

    .line 24626
    .end local v2
    .local p3, "positionUs":J
    const/4 v7, 0x0

    .restart local v6    # "i":I
    :goto_a
    array-length v8, p3

    sget-object v3, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x2

    if-eq v3, v2, :cond_e

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_e
    sget-object v4, Lcom/facebook/ads/redexgen/X/Bk;->A0d:[Ljava/lang/String;

    const-string v3, "D8RgEMde5uPIB6l0iM"

    const/4 v2, 0x6

    aput-object v3, v4, v2

    if-ge v7, v8, :cond_11

    .line 24627
    aget-object v2, p3, v7

    if-eqz v2, :cond_f

    .line 24628
    aput-boolean v5, p4, v7

    .line 24629
    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 24630
    :cond_10
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/Bk;->A0X:Lcom/facebook/ads/redexgen/X/UT;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/UT;->A05()V

    .line 24631
    .end local v6    # "i":I
    :cond_11
    iput-boolean v5, v6, Lcom/facebook/ads/redexgen/X/Bk;->A0I:Z

    .line 24632
    return-wide v0

    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AF1(II)Lcom/facebook/ads/redexgen/X/Cb;
    .locals 4

    .line 24633
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0K:[Lcom/facebook/ads/redexgen/X/V2;

    array-length v3, v0

    .line 24634
    .local p0, "trackCount":I
    const/4 v1, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 24635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0J:[I

    aget v0, v0, v1

    if-ne v0, p1, :cond_0

    .line 24636
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0K:[Lcom/facebook/ads/redexgen/X/V2;

    aget-object v0, v0, v1

    return-object v0

    .line 24637
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24638
    .end local p1    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0V:Lcom/facebook/ads/redexgen/X/HJ;

    new-instance v2, Lcom/facebook/ads/redexgen/X/V2;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/V2;-><init>(Lcom/facebook/ads/redexgen/X/HJ;)V

    .line 24639
    .local p1, "trackOutput":Lcom/facebook/ads/redexgen/X/V2;
    invoke-virtual {v2, p0}, Lcom/facebook/ads/redexgen/X/V2;->A0L(Lcom/facebook/ads/redexgen/X/Fh;)V

    .line 24640
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0J:[I

    add-int/lit8 v0, v3, 0x1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0J:[I

    .line 24641
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0J:[I

    aput p1, v0, v3

    .line 24642
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0K:[Lcom/facebook/ads/redexgen/X/V2;

    add-int/lit8 v0, v3, 0x1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/V2;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0K:[Lcom/facebook/ads/redexgen/X/V2;

    .line 24643
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bk;->A0K:[Lcom/facebook/ads/redexgen/X/V2;

    aput-object v2, v0, v3

    .line 24644
    return-object v2
.end method
