.class public final Lcom/facebook/ads/redexgen/X/On;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Oi;,
        Lcom/facebook/ads/redexgen/X/Oj;,
        Lcom/facebook/ads/redexgen/X/S4;,
        Lcom/facebook/ads/redexgen/X/Ok;,
        Lcom/facebook/ads/redexgen/X/Ol;,
        Lcom/facebook/ads/redexgen/X/Om;
    }
.end annotation


# static fields
.field public static A0K:[B

.field public static A0L:[Ljava/lang/String;

.field public static final A0M:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/Ol;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/Om;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/QZ;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Z

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/16;

.field public final A07:Lcom/facebook/ads/redexgen/X/7J;

.field public final A08:Lcom/facebook/ads/redexgen/X/XT;

.field public final A09:Lcom/facebook/ads/redexgen/X/JT;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Jb;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Lz;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Ob;

.field public final A0D:Lcom/facebook/ads/redexgen/X/S4;

.field public final A0E:Lcom/facebook/ads/redexgen/X/Oy;

.field public final A0F:Lcom/facebook/ads/redexgen/X/Oz;

.field public final A0G:Lcom/facebook/ads/redexgen/X/P1;

.field public final A0H:Ljava/lang/String;

.field public final A0I:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/facebook/ads/redexgen/X/Ok;",
            ">;"
        }
    .end annotation
.end field

.field public final A0J:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
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

    const-string v0, "FzSVXB4mYbOB8Ap0RZsCDdXVsmLfm8Jd"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1LkH26oE6mA26lQtC6YvQW7uIFVycFeK"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "rW0HdwO1ZwlnSaQ2Af"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "GQ1qj5ap6z56eCi2le"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "uXieXG3T7mAXvJ2"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "QucdoxB0vpGTNezXYptNtkyhh8Rjdnlc"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "00yn0QSHmKstnvXW3I3NQQkY4p"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "j2c94AiQV22NdXj9VV604tyulZ5jlQdF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/On;->A0L:[Ljava/lang/String;

    .line 47542
    invoke-static {}, Lcom/facebook/ads/redexgen/X/On;->A0E()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/On;->A0M:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/JT;I)V
    .locals 10

    .line 47543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47544
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A0I:Ljava/util/LinkedList;

    .line 47545
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lz;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Lz;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A0B:Lcom/facebook/ads/redexgen/X/Lz;

    .line 47546
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A0J:Ljava/util/concurrent/atomic/AtomicReference;

    .line 47547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/On;->A05:Z

    .line 47548
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/On;->A04:Z

    .line 47549
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/On;->A00:J

    .line 47550
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/On;->A08:Lcom/facebook/ads/redexgen/X/XT;

    .line 47551
    move-object v3, p3

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/On;->A09:Lcom/facebook/ads/redexgen/X/JT;

    .line 47552
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/On;->A06:Lcom/facebook/ads/redexgen/X/16;

    .line 47553
    new-instance v0, Lcom/facebook/ads/redexgen/X/S4;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/S4;-><init>(Lcom/facebook/ads/redexgen/X/On;Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A0D:Lcom/facebook/ads/redexgen/X/S4;

    .line 47554
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/On;->A08:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/7J;-><init>(Lcom/facebook/ads/redexgen/X/8J;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A07:Lcom/facebook/ads/redexgen/X/7J;

    .line 47555
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jb;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Jb;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A0A:Lcom/facebook/ads/redexgen/X/Jb;

    .line 47556
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v2

    .line 47557
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A08()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ob;

    invoke-direct {v0, v2, v1, p4}, Lcom/facebook/ads/redexgen/X/Ob;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A0C:Lcom/facebook/ads/redexgen/X/Ob;

    .line 47558
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A0H:Ljava/lang/String;

    .line 47559
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/On;->A08:Lcom/facebook/ads/redexgen/X/XT;

    .line 47560
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/On;->A07:Lcom/facebook/ads/redexgen/X/7J;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/On;->A0A:Lcom/facebook/ads/redexgen/X/Jb;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/On;->A0C:Lcom/facebook/ads/redexgen/X/Ob;

    .line 47561
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/On;->A0I()Z

    move-result v9

    .line 47562
    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/P0;->A00(Lcom/facebook/ads/redexgen/X/XT;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/Jb;Lcom/facebook/ads/redexgen/X/Ob;Z)Lcom/facebook/ads/redexgen/X/Oz;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A0F:Lcom/facebook/ads/redexgen/X/Oz;

    .line 47563
    new-instance v0, Lcom/facebook/ads/redexgen/X/Oy;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/On;->A08:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/On;->A0C:Lcom/facebook/ads/redexgen/X/Ob;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/On;->A0H:Ljava/lang/String;

    .line 47564
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Oy;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/On;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Ob;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A0E:Lcom/facebook/ads/redexgen/X/Oy;

    .line 47565
    new-instance v0, Lcom/facebook/ads/redexgen/X/S5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/S5;-><init>(Lcom/facebook/ads/redexgen/X/On;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A0G:Lcom/facebook/ads/redexgen/X/P1;

    .line 47566
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/On;)J
    .locals 1

    .line 47567
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/On;->A00:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/On;)Lcom/facebook/ads/redexgen/X/16;
    .locals 0

    .line 47568
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/On;->A06:Lcom/facebook/ads/redexgen/X/16;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/On;)Lcom/facebook/ads/redexgen/X/7J;
    .locals 0

    .line 47569
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/On;->A07:Lcom/facebook/ads/redexgen/X/7J;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/On;)Lcom/facebook/ads/redexgen/X/XT;
    .locals 0

    .line 47570
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/On;->A08:Lcom/facebook/ads/redexgen/X/XT;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/On;)Lcom/facebook/ads/redexgen/X/Jb;
    .locals 0

    .line 47571
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/On;->A0A:Lcom/facebook/ads/redexgen/X/Jb;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/On;)Lcom/facebook/ads/redexgen/X/Lz;
    .locals 0

    .line 47572
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/On;->A0B:Lcom/facebook/ads/redexgen/X/Lz;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/On;)Lcom/facebook/ads/redexgen/X/Ob;
    .locals 0

    .line 47573
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/On;->A0C:Lcom/facebook/ads/redexgen/X/Ob;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/On;)Lcom/facebook/ads/redexgen/X/Ol;
    .locals 0

    .line 47574
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/On;->A01:Lcom/facebook/ads/redexgen/X/Ol;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/On;)Lcom/facebook/ads/redexgen/X/Om;
    .locals 0

    .line 47575
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/On;->A02:Lcom/facebook/ads/redexgen/X/Om;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/On;)Lcom/facebook/ads/redexgen/X/Oz;
    .locals 0

    .line 47576
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/On;->A0F:Lcom/facebook/ads/redexgen/X/Oz;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/On;)Lcom/facebook/ads/redexgen/X/P1;
    .locals 0

    .line 47577
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/On;->A0G:Lcom/facebook/ads/redexgen/X/P1;

    return-object p0
.end method

.method public static A0B(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/On;->A0K:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/On;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 47578
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/On;->A0J:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method private A0D()V
    .locals 8

    .line 47579
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A0H:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    const/4 v7, 0x1

    const/4 v2, 0x1

    const/4 v1, 0x5

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/On;->A0B(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    const/16 v2, 0xca

    const/16 v1, 0x16

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/On;->A0B(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ok;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Ok;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/On;->A0G(Lcom/facebook/ads/redexgen/X/Ok;)V

    .line 47580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A0F:Lcom/facebook/ads/redexgen/X/Oz;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Oz;->A05:Lorg/json/JSONObject;

    .line 47581
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 47582
    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 47583
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/On;->A0B(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/On;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 47584
    .local p0, "assets":Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/String;

    aput-object v0, v3, v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A0H:Ljava/lang/String;

    aput-object v0, v3, v7

    const/16 v2, 0xe0

    const/16 v1, 0x1a

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/On;->A0B(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ok;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Ok;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/On;->A0G(Lcom/facebook/ads/redexgen/X/Ok;)V

    .line 47585
    return-void
.end method

.method public static A0E()V
    .locals 1

    const/16 v0, 0x13a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/On;->A0K:[B

    return-void

    :array_0
    .array-data 1
        0x25t
        0x3ft
        0x27t
        0x3ct
        0x27t
        0x39t
        0xdt
        0x22t
        0x28t
        0x3et
        0x23t
        0x25t
        0x28t
        0x5t
        0x22t
        0x38t
        0x29t
        0x3et
        0x2at
        0x2dt
        0x2ft
        0x29t
        0x5t
        0x0t
        0x36t
        0x1t
        0x14t
        0xbt
        0x16t
        0x10t
        0xdt
        0xat
        0x3t
        0x22t
        0xdt
        0xat
        0xdt
        0x17t
        0xct
        0x1t
        0x0t
        0x4ct
        0x43t
        0x41t
        0x17t
        0x43t
        0x4dt
        0x5ft
        0x60t
        0x65t
        0x53t
        0x64t
        0x71t
        0x6et
        0x73t
        0x75t
        0x68t
        0x6ft
        0x66t
        0x52t
        0x75t
        0x60t
        0x73t
        0x75t
        0x64t
        0x65t
        0x29t
        0x26t
        0x24t
        0x72t
        0x26t
        0x28t
        0x3at
        0x22t
        0x37t
        0x37t
        0x22t
        0x20t
        0x2bt
        0x26t
        0x27t
        0x14t
        0x15t
        0xdt
        0x36t
        0x2et
        0xbt
        0x1dt
        0x1at
        0x1at
        0xdt
        0x6t
        0x1ct
        0x3ft
        0x3et
        0x26t
        0x1dt
        0x5t
        0x58t
        0x59t
        0x76t
        0x54t
        0x43t
        0x5et
        0x41t
        0x5et
        0x43t
        0x4et
        0x67t
        0x56t
        0x42t
        0x44t
        0x52t
        0x53t
        0x1ft
        0x10t
        0x12t
        0x44t
        0x10t
        0x1et
        0xct
        0x39t
        0x38t
        0x17t
        0x35t
        0x22t
        0x3ft
        0x20t
        0x3ft
        0x22t
        0x2ft
        0x4t
        0x33t
        0x25t
        0x23t
        0x3bt
        0x33t
        0x32t
        0x7et
        0x71t
        0x73t
        0x25t
        0x71t
        0x7ft
        0x6dt
        0x78t
        0x79t
        0x41t
        0x76t
        0x7bt
        0x62t
        0x72t
        0x45t
        0x72t
        0x76t
        0x73t
        0x3ft
        0x30t
        0x32t
        0x64t
        0x30t
        0x3bt
        0x37t
        0x30t
        0x32t
        0x64t
        0x30t
        0x3bt
        0x37t
        0x30t
        0x32t
        0x64t
        0x30t
        0x3et
        0x2ct
        0x24t
        0x25t
        0x1dt
        0x2at
        0x27t
        0x3et
        0x2et
        0x1ct
        0x39t
        0x22t
        0x3ft
        0x3ft
        0x2et
        0x25t
        0x63t
        0x6ct
        0x6et
        0x38t
        0x6ct
        0x67t
        0x6bt
        0x6ct
        0x6et
        0x38t
        0x6ct
        0x62t
        0x70t
        0x4ft
        0x59t
        0x48t
        0x7dt
        0x49t
        0x48t
        0x54t
        0x77t
        0x59t
        0x45t
        0x14t
        0x1bt
        0x19t
        0x4ft
        0x1bt
        0x10t
        0x1bt
        0x19t
        0x4ft
        0x1bt
        0x15t
        0x7t
        0x5ft
        0x49t
        0x58t
        0x6et
        0x4dt
        0x5ft
        0x49t
        0x1at
        0x18t
        0x6dt
        0x5ft
        0x5ft
        0x49t
        0x58t
        0x5ft
        0x4t
        0xbt
        0x9t
        0x5ft
        0xbt
        0x0t
        0xbt
        0x9t
        0x5ft
        0xbt
        0x5t
        0x53t
        0x48t
        0x53t
        0x46t
        0x4bt
        0x70t
        0x71t
        0x69t
        0x52t
        0x4at
        0x62t
        0x65t
        0x7bt
        0x6ft
        0x70t
        0x7dt
        0x7ct
        0x76t
        0x5ct
        0x6ft
        0x7ct
        0x77t
        0x6dt
        0x31t
        0x3et
        0x3ct
        0x6at
        0x3et
        0x35t
        0x39t
        0x3et
        0x3ct
        0x6at
        0x3et
        0x35t
        0x39t
        0x3et
        0x3ct
        0x6at
        0x3et
        0x30t
        0x22t
        0x11t
        0xet
        0x2t
        0x10t
        0x35t
        0x2t
        0x6t
        0x3t
        0x1et
        0x33t
        0x8t
        0x34t
        0xft
        0x8t
        0x10t
        0x4ft
        0x40t
        0x42t
        0x14t
        0x40t
        0x4et
        0x5ct
    .end array-data
.end method

.method private declared-synchronized A0F()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    monitor-enter p0

    .line 47586
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/On;->A04:Z

    if-eqz v0, :cond_1

    .line 47587
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A0I:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 47588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A0I:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Ok;

    .line 47589
    .local p0, "call":Lcom/facebook/ads/redexgen/X/Ok;
    if-eqz v4, :cond_0

    .line 47590
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/On;->A0D:Lcom/facebook/ads/redexgen/X/S4;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Ok;->A00:Ljava/lang/String;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Ok;->A02:[Ljava/lang/String;

    check-cast v0, [Ljava/lang/Object;

    .line 47591
    invoke-static {v2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 47592
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Nk;->A05(Ljava/lang/String;)V

    .line 47593
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Ok;->A01:Z

    if-eqz v0, :cond_0

    .line 47594
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/On;->A0A:Lcom/facebook/ads/redexgen/X/Jb;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ja;->A0L:Lcom/facebook/ads/redexgen/X/Ja;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jb;->A02(Lcom/facebook/ads/redexgen/X/Ja;Ljava/util/Map;)V

    .line 47595
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A08:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Ok;->A00:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A4t(Ljava/lang/String;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47596
    :cond_1
    monitor-exit p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/On;->A0L:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/On;->A0L:[Ljava/lang/String;

    const-string v1, "zGpus9wW0BJIjoljGX"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "A1e8XSvn3Bv6Tp7Ifd"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 47597
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized A0G(Lcom/facebook/ads/redexgen/X/Ok;)V
    .locals 1

    monitor-enter p0

    .line 47598
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A0I:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 47599
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/On;->A0F()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47600
    monitor-exit p0

    return-void

    .line 47601
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/Ok;
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/On;)V
    .locals 0

    .line 47602
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/On;->A0F()V

    return-void
.end method

.method private A0I()Z
    .locals 1

    .line 47603
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/On;->A0J()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private A0J()Z
    .locals 2

    .line 47604
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/On;->A08:Lcom/facebook/ads/redexgen/X/XT;

    .line 47605
    invoke-static {}, Lcom/facebook/ads/redexgen/X/QJ;->A03()Z

    move-result v0

    .line 47606
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/JD;->A1x(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/On;Z)Z
    .locals 0

    .line 47607
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/On;->A04:Z

    return p1
.end method


# virtual methods
.method public final A0L()Lcom/facebook/ads/redexgen/X/Jb;
    .locals 1

    .line 47608
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A0A:Lcom/facebook/ads/redexgen/X/Jb;

    return-object v0
.end method

.method public final A0M()Lcom/facebook/ads/redexgen/X/Lz;
    .locals 1

    .line 47609
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A0B:Lcom/facebook/ads/redexgen/X/Lz;

    return-object v0
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/S4;
    .locals 1

    .line 47610
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A0D:Lcom/facebook/ads/redexgen/X/S4;

    return-object v0
.end method

.method public final A0O()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 47611
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A0J:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final A0P()V
    .locals 4

    .line 47612
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/On;->A0H:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/16 v2, 0x16

    const/16 v1, 0x1a

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/On;->A0B(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ok;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Ok;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/On;->A0G(Lcom/facebook/ads/redexgen/X/Ok;)V

    .line 47613
    return-void
.end method

.method public final A0Q()V
    .locals 4

    .line 47614
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/On;->A0H:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/16 v2, 0x30

    const/16 v1, 0x19

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/On;->A0B(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ok;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Ok;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/On;->A0G(Lcom/facebook/ads/redexgen/X/Ok;)V

    .line 47615
    return-void
.end method

.method public final A0R()V
    .locals 1

    .line 47616
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/On;->A05:Z

    .line 47617
    return-void
.end method

.method public final A0S()V
    .locals 1

    .line 47618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/On;->A05:Z

    .line 47619
    return-void
.end method

.method public final A0T()V
    .locals 4

    .line 47620
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/On;->A0H:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/16 v2, 0x62

    const/16 v1, 0x17

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/On;->A0B(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ok;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Ok;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/On;->A0G(Lcom/facebook/ads/redexgen/X/Ok;)V

    .line 47621
    return-void
.end method

.method public final A0U()V
    .locals 4

    .line 47622
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/On;->A0H:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/16 v2, 0x124

    const/16 v1, 0x16

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/On;->A0B(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ok;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Ok;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/On;->A0G(Lcom/facebook/ads/redexgen/X/Ok;)V

    .line 47623
    return-void
.end method

.method public final A0V()V
    .locals 4

    .line 47624
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/On;->A0H:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/16 v2, 0x79

    const/16 v1, 0x18

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/On;->A0B(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ok;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Ok;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/On;->A0G(Lcom/facebook/ads/redexgen/X/Ok;)V

    .line 47625
    return-void
.end method

.method public final A0W(Lcom/facebook/ads/redexgen/X/Ol;)V
    .locals 0

    .line 47626
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/On;->A01:Lcom/facebook/ads/redexgen/X/Ol;

    .line 47627
    return-void
.end method

.method public final A0X(Lcom/facebook/ads/redexgen/X/Om;)V
    .locals 0

    .line 47628
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/On;->A02:Lcom/facebook/ads/redexgen/X/Om;

    .line 47629
    return-void
.end method

.method public final A0Y(Lcom/facebook/ads/redexgen/X/S3;)V
    .locals 1

    .line 47630
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A0E:Lcom/facebook/ads/redexgen/X/Oy;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Oy;->A0L(Lcom/facebook/ads/redexgen/X/S3;)V

    .line 47631
    return-void
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/QZ;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/QZ;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 47632
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/On;->A03:Lcom/facebook/ads/redexgen/X/QZ;

    .line 47633
    return-void
.end method

.method public final A0a(Ljava/lang/String;)V
    .locals 4

    .line 47634
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/On;->A0H:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/4 v0, 0x1

    aput-object p1, v3, v0

    const/16 v2, 0xaf

    const/16 v1, 0x1b

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/On;->A0B(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ok;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Ok;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/On;->A0G(Lcom/facebook/ads/redexgen/X/Ok;)V

    .line 47635
    return-void
.end method

.method public final A0b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 47636
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/On;->A0H:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/4 v0, 0x1

    aput-object p1, v3, v0

    const/4 v0, 0x2

    aput-object p2, v3, v0

    const/16 v2, 0x91

    const/16 v1, 0x1e

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/On;->A0B(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ok;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Ok;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/On;->A0G(Lcom/facebook/ads/redexgen/X/Ok;)V

    .line 47637
    return-void
.end method

.method public final A0c(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    .line 47638
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A0H:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v4, v3

    const/4 v0, 0x1

    aput-object p1, v4, v0

    .line 47639
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/16 v2, 0x107

    const/16 v1, 0x1d

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/On;->A0B(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ok;

    invoke-direct {v0, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/Ok;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 47640
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/On;->A0G(Lcom/facebook/ads/redexgen/X/Ok;)V

    .line 47641
    return-void
.end method

.method public final A0d(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47642
    .local v1, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/On;->A09:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A06:Lcom/facebook/ads/redexgen/X/16;

    .line 47643
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Nu;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/Nu;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A03:Lcom/facebook/ads/redexgen/X/QZ;

    .line 47644
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A03(Lcom/facebook/ads/redexgen/X/QZ;)Lcom/facebook/ads/redexgen/X/Nu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nu;->A05()Ljava/util/Map;

    move-result-object v0

    .line 47645
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/JT;->A8p(Ljava/lang/String;Ljava/util/Map;)V

    .line 47646
    return-void
.end method

.method public final A0e(Z)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface"
        }
    .end annotation

    .line 47647
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-le v1, v0, :cond_0

    .line 47648
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/On;->A0D:Lcom/facebook/ads/redexgen/X/S4;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/On;->A0E:Lcom/facebook/ads/redexgen/X/Oy;

    const/4 v2, 0x6

    const/16 v1, 0x10

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/On;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/S4;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47649
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/On;->A0A:Lcom/facebook/ads/redexgen/X/Jb;

    sget-object v3, Lcom/facebook/ads/redexgen/X/Ja;->A0O:Lcom/facebook/ads/redexgen/X/Ja;

    sget-object v2, Lcom/facebook/ads/redexgen/X/On;->A0L:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/On;->A0L:[Ljava/lang/String;

    const-string v1, "xUzOvs22CfktfeCCcYWx46fXBHS31rah"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "foKCfE4j78jeFbkV7IcjWafsYMWx62Vp"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Jb;->A02(Lcom/facebook/ads/redexgen/X/Ja;Ljava/util/Map;)V

    .line 47650
    .local p0, "url":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 47651
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A0F:Lcom/facebook/ads/redexgen/X/Oz;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Oz;->A01:Ljava/lang/String;

    .line 47652
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/On;->A00:J

    .line 47653
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A0D:Lcom/facebook/ads/redexgen/X/S4;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/S4;->loadUrl(Ljava/lang/String;)V

    .line 47654
    :goto_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    goto :goto_1

    .line 47655
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A0F:Lcom/facebook/ads/redexgen/X/Oz;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Oz;->A00:Ljava/lang/String;

    .line 47656
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A0D:Lcom/facebook/ads/redexgen/X/S4;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/S4;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 47657
    .local p1, "funnelJSON":Lorg/json/JSONObject;
    :goto_1
    :try_start_0
    const/16 v2, 0x104

    const/4 v1, 0x3

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/On;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47658
    const/16 v2, 0x56

    const/16 v1, 0xc

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/On;->A0B(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Oo;->A00()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47659
    const/16 v2, 0xfa

    const/16 v1, 0xa

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/On;->A0B(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/On;->A0M:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47660
    const/16 v2, 0x49

    const/16 v1, 0xd

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/On;->A0B(III)Ljava/lang/String;

    move-result-object v1

    .line 47661
    if-eqz p1, :cond_3

    .line 47662
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9f;->getAttachedDynamicAdViews()I

    move-result v0

    .line 47663
    :goto_2
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_3

    .line 47664
    :cond_3
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9a;->getAttachedDynamicAdViews()I

    move-result v0

    goto :goto_2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47665
    :catch_0
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47666
    .local v1, "funnelMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A08:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A4z(Ljava/lang/String;)V

    .line 47667
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/On;->A0D()V

    .line 47668
    return-void
.end method

.method public final A0f()Z
    .locals 1

    .line 47669
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A0E:Lcom/facebook/ads/redexgen/X/Oy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oy;->A0M()Z

    move-result v0

    return v0
.end method

.method public final A0g()Z
    .locals 1

    .line 47670
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/On;->A05:Z

    return v0
.end method
