.class public final Lcom/facebook/ads/redexgen/X/DY;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/DZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SliceHeaderData"
.end annotation


# static fields
.field public static A0G:[Ljava/lang/String;


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

.field public A09:Lcom/facebook/ads/redexgen/X/IQ;

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public A0D:Z

.field public A0E:Z

.field public A0F:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Ap6BNJVrmScnFk1hMNs3gk3nfiOqRLL3"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ykUqwa9hjGiITCeS7mR9oTL7PlhG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "aa4WgtRMvf8T1H"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "JRczJFV5HPZSgdF19FYO330C4qz"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DshyegtLBVWJb272GUnrCLDL902Y6CT4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "mdvT8We7lZzQ3otG"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "HTCQc9aRCuJwCScXqz5EEwOn0qroPb"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "au3IbZji4KTf1MJXqcScv4"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/DY;->A0G:[Ljava/lang/String;

    .line 28771
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/DX;)V
    .locals 0

    .line 28773
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DY;-><init>()V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/DY;)Z
    .locals 5

    .line 28774
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DY;->A0F:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_8

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/DY;->A0F:Z

    if-eqz v0, :cond_9

    iget v1, p0, Lcom/facebook/ads/redexgen/X/DY;->A03:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/DY;->A03:I

    if-ne v1, v0, :cond_9

    iget v1, p0, Lcom/facebook/ads/redexgen/X/DY;->A07:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/DY;->A07:I

    if-ne v1, v0, :cond_9

    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/DY;->A0C:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/DY;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/DY;->A0G:[Ljava/lang/String;

    const-string v1, "Brw5i8rGHBW71K33du4zJvIjk6EmRJH9"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "RwmcRua1hejs2s0vOAX6lsL4rGT6f6"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/DY;->A0C:Z

    if-ne v4, v0, :cond_9

    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/DY;->A0B:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/DY;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/DY;->A0G:[Ljava/lang/String;

    const-string v1, "7XqbLIMHqeF4ACGkKHFSPL5n1PTTECL3"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v4, :cond_1

    :goto_0
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/DY;->A0B:Z

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/DY;->A0A:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/DY;->A0A:Z

    if-ne v1, v0, :cond_9

    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/DY;->A05:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/DY;->A05:I

    if-eq v1, v0, :cond_2

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DY;->A09:Lcom/facebook/ads/redexgen/X/IQ;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/IQ;->A04:I

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/DY;->A09:Lcom/facebook/ads/redexgen/X/IQ;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/IQ;->A04:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/DY;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x64

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/DY;->A0G:[Ljava/lang/String;

    const-string v1, "5biFR31Ww6IVJRQpoWySMi"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "JIZ9t5zNUO5N5gZGQiecPim8SVz"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v4, :cond_3

    :goto_1
    iget v4, p0, Lcom/facebook/ads/redexgen/X/DY;->A06:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/DY;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_5

    iget v0, p1, Lcom/facebook/ads/redexgen/X/DY;->A06:I

    if-ne v4, v0, :cond_9

    :goto_2
    iget v1, p0, Lcom/facebook/ads/redexgen/X/DY;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/DY;->A02:I

    if-ne v1, v0, :cond_9

    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DY;->A09:Lcom/facebook/ads/redexgen/X/IQ;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/IQ;->A04:I

    if-ne v0, v3, :cond_4

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/DY;->A09:Lcom/facebook/ads/redexgen/X/IQ;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/IQ;->A04:I

    if-ne v0, v3, :cond_4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/DY;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/DY;->A00:I

    if-ne v1, v0, :cond_9

    iget v1, p0, Lcom/facebook/ads/redexgen/X/DY;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/DY;->A01:I

    if-ne v1, v0, :cond_9

    :cond_4
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/DY;->A0E:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/DY;->A0E:Z

    if-ne v1, v0, :cond_9

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    iget v1, p0, Lcom/facebook/ads/redexgen/X/DY;->A04:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/DY;->A04:I

    if-eq v1, v0, :cond_8

    goto :goto_3

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/DY;->A0G:[Ljava/lang/String;

    const-string v1, "2WzXkDzYE8eWwBtW"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget v0, p1, Lcom/facebook/ads/redexgen/X/DY;->A06:I

    if-ne v4, v0, :cond_9

    goto :goto_2

    :cond_6
    if-nez v4, :cond_3

    goto :goto_1

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/DY;->A0G:[Ljava/lang/String;

    const-string v1, "s1RbcqNPGPspLhuk1KaIYEncshphzTy6"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "W53axkGfsU0giUFzw9bYQfJRO0aqoK"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_1

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x0

    :cond_9
    :goto_3
    return v3
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/DY;Lcom/facebook/ads/redexgen/X/DY;)Z
    .locals 0

    .line 28775
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/DY;->A00(Lcom/facebook/ads/redexgen/X/DY;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A02()V
    .locals 1

    .line 28776
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DY;->A0D:Z

    .line 28777
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DY;->A0F:Z

    .line 28778
    return-void
.end method

.method public final A03(I)V
    .locals 1

    .line 28779
    iput p1, p0, Lcom/facebook/ads/redexgen/X/DY;->A08:I

    .line 28780
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DY;->A0D:Z

    .line 28781
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/IQ;IIIIZZZZIIIII)V
    .locals 1

    .line 28782
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DY;->A09:Lcom/facebook/ads/redexgen/X/IQ;

    .line 28783
    iput p2, p0, Lcom/facebook/ads/redexgen/X/DY;->A05:I

    .line 28784
    iput p3, p0, Lcom/facebook/ads/redexgen/X/DY;->A08:I

    .line 28785
    iput p4, p0, Lcom/facebook/ads/redexgen/X/DY;->A03:I

    .line 28786
    iput p5, p0, Lcom/facebook/ads/redexgen/X/DY;->A07:I

    .line 28787
    iput-boolean p6, p0, Lcom/facebook/ads/redexgen/X/DY;->A0C:Z

    .line 28788
    iput-boolean p7, p0, Lcom/facebook/ads/redexgen/X/DY;->A0B:Z

    .line 28789
    iput-boolean p8, p0, Lcom/facebook/ads/redexgen/X/DY;->A0A:Z

    .line 28790
    iput-boolean p9, p0, Lcom/facebook/ads/redexgen/X/DY;->A0E:Z

    .line 28791
    iput p10, p0, Lcom/facebook/ads/redexgen/X/DY;->A04:I

    .line 28792
    iput p11, p0, Lcom/facebook/ads/redexgen/X/DY;->A06:I

    .line 28793
    iput p12, p0, Lcom/facebook/ads/redexgen/X/DY;->A02:I

    .line 28794
    iput p13, p0, Lcom/facebook/ads/redexgen/X/DY;->A00:I

    .line 28795
    iput p14, p0, Lcom/facebook/ads/redexgen/X/DY;->A01:I

    .line 28796
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DY;->A0F:Z

    .line 28797
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DY;->A0D:Z

    .line 28798
    return-void
.end method

.method public final A05()Z
    .locals 2

    .line 28799
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DY;->A0D:Z

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/DY;->A08:I

    const/4 v0, 0x7

    if-eq v1, v0, :cond_0

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
