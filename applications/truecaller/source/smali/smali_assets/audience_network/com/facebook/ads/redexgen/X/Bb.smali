.class public abstract Lcom/facebook/ads/redexgen/X/Bb;
.super Lcom/facebook/ads/redexgen/X/WX;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Uz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/WX<",
        "Lcom/facebook/ads/redexgen/X/Ba;",
        "Lcom/facebook/ads/redexgen/X/BX;",
        "Lcom/facebook/ads/redexgen/X/GM;",
        ">;",
        "Lcom/facebook/ads/redexgen/X/Uz;"
    }
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final A00:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Bb;->A0J()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 23937
    const/4 v0, 0x2

    new-array v1, v0, [Lcom/facebook/ads/redexgen/X/Ba;

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/BX;

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/WX;-><init>([Lcom/facebook/ads/redexgen/X/WZ;[Lcom/facebook/ads/redexgen/X/WY;)V

    .line 23938
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Bb;->A00:Ljava/lang/String;

    .line 23939
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/WX;->A0Y(I)V

    .line 23940
    return-void
.end method

.method private final A0E(Lcom/facebook/ads/redexgen/X/Ba;Lcom/facebook/ads/redexgen/X/BX;Z)Lcom/facebook/ads/redexgen/X/GM;
    .locals 7

    .line 23941
    :try_start_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/WZ;->A01:Ljava/nio/ByteBuffer;

    .line 23942
    .local p0, "inputData":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0, p3}, Lcom/facebook/ads/redexgen/X/Bb;->A0b([BIZ)Lcom/facebook/ads/redexgen/X/GL;

    move-result-object v4

    .line 23943
    .local v0, "subtitle":Lcom/facebook/ads/redexgen/X/GL;
    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/WZ;->A00:J

    iget-wide v5, p1, Lcom/facebook/ads/redexgen/X/Ba;->A00:J

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/BX;->A09(JLcom/facebook/ads/redexgen/X/GL;J)V

    .line 23944
    const/high16 v0, -0x80000000

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Be;->A01(I)V

    .line 23945
    const/4 v0, 0x0

    return-object v0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/GM; {:try_start_0 .. :try_end_0} :catch_0

    .line 23946
    .end local p0    # "inputData":Ljava/nio/ByteBuffer;
    .end local v0    # "subtitle":Lcom/facebook/ads/redexgen/X/GL;
    :catch_0
    move-exception v0

    .line 23947
    .local p0, "e":Lcom/facebook/ads/redexgen/X/GM;
    return-object v0
.end method

.method private final A0F(Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/GM;
    .locals 3

    .line 23948
    const/4 v2, 0x0

    const/16 v1, 0x17

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bb;->A0I(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/GM;

    invoke-direct {v0, v1, p1}, Lcom/facebook/ads/redexgen/X/GM;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private final A0G()Lcom/facebook/ads/redexgen/X/Ba;
    .locals 1

    .line 23949
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ba;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ba;-><init>()V

    return-object v0
.end method

.method private final A0H()Lcom/facebook/ads/redexgen/X/BX;
    .locals 1

    .line 23950
    new-instance v0, Lcom/facebook/ads/redexgen/X/2x;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/2x;-><init>(Lcom/facebook/ads/redexgen/X/Bb;)V

    return-object v0
.end method

.method public static A0I(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Bb;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0J()V
    .locals 1

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Bb;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x3ft
        0x58t
        0x4ft
        0x62t
        0x5at
        0x4ft
        0x4dt
        0x5et
        0x4ft
        0x4et
        0xat
        0x4et
        0x4ft
        0x4dt
        0x59t
        0x4et
        0x4ft
        0xat
        0x4ft
        0x5ct
        0x5ct
        0x59t
        0x5ct
    .end array-data
.end method


# virtual methods
.method public final bridge synthetic A0T()Lcom/facebook/ads/redexgen/X/WZ;
    .locals 1

    .line 23951
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bb;->A0G()Lcom/facebook/ads/redexgen/X/Ba;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0V()Lcom/facebook/ads/redexgen/X/WY;
    .locals 1

    .line 23952
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bb;->A0H()Lcom/facebook/ads/redexgen/X/BX;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0W(Lcom/facebook/ads/redexgen/X/WZ;Lcom/facebook/ads/redexgen/X/WY;Z)Ljava/lang/Exception;
    .locals 1

    .line 23953
    check-cast p1, Lcom/facebook/ads/redexgen/X/Ba;

    check-cast p2, Lcom/facebook/ads/redexgen/X/BX;

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Bb;->A0E(Lcom/facebook/ads/redexgen/X/Ba;Lcom/facebook/ads/redexgen/X/BX;Z)Lcom/facebook/ads/redexgen/X/GM;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0X(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .locals 1

    .line 23954
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Bb;->A0F(Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/GM;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0a(Lcom/facebook/ads/redexgen/X/WY;)V
    .locals 0

    .line 23955
    check-cast p1, Lcom/facebook/ads/redexgen/X/BX;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Bb;->A0c(Lcom/facebook/ads/redexgen/X/BX;)V

    return-void
.end method

.method public abstract A0b([BIZ)Lcom/facebook/ads/redexgen/X/GL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GM;
        }
    .end annotation
.end method

.method public final A0c(Lcom/facebook/ads/redexgen/X/BX;)V
    .locals 0

    .line 23956
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/WX;->A0a(Lcom/facebook/ads/redexgen/X/WY;)V

    .line 23957
    return-void
.end method

.method public final AEU(J)V
    .locals 0

    .line 23958
    return-void
.end method
