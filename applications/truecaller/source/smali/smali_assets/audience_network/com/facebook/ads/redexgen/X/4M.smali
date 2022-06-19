.class public abstract Lcom/facebook/ads/redexgen/X/4M;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Eq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/androidx/support/v7/widget/RecyclerView$LayoutManager$Properties;,
        Lcom/facebook/ads/redexgen/X/4K;
    }
.end annotation


# static fields
.field public static A0I:[B

.field public static A0J:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/3k;

.field public A02:Lcom/facebook/ads/redexgen/X/4Z;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/Eq;

.field public A04:Lcom/facebook/ads/redexgen/X/4j;

.field public A05:Lcom/facebook/ads/redexgen/X/4j;

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public A0A:I

.field public A0B:I

.field public A0C:I

.field public A0D:I

.field public A0E:Z

.field public A0F:Z

.field public final A0G:Lcom/facebook/ads/redexgen/X/4h;

.field public final A0H:Lcom/facebook/ads/redexgen/X/4h;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "NGwI4w5wjKKwr8vIXUEBgcadgt82Mvhc"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "UEWVJJvMFTFlt7hH7ERCIJOXwkHPD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VrTEPZjwbsMyuvHOm"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2WwBzOWctlsBfaK16SO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "SN9IkStz5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "kDHla2kaeJhueA2usdy0jZceB2KGO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Oz8ehwpCKAgd43CqPtwSSE9zN5"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pRsAYaXPUkY6EiG3qKZOmbtQ8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    .line 10940
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4M;->A08()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 10941
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10942
    new-instance v0, Lcom/facebook/ads/redexgen/X/bW;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bW;-><init>(Lcom/facebook/ads/redexgen/X/4M;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A0G:Lcom/facebook/ads/redexgen/X/4h;

    .line 10943
    new-instance v0, Lcom/facebook/ads/redexgen/X/bV;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bV;-><init>(Lcom/facebook/ads/redexgen/X/4M;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A0H:Lcom/facebook/ads/redexgen/X/4h;

    .line 10944
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4M;->A0G:Lcom/facebook/ads/redexgen/X/4h;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4j;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4j;-><init>(Lcom/facebook/ads/redexgen/X/4h;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A04:Lcom/facebook/ads/redexgen/X/4j;

    .line 10945
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4M;->A0H:Lcom/facebook/ads/redexgen/X/4h;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4j;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4j;-><init>(Lcom/facebook/ads/redexgen/X/4h;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A05:Lcom/facebook/ads/redexgen/X/4j;

    .line 10946
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A09:Z

    .line 10947
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A07:Z

    .line 10948
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A06:Z

    .line 10949
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A0F:Z

    .line 10950
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A0E:Z

    return-void
.end method

.method public static A00(III)I
    .locals 3

    .line 10951
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 10952
    .local p0, "mode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 10953
    .local p1, "size":I
    const/high16 v0, -0x80000000

    if-eq v2, v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v2, v0, :cond_0

    .line 10954
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 10955
    :cond_0
    return v1

    .line 10956
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static A01(IIIIZ)I
    .locals 6

    .line 10957
    sub-int/2addr p0, p2

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 10958
    .local p0, "size":I
    const/4 v3, 0x0

    .line 10959
    .local p1, "resultSize":I
    const/4 v2, 0x0

    .line 10960
    .local p2, "resultMode":I
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, -0x80000000

    const/4 v1, -0x2

    const/4 v0, -0x1

    if-eqz p4, :cond_1

    .line 10961
    if-ltz p3, :cond_5

    .line 10962
    move v3, p3

    sget-object v2, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_b

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 10963
    :cond_1
    if-ltz p3, :cond_2

    .line 10964
    move v3, p3

    .line 10965
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_0

    .line 10966
    :cond_2
    if-ne p3, v0, :cond_3

    .line 10967
    move v3, p0

    .line 10968
    move v2, p1

    goto :goto_0

    .line 10969
    :cond_3
    if-ne p3, v1, :cond_c

    .line 10970
    move v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_0

    .line 10971
    sget-object v2, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const-string v1, "mbdH64CAyADsqDHKi"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "uvhJn14mL"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eq p1, v4, :cond_4

    if-ne p1, v5, :cond_a

    .line 10972
    :cond_4
    const/high16 v2, -0x80000000

    goto :goto_0

    .line 10973
    :cond_5
    if-ne p3, v0, :cond_8

    .line 10974
    if-eq p1, v4, :cond_7

    if-eqz p1, :cond_6

    if-eq p1, v5, :cond_7

    goto :goto_0

    .line 10975
    :cond_6
    const/4 v3, 0x0

    .line 10976
    const/4 v2, 0x0

    goto :goto_0

    .line 10977
    :cond_7
    move v3, p0

    .line 10978
    move v2, p1

    .line 10979
    goto :goto_0

    .line 10980
    :cond_8
    if-ne p3, v1, :cond_c

    .line 10981
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_9

    .line 10982
    sget-object v2, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const-string v1, "MUtJOOU4WeR0TtYG1JH"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v2, 0x0

    goto :goto_0

    :cond_9
    const/4 v2, 0x0

    goto :goto_0

    .line 10983
    :cond_a
    const/4 v2, 0x0

    goto :goto_0

    .line 10984
    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const-string v1, "ru0BYCJI67FO4KgBABZqajada"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/high16 v2, 0x40000000    # 2.0f

    .line 10985
    :cond_c
    :goto_0
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private final A02(Landroid/view/View;)I
    .locals 1

    .line 10986
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4N;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4N;->A03:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method private final A03(Landroid/view/View;)I
    .locals 1

    .line 10987
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4N;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4N;->A03:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method private final A04(Landroid/view/View;)I
    .locals 1

    .line 10988
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4N;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4N;->A03:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method private final A05(Landroid/view/View;)I
    .locals 1

    .line 10989
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4N;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4N;->A03:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method private final A06(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)I
    .locals 1

    .line 10990
    const/4 v0, 0x0

    return v0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4M;->A0I:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A08()V
    .locals 4

    const/16 v0, 0x114

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const-string v1, "kyP20liVKsmkdJ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/4M;->A0I:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        -0x2t
        0x21t
        0x21t
        0x22t
        0x21t
        -0x23t
        0x13t
        0x26t
        0x22t
        0x34t
        -0x23t
        0x25t
        0x1et
        0x30t
        -0x23t
        0xft
        0x22t
        0x20t
        0x36t
        0x20t
        0x29t
        0x22t
        0x2ft
        0x13t
        0x26t
        0x22t
        0x34t
        -0x23t
        0x1et
        0x30t
        -0x23t
        0x2dt
        0x1et
        0x2ft
        0x22t
        0x2bt
        0x31t
        -0x23t
        0x1ft
        0x32t
        0x31t
        -0x23t
        0x33t
        0x26t
        0x22t
        0x34t
        -0x23t
        0x26t
        0x30t
        -0x23t
        0x2bt
        0x2ct
        0x31t
        -0x23t
        0x1et
        -0x23t
        0x2ft
        0x22t
        0x1et
        0x29t
        -0x23t
        0x20t
        0x25t
        0x26t
        0x29t
        0x21t
        -0x15t
        -0x23t
        0x12t
        0x2bt
        0x23t
        0x26t
        0x29t
        0x31t
        0x22t
        0x2ft
        0x22t
        0x21t
        -0x23t
        0x26t
        0x2bt
        0x21t
        0x22t
        0x35t
        -0x9t
        -0x23t
        -0x5t
        0x8t
        0x8t
        0x9t
        0xet
        -0x46t
        0x7t
        0x9t
        0x10t
        -0x1t
        -0x46t
        -0x5t
        -0x46t
        -0x3t
        0x2t
        0x3t
        0x6t
        -0x2t
        -0x46t
        0x0t
        0xct
        0x9t
        0x7t
        -0x46t
        0x8t
        0x9t
        0x8t
        -0x39t
        -0x1t
        0x12t
        0x3t
        0xdt
        0xet
        0x3t
        0x8t
        0x1t
        -0x46t
        0x3t
        0x8t
        -0x2t
        -0x1t
        0x12t
        -0x2ct
        -0x50t
        -0x3dt
        -0x3ft
        -0x29t
        -0x3ft
        -0x36t
        -0x3dt
        -0x30t
        -0x4ct
        -0x39t
        -0x3dt
        -0x2bt
        0x9t
        0x1ft
        0x25t
        -0x30t
        0x1dt
        0x25t
        0x23t
        0x24t
        -0x30t
        0x1ft
        0x26t
        0x15t
        0x22t
        0x22t
        0x19t
        0x14t
        0x15t
        -0x30t
        0x1ft
        0x1et
        -0x4t
        0x11t
        0x29t
        0x1ft
        0x25t
        0x24t
        -0xdt
        0x18t
        0x19t
        0x1ct
        0x14t
        0x22t
        0x15t
        0x1et
        -0x28t
        0x2t
        0x15t
        0x13t
        0x29t
        0x13t
        0x1ct
        0x15t
        0x22t
        -0x30t
        0x22t
        0x15t
        0x13t
        0x29t
        0x13t
        0x1ct
        0x15t
        0x22t
        -0x24t
        -0x30t
        0x3t
        0x24t
        0x11t
        0x24t
        0x15t
        -0x30t
        0x23t
        0x24t
        0x11t
        0x24t
        0x15t
        -0x27t
        -0x30t
        -0x4et
        -0x38t
        -0x32t
        0x79t
        -0x3at
        -0x32t
        -0x34t
        -0x33t
        0x79t
        -0x38t
        -0x31t
        -0x42t
        -0x35t
        -0x35t
        -0x3et
        -0x43t
        -0x42t
        0x79t
        -0x34t
        -0x3at
        -0x38t
        -0x38t
        -0x33t
        -0x3ft
        -0x54t
        -0x44t
        -0x35t
        -0x38t
        -0x3bt
        -0x3bt
        -0x53t
        -0x38t
        -0x57t
        -0x38t
        -0x34t
        -0x3et
        -0x33t
        -0x3et
        -0x38t
        -0x39t
        0x79t
        -0x33t
        -0x38t
        0x79t
        -0x34t
        -0x32t
        -0x37t
        -0x37t
        -0x38t
        -0x35t
        -0x33t
        0x79t
        -0x34t
        -0x3at
        -0x38t
        -0x38t
        -0x33t
        -0x3ft
        0x79t
        -0x34t
        -0x44t
        -0x35t
        -0x38t
        -0x3bt
        -0x3bt
        -0x3et
        -0x39t
        -0x40t
    .end array-data
.end method

.method private final A09(I)V
    .locals 1

    .line 10991
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A0t(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4M;->A0C(ILandroid/view/View;)V

    .line 10992
    return-void
.end method

.method private final A0A(I)V
    .locals 1

    .line 10993
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A0t(I)Landroid/view/View;

    move-result-object v0

    .line 10994
    .local p0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 10995
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A01:Lcom/facebook/ads/redexgen/X/3k;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3k;->A0D(I)V

    .line 10996
    :cond_0
    return-void
.end method

.method private final A0B(II)V
    .locals 4

    .line 10997
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A0t(I)Landroid/view/View;

    move-result-object v0

    .line 10998
    .local p0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 10999
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A09(I)V

    .line 11000
    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/4M;->A0E(Landroid/view/View;I)V

    .line 11001
    return-void

    .line 11002
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x55

    const/16 v1, 0x2c

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4M;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    .line 11003
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0C(ILandroid/view/View;)V
    .locals 1

    .line 11004
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A01:Lcom/facebook/ads/redexgen/X/3k;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3k;->A0C(I)V

    .line 11005
    return-void
.end method

.method private final A0D(Landroid/view/View;)V
    .locals 1

    .line 11006
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A01:Lcom/facebook/ads/redexgen/X/3k;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3k;->A0F(Landroid/view/View;)V

    .line 11007
    return-void
.end method

.method private final A0E(Landroid/view/View;I)V
    .locals 1

    .line 11008
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4N;

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/4M;->A0F(Landroid/view/View;ILcom/facebook/ads/redexgen/X/4N;)V

    .line 11009
    return-void
.end method

.method private final A0F(Landroid/view/View;ILcom/facebook/ads/redexgen/X/4N;)V
    .locals 5

    .line 11010
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Eq;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4e;

    move-result-object v4

    .line 11011
    .local p0, "vh":Lcom/facebook/ads/redexgen/X/4e;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4e;->A0c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11012
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0t:Lcom/facebook/ads/redexgen/X/4m;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4m;->A09(Lcom/facebook/ads/redexgen/X/4e;)V

    .line 11013
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4M;->A01:Lcom/facebook/ads/redexgen/X/3k;

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4e;->A0c()Z

    move-result v0

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/3k;->A0H(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 11014
    return-void

    .line 11015
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0t:Lcom/facebook/ads/redexgen/X/4m;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const-string v1, "mtQ3Ck4zhf6OC1ISSa3eadAcnNcPftbe"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/4m;->A0A(Lcom/facebook/ads/redexgen/X/4e;)V

    goto :goto_0
.end method

.method private A0G(Landroid/view/View;IZ)V
    .locals 8

    .line 11016
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Eq;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4e;

    move-result-object v2

    .line 11017
    .local p0, "holder":Lcom/facebook/ads/redexgen/X/4e;
    if-nez p3, :cond_0

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4e;->A0c()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 11018
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0t:Lcom/facebook/ads/redexgen/X/4m;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4m;->A09(Lcom/facebook/ads/redexgen/X/4e;)V

    .line 11019
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/4N;

    .line 11020
    .local p1, "lp":Lcom/facebook/ads/redexgen/X/4N;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4e;->A0i()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4e;->A0d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11021
    :cond_1
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4e;->A0d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11022
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4e;->A0S()V

    .line 11023
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4M;->A01:Lcom/facebook/ads/redexgen/X/3k;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, p1, p2, v0, v4}, Lcom/facebook/ads/redexgen/X/3k;->A0H(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 11024
    :cond_2
    :goto_2
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/4N;->A02:Z

    if-eqz v0, :cond_3

    .line 11025
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4e;->A0H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 11026
    iput-boolean v4, v5, Lcom/facebook/ads/redexgen/X/4N;->A02:Z

    .line 11027
    :cond_3
    return-void

    .line 11028
    :cond_4
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4e;->A0O()V

    goto :goto_1

    .line 11029
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    sget-object v3, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v3, v0

    const/4 v0, 0x1

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v3, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const-string v1, "5ABI9jSeQ"

    const/4 v0, 0x7

    aput-object v1, v3, v0

    if-ne v7, v6, :cond_8

    .line 11030
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A01:Lcom/facebook/ads/redexgen/X/3k;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3k;->A07(Landroid/view/View;)I

    move-result v3

    .line 11031
    .local p2, "currentIndex":I
    const/4 v1, -0x1

    if-ne p2, v1, :cond_7

    .line 11032
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A01:Lcom/facebook/ads/redexgen/X/3k;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3k;->A05()I

    move-result p2

    .line 11033
    :cond_7
    if-eq v3, v1, :cond_a

    .line 11034
    if-eq v3, p2, :cond_2

    .line 11035
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A06:Lcom/facebook/ads/redexgen/X/4M;

    invoke-direct {v0, v3, p2}, Lcom/facebook/ads/redexgen/X/4M;->A0B(II)V

    goto :goto_2

    .line 11036
    .end local p2    # "currentIndex":I
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A01:Lcom/facebook/ads/redexgen/X/3k;

    invoke-virtual {v0, p1, p2, v4}, Lcom/facebook/ads/redexgen/X/3k;->A0I(Landroid/view/View;IZ)V

    .line 11037
    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/facebook/ads/redexgen/X/4N;->A01:Z

    .line 11038
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0F()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11039
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0C(Landroid/view/View;)V

    goto :goto_2

    .line 11040
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0t:Lcom/facebook/ads/redexgen/X/4m;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4m;->A0A(Lcom/facebook/ads/redexgen/X/4e;)V

    goto/16 :goto_0

    .line 11041
    .restart local p2    # "currentIndex":I
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x55

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4M;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    .line 11042
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Eq;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final A0H(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 11043
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/Eq;->A0p(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 11044
    return-void
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/4M;Lcom/facebook/ads/redexgen/X/4Z;)V
    .locals 0

    .line 11045
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A0M(Lcom/facebook/ads/redexgen/X/4Z;)V

    return-void
.end method

.method private A0J(Lcom/facebook/ads/redexgen/X/4U;ILandroid/view/View;)V
    .locals 2

    .line 11046
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/Eq;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4e;

    move-result-object v1

    .line 11047
    .local p0, "viewHolder":Lcom/facebook/ads/redexgen/X/4e;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4e;->A0h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11048
    return-void

    .line 11049
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4e;->A0b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4e;->A0c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/4A;

    .line 11050
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4A;->A0A()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11051
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/4M;->A0A(I)V

    .line 11052
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/4U;->A0b(Lcom/facebook/ads/redexgen/X/4e;)V

    .line 11053
    :goto_0
    return-void

    .line 11054
    :cond_1
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/4M;->A09(I)V

    .line 11055
    invoke-virtual {p1, p3}, Lcom/facebook/ads/redexgen/X/4U;->A0W(Landroid/view/View;)V

    .line 11056
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0t:Lcom/facebook/ads/redexgen/X/4m;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4m;->A0C(Lcom/facebook/ads/redexgen/X/4e;)V

    goto :goto_0
.end method

.method private final A0K(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5

    .line 11057
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    if-eqz v4, :cond_0

    if-nez p3, :cond_1

    .line 11058
    :cond_0
    return-void

    .line 11059
    :cond_1
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const-string v1, "A1LbQwkKC8kdEmdjm"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "mpAFCzQjd"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/Eq;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    .line 11060
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Eq;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    .line 11061
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Eq;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    .line 11062
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Eq;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11063
    :cond_2
    :goto_0
    invoke-virtual {p3, v3}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_4

    .line 11064
    sget-object v2, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const-string v1, "LKoEdNrfwYhRE769hHSL4lsoF7TmWWKx"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/4A;

    if-eqz v0, :cond_3

    .line 11065
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/4A;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4A;->A0D()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 11066
    :cond_3
    return-void

    .line 11067
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/4A;

    if-eqz v0, :cond_3

    goto :goto_1

    .line 11068
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A0L(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;Lcom/facebook/ads/redexgen/X/3Q;)V
    .locals 4

    .line 11069
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Eq;->canScrollVertically(I)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Eq;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11070
    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/3Q;->A0N(I)V

    .line 11071
    invoke-virtual {p3, v3}, Lcom/facebook/ads/redexgen/X/3Q;->A0R(Z)V

    .line 11072
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Eq;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Eq;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11073
    :cond_2
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/3Q;->A0N(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 11074
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const-string v1, "WKK7ZU1nOyoZ4isR3"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "S1xUaVTVF"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {p3, v3}, Lcom/facebook/ads/redexgen/X/3Q;->A0R(Z)V

    .line 11075
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4M;->A0r(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)I

    move-result v3

    .line 11076
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4M;->A0q(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)I

    move-result v2

    .line 11077
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4M;->A0P(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)Z

    move-result v1

    .line 11078
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4M;->A06(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)I

    move-result v0

    .line 11079
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3N;->A00(IIZI)Lcom/facebook/ads/redexgen/X/3N;

    move-result-object v0

    .line 11080
    .local p0, "collectionInfo":Lcom/facebook/ads/redexgen/X/3N;
    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/3Q;->A0P(Ljava/lang/Object;)V

    .line 11081
    return-void
.end method

.method private A0M(Lcom/facebook/ads/redexgen/X/4Z;)V
    .locals 1

    .line 11082
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    if-ne v0, p1, :cond_0

    .line 11083
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    .line 11084
    :cond_0
    return-void
.end method

.method private final A0N()Z
    .locals 1

    .line 11085
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0O(III)Z
    .locals 5

    .line 11086
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 11087
    .local p0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 11088
    .local p1, "specSize":I
    const/4 v2, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    .line 11089
    return v2

    .line 11090
    :cond_0
    const/high16 v1, -0x80000000

    const/4 v0, 0x1

    if-eq v4, v1, :cond_4

    if-eqz v4, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v4, v0, :cond_1

    .line 11091
    return v2

    .line 11092
    :cond_1
    if-ne v3, p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 11093
    :cond_3
    return v0

    .line 11094
    :cond_4
    if-lt v3, p0, :cond_5

    const/4 v2, 0x1

    :cond_5
    return v2
.end method

.method private final A0P(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)Z
    .locals 1

    .line 11095
    const/4 v0, 0x0

    return v0
.end method

.method private final A0Q(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;ILandroid/os/Bundle;)Z
    .locals 8

    .line 11096
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v7, 0x0

    if-nez v1, :cond_0

    .line 11097
    return v7

    .line 11098
    :cond_0
    const/4 v5, 0x0

    .local p2, "vScroll":I
    const/4 v4, 0x0

    .line 11099
    .local p3, "hScroll":I
    const/16 v0, 0x1000

    const/4 v6, 0x1

    if-eq p3, v0, :cond_4

    const/16 v0, 0x2000

    if-eq p3, v0, :cond_2

    .line 11100
    :cond_1
    :goto_0
    if-nez v5, :cond_6

    if-nez v4, :cond_6

    .line 11101
    return v7

    .line 11102
    :cond_2
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/Eq;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11103
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0X()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0g()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0d()I

    move-result v0

    sub-int/2addr v1, v0

    neg-int v5, v1

    .line 11104
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Eq;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11105
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0h()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0e()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0f()I

    move-result v0

    sub-int/2addr v1, v0

    neg-int v4, v1

    goto :goto_0

    .line 11106
    :cond_4
    invoke-virtual {v1, v6}, Lcom/facebook/ads/redexgen/X/Eq;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11107
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0X()I

    move-result v5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0g()I

    move-result v0

    sub-int/2addr v5, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0d()I

    move-result v0

    sub-int/2addr v5, v0

    .line 11108
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/Eq;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11109
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0h()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0e()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const-string v1, "6TTpYbQ6a4"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    sub-int/2addr v4, v3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0f()I

    move-result v0

    sub-int/2addr v4, v0

    goto :goto_0

    .line 11110
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, v4, v5}, Lcom/facebook/ads/redexgen/X/Eq;->scrollBy(II)V

    .line 11111
    return v6

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A0R(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 11112
    const/4 v0, 0x0

    return v0
.end method

.method private A0S(Lcom/facebook/ads/redexgen/X/Eq;II)Z
    .locals 8

    .line 11113
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Eq;->getFocusedChild()Landroid/view/View;

    move-result-object v7

    .line 11114
    .local p0, "focusedChild":Landroid/view/View;
    const/4 v6, 0x0

    if-nez v7, :cond_0

    .line 11115
    return v6

    .line 11116
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0e()I

    move-result v5

    .line 11117
    .local p2, "parentLeft":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0g()I

    move-result v4

    .line 11118
    .local p3, "parentTop":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0h()I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0f()I

    move-result v0

    sub-int/2addr v3, v0

    .line 11119
    .local v7, "parentRight":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0X()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0d()I

    move-result v0

    sub-int/2addr v2, v0

    .line 11120
    .local v6, "parentBottom":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0p:Landroid/graphics/Rect;

    .line 11121
    .local v5, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0, v7, v1}, Lcom/facebook/ads/redexgen/X/4M;->A0H(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 11122
    iget v0, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    if-ge v0, v3, :cond_1

    iget v0, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p2

    if-le v0, v5, :cond_1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p3

    if-ge v0, v2, :cond_1

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p3

    if-gt v0, v4, :cond_2

    .line 11123
    :cond_1
    return v6

    .line 11124
    :cond_2
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const-string v1, "D1nd79aIos3YYe4Hq7EzCaafqnQh2NEe"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A0T(Lcom/facebook/ads/redexgen/X/Eq;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11125
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0N()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Eq;->A1u()Z

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

.method private A0U(Landroid/view/View;Landroid/graphics/Rect;)[I
    .locals 14

    .line 11126
    const/4 v0, 0x2

    new-array v4, v0, [I

    .line 11127
    .local p1, "out":[I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0e()I

    move-result v13

    .line 11128
    .local v1, "parentLeft":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0g()I

    move-result v12

    .line 11129
    .local v1, "parentTop":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0h()I

    move-result v11

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0f()I

    move-result v0

    sub-int/2addr v11, v0

    .line 11130
    .local v0, "parentRight":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0X()I

    move-result v10

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0d()I

    move-result v0

    sub-int/2addr v10, v0

    .line 11131
    .local v4, "parentBottom":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v9

    move-object/from16 v1, p2

    iget v0, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    sub-int/2addr v9, v0

    .line 11132
    .local v13, "childLeft":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v8

    iget v0, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    sub-int/2addr v8, v0

    .line 11133
    .local v12, "childTop":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/2addr v7, v9

    .line 11134
    .local v11, "childRight":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v2, v8

    .line 11135
    .local v0, "childBottom":I
    sub-int v0, v9, v13

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 11136
    .local v11, "offScreenLeft":I
    sub-int v0, v8, v12

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 11137
    .local v0, "offScreenTop":I
    sub-int v0, v7, v11

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 11138
    .local v10, "offScreenRight":I
    sub-int/2addr v2, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 11139
    .local v9, "offScreenBottom":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0a()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 11140
    if-eqz v3, :cond_1

    .line 11141
    .restart local v0    # "offScreenTop":I
    :goto_0
    if-eqz v5, :cond_0

    .line 11142
    .local v10, "dy":I
    :goto_1
    const/4 v0, 0x0

    aput v3, v4, v0

    .line 11143
    const/4 v0, 0x1

    aput v5, v4, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_4

    .line 11144
    sget-object v2, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const-string v1, "97vXAXgJ0WxvI5IvBZpOR2Ky1DZNuVnu"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v4

    .line 11145
    :cond_0
    sub-int/2addr v8, v12

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1

    .line 11146
    :cond_1
    sub-int/2addr v7, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    .line 11147
    .end local v0    # "offScreenTop":I
    :cond_2
    if-eqz v6, :cond_3

    move v3, v6

    goto :goto_0

    .line 11148
    :cond_3
    sub-int/2addr v9, v13

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0V()I
    .locals 1

    .line 11149
    const/4 v0, -0x1

    return v0
.end method

.method public final A0W()I
    .locals 1

    .line 11150
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A01:Lcom/facebook/ads/redexgen/X/3k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3k;->A05()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0X()I
    .locals 1

    .line 11151
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A0A:I

    return v0
.end method

.method public final A0Y()I
    .locals 1

    .line 11152
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A0B:I

    return v0
.end method

.method public final A0Z()I
    .locals 1

    .line 11153
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getAdapter()Lcom/facebook/ads/redexgen/X/4A;

    move-result-object v0

    .line 11154
    .local p0, "a":Lcom/facebook/ads/redexgen/X/4A;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4A;->A0D()I

    move-result v0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 11155
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0a()I
    .locals 1

    .line 11156
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/31;->A01(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final A0b()I
    .locals 1

    .line 11157
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/31;->A02(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final A0c()I
    .locals 1

    .line 11158
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/31;->A03(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final A0d()I
    .locals 1

    .line 11159
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getPaddingBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0e()I
    .locals 1

    .line 11160
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0f()I
    .locals 1

    .line 11161
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0g()I
    .locals 1

    .line 11162
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0h()I
    .locals 1

    .line 11163
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A0C:I

    return v0
.end method

.method public final A0i()I
    .locals 1

    .line 11164
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A0D:I

    return v0
.end method

.method public final A0j(Landroid/view/View;)I
    .locals 2

    .line 11165
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A02(Landroid/view/View;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0k(Landroid/view/View;)I
    .locals 2

    .line 11166
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A03(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A0l(Landroid/view/View;)I
    .locals 3

    .line 11167
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4N;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/4N;->A03:Landroid/graphics/Rect;

    .line 11168
    .local p0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v0, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0m(Landroid/view/View;)I
    .locals 3

    .line 11169
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4N;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/4N;->A03:Landroid/graphics/Rect;

    .line 11170
    .local p0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v0, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iget v0, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0n(Landroid/view/View;)I
    .locals 2

    .line 11171
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A04(Landroid/view/View;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0o(Landroid/view/View;)I
    .locals 2

    .line 11172
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A05(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A0p(Landroid/view/View;)I
    .locals 1

    .line 11173
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4N;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4N;->A00()I

    move-result v0

    return v0
.end method

.method public A0q(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)I
    .locals 2

    .line 11174
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/4A;

    if-nez v0, :cond_1

    .line 11175
    :cond_0
    return v1

    .line 11176
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A24()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/4A;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4A;->A0D()I

    move-result v1

    :cond_2
    return v1
.end method

.method public A0r(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)I
    .locals 2

    .line 11177
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/4A;

    if-nez v0, :cond_1

    .line 11178
    :cond_0
    return v1

    .line 11179
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A25()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/4A;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4A;->A0D()I

    move-result v1

    :cond_2
    return v1
.end method

.method public final A0s()Landroid/view/View;
    .locals 6

    .line 11180
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 11181
    return-object v5

    .line 11182
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 11183
    .local p0, "focused":Landroid/view/View;
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const-string v1, "iiKud1wfkCloFGZ1U"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4M;->A01:Lcom/facebook/ads/redexgen/X/3k;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const-string v1, "7ET4ZuKdeEmot2qkcvXky1gJdqYIXUUX"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/3k;->A0K(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11184
    :cond_2
    :goto_0
    return-object v5

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const-string v1, "xPYIlKgRfeB9qWlMIQGlIgoODb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/3k;->A0K(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 11185
    :cond_4
    return-object v3
.end method

.method public final A0t(I)Landroid/view/View;
    .locals 1

    .line 11186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A01:Lcom/facebook/ads/redexgen/X/3k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3k;->A09(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0u(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    .line 11187
    const/4 v0, 0x0

    return-object v0
.end method

.method public A0v(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/facebook/ads/redexgen/X/4N;
    .locals 1

    .line 11188
    new-instance v0, Lcom/facebook/ads/redexgen/X/4N;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/4N;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public A0w(Landroid/view/ViewGroup$LayoutParams;)Lcom/facebook/ads/redexgen/X/4N;
    .locals 1

    .line 11189
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/4N;

    if-eqz v0, :cond_0

    .line 11190
    check-cast p1, Lcom/facebook/ads/redexgen/X/4N;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4N;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/4N;-><init>(Lcom/facebook/ads/redexgen/X/4N;)V

    return-object v0

    .line 11191
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 11192
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4N;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/4N;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 11193
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/4N;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/4N;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final A0x()V
    .locals 1

    .line 11194
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    if-eqz v0, :cond_0

    .line 11195
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A09()V

    .line 11196
    :cond_0
    return-void
.end method

.method public final A0y()V
    .locals 1

    .line 11197
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    if-eqz v0, :cond_0

    .line 11198
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->requestLayout()V

    .line 11199
    :cond_0
    return-void
.end method

.method public final A0z(I)V
    .locals 1

    .line 11200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    if-eqz v0, :cond_0

    .line 11201
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Eq;->A1T(I)V

    .line 11202
    :cond_0
    return-void
.end method

.method public final A10(I)V
    .locals 1

    .line 11203
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    if-eqz v0, :cond_0

    .line 11204
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Eq;->A1U(I)V

    .line 11205
    :cond_0
    return-void
.end method

.method public final A11(II)V
    .locals 2

    .line 11206
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A0C:I

    .line 11207
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A0D:I

    .line 11208
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A0D:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/facebook/ads/redexgen/X/Eq;->A1B:Z

    if-nez v0, :cond_0

    .line 11209
    iput v1, p0, Lcom/facebook/ads/redexgen/X/4M;->A0C:I

    .line 11210
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A0A:I

    .line 11211
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A0B:I

    .line 11212
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A0B:I

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/facebook/ads/redexgen/X/Eq;->A1B:Z

    if-nez v0, :cond_1

    .line 11213
    iput v1, p0, Lcom/facebook/ads/redexgen/X/4M;->A0A:I

    .line 11214
    :cond_1
    return-void
.end method

.method public final A12(II)V
    .locals 9

    .line 11215
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v8

    .line 11216
    .local p0, "count":I
    if-nez v8, :cond_0

    .line 11217
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Eq;->A1a(II)V

    .line 11218
    return-void

    .line 11219
    :cond_0
    const v6, 0x7fffffff

    .line 11220
    .local p1, "minX":I
    const v5, 0x7fffffff

    .line 11221
    .local p2, "minY":I
    const/high16 v4, -0x80000000

    .line 11222
    .local v8, "maxX":I
    const/high16 v3, -0x80000000

    .line 11223
    .local v0, "maxY":I
    const/4 v7, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v7, v8, :cond_5

    .line 11224
    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/4M;->A0t(I)Landroid/view/View;

    move-result-object v2

    .line 11225
    .local v5, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0p:Landroid/graphics/Rect;

    .line 11226
    .local v4, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0, v2, v1}, Lcom/facebook/ads/redexgen/X/4M;->A0H(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 11227
    iget v0, v1, Landroid/graphics/Rect;->left:I

    if-ge v0, v6, :cond_1

    .line 11228
    iget v6, v1, Landroid/graphics/Rect;->left:I

    .line 11229
    :cond_1
    iget v0, v1, Landroid/graphics/Rect;->right:I

    if-le v0, v4, :cond_2

    .line 11230
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 11231
    :cond_2
    iget v0, v1, Landroid/graphics/Rect;->top:I

    if-ge v0, v5, :cond_3

    .line 11232
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 11233
    :cond_3
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v3, :cond_4

    .line 11234
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 11235
    .end local v5    # "child":Landroid/view/View;
    .end local v4    # "bounds":Landroid/graphics/Rect;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 11236
    .end local v6    # "i":I
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0p:Landroid/graphics/Rect;

    invoke-virtual {v0, v6, v5, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    .line 11237
    sget-object v2, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const-string v1, "hT857kPIBtMq0qM94"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "qfhhOTku3"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0p:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/4M;->A15(Landroid/graphics/Rect;II)V

    .line 11238
    return-void

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A13(II)V
    .locals 1

    .line 11239
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-static {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Eq;->A0w(Lcom/facebook/ads/redexgen/X/Eq;II)V

    .line 11240
    return-void
.end method

.method public final A14(ILcom/facebook/ads/redexgen/X/4U;)V
    .locals 1

    .line 11241
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A0t(I)Landroid/view/View;

    move-result-object v0

    .line 11242
    .local p0, "view":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A0A(I)V

    .line 11243
    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/4U;->A0X(Landroid/view/View;)V

    .line 11244
    return-void
.end method

.method public A15(Landroid/graphics/Rect;II)V
    .locals 3

    .line 11245
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0e()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0f()I

    move-result v0

    add-int/2addr v1, v0

    .line 11246
    .local p0, "usedWidth":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0g()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0d()I

    move-result v0

    add-int/2addr v2, v0

    .line 11247
    .local p1, "usedHeight":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0c()I

    move-result v0

    invoke-static {p2, v1, v0}, Lcom/facebook/ads/redexgen/X/4M;->A00(III)I

    move-result v1

    .line 11248
    .local p2, "width":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0b()I

    move-result v0

    invoke-static {p3, v2, v0}, Lcom/facebook/ads/redexgen/X/4M;->A00(III)I

    move-result v0

    .line 11249
    .local p3, "height":I
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4M;->A13(II)V

    .line 11250
    return-void
.end method

.method public final A16(Landroid/view/View;)V
    .locals 1

    .line 11251
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4M;->A18(Landroid/view/View;I)V

    .line 11252
    return-void
.end method

.method public final A17(Landroid/view/View;)V
    .locals 1

    .line 11253
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4M;->A19(Landroid/view/View;I)V

    .line 11254
    return-void
.end method

.method public final A18(Landroid/view/View;I)V
    .locals 1

    .line 11255
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/4M;->A0G(Landroid/view/View;IZ)V

    .line 11256
    return-void
.end method

.method public final A19(Landroid/view/View;I)V
    .locals 1

    .line 11257
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/4M;->A0G(Landroid/view/View;IZ)V

    .line 11258
    return-void
.end method

.method public final A1A(Landroid/view/View;II)V
    .locals 7

    .line 11259
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/4N;

    .line 11260
    .local p0, "lp":Lcom/facebook/ads/redexgen/X/4N;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Eq;->A1E(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 11261
    .local p1, "insets":Landroid/graphics/Rect;
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v0, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    add-int/2addr p2, v1

    .line 11262
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    add-int/2addr p3, v1

    .line 11263
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0h()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0i()I

    move-result v3

    .line 11264
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0e()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0f()I

    move-result v0

    add-int/2addr v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/4N;->leftMargin:I

    add-int/2addr v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/4N;->rightMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, p2

    iget v1, v6, Lcom/facebook/ads/redexgen/X/4N;->width:I

    .line 11265
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A24()Z

    move-result v0

    .line 11266
    invoke-static {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4M;->A01(IIIIZ)I

    move-result v5

    .line 11267
    .local p2, "widthSpec":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0X()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0Y()I

    move-result v3

    .line 11268
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0g()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0d()I

    move-result v0

    add-int/2addr v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/4N;->topMargin:I

    add-int/2addr v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/4N;->bottomMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, p3

    iget v1, v6, Lcom/facebook/ads/redexgen/X/4N;->height:I

    .line 11269
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A25()Z

    move-result v0

    .line 11270
    invoke-static {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4M;->A01(IIIIZ)I

    move-result v1

    .line 11271
    .local p3, "heightSpec":I
    invoke-virtual {p0, p1, v5, v1, v6}, Lcom/facebook/ads/redexgen/X/4M;->A1a(Landroid/view/View;IILcom/facebook/ads/redexgen/X/4N;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11272
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 11273
    :cond_0
    return-void
.end method

.method public final A1B(Landroid/view/View;IIII)V
    .locals 5

    .line 11274
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/4N;

    .line 11275
    .local p0, "lp":Lcom/facebook/ads/redexgen/X/4N;
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/4N;->A03:Landroid/graphics/Rect;

    .line 11276
    .local p1, "insets":Landroid/graphics/Rect;
    iget v2, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p2

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4N;->leftMargin:I

    add-int/2addr v2, v0

    iget v1, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p3

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4N;->topMargin:I

    add-int/2addr v1, v0

    iget v0, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v0

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4N;->rightMargin:I

    sub-int/2addr p4, v0

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, v0

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4N;->bottomMargin:I

    sub-int/2addr p5, v0

    invoke-virtual {p1, v2, v1, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 11277
    return-void
.end method

.method public final A1C(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3Q;)V
    .locals 3

    .line 11278
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Eq;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4e;

    move-result-object v2

    .line 11279
    .local p0, "vh":Lcom/facebook/ads/redexgen/X/4e;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4e;->A0c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4M;->A01:Lcom/facebook/ads/redexgen/X/3k;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4e;->A0H:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3k;->A0K(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11280
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0r:Lcom/facebook/ads/redexgen/X/4U;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4b;

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/4M;->A1K(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;Landroid/view/View;Lcom/facebook/ads/redexgen/X/3Q;)V

    .line 11281
    :cond_0
    return-void
.end method

.method public final A1D(Landroid/view/View;Lcom/facebook/ads/redexgen/X/4U;)V
    .locals 0

    .line 11282
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A0D(Landroid/view/View;)V

    .line 11283
    invoke-virtual {p2, p1}, Lcom/facebook/ads/redexgen/X/4U;->A0X(Landroid/view/View;)V

    .line 11284
    return-void
.end method

.method public final A1E(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 7

    .line 11285
    if-eqz p2, :cond_0

    .line 11286
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4N;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/4N;->A03:Landroid/graphics/Rect;

    .line 11287
    .local p0, "insets":Landroid/graphics/Rect;
    iget v0, v5, Landroid/graphics/Rect;->left:I

    neg-int v4, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    neg-int v3, v0

    .line 11288
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v0, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    .line 11289
    invoke-virtual {p3, v4, v3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 11290
    .end local p0    # "insets":Landroid/graphics/Rect;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    if-eqz v0, :cond_2

    .line 11291
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 11292
    .local p0, "childMatrix":Landroid/graphics/Matrix;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0q:Landroid/graphics/RectF;

    .line 11294
    .local p1, "tempRectF":Landroid/graphics/RectF;
    invoke-virtual {v6, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 11295
    invoke-virtual {v1, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 11296
    iget v0, v6, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    .line 11297
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v5, v0

    iget v0, v6, Landroid/graphics/RectF;->top:F

    float-to-double v0, v0

    .line 11298
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v4, v0

    iget v3, v6, Landroid/graphics/RectF;->right:F

    sget-object v2, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 11299
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const-string v1, "WbBFuKAltYM"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    float-to-double v0, v3

    .line 11300
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v3, v0

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    float-to-double v0, v0

    .line 11301
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 11302
    invoke-virtual {p3, v5, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 11303
    .end local p0    # "childMatrix":Landroid/graphics/Matrix;
    .end local p1    # "tempRectF":Landroid/graphics/RectF;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 11304
    return-void
.end method

.method public final A1F(Lcom/facebook/ads/redexgen/X/3Q;)V
    .locals 2

    .line 11305
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0r:Lcom/facebook/ads/redexgen/X/4U;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4b;

    invoke-direct {p0, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A0L(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;Lcom/facebook/ads/redexgen/X/3Q;)V

    .line 11306
    return-void
.end method

.method public final A1G(Lcom/facebook/ads/redexgen/X/4U;)V
    .locals 6

    .line 11307
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4U;->A0E()I

    move-result v5

    .line 11308
    .local p0, "scrapCount":I
    add-int/lit8 v4, v5, -0x1

    .local p1, "i":I
    :goto_0
    if-ltz v4, :cond_3

    .line 11309
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/4U;->A0F(I)Landroid/view/View;

    move-result-object v3

    .line 11310
    .local v5, "scrap":Landroid/view/View;
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Eq;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4e;

    move-result-object v2

    .line 11311
    .local v4, "vh":Lcom/facebook/ads/redexgen/X/4e;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4e;->A0h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11312
    .end local v5    # "scrap":Landroid/view/View;
    .end local v4    # "vh":Lcom/facebook/ads/redexgen/X/4e;
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 11313
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/4e;->A0Z(Z)V

    .line 11314
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4e;->A0e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11315
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/Eq;->removeDetachedView(Landroid/view/View;Z)V

    .line 11316
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A05:Lcom/facebook/ads/redexgen/X/4I;

    if-eqz v0, :cond_2

    .line 11317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A05:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4I;->A0K(Lcom/facebook/ads/redexgen/X/4e;)V

    .line 11318
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4e;->A0Z(Z)V

    .line 11319
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/4U;->A0V(Landroid/view/View;)V

    goto :goto_1

    .line 11320
    .end local p1    # "i":I
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4U;->A0L()V

    .line 11321
    if-lez v5, :cond_4

    .line 11322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->invalidate()V

    .line 11323
    :cond_4
    return-void
.end method

.method public final A1H(Lcom/facebook/ads/redexgen/X/4U;)V
    .locals 2

    .line 11324
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v0

    .line 11325
    .local p0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local p1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 11326
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4M;->A0t(I)Landroid/view/View;

    move-result-object v0

    .line 11327
    .local v0, "v":Landroid/view/View;
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/4M;->A0J(Lcom/facebook/ads/redexgen/X/4U;ILandroid/view/View;)V

    .line 11328
    .end local v0    # "v":Landroid/view/View;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 11329
    .end local p1    # "i":I
    :cond_0
    return-void
.end method

.method public final A1I(Lcom/facebook/ads/redexgen/X/4U;)V
    .locals 2

    .line 11330
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .local p0, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 11331
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4M;->A0t(I)Landroid/view/View;

    move-result-object v0

    .line 11332
    .local p1, "view":Landroid/view/View;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4e;->A0h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11333
    invoke-virtual {p0, v1, p1}, Lcom/facebook/ads/redexgen/X/4M;->A14(ILcom/facebook/ads/redexgen/X/4U;)V

    .line 11334
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 11335
    .end local p0    # "i":I
    :cond_1
    return-void
.end method

.method public A1J(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;II)V
    .locals 1

    .line 11336
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/Eq;->A1a(II)V

    .line 11337
    return-void
.end method

.method public A1K(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;Landroid/view/View;Lcom/facebook/ads/redexgen/X/3Q;)V
    .locals 9

    .line 11338
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A25()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/4M;->A0p(Landroid/view/View;)I

    move-result v3

    .line 11339
    .local p2, "rowIndexGuess":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A24()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/4M;->A0p(Landroid/view/View;)I

    move-result v5

    .line 11340
    .local p4, "columnIndexGuess":I
    :goto_1
    const/4 v4, 0x1

    const/4 v6, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 11341
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 11342
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/4M;->A0J:[Ljava/lang/String;

    const-string v1, "h476R5jl"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 11343
    invoke-static/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/3O;->A00(IIIIZZ)Lcom/facebook/ads/redexgen/X/3O;

    move-result-object v0

    .line 11344
    .local p0, "itemInfo":Lcom/facebook/ads/redexgen/X/3O;
    invoke-virtual {p4, v0}, Lcom/facebook/ads/redexgen/X/3Q;->A0Q(Ljava/lang/Object;)V

    .line 11345
    return-void
.end method

.method public final A1L(Lcom/facebook/ads/redexgen/X/4Z;)V
    .locals 2

    .line 11346
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    .line 11347
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11348
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A09()V

    .line 11349
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4M;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    .line 11350
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4M;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v1, v0, p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0D(Lcom/facebook/ads/redexgen/X/Eq;Lcom/facebook/ads/redexgen/X/4M;)V

    .line 11351
    return-void
.end method

.method public A1M(Lcom/facebook/ads/redexgen/X/Eq;)V
    .locals 0

    .line 11352
    return-void
.end method

.method public final A1N(Lcom/facebook/ads/redexgen/X/Eq;)V
    .locals 1

    .line 11353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A07:Z

    .line 11354
    return-void
.end method

.method public final A1O(Lcom/facebook/ads/redexgen/X/Eq;)V
    .locals 3

    .line 11355
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Eq;->getWidth()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 11356
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Eq;->getHeight()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 11357
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4M;->A11(II)V

    .line 11358
    return-void
.end method

.method public final A1P(Lcom/facebook/ads/redexgen/X/Eq;)V
    .locals 1

    .line 11359
    if-nez p1, :cond_0

    .line 11360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    .line 11361
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A01:Lcom/facebook/ads/redexgen/X/3k;

    .line 11362
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A0C:I

    .line 11363
    iput v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A0A:I

    .line 11364
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A0D:I

    .line 11365
    iput v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A0B:I

    .line 11366
    return-void

    .line 11367
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    .line 11368
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Eq;->A01:Lcom/facebook/ads/redexgen/X/3k;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A01:Lcom/facebook/ads/redexgen/X/3k;

    .line 11369
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Eq;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A0C:I

    .line 11370
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Eq;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A0A:I

    goto :goto_0
.end method

.method public A1Q(Lcom/facebook/ads/redexgen/X/Eq;II)V
    .locals 0

    .line 11371
    return-void
.end method

.method public A1R(Lcom/facebook/ads/redexgen/X/Eq;II)V
    .locals 0

    .line 11372
    return-void
.end method

.method public A1S(Lcom/facebook/ads/redexgen/X/Eq;III)V
    .locals 0

    .line 11373
    return-void
.end method

.method public A1T(Lcom/facebook/ads/redexgen/X/Eq;IILjava/lang/Object;)V
    .locals 0

    .line 11374
    return-void
.end method

.method public final A1U(Lcom/facebook/ads/redexgen/X/Eq;Lcom/facebook/ads/redexgen/X/4U;)V
    .locals 1

    .line 11375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A07:Z

    .line 11376
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4M;->A20(Lcom/facebook/ads/redexgen/X/Eq;Lcom/facebook/ads/redexgen/X/4U;)V

    .line 11377
    return-void
.end method

.method public final A1V(Z)V
    .locals 0

    .line 11378
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/4M;->A06:Z

    .line 11379
    return-void
.end method

.method public final A1W()Z
    .locals 4

    .line 11380
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v3

    .line 11381
    .local p0, "childCount":I
    const/4 v2, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 11382
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4M;->A0t(I)Landroid/view/View;

    move-result-object v0

    .line 11383
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 11384
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v0, :cond_0

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v0, :cond_0

    .line 11385
    const/4 v0, 0x1

    return v0

    .line 11386
    .end local v2    # "child":Landroid/view/View;
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11387
    .end local v3    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final A1X()Z
    .locals 1

    .line 11388
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0B:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A1Y()Z
    .locals 1

    .line 11389
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A0E:Z

    return v0
.end method

.method public final A1Z(ILandroid/os/Bundle;)Z
    .locals 2

    .line 11390
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0r:Lcom/facebook/ads/redexgen/X/4U;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4b;

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/4M;->A0Q(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final A1a(Landroid/view/View;IILcom/facebook/ads/redexgen/X/4N;)Z
    .locals 2

    .line 11391
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A0F:Z

    if-eqz v0, :cond_0

    .line 11392
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v0, p4, Lcom/facebook/ads/redexgen/X/4N;->width:I

    invoke-static {v1, p2, v0}, Lcom/facebook/ads/redexgen/X/4M;->A0O(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11393
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v0, p4, Lcom/facebook/ads/redexgen/X/4N;->height:I

    invoke-static {v1, p3, v0}, Lcom/facebook/ads/redexgen/X/4M;->A0O(III)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 11394
    :goto_0
    return v0

    .line 11395
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A1b(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6

    .line 11396
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0r:Lcom/facebook/ads/redexgen/X/4U;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4b;

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/4M;->A0R(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public A1c(Lcom/facebook/ads/redexgen/X/4N;)Z
    .locals 1

    .line 11397
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A1d(Lcom/facebook/ads/redexgen/X/Eq;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    .line 11398
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v1, p1

    move v4, p4

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/4M;->A1e(Lcom/facebook/ads/redexgen/X/Eq;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result v0

    return v0
.end method

.method public final A1e(Lcom/facebook/ads/redexgen/X/Eq;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 5

    .line 11399
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/4M;->A0U(Landroid/view/View;Landroid/graphics/Rect;)[I

    move-result-object v0

    .line 11400
    .local p0, "scrollAmount":[I
    const/4 v4, 0x0

    aget v3, v0, v4

    .line 11401
    .local p2, "dx":I
    const/4 v2, 0x1

    aget v1, v0, v2

    .line 11402
    .local p4, "dy":I
    if-eqz p5, :cond_0

    invoke-direct {p0, p1, v3, v1}, Lcom/facebook/ads/redexgen/X/4M;->A0S(Lcom/facebook/ads/redexgen/X/Eq;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11403
    :cond_0
    if-nez v3, :cond_1

    if-eqz v1, :cond_3

    .line 11404
    :cond_1
    if-eqz p4, :cond_2

    .line 11405
    invoke-virtual {p1, v3, v1}, Lcom/facebook/ads/redexgen/X/Eq;->scrollBy(II)V

    .line 11406
    :goto_0
    return v2

    .line 11407
    :cond_2
    invoke-virtual {p1, v3, v1}, Lcom/facebook/ads/redexgen/X/Eq;->A1e(II)V

    goto :goto_0

    .line 11408
    :cond_3
    return v4
.end method

.method public final A1f(Lcom/facebook/ads/redexgen/X/Eq;Lcom/facebook/ads/redexgen/X/4b;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 11409
    invoke-direct {p0, p1, p3, p4}, Lcom/facebook/ads/redexgen/X/4M;->A0T(Lcom/facebook/ads/redexgen/X/Eq;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public final A1g(Lcom/facebook/ads/redexgen/X/Eq;Ljava/util/ArrayList;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Eq;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .line 11410
    .local p3, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public A1h(ILcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)I
    .locals 1

    .line 11411
    const/4 v0, 0x0

    return v0
.end method

.method public A1i(ILcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)I
    .locals 1

    .line 11412
    const/4 v0, 0x0

    return v0
.end method

.method public A1j(Lcom/facebook/ads/redexgen/X/4b;)I
    .locals 1

    .line 11413
    const/4 v0, 0x0

    return v0
.end method

.method public A1k(Lcom/facebook/ads/redexgen/X/4b;)I
    .locals 1

    .line 11414
    const/4 v0, 0x0

    return v0
.end method

.method public A1l(Lcom/facebook/ads/redexgen/X/4b;)I
    .locals 1

    .line 11415
    const/4 v0, 0x0

    return v0
.end method

.method public A1m(Lcom/facebook/ads/redexgen/X/4b;)I
    .locals 1

    .line 11416
    const/4 v0, 0x0

    return v0
.end method

.method public A1n(Lcom/facebook/ads/redexgen/X/4b;)I
    .locals 1

    .line 11417
    const/4 v0, 0x0

    return v0
.end method

.method public A1o(Lcom/facebook/ads/redexgen/X/4b;)I
    .locals 1

    .line 11418
    const/4 v0, 0x0

    return v0
.end method

.method public A1p()Landroid/os/Parcelable;
    .locals 1

    .line 11419
    const/4 v0, 0x0

    return-object v0
.end method

.method public A1q(I)Landroid/view/View;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 11420
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4M;->A0W()I

    move-result v4

    .line 11421
    .local p0, "childCount":I
    const/4 v3, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 11422
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4M;->A0t(I)Landroid/view/View;

    move-result-object v2

    .line 11423
    .local v4, "child":Landroid/view/View;
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Eq;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4e;

    move-result-object v1

    .line 11424
    .local v3, "vh":Lcom/facebook/ads/redexgen/X/4e;
    if-nez v1, :cond_1

    .line 11425
    .end local v4    # "child":Landroid/view/View;
    .end local v3    # "vh":Lcom/facebook/ads/redexgen/X/4e;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11426
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4e;->A0I()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4e;->A0h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4b;

    .line 11427
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4b;->A07()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4e;->A0c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11428
    :cond_2
    return-object v2

    .line 11429
    .end local p1    # "i":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public A1r(Landroid/view/View;ILcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 11430
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract A1s()Lcom/facebook/ads/redexgen/X/4N;
.end method

.method public A1t(I)V
    .locals 0

    .line 11431
    return-void
.end method

.method public A1u(IILcom/facebook/ads/redexgen/X/4b;Lcom/facebook/ads/redexgen/X/4K;)V
    .locals 0

    .line 11432
    return-void
.end method

.method public A1v(ILcom/facebook/ads/redexgen/X/4K;)V
    .locals 0

    .line 11433
    return-void
.end method

.method public A1w(Landroid/os/Parcelable;)V
    .locals 0

    .line 11434
    return-void
.end method

.method public A1x(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 11435
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0r:Lcom/facebook/ads/redexgen/X/4U;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4b;

    invoke-direct {p0, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A0K(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 11436
    return-void
.end method

.method public A1y(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4b;)V
    .locals 4

    .line 11437
    const/16 v2, 0x81

    const/16 v1, 0xc

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4M;->A07(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8d

    const/16 v1, 0x43

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4M;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11438
    return-void
.end method

.method public A1z(Lcom/facebook/ads/redexgen/X/4b;)V
    .locals 0

    .line 11439
    return-void
.end method

.method public A20(Lcom/facebook/ads/redexgen/X/Eq;Lcom/facebook/ads/redexgen/X/4U;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 11440
    return-void
.end method

.method public A21(Lcom/facebook/ads/redexgen/X/Eq;Lcom/facebook/ads/redexgen/X/4b;I)V
    .locals 4

    .line 11441
    const/16 v2, 0x81

    const/16 v1, 0xc

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4M;->A07(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xd0

    const/16 v1, 0x44

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4M;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11442
    return-void
.end method

.method public A22(Ljava/lang/String;)V
    .locals 1

    .line 11443
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    if-eqz v0, :cond_0

    .line 11444
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Eq;->A1p(Ljava/lang/String;)V

    .line 11445
    :cond_0
    return-void
.end method

.method public A23()Z
    .locals 1

    .line 11446
    const/4 v0, 0x0

    return v0
.end method

.method public A24()Z
    .locals 1

    .line 11447
    const/4 v0, 0x0

    return v0
.end method

.method public A25()Z
    .locals 1

    .line 11448
    const/4 v0, 0x0

    return v0
.end method

.method public A26()Z
    .locals 1

    .line 11449
    const/4 v0, 0x0

    return v0
.end method
