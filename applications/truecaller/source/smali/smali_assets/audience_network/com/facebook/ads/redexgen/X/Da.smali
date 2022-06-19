.class public final Lcom/facebook/ads/redexgen/X/Da;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SampleReader"
.end annotation


# static fields
.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:Z

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Lcom/facebook/ads/redexgen/X/Cb;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "AytN1i9iULWpAtR2eIfx7QogEUuyUUX4"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "EimBg0"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "4eNGQSgLmn9gvaK14R8kSqnFmk3YDtSi"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2fyuIcJ7pz76VyZl9SMNa1chyaGQvScm"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "P7Bhpggufyl3vqAGq89SAtaTbaXWozcC"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "R5XBsX91lZ7HUyZ9KaLj5rOllXZCV26j"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "kcg4Z6bP9bO4onTQZ6Z5ctV"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "10vbbYYZLuUPLbeNO2JvVvesRy5vOtek"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Da;->A0D:[Ljava/lang/String;

    .line 28932
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Cb;)V
    .locals 0

    .line 28933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28934
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Da;->A0C:Lcom/facebook/ads/redexgen/X/Cb;

    .line 28935
    return-void
.end method

.method private A00(I)V
    .locals 8

    .line 28936
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Da;->A0A:Z

    .line 28937
    .local v2, "flags":I
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Da;->A01:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Da;->A03:J

    sub-long/2addr v2, v0

    long-to-int v5, v2

    .line 28938
    .local v2, "size":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Da;->A0C:Lcom/facebook/ads/redexgen/X/Cb;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Da;->A04:J

    const/4 v7, 0x0

    move v6, p1

    invoke-interface/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Cb;->AE5(JIIILcom/facebook/ads/redexgen/X/Ca;)V

    .line 28939
    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 1

    .line 28940
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Da;->A07:Z

    .line 28941
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Da;->A06:Z

    .line 28942
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Da;->A05:Z

    .line 28943
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Da;->A09:Z

    .line 28944
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Da;->A0B:Z

    .line 28945
    return-void
.end method

.method public final A02(JI)V
    .locals 4

    .line 28946
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Da;->A0B:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Da;->A06:Z

    if-eqz v0, :cond_1

    .line 28947
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Da;->A08:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Da;->A0A:Z

    .line 28948
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Da;->A0D:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Da;->A0D:[Ljava/lang/String;

    const-string v1, "hh10uoQ2wjGgTUsUevn281NORx98TkB1"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Da;->A0B:Z

    .line 28949
    :cond_0
    :goto_0
    return-void

    .line 28950
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Da;->A05:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Da;->A06:Z

    if-eqz v0, :cond_0

    .line 28951
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Da;->A09:Z

    if-eqz v0, :cond_3

    .line 28952
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Da;->A01:J

    sub-long/2addr p1, v0

    long-to-int v0, p1

    .line 28953
    .local p1, "nalUnitLength":I
    add-int/2addr p3, v0

    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/Da;->A00(I)V

    .line 28954
    .end local p1    # "nalUnitLength":I
    :cond_3
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Da;->A01:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Da;->A03:J

    .line 28955
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Da;->A02:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Da;->A04:J

    .line 28956
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Da;->A09:Z

    .line 28957
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Da;->A08:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Da;->A0A:Z

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A03(JIIJ)V
    .locals 6

    .line 28958
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Da;->A06:Z

    .line 28959
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Da;->A05:Z

    .line 28960
    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/Da;->A02:J

    .line 28961
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Da;->A00:I

    .line 28962
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Da;->A01:J

    .line 28963
    const/4 v4, 0x1

    const/16 v0, 0x20

    if-lt p4, v0, :cond_1

    .line 28964
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Da;->A0B:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Da;->A09:Z

    if-eqz v0, :cond_0

    .line 28965
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/Da;->A00(I)V

    .line 28966
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Da;->A09:Z

    .line 28967
    :cond_0
    const/16 v0, 0x22

    if-gt p4, v0, :cond_1

    .line 28968
    iget-boolean v5, p0, Lcom/facebook/ads/redexgen/X/Da;->A0B:Z

    xor-int/2addr v5, v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Da;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Da;->A0D:[Ljava/lang/String;

    const-string v1, "wqfZZQZmQi2aSzTJgSnfuEG5zpWvg4YI"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "uUijDIjLUkfNDtGFhTuIbp3J3vWPjHax"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/Da;->A05:Z

    .line 28969
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Da;->A0B:Z

    .line 28970
    :cond_1
    const/16 v4, 0x10

    sget-object v2, Lcom/facebook/ads/redexgen/X/Da;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Da;->A0D:[Ljava/lang/String;

    const-string v1, "VgXbI0fWsc6LBLXRTGKiMc1TRthchDi6"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-lt p4, v4, :cond_5

    :goto_0
    const/16 v0, 0x15

    if-gt p4, v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Da;->A08:Z

    .line 28971
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Da;->A08:Z

    if-nez v0, :cond_2

    const/16 v0, 0x9

    if-gt p4, v0, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Da;->A07:Z

    .line 28972
    return-void

    :cond_4
    if-lt p4, v4, :cond_5

    goto :goto_0

    .line 28973
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A04([BII)V
    .locals 4

    .line 28974
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Da;->A07:Z

    if-eqz v0, :cond_0

    .line 28975
    add-int/lit8 v0, p2, 0x2

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Da;->A00:I

    sub-int/2addr v0, v3

    .line 28976
    .local p0, "headerOffset":I
    if-ge v0, p3, :cond_2

    .line 28977
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0x80

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Da;->A06:Z

    .line 28978
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Da;->A07:Z

    .line 28979
    .end local p0    # "headerOffset":I
    :cond_0
    :goto_1
    return-void

    .line 28980
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 28981
    :cond_2
    sub-int/2addr p3, p2

    add-int/2addr v3, p3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Da;->A0D:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x45

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Da;->A0D:[Ljava/lang/String;

    const-string v1, "OWSyVtAwrfkSOzobpeDsxETSEBQPa9qP"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Da;->A00:I

    goto :goto_1
.end method
