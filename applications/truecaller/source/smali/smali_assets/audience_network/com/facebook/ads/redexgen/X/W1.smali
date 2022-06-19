.class public final Lcom/facebook/ads/redexgen/X/W1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CP;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/D2;,
        Lcom/facebook/ads/redexgen/X/D1;,
        Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/FragmentedMp4Extractor$Flags;
    }
.end annotation


# static fields
.field public static A0X:[B

.field public static A0Y:[Ljava/lang/String;

.field public static final A0Z:Lcom/facebook/ads/redexgen/X/CS;

.field public static final A0a:I

.field public static final A0b:Lcom/facebook/ads/internal/exoplayer2/Format;

.field public static final A0c:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:J

.field public A08:J

.field public A09:J

.field public A0A:J

.field public A0B:J

.field public A0C:Lcom/facebook/ads/redexgen/X/CR;

.field public A0D:Lcom/facebook/ads/redexgen/X/D2;

.field public A0E:Lcom/facebook/ads/redexgen/X/IV;

.field public A0F:Z

.field public A0G:Z

.field public A0H:[Lcom/facebook/ads/redexgen/X/Cb;

.field public A0I:[Lcom/facebook/ads/redexgen/X/Cb;

.field public final A0J:I

.field public final A0K:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/D2;",
            ">;"
        }
    .end annotation
.end field

.field public final A0L:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0M:Lcom/facebook/ads/redexgen/X/Cb;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0N:Lcom/facebook/ads/redexgen/X/DB;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0O:Lcom/facebook/ads/redexgen/X/IV;

.field public final A0P:Lcom/facebook/ads/redexgen/X/IV;

.field public final A0Q:Lcom/facebook/ads/redexgen/X/IV;

.field public final A0R:Lcom/facebook/ads/redexgen/X/IV;

.field public final A0S:Lcom/facebook/ads/redexgen/X/Ih;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0T:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/W7;",
            ">;"
        }
    .end annotation
.end field

.field public final A0U:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/D1;",
            ">;"
        }
    .end annotation
.end field

.field public final A0V:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field public final A0W:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "bw2Pz5UYSLOOesGIJaWlA3GOzVLZPAg"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "gG3"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "yjdYoV9UEi8qMqqcqGKRK6SXbov0CwAj"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4kzePG"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "OMn6r0AgRGwk9BJzU"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "o"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "aMFqcwP4FMZJ2yTkvuTBoGT2vGZy4ax"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "h66GloOgbywQ1e6PB204dGM9vAJrPucq"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    .line 60968
    invoke-static {}, Lcom/facebook/ads/redexgen/X/W1;->A0D()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/W2;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/W2;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/W1;->A0Z:Lcom/facebook/ads/redexgen/X/CS;

    .line 60969
    const/16 v2, 0x2aa

    const/4 v1, 0x4

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Il;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/W1;->A0a:I

    .line 60970
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/W1;->A0c:[B

    .line 60971
    const/4 v3, 0x0

    const/16 v2, 0x298

    const/16 v1, 0x12

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A0A(III)Ljava/lang/String;

    move-result-object v2

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v3, v2, v0, v1}, Lcom/facebook/ads/internal/exoplayer2/Format;->A02(Ljava/lang/String;Ljava/lang/String;J)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/W1;->A0b:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 60972
    return-void

    nop

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 60973
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/W1;-><init>(I)V

    .line 60974
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 60975
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/W1;-><init>(ILcom/facebook/ads/redexgen/X/Ih;)V

    .line 60976
    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/Ih;)V
    .locals 1
    .param p2    # Lcom/facebook/ads/redexgen/X/Ih;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 60977
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/W1;-><init>(ILcom/facebook/ads/redexgen/X/Ih;Lcom/facebook/ads/redexgen/X/DB;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)V

    .line 60978
    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/Ih;Lcom/facebook/ads/redexgen/X/DB;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)V
    .locals 6
    .param p2    # Lcom/facebook/ads/redexgen/X/Ih;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/redexgen/X/DB;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 60979
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 60980
    move-object v0, p0

    move-object v2, p2

    move v1, p1

    move-object v4, p4

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/W1;-><init>(ILcom/facebook/ads/redexgen/X/Ih;Lcom/facebook/ads/redexgen/X/DB;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Ljava/util/List;)V

    .line 60981
    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/Ih;Lcom/facebook/ads/redexgen/X/DB;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Ljava/util/List;)V
    .locals 7
    .param p2    # Lcom/facebook/ads/redexgen/X/Ih;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/redexgen/X/DB;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/ads/redexgen/X/Ih;",
            "Lcom/facebook/ads/redexgen/X/DB;",
            "Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    .line 60982
    .local v5, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/Format;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move v1, p1

    move-object v3, p3

    move-object v5, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/W1;-><init>(ILcom/facebook/ads/redexgen/X/Ih;Lcom/facebook/ads/redexgen/X/DB;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Cb;)V

    .line 60983
    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/Ih;Lcom/facebook/ads/redexgen/X/DB;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Cb;)V
    .locals 3
    .param p2    # Lcom/facebook/ads/redexgen/X/Ih;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/redexgen/X/DB;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/ads/redexgen/X/Cb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/ads/redexgen/X/Ih;",
            "Lcom/facebook/ads/redexgen/X/DB;",
            "Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/exoplayer2/Format;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Cb;",
            ")V"
        }
    .end annotation

    .line 60984
    .local v0, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/Format;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60985
    if-eqz p3, :cond_0

    const/16 v0, 0x8

    :goto_0
    or-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0J:I

    .line 60986
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/W1;->A0S:Lcom/facebook/ads/redexgen/X/Ih;

    .line 60987
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/W1;->A0N:Lcom/facebook/ads/redexgen/X/DB;

    .line 60988
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/W1;->A0L:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    .line 60989
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0V:Ljava/util/List;

    .line 60990
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/W1;->A0M:Lcom/facebook/ads/redexgen/X/Cb;

    .line 60991
    const/16 v2, 0x10

    new-instance v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/IV;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0O:Lcom/facebook/ads/redexgen/X/IV;

    .line 60992
    sget-object v1, Lcom/facebook/ads/redexgen/X/IR;->A03:[B

    new-instance v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IV;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0R:Lcom/facebook/ads/redexgen/X/IV;

    .line 60993
    const/4 v1, 0x5

    new-instance v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IV;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0Q:Lcom/facebook/ads/redexgen/X/IV;

    .line 60994
    new-instance v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IV;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0P:Lcom/facebook/ads/redexgen/X/IV;

    .line 60995
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0W:[B

    .line 60996
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0T:Ljava/util/ArrayDeque;

    .line 60997
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0U:Ljava/util/ArrayDeque;

    .line 60998
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0K:Landroid/util/SparseArray;

    .line 60999
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A08:J

    .line 61000
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0A:J

    .line 61001
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0B:J

    .line 61002
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W1;->A0B()V

    .line 61003
    return-void

    .line 61004
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/D2;IJILcom/facebook/ads/redexgen/X/IV;I)I
    .locals 28

    move-wide/from16 v0, p2

    move/from16 v5, p6

    .line 61005
    const/16 v2, 0x8

    move-object/from16 p6, p5

    move-object/from16 v3, p6

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 61006
    move-object/from16 v2, p6

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v2

    .line 61007
    .local p1, "fullAtom":I
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Cq;->A00(I)I

    move-result v8

    .line 61008
    .local v3, "atomFlags":I
    move-object/from16 v2, p0

    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/D2;->A05:Lcom/facebook/ads/redexgen/X/DB;

    .line 61009
    .local p4, "track":Lcom/facebook/ads/redexgen/X/DB;
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/redexgen/X/DD;

    .line 61010
    .local p6, "fragment":Lcom/facebook/ads/redexgen/X/DD;
    iget-object v7, v4, Lcom/facebook/ads/redexgen/X/DD;->A07:Lcom/facebook/ads/redexgen/X/Cw;

    .line 61011
    .local v5, "defaultSampleValues":Lcom/facebook/ads/redexgen/X/Cw;
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/DD;->A0E:[I

    move-object/from16 v2, p6

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IV;->A0H()I

    move-result v2

    aput v2, v3, p1

    .line 61012
    iget-object v9, v4, Lcom/facebook/ads/redexgen/X/DD;->A0G:[J

    iget-wide v2, v4, Lcom/facebook/ads/redexgen/X/DD;->A05:J

    aput-wide v2, v9, p1

    .line 61013
    and-int/lit8 v2, v8, 0x1

    if-eqz v2, :cond_0

    .line 61014
    iget-object v11, v4, Lcom/facebook/ads/redexgen/X/DD;->A0G:[J

    aget-wide v9, v11, p1

    move-object/from16 v2, p6

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v9, v2

    aput-wide v9, v11, p1

    .line 61015
    :cond_0
    and-int/lit8 v11, v8, 0x4

    const/4 v3, 0x1

    sget-object v9, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v2, 0x15

    if-eq v9, v2, :cond_d

    sget-object v10, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v9, "8XvOch"

    const/4 v2, 0x3

    aput-object v9, v10, v2

    if-eqz v11, :cond_a

    const/16 v27, 0x1

    .line 61016
    .local v2, "firstSampleFlagsPresent":Z
    :goto_0
    iget v2, v7, Lcom/facebook/ads/redexgen/X/Cw;->A01:I

    move/from16 v26, v2

    .line 61017
    .local v2, "firstSampleFlags":I
    if-eqz v27, :cond_1

    .line 61018
    move-object/from16 v2, p6

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IV;->A0H()I

    move-result v26

    .line 61019
    :cond_1
    and-int/lit16 v2, v8, 0x100

    if-eqz v2, :cond_9

    const/16 v25, 0x1

    .line 61020
    .local v8, "sampleDurationsPresent":Z
    :goto_1
    and-int/lit16 v2, v8, 0x200

    if-eqz v2, :cond_8

    const/16 v24, 0x1

    .line 61021
    .local v6, "sampleSizesPresent":Z
    :goto_2
    and-int/lit16 v11, v8, 0x400

    sget-object v10, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v9, v10, v2

    const/4 v2, 0x4

    aget-object v2, v10, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v9, v2, :cond_b

    sget-object v10, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v9, "V"

    const/4 v2, 0x5

    aput-object v9, v10, v2

    if-eqz v11, :cond_7

    const/16 v23, 0x1

    .line 61022
    .local v4, "sampleFlagsPresent":Z
    :goto_3
    and-int/lit16 v10, v8, 0x800

    sget-object v9, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v8, v9, v2

    const/4 v2, 0x4

    aget-object v2, v9, v2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v8, v2, :cond_5

    sget-object v9, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v8, "zasX3ZRNe0snbS49DsjMO0V1ZwarOc1g"

    const/4 v2, 0x7

    aput-object v8, v9, v2

    if-eqz v10, :cond_6

    :goto_4
    const/16 v22, 0x1

    .line 61023
    .local v7, "sampleCompositionTimeOffsetsPresent":Z
    :goto_5
    const-wide/16 v20, 0x0

    .line 61024
    .local v3, "edtsOffset":J
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/DB;->A08:[J

    if-eqz v2, :cond_2

    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/DB;->A08:[J

    array-length v2, v2

    if-ne v2, v3, :cond_2

    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/DB;->A08:[J

    const/4 v3, 0x0

    aget-wide v10, v2, v3

    const-wide/16 v8, 0x0

    cmp-long v2, v10, v8

    if-nez v2, :cond_2

    .line 61025
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/DB;->A09:[J

    aget-wide v8, v2, v3

    const-wide/16 v10, 0x3e8

    .end local v2    # "firstSampleFlags":I
    .local v2, "firstSampleFlags":I
    iget-wide v12, v6, Lcom/facebook/ads/redexgen/X/DB;->A06:J

    invoke-static/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/Il;->A0F(JJJ)J

    move-result-wide v20

    .line 61026
    .end local v2    # "firstSampleFlags":I
    .restart local v2    # "firstSampleFlags":I
    :cond_2
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/DD;->A0D:[I

    move-object/from16 v19, v2

    .line 61027
    .local p6, "sampleSizeTable":[I
    iget-object v11, v4, Lcom/facebook/ads/redexgen/X/DD;->A0C:[I

    .line 61028
    .local v2, "sampleCompositionTimeOffsetTable":[I
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/DD;->A0F:[J

    move-object/from16 v18, v2

    .line 61029
    .local v2, "sampleDecodingTimeTable":[J
    iget-object v14, v4, Lcom/facebook/ads/redexgen/X/DD;->A0I:[Z

    .line 61030
    .local v2, "sampleIsSyncFrameTable":[Z
    .end local p1    # "fullAtom":I
    .local v19, "fullAtom":I
    iget v3, v6, Lcom/facebook/ads/redexgen/X/DB;->A03:I

    const/4 v2, 0x2

    if-ne v3, v2, :cond_4

    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_4

    const/16 v17, 0x1

    .line 61031
    .local p1, "workaroundEveryVideoFrameIsSyncFrame":Z
    :goto_6
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/DD;->A0E:[I

    aget v2, v2, p1

    add-int v10, v5, v2

    .line 61032
    .local v0, "trackRunEnd":I
    .end local v2    # "sampleIsSyncFrameTable":[Z
    .end local p1    # "workaroundEveryVideoFrameIsSyncFrame":Z
    .local v2, "sampleIsSyncFrameTable":[Z
    .local v11, "workaroundEveryVideoFrameIsSyncFrame":Z
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/DB;->A06:J

    .line 61033
    .local v2, "timescale":J
    if-lez p1, :cond_3

    .end local v3    # "edtsOffset":J
    .end local p4    # "track":Lcom/facebook/ads/redexgen/X/DB;
    .local v9, "atomFlags":I
    .local v23, "track":Lcom/facebook/ads/redexgen/X/DB;
    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/DD;->A06:J

    .line 61034
    .local v3, "cumulativeTime":J
    :cond_3
    sget-object v8, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v8, v8, v6

    const/16 v6, 0x12

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v6, 0x4b

    if-eq v8, v6, :cond_c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61035
    :cond_4
    const/16 v17, 0x0

    goto :goto_6

    .line 61036
    :cond_5
    if-eqz v10, :cond_6

    goto :goto_4

    .line 61037
    :cond_6
    const/16 v22, 0x0

    goto :goto_5

    .line 61038
    :cond_7
    const/16 v23, 0x0

    goto/16 :goto_3

    .line 61039
    :cond_8
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 61040
    :cond_9
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 61041
    :cond_a
    const/16 v27, 0x0

    goto/16 :goto_0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_c
    sget-object v9, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v8, "0M8"

    const/4 v6, 0x1

    aput-object v8, v9, v6

    .line 61042
    .local v3, "i":I
    .local v9, "cumulativeTime":J
    :goto_7
    if-ge v5, v10, :cond_17

    .line 61043
    if-eqz v25, :cond_16

    move-object/from16 v6, p6

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IV;->A0H()I

    move-result v13

    .line 61044
    .local p4, "sampleDuration":I
    :goto_8
    if-eqz v24, :cond_14

    move-object/from16 v6, p6

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IV;->A0H()I

    move-result v12

    .line 61045
    .local v8, "sampleSize":I
    :goto_9
    if-nez v5, :cond_12

    if-eqz v27, :cond_12

    .line 61046
    move/from16 v6, v26

    .line 61047
    .local v2, "sampleFlags":I
    :goto_a
    if-eqz v22, :cond_11

    .line 61048
    .end local v5    # "defaultSampleValues":Lcom/facebook/ads/redexgen/X/Cw;
    .local v2, "defaultSampleValues":Lcom/facebook/ads/redexgen/X/Cw;
    move-object/from16 v8, p6

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v8

    .line 61049
    .local v5, "sampleOffset":I
    .end local v6    # "sampleSizesPresent":Z
    .end local v4    # "sampleFlagsPresent":Z
    .local v10, "sampleSizesPresent":Z
    .local v9, "sampleFlagsPresent":Z
    int-to-long v8, v8

    const-wide/16 v15, 0x3e8

    mul-long/2addr v8, v15

    div-long/2addr v8, v2

    long-to-int v15, v8

    aput v15, v11, v5

    .line 61050
    .end local v5    # "sampleOffset":I
    :goto_b
    const-wide/16 p2, 0x3e8

    .line 61051
    move-wide/from16 p0, v0

    move-wide/from16 p4, v2

    invoke-static/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Il;->A0F(JJJ)J

    move-result-wide v8

    sub-long v8, v8, v20

    aput-wide v8, v18, v5

    sget-object v9, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v8, v9, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v8, 0x1

    if-eq v9, v8, :cond_e

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61052
    :cond_e
    sget-object v15, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v9, "r"

    const/4 v8, 0x5

    aput-object v9, v15, v8

    aput v12, v19, v5

    .line 61053
    shr-int/lit8 v6, v6, 0x10

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_10

    if-eqz v17, :cond_f

    if-nez v5, :cond_10

    :cond_f
    const/4 v6, 0x1

    :goto_c
    aput-boolean v6, v14, v5

    .line 61054
    int-to-long v8, v13

    .end local v9    # "sampleFlagsPresent":Z
    .local v2, "cumulativeTime":J
    .local v2, "timescale":J
    add-long/2addr v0, v8

    .line 61055
    .end local v2    # "timescale":J
    .end local p4    # "sampleDuration":I
    .end local v2
    .end local v8    # "sampleSize":I
    .restart local v9    # "sampleFlagsPresent":Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 61056
    :cond_10
    const/4 v6, 0x0

    goto :goto_c

    .line 61057
    .end local v2
    .end local v10    # "sampleSizesPresent":Z
    .end local v9    # "sampleFlagsPresent":Z
    .local v5, "defaultSampleValues":Lcom/facebook/ads/redexgen/X/Cw;
    .restart local v6    # "sampleSizesPresent":Z
    .restart local v4    # "sampleFlagsPresent":Z
    .end local v5    # "defaultSampleValues":Lcom/facebook/ads/redexgen/X/Cw;
    .end local v6    # "sampleSizesPresent":Z
    .end local v4    # "sampleFlagsPresent":Z
    .restart local v2    # "timescale":J
    .restart local v10    # "sampleSizesPresent":Z
    .restart local v9    # "sampleFlagsPresent":Z
    :cond_11
    const/4 v8, 0x0

    aput v8, v11, v5

    goto :goto_b

    .line 61058
    :cond_12
    if-eqz v23, :cond_13

    move-object/from16 v6, p6

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v6

    goto :goto_a

    .end local v2    # "timescale":J
    .local v9, "firstSampleFlagsPresent":Z
    :cond_13
    iget v6, v7, Lcom/facebook/ads/redexgen/X/Cw;->A01:I

    goto :goto_a

    .line 61059
    .end local v8
    .local v2, "sampleDurationsPresent":Z
    :cond_14
    iget v12, v7, Lcom/facebook/ads/redexgen/X/Cw;->A03:I

    sget-object v8, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v8, v8, v6

    const/16 v6, 0x12

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v6, 0x4b

    if-eq v8, v6, :cond_15

    sget-object v9, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v8, "sKwSwUd4PCPXhg8k3ZAVhQXOLBVrWjfV"

    const/4 v6, 0x7

    aput-object v8, v9, v6

    goto :goto_9

    :cond_15
    sget-object v9, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v8, "6"

    const/4 v6, 0x5

    aput-object v8, v9, v6

    goto/16 :goto_9

    .line 61060
    :cond_16
    iget v13, v7, Lcom/facebook/ads/redexgen/X/Cw;->A00:I

    goto/16 :goto_8

    .line 61061
    .end local v2    # "sampleDurationsPresent":Z
    .end local v2
    .end local v9    # "firstSampleFlagsPresent":Z
    .end local v2
    .end local v10    # "sampleSizesPresent":Z
    .end local v9
    .local v2, "timescale":J
    .restart local v5    # "defaultSampleValues":Lcom/facebook/ads/redexgen/X/Cw;
    .local v2, "firstSampleFlagsPresent":Z
    .local v8, "sampleDurationsPresent":Z
    .restart local v6    # "sampleSizesPresent":Z
    .restart local v4    # "sampleFlagsPresent":Z
    .end local v3    # "i":I
    .end local v9
    .local v2, "cumulativeTime":J
    .restart local v2    # "cumulativeTime":J
    :cond_17
    iput-wide v0, v4, Lcom/facebook/ads/redexgen/X/DD;->A06:J

    .line 61062
    return v10
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/IV;)J
    .locals 1

    .line 61063
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 61064
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v0

    .line 61065
    .local p0, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cq;->A01(I)I

    move-result v0

    .line 61066
    .local v0, "version":I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A0M()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A0N()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/IV;)J
    .locals 2

    .line 61067
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 61068
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v0

    .line 61069
    .local p0, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cq;->A01(I)I

    move-result v1

    .line 61070
    .local v0, "version":I
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A0N()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A0M()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/IV;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/IV;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/ads/redexgen/X/Cw;",
            ">;"
        }
    .end annotation

    .line 61071
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 61072
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v1

    .line 61073
    .local p0, "trackId":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A0H()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    .line 61074
    .local v0, "defaultSampleDescriptionIndex":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A0H()I

    move-result v4

    .line 61075
    .local v1, "defaultSampleDuration":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A0H()I

    move-result v3

    .line 61076
    .local v0, "defaultSampleSize":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v2

    .line 61077
    .local v5, "defaultSampleFlags":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cw;

    invoke-direct {v0, v5, v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Cw;-><init>(IIII)V

    .line 61078
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/IV;J)Landroid/util/Pair;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/IV;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lcom/facebook/ads/redexgen/X/WS;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation

    .line 61079
    const/16 v0, 0x8

    move-object/from16 v6, p0

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 61080
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v0

    .line 61081
    .local p1, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cq;->A01(I)I

    move-result v1

    .line 61082
    .local v2, "version":I
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    .line 61083
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IV;->A0M()J

    move-result-wide v19

    .line 61084
    .local p1, "timescale":J
    .local v0, "offset":J
    if-nez v1, :cond_0

    .line 61085
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IV;->A0M()J

    move-result-wide v15

    .line 61086
    .local v1, "earliestPresentationTime":J
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IV;->A0M()J

    move-result-wide v0

    add-long p1, p1, v0

    .line 61087
    .end local v0    # "offset":J
    .end local v1    # "earliestPresentationTime":J
    .local v15, "earliestPresentationTime":J
    .local v0, "offset":J
    :goto_0
    const-wide/32 v17, 0xf4240

    .line 61088
    invoke-static/range {v15 .. v20}, Lcom/facebook/ads/redexgen/X/Il;->A0F(JJJ)J

    move-result-wide v13

    .line 61089
    .local p1, "earliestPresentationTimeUs":J
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    .line 61090
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IV;->A0I()I

    move-result v5

    .line 61091
    .local v19, "referenceCount":I
    new-array v4, v5, [I

    .line 61092
    .local v9, "sizes":[I
    new-array v8, v5, [J

    .line 61093
    .local v1, "offsets":[J
    new-array v7, v5, [J

    .line 61094
    .local v0, "durationsUs":[J
    new-array v3, v5, [J

    .line 61095
    .local v0, "timesUs":[J
    .local p1, "time":J
    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4b

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61096
    .end local v1    # "offsets":[J
    :cond_0
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IV;->A0N()J

    move-result-wide v15

    .line 61097
    .restart local v1    # "offsets":[J
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IV;->A0N()J

    move-result-wide v0

    add-long p1, p1, v0

    goto :goto_0

    .line 61098
    .local v15, "timeUs":J
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "s"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v2, 0x0

    move-wide v11, v13

    .local v0, "i":I
    .local p1, "offset":J
    .local v15, "time":J
    .local v17, "timeUs":J
    :goto_1
    if-ge v2, v5, :cond_4

    .line 61099
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v1

    .line 61100
    .local v15, "firstInt":I
    const/high16 v0, -0x80000000

    and-int/2addr v0, v1

    .line 61101
    .local v15, "type":I
    if-nez v0, :cond_3

    .line 61102
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IV;->A0M()J

    move-result-wide v9

    .line 61103
    .local p5, "referenceDuration":J
    const v0, 0x7fffffff

    and-int/2addr v0, v1

    aput v0, v4, v2

    .line 61104
    aput-wide p1, v8, v2

    .line 61105
    aput-wide v11, v3, v2

    .line 61106
    add-long/2addr v15, v9

    .line 61107
    const-wide/32 v17, 0xf4240

    .end local v0    # "i":I
    .local v6, "timesUs":[J
    .end local v1    # "offsets":[J
    .end local v0
    .local p1, "offsets":[J
    .local v2, "durationsUs":[J
    .local p9, "fullAtom":I
    .local v0, "version":I
    .end local v19    # "referenceCount":I
    .end local v9    # "sizes":[I
    .local v15, "sizes":[I
    .local p7, "referenceCount":I
    .local v5, "earliestPresentationTime":J
    invoke-static/range {v15 .. v20}, Lcom/facebook/ads/redexgen/X/Il;->A0F(JJJ)J

    move-result-wide v11

    .line 61108
    aget-wide v9, v3, v2

    sub-long v0, v11, v9

    aput-wide v0, v7, v2

    .line 61109
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    .line 61110
    aget v9, v4, v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_2

    sget-object v10, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "dhc"

    const/4 v0, 0x1

    aput-object v1, v10, v0

    int-to-long v0, v9

    add-long p1, p1, v0

    .line 61111
    .end local v15    # "sizes":[I
    .end local v15
    .end local p5
    add-int/lit8 v2, v2, 0x0

    goto :goto_1

    :cond_2
    sget-object v10, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "h"

    const/4 v0, 0x5

    aput-object v1, v10, v0

    int-to-long v0, v9

    add-long p1, p1, v0

    .end local v15
    .end local v15
    .end local p5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 61112
    .end local v6    # "timesUs":[J
    .end local p7
    .end local p9
    .end local v0    # "version":I
    .end local v5    # "earliestPresentationTime":J
    .local p1, "fullAtom":I
    .local v2, "version":I
    .restart local v0    # "version":I
    .restart local v1    # "offsets":[J
    .restart local v0    # "version":I
    .restart local v19    # "referenceCount":I
    .restart local v9    # "sizes":[I
    .local v15, "earliestPresentationTime":J
    .restart local v15    # "earliestPresentationTime":J
    .restart local v15    # "earliestPresentationTime":J
    .end local v0    # "version":I
    .restart local v6    # "timesUs":[J
    :cond_3
    const/16 v2, 0x245

    const/16 v1, 0x1c

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61113
    .end local v6    # "timesUs":[J
    .end local v15    # "earliestPresentationTime":J
    .end local v15
    .restart local v0    # "version":I
    .end local v0    # "version":I
    .end local v1    # "offsets":[J
    .end local v0
    .end local v9    # "sizes":[I
    .end local v0
    .local p1, "offsets":[J
    .local v2, "durationsUs":[J
    .restart local v6    # "timesUs":[J
    .local v15, "sizes":[I
    .restart local p9
    .restart local v0    # "version":I
    .restart local v5    # "earliestPresentationTime":J
    :cond_4
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/WS;

    invoke-direct {v0, v4, v8, v7, v3}, Lcom/facebook/ads/redexgen/X/WS;-><init>([I[J[J[J)V

    .line 61114
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static A05(Ljava/util/List;)Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/W6;",
            ">;)",
            "Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;"
        }
    .end annotation

    .line 61115
    .local v4, "leafChildren":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/Atom$LeafAtom;>;"
    const/4 v4, 0x0

    .line 61116
    .local p0, "schemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    .line 61117
    .local v4, "leafChildrenSize":I
    const/4 v5, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v5, v6, :cond_3

    .line 61118
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/W6;

    .line 61119
    .local v5, "child":Lcom/facebook/ads/redexgen/X/W6;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Cq;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0r:I

    if-ne v1, v0, :cond_1

    .line 61120
    if-nez v4, :cond_0

    .line 61121
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 61122
    :cond_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    .line 61123
    .local v2, "psshData":[B
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/D8;->A03([B)Ljava/util/UUID;

    move-result-object v3

    .line 61124
    .local v2, "uuid":Ljava/util/UUID;
    if-nez v3, :cond_2

    .line 61125
    const/16 v2, 0x80

    const/16 v1, 0x16

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A0A(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1b5

    const/16 v1, 0x2a

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61126
    .end local v5    # "child":Lcom/facebook/ads/redexgen/X/W6;
    .end local v2    # "uuid":Ljava/util/UUID;
    .end local v2
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 61127
    :cond_2
    const/16 v2, 0x2b8

    const/16 v1, 0x9

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-direct {v0, v3, v1, v7}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 61128
    .end local v6    # "i":I
    :cond_3
    if-nez v4, :cond_4

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_4
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    invoke-direct {v0, v4}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;-><init>(Ljava/util/List;)V

    goto :goto_2
.end method

.method private A06(Landroid/util/SparseArray;I)Lcom/facebook/ads/redexgen/X/Cw;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Cw;",
            ">;I)",
            "Lcom/facebook/ads/redexgen/X/Cw;"
        }
    .end annotation

    .line 61129
    .local v1, "defaultSampleValuesArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/DefaultSampleValues;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    .line 61130
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "nw8rk4"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Cw;

    return-object v0

    .line 61131
    :cond_1
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Cw;

    return-object v0
.end method

.method public static A07(Landroid/util/SparseArray;)Lcom/facebook/ads/redexgen/X/D2;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/D2;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/D2;"
        }
    .end annotation

    .line 61132
    .local v0, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    const/4 v8, 0x0

    .line 61133
    .local p0, "nextTrackBundle":Lcom/facebook/ads/redexgen/X/D2;
    const-wide v6, 0x7fffffffffffffffL

    .line 61134
    .local v8, "nextTrackRunOffset":J
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 61135
    .local v3, "trackBundlesSize":I
    const/4 v4, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 61136
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/D2;

    .line 61137
    .local v4, "trackBundle":Lcom/facebook/ads/redexgen/X/D2;
    iget v1, v3, Lcom/facebook/ads/redexgen/X/D2;->A02:I

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/redexgen/X/DD;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/DD;->A02:I

    if-ne v1, v0, :cond_1

    .line 61138
    .end local v4    # "trackBundle":Lcom/facebook/ads/redexgen/X/D2;
    .end local v3    # "trackBundlesSize":I
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 61139
    :cond_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/redexgen/X/DD;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DD;->A0G:[J

    iget v0, v3, Lcom/facebook/ads/redexgen/X/D2;->A02:I

    aget-wide v1, v1, v0

    .line 61140
    .local v3, "trunOffset":J
    cmp-long v0, v1, v6

    if-gez v0, :cond_0

    .line 61141
    move-object v8, v3

    .line 61142
    move-wide v6, v1

    goto :goto_1

    .line 61143
    .end local v5    # "i":I
    :cond_2
    return-object v8
.end method

.method public static A08(Landroid/util/SparseArray;I)Lcom/facebook/ads/redexgen/X/D2;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/D2;",
            ">;I)",
            "Lcom/facebook/ads/redexgen/X/D2;"
        }
    .end annotation

    .line 61144
    .local v1, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 61145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/D2;

    return-object v0

    .line 61146
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/ads/redexgen/X/D2;

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_1

    sget-object p0, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "fYJ"

    const/4 v0, 0x1

    aput-object v1, p0, v0

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/IV;Landroid/util/SparseArray;)Lcom/facebook/ads/redexgen/X/D2;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/IV;",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/D2;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/D2;"
        }
    .end annotation

    .line 61147
    .local v0, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 61148
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v0

    .line 61149
    .local p0, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cq;->A00(I)I

    move-result v7

    .line 61150
    .local p1, "atomFlags":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v0

    .line 61151
    .local v0, "trackId":I
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A08(Landroid/util/SparseArray;I)Lcom/facebook/ads/redexgen/X/D2;

    move-result-object v6

    .line 61152
    .local v0, "trackBundle":Lcom/facebook/ads/redexgen/X/D2;
    if-nez v6, :cond_0

    .line 61153
    const/4 v0, 0x0

    return-object v0

    .line 61154
    :cond_0
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_1

    .line 61155
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A0N()J

    move-result-wide v1

    .line 61156
    .local v7, "baseDataPosition":J
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/redexgen/X/DD;

    iput-wide v1, v0, Lcom/facebook/ads/redexgen/X/DD;->A05:J

    .line 61157
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/redexgen/X/DD;

    iput-wide v1, v0, Lcom/facebook/ads/redexgen/X/DD;->A04:J

    .line 61158
    .end local v7    # "baseDataPosition":J
    :cond_1
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/D2;->A04:Lcom/facebook/ads/redexgen/X/Cw;

    .line 61159
    .local v7, "defaultSampleValues":Lcom/facebook/ads/redexgen/X/Cw;
    and-int/lit8 v0, v7, 0x2

    if-eqz v0, :cond_5

    .line 61160
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A0H()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    .line 61161
    .local v0, "defaultSampleDescriptionIndex":I
    :goto_0
    and-int/lit8 v0, v7, 0x8

    if-eqz v0, :cond_4

    .line 61162
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A0H()I

    move-result v4

    .line 61163
    .local v6, "defaultSampleDuration":I
    :goto_1
    and-int/lit8 v0, v7, 0x10

    if-eqz v0, :cond_3

    .line 61164
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A0H()I

    move-result v3

    .line 61165
    .local v0, "defaultSampleSize":I
    :goto_2
    and-int/lit8 v0, v7, 0x20

    if-eqz v0, :cond_2

    .line 61166
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A0H()I

    move-result v2

    .line 61167
    .local v0, "defaultSampleFlags":I
    :goto_3
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/redexgen/X/DD;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cw;

    invoke-direct {v0, v5, v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Cw;-><init>(IIII)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/DD;->A07:Lcom/facebook/ads/redexgen/X/Cw;

    .line 61168
    return-object v6

    .line 61169
    :cond_2
    iget v2, v1, Lcom/facebook/ads/redexgen/X/Cw;->A01:I

    goto :goto_3

    .line 61170
    :cond_3
    iget v3, v1, Lcom/facebook/ads/redexgen/X/Cw;->A03:I

    goto :goto_2

    .line 61171
    :cond_4
    iget v4, v1, Lcom/facebook/ads/redexgen/X/Cw;->A00:I

    goto :goto_1

    .line 61172
    :cond_5
    iget v5, v1, Lcom/facebook/ads/redexgen/X/Cw;->A02:I

    goto :goto_0
.end method

.method public static A0A(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A0X:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x55

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0B()V
    .locals 1

    .line 61173
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A02:I

    .line 61174
    iput v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:I

    .line 61175
    return-void
.end method

.method private A0C()V
    .locals 6

    .line 61176
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0I:[Lcom/facebook/ads/redexgen/X/Cb;

    if-nez v0, :cond_2

    .line 61177
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/Cb;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0I:[Lcom/facebook/ads/redexgen/X/Cb;

    .line 61178
    const/4 v5, 0x0

    .line 61179
    .local p0, "emsgTrackOutputCount":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/W1;->A0M:Lcom/facebook/ads/redexgen/X/Cb;

    if-eqz v2, :cond_0

    .line 61180
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W1;->A0I:[Lcom/facebook/ads/redexgen/X/Cb;

    add-int/lit8 v0, v5, 0x1

    .end local p0    # "emsgTrackOutputCount":I
    .local v0, "emsgTrackOutputCount":I
    aput-object v2, v1, v5

    move v5, v0

    .line 61181
    .end local v0    # "emsgTrackOutputCount":I
    .restart local p0    # "emsgTrackOutputCount":I
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0J:I

    const/4 v4, 0x4

    and-int/2addr v0, v4

    if-eqz v0, :cond_1

    .line 61182
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/W1;->A0I:[Lcom/facebook/ads/redexgen/X/Cb;

    add-int/lit8 v2, v5, 0x1

    .end local p0    # "emsgTrackOutputCount":I
    .restart local v0    # "emsgTrackOutputCount":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W1;->A0C:Lcom/facebook/ads/redexgen/X/CR;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0K:Landroid/util/SparseArray;

    .line 61183
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-interface {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/CR;->AF1(II)Lcom/facebook/ads/redexgen/X/Cb;

    move-result-object v0

    aput-object v0, v3, v5

    move v5, v2

    .line 61184
    .end local v0    # "emsgTrackOutputCount":I
    .restart local p0    # "emsgTrackOutputCount":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0I:[Lcom/facebook/ads/redexgen/X/Cb;

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/Cb;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0I:[Lcom/facebook/ads/redexgen/X/Cb;

    .line 61185
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/W1;->A0I:[Lcom/facebook/ads/redexgen/X/Cb;

    array-length v3, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v4, v2

    .line 61186
    .local v5, "eventMessageTrackOutput":Lcom/facebook/ads/redexgen/X/Cb;
    sget-object v0, Lcom/facebook/ads/redexgen/X/W1;->A0b:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Cb;->A5S(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 61187
    .end local v5    # "eventMessageTrackOutput":Lcom/facebook/ads/redexgen/X/Cb;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61188
    .end local p0    # "emsgTrackOutputCount":I
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0H:[Lcom/facebook/ads/redexgen/X/Cb;

    if-nez v0, :cond_4

    .line 61189
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0V:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/Cb;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0H:[Lcom/facebook/ads/redexgen/X/Cb;

    .line 61190
    const/4 v3, 0x0

    .local p0, "i":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0H:[Lcom/facebook/ads/redexgen/X/Cb;

    array-length v0, v0

    if-ge v3, v0, :cond_4

    .line 61191
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/W1;->A0C:Lcom/facebook/ads/redexgen/X/CR;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v1, v3

    const/4 v0, 0x3

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CR;->AF1(II)Lcom/facebook/ads/redexgen/X/Cb;

    move-result-object v1

    .line 61192
    .local v0, "output":Lcom/facebook/ads/redexgen/X/Cb;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0V:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Cb;->A5S(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 61193
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0H:[Lcom/facebook/ads/redexgen/X/Cb;

    aput-object v1, v0, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 61194
    .end local v0    # "output":Lcom/facebook/ads/redexgen/X/Cb;
    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "E0z9VN5IoStoNoHPwfepvpkncforV8p8"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61195
    .end local p0    # "i":I
    :cond_4
    return-void
.end method

.method public static A0D()V
    .locals 1

    const/16 v0, 0x2c1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/W1;->A0X:[B

    return-void

    :array_0
    .array-data 1
        0x4ct
        0x40t
        0xbt
        0x3et
        0x25t
        0x27t
        0x6at
        0x39t
        0x23t
        0x30t
        0x2ft
        0x6at
        0x26t
        0x2ft
        0x39t
        0x39t
        0x6at
        0x3et
        0x22t
        0x2bt
        0x24t
        0x6at
        0x22t
        0x2ft
        0x2bt
        0x2et
        0x2ft
        0x38t
        0x6at
        0x26t
        0x2ft
        0x24t
        0x2dt
        0x3et
        0x22t
        0x6at
        0x62t
        0x3ft
        0x24t
        0x39t
        0x3ft
        0x3at
        0x3at
        0x25t
        0x38t
        0x3et
        0x2ft
        0x2et
        0x63t
        0x64t
        0x68t
        0x43t
        0x59t
        0x5ft
        0x54t
        0xdt
        0x4et
        0x42t
        0x58t
        0x43t
        0x59t
        0xdt
        0x44t
        0x43t
        0xdt
        0x5et
        0x4ft
        0x4at
        0x5dt
        0xdt
        0xct
        0x10t
        0xdt
        0x1ct
        0xdt
        0x5t
        0x58t
        0x43t
        0x5et
        0x58t
        0x5dt
        0x5dt
        0x42t
        0x5ft
        0x59t
        0x48t
        0x49t
        0x4t
        0x3t
        0x5t
        0x2et
        0x34t
        0x32t
        0x39t
        0x60t
        0x23t
        0x2ft
        0x35t
        0x2et
        0x34t
        0x60t
        0x29t
        0x2et
        0x60t
        0x33t
        0x27t
        0x30t
        0x24t
        0x60t
        0x61t
        0x7dt
        0x60t
        0x71t
        0x60t
        0x68t
        0x35t
        0x2et
        0x33t
        0x35t
        0x30t
        0x30t
        0x2ft
        0x32t
        0x34t
        0x25t
        0x24t
        0x69t
        0x6et
        0x1dt
        0x29t
        0x3at
        0x3ct
        0x36t
        0x3et
        0x35t
        0x2ft
        0x3et
        0x3ft
        0x16t
        0x2bt
        0x6ft
        0x1et
        0x23t
        0x2ft
        0x29t
        0x3at
        0x38t
        0x2ft
        0x34t
        0x29t
        0x4t
        0x2at
        0x23t
        0x22t
        0x3ft
        0x24t
        0x23t
        0x2at
        0x6dt
        0x23t
        0x28t
        0x2at
        0x2ct
        0x39t
        0x24t
        0x3bt
        0x28t
        0x6dt
        0x22t
        0x2bt
        0x2bt
        0x3et
        0x28t
        0x39t
        0x6dt
        0x39t
        0x22t
        0x6dt
        0x3et
        0x2ct
        0x20t
        0x3dt
        0x21t
        0x28t
        0x6dt
        0x29t
        0x2ct
        0x39t
        0x2ct
        0x63t
        0x6et
        0x47t
        0x43t
        0x44t
        0x2t
        0x43t
        0x56t
        0x4dt
        0x4ft
        0x2t
        0x46t
        0x47t
        0x44t
        0x4bt
        0x4ct
        0x47t
        0x51t
        0x2t
        0x47t
        0x5at
        0x56t
        0x47t
        0x4ct
        0x46t
        0x47t
        0x46t
        0x2t
        0x43t
        0x56t
        0x4dt
        0x4ft
        0x2t
        0x51t
        0x4bt
        0x58t
        0x47t
        0x2t
        0xat
        0x57t
        0x4ct
        0x51t
        0x57t
        0x52t
        0x52t
        0x4dt
        0x50t
        0x56t
        0x47t
        0x46t
        0xbt
        0xct
        0x26t
        0xft
        0xbt
        0xct
        0x4at
        0xbt
        0x1et
        0x5t
        0x7t
        0x4at
        0x1dt
        0x3t
        0x1et
        0x2t
        0x4at
        0x6t
        0xft
        0x4t
        0xdt
        0x1et
        0x2t
        0x4at
        0x54t
        0x4at
        0x58t
        0x5bt
        0x5et
        0x5dt
        0x5et
        0x52t
        0x59t
        0x5ct
        0x5et
        0x5dt
        0x4at
        0x42t
        0x1ft
        0x4t
        0x19t
        0x1ft
        0x1at
        0x1at
        0x5t
        0x18t
        0x1et
        0xft
        0xet
        0x43t
        0x44t
        0x61t
        0x48t
        0x43t
        0x4at
        0x59t
        0x45t
        0xdt
        0x40t
        0x44t
        0x5et
        0x40t
        0x4ct
        0x59t
        0x4et
        0x45t
        0x17t
        0xdt
        0x58t
        0x71t
        0x71t
        0x64t
        0x72t
        0x63t
        0x37t
        0x63t
        0x78t
        0x37t
        0x72t
        0x79t
        0x74t
        0x65t
        0x6et
        0x67t
        0x63t
        0x7et
        0x78t
        0x79t
        0x37t
        0x73t
        0x76t
        0x63t
        0x76t
        0x37t
        0x60t
        0x76t
        0x64t
        0x37t
        0x79t
        0x72t
        0x70t
        0x76t
        0x63t
        0x7et
        0x61t
        0x72t
        0x39t
        0x16t
        0x3ft
        0x3ft
        0x2at
        0x3ct
        0x2dt
        0x79t
        0x2dt
        0x36t
        0x79t
        0x3ct
        0x37t
        0x3dt
        0x79t
        0x36t
        0x3ft
        0x79t
        0x34t
        0x3dt
        0x38t
        0x2dt
        0x79t
        0x2et
        0x38t
        0x2at
        0x79t
        0x37t
        0x3ct
        0x3et
        0x38t
        0x2dt
        0x30t
        0x2ft
        0x3ct
        0x77t
        0x54t
        0x6dt
        0x7et
        0x69t
        0x69t
        0x72t
        0x7ft
        0x72t
        0x75t
        0x7ct
        0x3bt
        0x4ft
        0x69t
        0x7at
        0x78t
        0x70t
        0x5et
        0x75t
        0x78t
        0x69t
        0x62t
        0x6bt
        0x6ft
        0x72t
        0x74t
        0x75t
        0x59t
        0x74t
        0x63t
        0x3bt
        0x6bt
        0x7at
        0x69t
        0x7at
        0x76t
        0x7et
        0x6ft
        0x7et
        0x69t
        0x68t
        0x3bt
        0x72t
        0x68t
        0x3bt
        0x6et
        0x75t
        0x68t
        0x6et
        0x6bt
        0x6bt
        0x74t
        0x69t
        0x6ft
        0x7et
        0x7ft
        0x35t
        0x6bt
        0x53t
        0x51t
        0x48t
        0x48t
        0x5dt
        0x5ct
        0x18t
        0x48t
        0x4bt
        0x4bt
        0x50t
        0x18t
        0x59t
        0x4ct
        0x57t
        0x55t
        0x18t
        0x10t
        0x5et
        0x59t
        0x51t
        0x54t
        0x5dt
        0x5ct
        0x18t
        0x4ct
        0x57t
        0x18t
        0x5dt
        0x40t
        0x4ct
        0x4at
        0x59t
        0x5bt
        0x4ct
        0x18t
        0x4dt
        0x4dt
        0x51t
        0x5ct
        0x11t
        0x69t
        0x51t
        0x53t
        0x4at
        0x4at
        0x53t
        0x54t
        0x5dt
        0x1at
        0x5bt
        0x4et
        0x55t
        0x57t
        0x1at
        0x4dt
        0x53t
        0x4et
        0x52t
        0x1at
        0x56t
        0x5ft
        0x54t
        0x5dt
        0x4et
        0x52t
        0x1at
        0x4t
        0x1at
        0x8t
        0xbt
        0xet
        0xdt
        0xet
        0x2t
        0x9t
        0xct
        0xet
        0xdt
        0x1at
        0x12t
        0x4ft
        0x54t
        0x49t
        0x4ft
        0x4at
        0x4at
        0x55t
        0x48t
        0x4et
        0x5ft
        0x5et
        0x13t
        0x14t
        0xbt
        0x30t
        0x3bt
        0x26t
        0x2et
        0x3bt
        0x3dt
        0x2at
        0x3bt
        0x3at
        0x7et
        0x33t
        0x31t
        0x31t
        0x28t
        0x7et
        0x3ct
        0x31t
        0x26t
        0x70t
        0x5ft
        0x64t
        0x6ft
        0x72t
        0x7at
        0x6ft
        0x69t
        0x7et
        0x6ft
        0x6et
        0x2at
        0x79t
        0x6bt
        0x63t
        0x65t
        0x2at
        0x6ft
        0x64t
        0x7et
        0x78t
        0x73t
        0x2at
        0x69t
        0x65t
        0x7ft
        0x64t
        0x7et
        0x30t
        0x2at
        0x4bt
        0x70t
        0x76t
        0x7ft
        0x70t
        0x7at
        0x72t
        0x7bt
        0x7at
        0x3et
        0x77t
        0x70t
        0x7at
        0x77t
        0x6ct
        0x7bt
        0x7dt
        0x6at
        0x3et
        0x6ct
        0x7bt
        0x78t
        0x7bt
        0x6ct
        0x7bt
        0x70t
        0x7dt
        0x7bt
        0x29t
        0x1et
        0xdt
        0x16t
        0x1et
        0x1dt
        0x13t
        0x1at
        0x5ft
        0x13t
        0x1at
        0x11t
        0x18t
        0xbt
        0x17t
        0x5ft
        0x1bt
        0x1at
        0xct
        0x1ct
        0xdt
        0x16t
        0xft
        0xbt
        0x16t
        0x10t
        0x11t
        0x5ft
        0x16t
        0x11t
        0x5ft
        0xct
        0x18t
        0xft
        0x1bt
        0x5ft
        0x19t
        0x10t
        0xat
        0x11t
        0x1bt
        0x5ft
        0x57t
        0xat
        0x11t
        0xct
        0xat
        0xft
        0xft
        0x10t
        0xdt
        0xbt
        0x1at
        0x1bt
        0x56t
        0x3t
        0x12t
        0x12t
        0xet
        0xbt
        0x1t
        0x3t
        0x16t
        0xbt
        0xdt
        0xct
        0x4dt
        0x1at
        0x4ft
        0x7t
        0xft
        0x11t
        0x5t
        0x3et
        0x28t
        0x24t
        0x2at
        0x2et
        0x31t
        0x3ct
        0x3dt
        0x37t
        0x77t
        0x30t
        0x3dt
        0x2et
        0x3bt
        0x3dt
        0x22t
        0x2ft
        0x2et
        0x24t
        0x64t
        0x26t
        0x3bt
        0x7ft
    .end array-data
.end method

.method private A0E(J)V
    .locals 12

    move-object v4, p0

    .line 61196
    :cond_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W1;->A0U:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 61197
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W1;->A0U:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/D1;

    .line 61198
    .local p1, "sampleInfo":Lcom/facebook/ads/redexgen/X/D1;
    iget v1, v4, Lcom/facebook/ads/redexgen/X/W1;->A03:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/D1;->A00:I

    sub-int/2addr v1, v0

    iput v1, v4, Lcom/facebook/ads/redexgen/X/W1;->A03:I

    .line 61199
    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/D1;->A01:J

    add-long v6, p1, v0

    .line 61200
    .local v2, "metadataTimeUs":J
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W1;->A0S:Lcom/facebook/ads/redexgen/X/Ih;

    if-eqz v0, :cond_1

    .line 61201
    invoke-virtual {v0, v6, v7}, Lcom/facebook/ads/redexgen/X/Ih;->A06(J)J

    move-result-wide v6

    .line 61202
    :cond_1
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/W1;->A0I:[Lcom/facebook/ads/redexgen/X/Cb;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v5, v2, v0

    .line 61203
    .local v6, "emsgTrackOutput":Lcom/facebook/ads/redexgen/X/Cb;
    const/4 v8, 0x1

    iget v9, v3, Lcom/facebook/ads/redexgen/X/D1;->A00:I

    iget v10, v4, Lcom/facebook/ads/redexgen/X/W1;->A03:I

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/Cb;->AE5(JIIILcom/facebook/ads/redexgen/X/Ca;)V

    .line 61204
    .end local v6    # "emsgTrackOutput":Lcom/facebook/ads/redexgen/X/Cb;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61205
    :cond_2
    return-void
.end method

.method private A0F(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation

    .line 61206
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0T:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0T:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/W7;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/W7;->A00:J

    cmp-long v0, v1, p1

    if-nez v0, :cond_0

    .line 61207
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0T:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/W7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/W1;->A0I(Lcom/facebook/ads/redexgen/X/W7;)V

    goto :goto_0

    .line 61208
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W1;->A0B()V

    .line 61209
    return-void
.end method

.method private A0G(Lcom/facebook/ads/redexgen/X/CQ;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61210
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A07:J

    long-to-int v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:I

    sub-int/2addr v2, v0

    .line 61211
    .local p1, "atomPayloadSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0E:Lcom/facebook/ads/redexgen/X/IV;

    if-eqz v0, :cond_0

    .line 61212
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    const/16 v0, 0x8

    invoke-interface {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/CQ;->readFully([BII)V

    .line 61213
    iget v1, p0, Lcom/facebook/ads/redexgen/X/W1;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0E:Lcom/facebook/ads/redexgen/X/IV;

    new-instance v2, Lcom/facebook/ads/redexgen/X/W6;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W6;-><init>(ILcom/facebook/ads/redexgen/X/IV;)V

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A79()J

    move-result-wide v0

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/W1;->A0O(Lcom/facebook/ads/redexgen/X/W6;J)V

    .line 61214
    :goto_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A79()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/W1;->A0F(J)V

    .line 61215
    return-void

    .line 61216
    :cond_0
    invoke-interface {p1, v2}, Lcom/facebook/ads/redexgen/X/CQ;->AEh(I)V

    goto :goto_0
.end method

.method private A0H(Lcom/facebook/ads/redexgen/X/CQ;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61217
    const/4 v5, 0x0

    .line 61218
    .local p0, "nextTrackBundle":Lcom/facebook/ads/redexgen/X/D2;
    const-wide v2, 0x7fffffffffffffffL

    .line 61219
    .local p1, "nextDataOffset":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 61220
    .local v2, "trackBundlesSize":I
    const/4 v6, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v6, v7, :cond_2

    .line 61221
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/D2;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/redexgen/X/DD;

    .line 61222
    .local v0, "trackFragment":Lcom/facebook/ads/redexgen/X/DD;
    iget-boolean v0, v8, Lcom/facebook/ads/redexgen/X/DD;->A0B:Z

    if-eqz v0, :cond_1

    iget-wide v0, v8, Lcom/facebook/ads/redexgen/X/DD;->A04:J

    cmp-long v9, v0, v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4b

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v4, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "TcDom5"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    if-gez v9, :cond_1

    .line 61223
    iget-wide v2, v8, Lcom/facebook/ads/redexgen/X/DD;->A04:J

    .line 61224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/D2;

    .line 61225
    .end local v0    # "trackFragment":Lcom/facebook/ads/redexgen/X/DD;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 61226
    .end local v4    # "i":I
    :cond_2
    if-nez v5, :cond_4

    .line 61227
    const/4 v3, 0x3

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "BU1FqSGZUKIp3lmSYzKBGxc2Z86jKcpe"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/W1;->A02:I

    .line 61228
    return-void

    .line 61229
    :cond_4
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A79()J

    move-result-wide v0

    sub-long/2addr v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v4, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "Cvsa72edMITB5GhT"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    long-to-int v0, v2

    .line 61230
    .local v0, "bytesToSkip":I
    if-ltz v0, :cond_6

    .line 61231
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CQ;->AEh(I)V

    .line 61232
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/redexgen/X/DD;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/DD;->A04(Lcom/facebook/ads/redexgen/X/CQ;)V

    .line 61233
    return-void

    .line 61234
    :cond_6
    const/16 v2, 0x133

    const/16 v1, 0x27

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0I(Lcom/facebook/ads/redexgen/X/W7;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation

    .line 61235
    iget v1, p1, Lcom/facebook/ads/redexgen/X/Cq;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0j:I

    if-ne v1, v0, :cond_1

    .line 61236
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/W1;->A0K(Lcom/facebook/ads/redexgen/X/W7;)V

    .line 61237
    :cond_0
    :goto_0
    return-void

    .line 61238
    :cond_1
    iget v1, p1, Lcom/facebook/ads/redexgen/X/Cq;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0i:I

    if-ne v1, v0, :cond_2

    .line 61239
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/W1;->A0J(Lcom/facebook/ads/redexgen/X/W7;)V

    goto :goto_0

    .line 61240
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0T:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61241
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/W1;->A0T:Ljava/util/ArrayDeque;

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "6RjYlEZz613sKxZIpZ2APlvoVeArWnyB"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/W7;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/W7;->A08(Lcom/facebook/ads/redexgen/X/W7;)V

    goto :goto_0
.end method

.method private A0J(Lcom/facebook/ads/redexgen/X/W7;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation

    .line 61242
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/W1;->A0K:Landroid/util/SparseArray;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/W1;->A0J:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0W:[B

    invoke-static {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A0L(Lcom/facebook/ads/redexgen/X/W7;Landroid/util/SparseArray;I[B)V

    .line 61243
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0L:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    .line 61244
    .local p0, "drmInitData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    :goto_0
    if-eqz v3, :cond_1

    .line 61245
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 61246
    .local p1, "trackCount":I
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 61247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/D2;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/D2;->A06(Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)V

    .line 61248
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 61249
    :cond_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/W7;->A02:Ljava/util/List;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W1;->A05(Ljava/util/List;)Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    move-result-object v3

    goto :goto_0

    .line 61250
    .end local p1    # "trackCount":I
    .end local v2    # "i":I
    :cond_1
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/W1;->A0A:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v4

    if-eqz v0, :cond_3

    .line 61251
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 61252
    .restart local p1    # "trackCount":I
    const/4 v3, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v3, v6, :cond_2

    .line 61253
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/D2;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0A:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/D2;->A05(J)V

    .line 61254
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 61255
    .end local v2    # "i":I
    :cond_2
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/W1;->A0A:J

    .line 61256
    .end local p1    # "trackCount":I
    :cond_3
    return-void
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/W7;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation

    .line 61257
    move-object v5, p0

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0N:Lcom/facebook/ads/redexgen/X/DB;

    if-nez v0, :cond_3

    const/4 v3, 0x1

    :goto_0
    const/16 v2, 0x214

    const/16 v1, 0x14

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/I6;->A06(ZLjava/lang/Object;)V

    .line 61258
    iget-object v11, v5, Lcom/facebook/ads/redexgen/X/W1;->A0L:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    if-eqz v11, :cond_2

    .line 61259
    .local v0, "drmInitData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    :goto_1
    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0m:I

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/W7;->A06(I)Lcom/facebook/ads/redexgen/X/W7;

    move-result-object v7

    .line 61260
    .local v5, "mvex":Lcom/facebook/ads/redexgen/X/W7;
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 61261
    .local v0, "defaultSampleValuesArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/DefaultSampleValues;>;"
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 61262
    .local v3, "duration":J
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/W7;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 61263
    .local v7, "mvexChildrenSize":I
    const/4 v3, 0x0

    .end local v3    # "duration":J
    .local v1, "i":I
    .local v4, "duration":J
    :goto_2
    if-ge v3, v6, :cond_4

    .line 61264
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/W7;->A02:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/W6;

    .line 61265
    .local v3, "atom":Lcom/facebook/ads/redexgen/X/W6;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Cq;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A1M:I

    if-ne v1, v0, :cond_1

    .line 61266
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/IV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W1;->A03(Lcom/facebook/ads/redexgen/X/IV;)Landroid/util/Pair;

    move-result-object v2

    .line 61267
    .local v2, "trexData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/DefaultSampleValues;>;"
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61268
    .end local v2    # "trexData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/DefaultSampleValues;>;"
    .end local v3    # "atom":Lcom/facebook/ads/redexgen/X/W6;
    :cond_0
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 61269
    :cond_1
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Cq;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0f:I

    if-ne v1, v0, :cond_0

    .line 61270
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/IV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W1;->A01(Lcom/facebook/ads/redexgen/X/IV;)J

    move-result-wide v9

    goto :goto_3

    .line 61271
    :cond_2
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/W7;->A02:Ljava/util/List;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W1;->A05(Ljava/util/List;)Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    move-result-object v11

    goto :goto_1

    .line 61272
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 61273
    .end local v1    # "i":I
    :cond_4
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 61274
    .local v11, "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/Track;>;"
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/W7;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 61275
    .local v11, "moovContainerChildrenSize":I
    const/4 v2, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v2, v6, :cond_7

    .line 61276
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/W7;->A01:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/redexgen/X/W7;

    .line 61277
    .local v0, "atom":Lcom/facebook/ads/redexgen/X/W7;
    iget v1, v7, Lcom/facebook/ads/redexgen/X/Cq;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A1L:I

    if-ne v1, v0, :cond_5

    .line 61278
    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0n:I

    .line 61279
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/W7;->A07(I)Lcom/facebook/ads/redexgen/X/W6;

    move-result-object v8

    iget v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0J:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    const/4 v12, 0x1

    :goto_5
    const/4 v13, 0x0

    .line 61280
    .end local v1    # "i":I
    .end local v0    # "atom":Lcom/facebook/ads/redexgen/X/W7;
    .local v0, "i":I
    .local v6, "atom":Lcom/facebook/ads/redexgen/X/W7;
    .end local v11    # "moovContainerChildrenSize":I
    .local v3, "moovContainerChildrenSize":I
    .end local v11
    .local p1, "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/Track;>;"
    invoke-static/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/Cv;->A0C(Lcom/facebook/ads/redexgen/X/W7;Lcom/facebook/ads/redexgen/X/W6;JLcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ZZ)Lcom/facebook/ads/redexgen/X/DB;

    move-result-object v1

    .line 61281
    .local v3, "track":Lcom/facebook/ads/redexgen/X/DB;
    if-eqz v1, :cond_5

    .line 61282
    iget v0, v1, Lcom/facebook/ads/redexgen/X/DB;->A00:I

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61283
    .end local v1
    .end local v0    # "i":I
    .end local v11
    .end local v11
    .restart local p1    # "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/Track;>;"
    .restart local v0    # "i":I
    .restart local v3    # "track":Lcom/facebook/ads/redexgen/X/DB;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_4

    .line 61284
    :cond_6
    const/4 v12, 0x0

    goto :goto_5

    .line 61285
    .end local p1    # "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/Track;>;"
    .end local v3    # "track":Lcom/facebook/ads/redexgen/X/DB;
    .restart local v11    # "moovContainerChildrenSize":I
    .restart local v11    # "moovContainerChildrenSize":I
    .end local v1    # "i":I
    .end local v11    # "moovContainerChildrenSize":I
    .end local v11
    .restart local p1    # "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/Track;>;"
    .restart local v3    # "track":Lcom/facebook/ads/redexgen/X/DB;
    :cond_7
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 61286
    .local v3, "trackCount":I
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 61287
    const/4 v9, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v9, v8, :cond_8

    .line 61288
    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/ads/redexgen/X/DB;

    .line 61289
    .local v2, "track":Lcom/facebook/ads/redexgen/X/DB;
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/W1;->A0C:Lcom/facebook/ads/redexgen/X/CR;

    iget v0, v10, Lcom/facebook/ads/redexgen/X/DB;->A03:I

    invoke-interface {v1, v9, v0}, Lcom/facebook/ads/redexgen/X/CR;->AF1(II)Lcom/facebook/ads/redexgen/X/Cb;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/D2;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/D2;-><init>(Lcom/facebook/ads/redexgen/X/Cb;)V

    .line 61290
    .local v1, "trackBundle":Lcom/facebook/ads/redexgen/X/D2;
    iget v0, v10, Lcom/facebook/ads/redexgen/X/DB;->A00:I

    invoke-direct {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/W1;->A06(Landroid/util/SparseArray;I)Lcom/facebook/ads/redexgen/X/Cw;

    move-result-object v0

    invoke-virtual {v2, v10, v0}, Lcom/facebook/ads/redexgen/X/D2;->A07(Lcom/facebook/ads/redexgen/X/DB;Lcom/facebook/ads/redexgen/X/Cw;)V

    .line 61291
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/W1;->A0K:Landroid/util/SparseArray;

    iget v0, v10, Lcom/facebook/ads/redexgen/X/DB;->A00:I

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61292
    iget-wide v6, v5, Lcom/facebook/ads/redexgen/X/W1;->A08:J

    .end local v5    # "mvex":Lcom/facebook/ads/redexgen/X/W7;
    .local v0, "mvex":Lcom/facebook/ads/redexgen/X/W7;
    iget-wide v0, v10, Lcom/facebook/ads/redexgen/X/DB;->A04:J

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A08:J

    .line 61293
    .end local v2    # "track":Lcom/facebook/ads/redexgen/X/DB;
    .end local v1    # "trackBundle":Lcom/facebook/ads/redexgen/X/D2;
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 61294
    .end local v0    # "mvex":Lcom/facebook/ads/redexgen/X/W7;
    .restart local v5    # "mvex":Lcom/facebook/ads/redexgen/X/W7;
    .end local v5    # "mvex":Lcom/facebook/ads/redexgen/X/W7;
    .end local v0
    .restart local v0    # "mvex":Lcom/facebook/ads/redexgen/X/W7;
    :cond_8
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W1;->A0C()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_b

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61295
    .end local v0    # "mvex":Lcom/facebook/ads/redexgen/X/W7;
    .restart local v5    # "mvex":Lcom/facebook/ads/redexgen/X/W7;
    .end local v5    # "mvex":Lcom/facebook/ads/redexgen/X/W7;
    .restart local v0    # "mvex":Lcom/facebook/ads/redexgen/X/W7;
    :cond_9
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ne v0, v8, :cond_a

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 61296
    const/4 v6, 0x0

    .local p1, "i":I
    :goto_8
    if-ge v6, v8, :cond_c

    .line 61297
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/DB;

    .line 61298
    .local v5, "track":Lcom/facebook/ads/redexgen/X/DB;
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/W1;->A0K:Landroid/util/SparseArray;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/DB;->A00:I

    .line 61299
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/D2;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/DB;->A00:I

    .line 61300
    invoke-direct {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/W1;->A06(Landroid/util/SparseArray;I)Lcom/facebook/ads/redexgen/X/Cw;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/D2;->A07(Lcom/facebook/ads/redexgen/X/DB;Lcom/facebook/ads/redexgen/X/Cw;)V

    .line 61301
    .end local v5    # "track":Lcom/facebook/ads/redexgen/X/DB;
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 61302
    :cond_a
    const/4 v0, 0x0

    goto :goto_7

    .line 61303
    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "d"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0C:Lcom/facebook/ads/redexgen/X/CR;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CR;->A5A()V

    .line 61304
    .end local p1    # "i":I
    :cond_c
    return-void
.end method

.method public static A0L(Lcom/facebook/ads/redexgen/X/W7;Landroid/util/SparseArray;I[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/W7;",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/D2;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation

    .line 61305
    .local v3, "trackBundleArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W7;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 61306
    .local p0, "moofContainerChildrenSize":I
    const/4 v3, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 61307
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W7;->A01:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/W7;

    .line 61308
    .local p2, "child":Lcom/facebook/ads/redexgen/X/W7;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Cq;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A1K:I

    if-ne v1, v0, :cond_0

    .line 61309
    invoke-static {v2, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/W1;->A0M(Lcom/facebook/ads/redexgen/X/W7;Landroid/util/SparseArray;I[B)V

    .line 61310
    .end local p2    # "child":Lcom/facebook/ads/redexgen/X/W7;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61311
    .end local p1    # "i":I
    :cond_1
    return-void
.end method

.method public static A0M(Lcom/facebook/ads/redexgen/X/W7;Landroid/util/SparseArray;I[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/W7;",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/D2;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation

    .line 61312
    .local v0, "trackBundleArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A1I:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/W7;->A07(I)Lcom/facebook/ads/redexgen/X/W6;

    move-result-object v0

    .line 61313
    .local p2, "tfhd":Lcom/facebook/ads/redexgen/X/W6;
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/IV;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/W1;->A09(Lcom/facebook/ads/redexgen/X/IV;Landroid/util/SparseArray;)Lcom/facebook/ads/redexgen/X/D2;

    move-result-object v3

    .line 61314
    .local p3, "trackBundle":Lcom/facebook/ads/redexgen/X/D2;
    if-nez v3, :cond_0

    .line 61315
    return-void

    .line 61316
    :cond_0
    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/redexgen/X/DD;

    .line 61317
    .local p2, "fragment":Lcom/facebook/ads/redexgen/X/DD;
    iget-wide v1, v7, Lcom/facebook/ads/redexgen/X/DD;->A06:J

    .line 61318
    .local v0, "decodeTime":J
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/D2;->A04()V

    .line 61319
    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A1H:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/W7;->A07(I)Lcom/facebook/ads/redexgen/X/W6;

    move-result-object v0

    .line 61320
    .local v0, "tfdtAtom":Lcom/facebook/ads/redexgen/X/W6;
    if-eqz v0, :cond_1

    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_1

    .line 61321
    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A1H:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/W7;->A07(I)Lcom/facebook/ads/redexgen/X/W6;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/IV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W1;->A02(Lcom/facebook/ads/redexgen/X/IV;)J

    move-result-wide v1

    .line 61322
    :cond_1
    invoke-static {p0, v3, v1, v2, p2}, Lcom/facebook/ads/redexgen/X/W1;->A0N(Lcom/facebook/ads/redexgen/X/W7;Lcom/facebook/ads/redexgen/X/D2;JI)V

    .line 61323
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/D2;->A05:Lcom/facebook/ads/redexgen/X/DB;

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/DD;->A07:Lcom/facebook/ads/redexgen/X/Cw;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Cw;->A02:I

    .line 61324
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/DB;->A00(I)Lcom/facebook/ads/redexgen/X/DC;

    move-result-object v3

    .line 61325
    .local p1, "encryptionBox":Lcom/facebook/ads/redexgen/X/DC;
    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0u:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/W7;->A07(I)Lcom/facebook/ads/redexgen/X/W6;

    move-result-object v0

    .line 61326
    .local v3, "saiz":Lcom/facebook/ads/redexgen/X/W6;
    if-eqz v0, :cond_2

    .line 61327
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/IV;

    invoke-static {v3, v0, v7}, Lcom/facebook/ads/redexgen/X/W1;->A0P(Lcom/facebook/ads/redexgen/X/DC;Lcom/facebook/ads/redexgen/X/IV;Lcom/facebook/ads/redexgen/X/DD;)V

    .line 61328
    :cond_2
    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0t:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/W7;->A07(I)Lcom/facebook/ads/redexgen/X/W6;

    move-result-object v0

    .line 61329
    .local v7, "saio":Lcom/facebook/ads/redexgen/X/W6;
    if-eqz v0, :cond_3

    .line 61330
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/IV;

    invoke-static {v0, v7}, Lcom/facebook/ads/redexgen/X/W1;->A0S(Lcom/facebook/ads/redexgen/X/IV;Lcom/facebook/ads/redexgen/X/DD;)V

    .line 61331
    :cond_3
    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A10:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/W7;->A07(I)Lcom/facebook/ads/redexgen/X/W6;

    move-result-object v0

    .line 61332
    .local v1, "senc":Lcom/facebook/ads/redexgen/X/W6;
    if-eqz v0, :cond_4

    .line 61333
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/IV;

    invoke-static {v0, v7}, Lcom/facebook/ads/redexgen/X/W1;->A0T(Lcom/facebook/ads/redexgen/X/IV;Lcom/facebook/ads/redexgen/X/DD;)V

    .line 61334
    :cond_4
    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0x:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/W7;->A07(I)Lcom/facebook/ads/redexgen/X/W6;

    move-result-object v1

    .line 61335
    .local p4, "sbgp":Lcom/facebook/ads/redexgen/X/W6;
    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A11:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/W7;->A07(I)Lcom/facebook/ads/redexgen/X/W6;

    move-result-object v0

    .line 61336
    .local v0, "sgpd":Lcom/facebook/ads/redexgen/X/W6;
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 61337
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/IV;

    .line 61338
    if-eqz v3, :cond_8

    .end local p2    # "fragment":Lcom/facebook/ads/redexgen/X/DD;
    .local v0, "tfhd":Lcom/facebook/ads/redexgen/X/W6;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DC;->A02:Ljava/lang/String;

    .line 61339
    :goto_0
    invoke-static {v2, v1, v0, v7}, Lcom/facebook/ads/redexgen/X/W1;->A0V(Lcom/facebook/ads/redexgen/X/IV;Lcom/facebook/ads/redexgen/X/IV;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/DD;)V

    .line 61340
    .end local p2
    .restart local v0    # "tfhd":Lcom/facebook/ads/redexgen/X/W6;
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W7;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 61341
    .local p1, "leafChildrenSize":I
    const/4 v5, 0x0

    .local p2, "i":I
    :goto_1
    if-ge v5, v6, :cond_9

    .line 61342
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W7;->A02:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/ads/redexgen/X/W6;

    .line 61343
    .local v0, "atom":Lcom/facebook/ads/redexgen/X/W6;
    iget v4, v8, Lcom/facebook/ads/redexgen/X/Cq;->A00:I

    .end local p1    # "leafChildrenSize":I
    .local v0, "leafChildrenSize":I
    sget v3, Lcom/facebook/ads/redexgen/X/Cq;->A1Q:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "tWuQt3qCpORkhzaHtCNFkUwj420xxTd"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "yKRRCTery0iDoE3P4"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_7

    .line 61344
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/IV;

    invoke-static {v0, v7, p3}, Lcom/facebook/ads/redexgen/X/W1;->A0U(Lcom/facebook/ads/redexgen/X/IV;Lcom/facebook/ads/redexgen/X/DD;[B)V

    .line 61345
    .end local v0    # "leafChildrenSize":I
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 61346
    .end local v0
    .restart local p2    # "i":I
    .end local p2    # "i":I
    .restart local v0    # "leafChildrenSize":I
    :cond_8
    const/4 v0, 0x0

    goto :goto_0

    .line 61347
    .end local p2
    .end local v0    # "leafChildrenSize":I
    .restart local p1    # "leafChildrenSize":I
    :cond_9
    return-void
.end method

.method public static A0N(Lcom/facebook/ads/redexgen/X/W7;Lcom/facebook/ads/redexgen/X/D2;JI)V
    .locals 12

    .line 61348
    const/4 v6, 0x0

    .line 61349
    .local v0, "trunCount":I
    const/4 v3, 0x0

    .line 61350
    .local v7, "totalSampleCount":I
    move-object v0, p0

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/W7;->A02:Ljava/util/List;

    .line 61351
    .local v5, "leafChildren":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/Atom$LeafAtom;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 61352
    .local v4, "leafChildrenSize":I
    const/4 v7, 0x0

    .end local v0    # "trunCount":I
    .end local v7    # "totalSampleCount":I
    .local v9, "i":I
    .local v7, "trunCount":I
    .local v6, "totalSampleCount":I
    :goto_0
    if-ge v7, v4, :cond_2

    .line 61353
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/ads/redexgen/X/W6;

    .line 61354
    .local v0, "atom":Lcom/facebook/ads/redexgen/X/W6;
    iget v9, v10, Lcom/facebook/ads/redexgen/X/Cq;->A00:I

    sget v8, Lcom/facebook/ads/redexgen/X/Cq;->A1N:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4b

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "HX3CrwnoNkNpp8Diq6RFqVXtJKh"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ne v9, v8, :cond_1

    .line 61355
    iget-object v1, v10, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/IV;

    .line 61356
    .local v7, "trunData":Lcom/facebook/ads/redexgen/X/IV;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 61357
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IV;->A0H()I

    move-result v0

    .line 61358
    .local v3, "trunSampleCount":I
    if-lez v0, :cond_1

    .line 61359
    add-int/2addr v3, v0

    .line 61360
    add-int/lit8 v6, v6, 0x1

    .line 61361
    .end local v0    # "atom":Lcom/facebook/ads/redexgen/X/W6;
    .end local v7    # "trunData":Lcom/facebook/ads/redexgen/X/IV;
    .end local v3    # "trunSampleCount":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 61362
    .end local v9    # "i":I
    :cond_2
    const/4 v0, 0x0

    move-object v7, p1

    iput v0, v7, Lcom/facebook/ads/redexgen/X/D2;->A02:I

    .line 61363
    iput v0, v7, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    .line 61364
    iput v0, v7, Lcom/facebook/ads/redexgen/X/D2;->A01:I

    .line 61365
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/redexgen/X/DD;

    invoke-virtual {v0, v6, v3}, Lcom/facebook/ads/redexgen/X/DD;->A03(II)V

    .line 61366
    const/4 v8, 0x0

    .line 61367
    .local v0, "trunIndex":I
    const/4 p1, 0x0

    .line 61368
    .local v7, "trunStartPosition":I
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_4

    .end local v0    # "trunIndex":I
    .local v7, "trunIndex":I
    .local v3, "i":I
    .local v10, "trunStartPosition":I
    :goto_1
    if-ge v3, v4, :cond_5

    .line 61369
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/W6;

    .line 61370
    .local v10, "trun":Lcom/facebook/ads/redexgen/X/W6;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Cq;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A1N:I

    if-ne v1, v0, :cond_3

    .line 61371
    add-int/lit8 v1, v8, 0x1

    .end local v7    # "trunIndex":I
    .local v9, "trunIndex":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/IV;

    .line 61372
    move/from16 v11, p4

    move-wide v9, p2

    move-object p0, v0

    invoke-static/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/W1;->A00(Lcom/facebook/ads/redexgen/X/D2;IJILcom/facebook/ads/redexgen/X/IV;I)I

    move-result p1

    move v8, v1

    .line 61373
    .end local v10    # "trun":Lcom/facebook/ads/redexgen/X/W6;
    .end local v9    # "trunIndex":I
    .restart local v7    # "trunIndex":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "K2a"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    goto :goto_1

    .line 61374
    .end local v3    # "i":I
    :cond_5
    return-void
.end method

.method private A0O(Lcom/facebook/ads/redexgen/X/W6;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation

    .line 61375
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0T:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61376
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0T:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/W7;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/W7;->A09(Lcom/facebook/ads/redexgen/X/W6;)V

    .line 61377
    :cond_0
    :goto_0
    return-void

    .line 61378
    :cond_1
    iget v1, p1, Lcom/facebook/ads/redexgen/X/Cq;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A12:I

    if-ne v1, v0, :cond_2

    .line 61379
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/IV;

    invoke-static {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/W1;->A04(Lcom/facebook/ads/redexgen/X/IV;J)Landroid/util/Pair;

    move-result-object v2

    .line 61380
    .local p0, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/facebook/ads/internal/exoplayer2/extractor/ChunkIndex;>;"
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0B:J

    .line 61381
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W1;->A0C:Lcom/facebook/ads/redexgen/X/CR;

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/CY;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/CR;->AEA(Lcom/facebook/ads/redexgen/X/CY;)V

    .line 61382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0F:Z

    .end local p0    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/facebook/ads/internal/exoplayer2/extractor/ChunkIndex;>;"
    goto :goto_0

    .line 61383
    :cond_2
    iget v1, p1, Lcom/facebook/ads/redexgen/X/Cq;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0P:I

    if-ne v1, v0, :cond_0

    .line 61384
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/W1;->A0Q(Lcom/facebook/ads/redexgen/X/IV;)V

    goto :goto_0
.end method

.method public static A0P(Lcom/facebook/ads/redexgen/X/DC;Lcom/facebook/ads/redexgen/X/IV;Lcom/facebook/ads/redexgen/X/DD;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation

    .line 61385
    iget v5, p0, Lcom/facebook/ads/redexgen/X/DC;->A00:I

    .line 61386
    .local p0, "vectorSize":I
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 61387
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v0

    .line 61388
    .local p2, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cq;->A00(I)I

    move-result v0

    .line 61389
    .local v5, "flags":I
    and-int/lit8 v0, v0, 0x1

    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    .line 61390
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    .line 61391
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result p0

    .line 61392
    .local p1, "defaultSampleInfoSize":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0H()I

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    .line 61393
    .local v1, "sampleCount":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "qY4fk5"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget v0, p2, Lcom/facebook/ads/redexgen/X/DD;->A00:I

    if-ne v4, v0, :cond_5

    .line 61394
    const/4 v3, 0x0

    .line 61395
    .local v0, "totalSize":I
    const/4 v1, 0x0

    if-nez p0, :cond_2

    .line 61396
    iget-object v2, p2, Lcom/facebook/ads/redexgen/X/DD;->A0H:[Z

    .line 61397
    .local v6, "sampleHasSubsampleEncryptionTable":[Z
    const/4 v1, 0x0

    .local p0, "i":I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 61398
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v0

    .line 61399
    .local v4, "sampleInfoSize":I
    add-int/2addr v3, v0

    .line 61400
    if-le v0, v5, :cond_1

    const/4 v0, 0x1

    :goto_1
    aput-boolean v0, v2, v1

    .line 61401
    .end local v4    # "sampleInfoSize":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61402
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 61403
    :cond_2
    if-le p0, v5, :cond_4

    .line 61404
    .local v0, "subsampleEncryption":Z
    :goto_2
    mul-int/2addr p0, v4

    add-int/2addr v3, p0

    .line 61405
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/DD;->A0H:[Z

    invoke-static {v0, v1, v4, v6}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 61406
    .end local v0    # "subsampleEncryption":Z
    :cond_3
    invoke-virtual {p2, v3}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)V

    .line 61407
    return-void

    .line 61408
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 61409
    .end local v0
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x122

    const/16 v1, 0x11

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/facebook/ads/redexgen/X/DD;->A00:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0Q(Lcom/facebook/ads/redexgen/X/IV;)V
    .locals 17

    .line 61410
    move-object/from16 v4, p0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W1;->A0I:[Lcom/facebook/ads/redexgen/X/Cb;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 61411
    .end local v11
    .end local v11
    .end local v13
    :cond_0
    return-void

    .line 61412
    :cond_1
    const/16 v7, 0xc

    move-object/from16 v8, p1

    invoke-virtual {v8, v7}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 61413
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IV;->A04()I

    move-result v10

    .line 61414
    .local v11, "sampleSize":I
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IV;->A0Q()Ljava/lang/String;

    .line 61415
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IV;->A0Q()Ljava/lang/String;

    .line 61416
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IV;->A0M()J

    move-result-wide v15

    .line 61417
    .local v11, "timescale":J
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IV;->A0M()J

    move-result-wide v11

    const-wide/32 v13, 0xf4240

    invoke-static/range {v11 .. v16}, Lcom/facebook/ads/redexgen/X/Il;->A0F(JJJ)J

    move-result-wide v2

    .line 61418
    .local v13, "presentationTimeDeltaUs":J
    iget-object v6, v4, Lcom/facebook/ads/redexgen/X/W1;->A0I:[Lcom/facebook/ads/redexgen/X/Cb;

    array-length v5, v6

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_2

    aget-object v0, v6, v1

    .line 61419
    .local v10, "emsgTrackOutput":Lcom/facebook/ads/redexgen/X/Cb;
    invoke-virtual {v8, v7}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 61420
    invoke-interface {v0, v8, v10}, Lcom/facebook/ads/redexgen/X/Cb;->AE4(Lcom/facebook/ads/redexgen/X/IV;I)V

    .line 61421
    .end local v10    # "emsgTrackOutput":Lcom/facebook/ads/redexgen/X/Cb;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61422
    :cond_2
    iget-wide v7, v4, Lcom/facebook/ads/redexgen/X/W1;->A0B:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v7, v5

    if-eqz v0, :cond_4

    .line 61423
    add-long/2addr v7, v2

    .line 61424
    .local v4, "sampleTimeUs":J
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W1;->A0S:Lcom/facebook/ads/redexgen/X/Ih;

    if-eqz v0, :cond_3

    .line 61425
    invoke-virtual {v0, v7, v8}, Lcom/facebook/ads/redexgen/X/Ih;->A06(J)J

    move-result-wide v7

    .line 61426
    .end local v4    # "sampleTimeUs":J
    .local v15, "sampleTimeUs":J
    :cond_3
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/W1;->A0I:[Lcom/facebook/ads/redexgen/X/Cb;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_5

    aget-object v6, v2, v0

    .line 61427
    .local p0, "emsgTrackOutput":Lcom/facebook/ads/redexgen/X/Cb;
    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Lcom/facebook/ads/redexgen/X/Cb;->AE5(JIIILcom/facebook/ads/redexgen/X/Ca;)V

    .line 61428
    .end local p0    # "emsgTrackOutput":Lcom/facebook/ads/redexgen/X/Cb;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 61429
    :cond_4
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/W1;->A0U:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/facebook/ads/redexgen/X/D1;

    invoke-direct {v0, v2, v3, v10}, Lcom/facebook/ads/redexgen/X/D1;-><init>(JI)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 61430
    iget v0, v4, Lcom/facebook/ads/redexgen/X/W1;->A03:I

    add-int/2addr v0, v10

    iput v0, v4, Lcom/facebook/ads/redexgen/X/W1;->A03:I

    .line 61431
    :cond_5
    return-void
.end method

.method public static A0R(Lcom/facebook/ads/redexgen/X/IV;ILcom/facebook/ads/redexgen/X/DD;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation

    .line 61432
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 61433
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v0

    .line 61434
    .local p0, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cq;->A00(I)I

    move-result v1

    .line 61435
    .local p1, "flags":I
    and-int/lit8 v0, v1, 0x1

    if-nez v0, :cond_3

    .line 61436
    and-int/lit8 v0, v1, 0x2

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    .line 61437
    .local p2, "subsampleEncryption":Z
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A0H()I

    move-result v4

    .line 61438
    .local v0, "sampleCount":I
    iget v6, p2, Lcom/facebook/ads/redexgen/X/DD;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4b

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61439
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "UNCiZzJs5PDRpvixsYfSSk1mhxuZgiq"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "wrSUtL8XPGusZqeHm"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne v4, v6, :cond_2

    .line 61440
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/DD;->A0H:[Z

    invoke-static {v0, v5, v4, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 61441
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A04()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)V

    .line 61442
    invoke-virtual {p2, p0}, Lcom/facebook/ads/redexgen/X/DD;->A05(Lcom/facebook/ads/redexgen/X/IV;)V

    .line 61443
    return-void

    .line 61444
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x122

    const/16 v1, 0x11

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/facebook/ads/redexgen/X/DD;->A00:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61445
    .end local p2    # "subsampleEncryption":Z
    .end local v0    # "sampleCount":I
    :cond_3
    const/16 v2, 0x17d

    const/16 v1, 0x38

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A0S(Lcom/facebook/ads/redexgen/X/IV;Lcom/facebook/ads/redexgen/X/DD;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation

    .line 61446
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 61447
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v5

    .line 61448
    .local p1, "fullAtom":I
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Cq;->A00(I)I

    move-result v0

    .line 61449
    .local v1, "flags":I
    and-int/lit8 v0, v0, 0x1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 61450
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    .line 61451
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A0H()I

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61452
    .local p0, "entryCount":I
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "xMtqR0"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_4

    .line 61453
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Cq;->A01(I)I

    move-result v0

    .line 61454
    .local v5, "version":I
    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/DD;->A04:J

    .line 61455
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A0M()J

    move-result-wide v0

    :goto_0
    add-long/2addr v3, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "QBYjlSuWWzNHcmXjWc7avhw4MqaHk82"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "P5zbNSbq1MUS3wdHf"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iput-wide v3, p1, Lcom/facebook/ads/redexgen/X/DD;->A04:J

    .line 61456
    return-void

    .line 61457
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A0N()J

    move-result-wide v0

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "vg5EJJPWiTbIFzTVTJFrvfHkMClrP8RJ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput-wide v3, p1, Lcom/facebook/ads/redexgen/X/DD;->A04:J

    .line 61458
    return-void

    .line 61459
    .end local v5    # "version":I
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x228

    const/16 v1, 0x1d

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A0T(Lcom/facebook/ads/redexgen/X/IV;Lcom/facebook/ads/redexgen/X/DD;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation

    .line 61460
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/W1;->A0R(Lcom/facebook/ads/redexgen/X/IV;ILcom/facebook/ads/redexgen/X/DD;)V

    .line 61461
    return-void
.end method

.method public static A0U(Lcom/facebook/ads/redexgen/X/IV;Lcom/facebook/ads/redexgen/X/DD;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation

    .line 61462
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 61463
    const/16 v1, 0x10

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/IV;->A0c([BII)V

    .line 61464
    sget-object v0, Lcom/facebook/ads/redexgen/X/W1;->A0c:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61465
    return-void

    .line 61466
    :cond_0
    invoke-static {p0, v1, p1}, Lcom/facebook/ads/redexgen/X/W1;->A0R(Lcom/facebook/ads/redexgen/X/IV;ILcom/facebook/ads/redexgen/X/DD;)V

    .line 61467
    return-void
.end method

.method public static A0V(Lcom/facebook/ads/redexgen/X/IV;Lcom/facebook/ads/redexgen/X/IV;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/DD;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation

    .line 61468
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 61469
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v2

    .line 61470
    .local p0, "sbgpFullAtom":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/W1;->A0a:I

    if-eq v1, v0, :cond_0

    .line 61471
    return-void

    .line 61472
    :cond_0
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Cq;->A01(I)I

    move-result v0

    const/4 v5, 0x4

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 61473
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    .line 61474
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_d

    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "cve2FA"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ne v6, v3, :cond_c

    .line 61475
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 61476
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v2

    .line 61477
    .local p3, "sgpdFullAtom":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/W1;->A0a:I

    if-eq v1, v0, :cond_2

    .line 61478
    return-void

    .line 61479
    :cond_2
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Cq;->A01(I)I

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61480
    .local p1, "sgpdVersion":I
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "iX8BjoZjE8Q6Igd9BCVMMRG15zWrcCbA"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_6

    .line 61481
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0M()J

    move-result-wide v4

    const-wide/16 v1, 0x0

    cmp-long v0, v4, v1

    if-eqz v0, :cond_b

    .line 61482
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0M()J

    move-result-wide v4

    const-wide/16 v1, 0x1

    cmp-long v0, v4, v1

    if-nez v0, :cond_a

    .line 61483
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    .line 61484
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v1

    .line 61485
    .local v2, "patternByte":I
    and-int/lit16 v0, v1, 0xf0

    shr-int/lit8 v9, v0, 0x4

    .line 61486
    .local p3, "cryptByteBlock":I
    and-int/lit8 v10, v1, 0xf

    .line 61487
    .local v1, "skipByteBlock":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v0

    const/4 v4, 0x0

    if-ne v0, v3, :cond_5

    const/4 v5, 0x1

    .line 61488
    .local v0, "isProtected":Z
    :goto_1
    if-nez v5, :cond_7

    .line 61489
    return-void

    .line 61490
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 61491
    :cond_6
    const/4 v0, 0x2

    if-lt v4, v0, :cond_4

    .line 61492
    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    goto :goto_0

    .line 61493
    :cond_7
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v7

    .line 61494
    .local v0, "perSampleIvSize":I
    const/16 v0, 0x10

    new-array v8, v0, [B

    .line 61495
    .local v2, "keyId":[B
    array-length v0, v8

    invoke-virtual {p1, v8, v4, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0c([BII)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61496
    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "v2evuoi5ipUorqJI1yS0NRy"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 p0, 0x0

    .line 61497
    .local v0, "constantIv":[B
    if-eqz v5, :cond_9

    if-nez v7, :cond_9

    .line 61498
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v0

    .line 61499
    .local v5, "constantIvSize":I
    new-array p0, v0, [B

    .line 61500
    invoke-virtual {p1, p0, v4, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0c([BII)V

    .line 61501
    .end local v0    # "constantIv":[B
    .local v1, "constantIv":[B
    :cond_9
    iput-boolean v3, p3, Lcom/facebook/ads/redexgen/X/DD;->A0A:Z

    .line 61502
    new-instance v4, Lcom/facebook/ads/redexgen/X/DC;

    .end local v2    # "keyId":[B
    .local v0, "keyId":[B
    move-object v6, p2

    invoke-direct/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/DC;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v4, p3, Lcom/facebook/ads/redexgen/X/DD;->A08:Lcom/facebook/ads/redexgen/X/DC;

    .line 61503
    return-void

    .line 61504
    .end local p3    # "cryptByteBlock":I
    .end local v2
    .end local v1    # "constantIv":[B
    .end local v0    # "keyId":[B
    .end local v0
    .end local v1
    .end local v0
    :cond_a
    const/16 v2, 0x59

    const/16 v1, 0x27

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61505
    :cond_b
    const/16 v2, 0x261

    const/16 v1, 0x37

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61506
    .end local p3
    .end local p1    # "sgpdVersion":I
    :cond_c
    const/16 v2, 0x32

    const/16 v1, 0x27

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0W(I)Z
    .locals 4

    .line 61507
    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0j:I

    if-eq p0, v0, :cond_3

    sget v3, Lcom/facebook/ads/redexgen/X/Cq;->A1L:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4b

    if-eq v1, v0, :cond_0

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "T3RhZdPh4OhUklIpt3KHsdu4Qu4SXFxX"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_3

    sget v3, Lcom/facebook/ads/redexgen/X/Cq;->A0d:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    if-eq p0, v3, :cond_3

    :goto_1
    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0h:I

    if-eq p0, v0, :cond_3

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A16:I

    if-eq p0, v0, :cond_3

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0i:I

    if-eq p0, v0, :cond_3

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A1K:I

    if-eq p0, v0, :cond_3

    sget v3, Lcom/facebook/ads/redexgen/X/Cq;->A0m:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "W"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_3

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "P"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_3

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0N:I

    if-ne p0, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static A0X(I)Z
    .locals 1

    .line 61508
    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0V:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0c:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0n:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A12:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A1A:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A1H:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A1I:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A1J:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A1M:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A1N:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0r:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0u:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0t:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A10:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A1Q:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0x:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A11:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0O:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0f:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0P:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0Y(Lcom/facebook/ads/redexgen/X/CQ;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61509
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:I

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 61510
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0O:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    invoke-interface {p1, v0, v5, v6, v4}, Lcom/facebook/ads/redexgen/X/CQ;->ADI([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61511
    return v5

    .line 61512
    :cond_0
    iput v6, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:I

    .line 61513
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0O:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 61514
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0O:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0M()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A07:J

    .line 61515
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0O:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A01:I

    .line 61516
    :cond_1
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A07:J

    const-wide/16 v7, 0x1

    cmp-long v2, v0, v7

    if-nez v2, :cond_3

    .line 61517
    const/16 v1, 0x8

    .line 61518
    .local p0, "headerBytesRemaining":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0O:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    invoke-interface {p1, v0, v6, v1}, Lcom/facebook/ads/redexgen/X/CQ;->readFully([BII)V

    .line 61519
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:I

    .line 61520
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0O:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0N()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A07:J

    .line 61521
    .end local p0    # "headerBytesRemaining":I
    :cond_2
    :goto_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/W1;->A07:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:I

    int-to-long v0, v0

    cmp-long v7, v2, v0

    if-ltz v7, :cond_12

    .line 61522
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A79()J

    move-result-wide v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:I

    int-to-long v0, v0

    sub-long/2addr v2, v0

    .line 61523
    .local v5, "atomPosition":J
    iget v1, p0, Lcom/facebook/ads/redexgen/X/W1;->A01:I

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0i:I

    if-ne v1, v0, :cond_6

    .line 61524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 61525
    .local p0, "trackCount":I
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v1, v7, :cond_6

    .line 61526
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/D2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/redexgen/X/DD;

    .line 61527
    .local v0, "fragment":Lcom/facebook/ads/redexgen/X/DD;
    iput-wide v2, v0, Lcom/facebook/ads/redexgen/X/DD;->A03:J

    .line 61528
    iput-wide v2, v0, Lcom/facebook/ads/redexgen/X/DD;->A04:J

    .line 61529
    iput-wide v2, v0, Lcom/facebook/ads/redexgen/X/DD;->A05:J

    .line 61530
    .end local v0    # "fragment":Lcom/facebook/ads/redexgen/X/DD;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 61531
    :cond_3
    const-wide/16 v7, 0x0

    cmp-long v2, v0, v7

    if-nez v2, :cond_2

    .line 61532
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A6p()J

    move-result-wide v2

    .line 61533
    .local v5, "endPosition":J
    const-wide/16 v8, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v7, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "LA"

    const/4 v0, 0x0

    aput-object v1, v7, v0

    cmp-long v0, v2, v8

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0T:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 61534
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0T:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/W7;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/W7;->A00:J

    .line 61535
    :cond_5
    cmp-long v0, v2, v8

    if-eqz v0, :cond_2

    .line 61536
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A79()J

    move-result-wide v0

    sub-long/2addr v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/W1;->A07:J

    goto :goto_0

    .line 61537
    .end local p0    # "trackCount":I
    .end local v0
    :cond_6
    iget v1, p0, Lcom/facebook/ads/redexgen/X/W1;->A01:I

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0b:I

    const/4 v9, 0x0

    if-ne v1, v0, :cond_a

    .line 61538
    iput-object v9, p0, Lcom/facebook/ads/redexgen/X/W1;->A0D:Lcom/facebook/ads/redexgen/X/D2;

    .line 61539
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/W1;->A07:J

    add-long/2addr v5, v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_8

    iput-wide v5, p0, Lcom/facebook/ads/redexgen/X/W1;->A09:J

    .line 61540
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0F:Z

    if-nez v0, :cond_7

    .line 61541
    :goto_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W1;->A0C:Lcom/facebook/ads/redexgen/X/CR;

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/W1;->A08:J

    new-instance v0, Lcom/facebook/ads/redexgen/X/WN;

    invoke-direct {v0, v5, v6, v2, v3}, Lcom/facebook/ads/redexgen/X/WN;-><init>(JJ)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/CR;->AEA(Lcom/facebook/ads/redexgen/X/CY;)V

    .line 61542
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/W1;->A0F:Z

    .line 61543
    :cond_7
    const/4 v3, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_9

    iput v3, p0, Lcom/facebook/ads/redexgen/X/W1;->A02:I

    .line 61544
    return v4

    :cond_8
    sget-object v7, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "OzIwjO"

    const/4 v0, 0x3

    aput-object v1, v7, v0

    iput-wide v5, p0, Lcom/facebook/ads/redexgen/X/W1;->A09:J

    .line 61545
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0F:Z

    if-nez v0, :cond_7

    goto :goto_2

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "kMQb8Kdhh0k2oCY1DKK8Lkjm8envfnKE"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/W1;->A02:I

    .line 61546
    return v4

    .line 61547
    :cond_a
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A01:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W1;->A0W(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 61548
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A79()J

    move-result-wide v5

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A07:J

    add-long/2addr v5, v0

    const-wide/16 v0, 0x8

    sub-long/2addr v5, v0

    .line 61549
    .local p0, "endPosition":J
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/W1;->A0T:Ljava/util/ArrayDeque;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/W1;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/W7;

    invoke-direct {v0, v1, v5, v6}, Lcom/facebook/ads/redexgen/X/W7;-><init>(IJ)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 61550
    iget-wide v7, p0, Lcom/facebook/ads/redexgen/X/W1;->A07:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:I

    int-to-long v1, v0

    cmp-long v0, v7, v1

    if-nez v0, :cond_b

    .line 61551
    invoke-direct {p0, v5, v6}, Lcom/facebook/ads/redexgen/X/W1;->A0F(J)V

    .line 61552
    :goto_3
    return v4

    .line 61553
    :cond_b
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W1;->A0B()V

    goto :goto_3

    .line 61554
    :cond_c
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A01:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W1;->A0X(I)Z

    move-result v0

    const-wide/32 v7, 0x7fffffff

    if-eqz v0, :cond_d

    .line 61555
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:I

    if-ne v0, v6, :cond_10

    .line 61556
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/W1;->A07:J

    cmp-long v0, v2, v7

    if-gtz v0, :cond_f

    .line 61557
    long-to-int v1, v2

    new-instance v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IV;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0E:Lcom/facebook/ads/redexgen/X/IV;

    .line 61558
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0O:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0E:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    invoke-static {v1, v5, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61559
    iput v4, p0, Lcom/facebook/ads/redexgen/X/W1;->A02:I

    goto :goto_3

    .line 61560
    :cond_d
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/W1;->A07:J

    cmp-long v0, v1, v7

    if-gtz v0, :cond_11

    .line 61561
    iput-object v9, p0, Lcom/facebook/ads/redexgen/X/W1;->A0E:Lcom/facebook/ads/redexgen/X/IV;

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_e

    .line 61562
    iput v4, p0, Lcom/facebook/ads/redexgen/X/W1;->A02:I

    goto :goto_3

    :cond_e
    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "iPT3XD2rpP2HdkDfuffPKD2oqLdsh6m"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "VJwLHdRxuPwgnotGD"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iput v4, p0, Lcom/facebook/ads/redexgen/X/W1;->A02:I

    goto :goto_3

    .line 61563
    :cond_f
    const/16 v2, 0xf1

    const/16 v1, 0x31

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61564
    :cond_10
    const/16 v2, 0xbe

    const/16 v1, 0x33

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61565
    :cond_11
    const/16 v2, 0x1df

    const/16 v1, 0x35

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61566
    .end local v5    # "endPosition":J
    :cond_12
    const/4 v2, 0x2

    const/16 v1, 0x30

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0Z(Lcom/facebook/ads/redexgen/X/CQ;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61567
    move-object/from16 v5, p0

    iget v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A02:I

    const/4 v3, 0x0

    const/4 v2, 0x3

    const/4 v15, 0x4

    const/4 v14, 0x1

    const/4 v13, 0x0

    move-object/from16 v9, p1

    if-ne v0, v2, :cond_8

    .line 61568
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0D:Lcom/facebook/ads/redexgen/X/D2;

    if-nez v0, :cond_3

    .line 61569
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0K:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W1;->A07(Landroid/util/SparseArray;)Lcom/facebook/ads/redexgen/X/D2;

    move-result-object v7

    .line 61570
    .local v5, "currentTrackBundle":Lcom/facebook/ads/redexgen/X/D2;
    if-nez v7, :cond_1

    .line 61571
    iget-wide v2, v5, Lcom/facebook/ads/redexgen/X/W1;->A09:J

    invoke-interface {v9}, Lcom/facebook/ads/redexgen/X/CQ;->A79()J

    move-result-wide v0

    sub-long/2addr v2, v0

    long-to-int v0, v2

    .line 61572
    .local v0, "bytesToSkip":I
    if-ltz v0, :cond_0

    .line 61573
    invoke-interface {v9, v0}, Lcom/facebook/ads/redexgen/X/CQ;->AEh(I)V

    .line 61574
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/W1;->A0B()V

    .line 61575
    return v13

    .line 61576
    :cond_0
    const/16 v2, 0x15a

    const/16 v1, 0x23

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61577
    .end local v0    # "bytesToSkip":I
    :cond_1
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/redexgen/X/DD;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DD;->A0G:[J

    iget v0, v7, Lcom/facebook/ads/redexgen/X/D2;->A02:I

    aget-wide v0, v1, v0

    .line 61578
    .local v13, "nextDataPosition":J
    invoke-interface {v9}, Lcom/facebook/ads/redexgen/X/CQ;->A79()J

    move-result-wide v10

    sub-long/2addr v0, v10

    long-to-int v4, v0

    .line 61579
    .local v14, "bytesToSkip":I
    if-gez v4, :cond_2

    .line 61580
    const/16 v4, 0x80

    const/16 v1, 0x16

    const/16 v0, 0xe

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A0A(III)Ljava/lang/String;

    move-result-object v6

    const/16 v4, 0x96

    const/16 v1, 0x28

    const/16 v0, 0x18

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61581
    const/4 v4, 0x0

    .line 61582
    :cond_2
    invoke-interface {v9, v4}, Lcom/facebook/ads/redexgen/X/CQ;->AEh(I)V

    .line 61583
    iput-object v7, v5, Lcom/facebook/ads/redexgen/X/W1;->A0D:Lcom/facebook/ads/redexgen/X/D2;

    .line 61584
    .end local v5    # "currentTrackBundle":Lcom/facebook/ads/redexgen/X/D2;
    .end local v14    # "bytesToSkip":I
    .end local v13    # "nextDataPosition":J
    :cond_3
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0D:Lcom/facebook/ads/redexgen/X/D2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/redexgen/X/DD;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DD;->A0D:[I

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0D:Lcom/facebook/ads/redexgen/X/D2;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/D2;->A01:I

    aget v0, v1, v0

    iput v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A06:I

    .line 61585
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0D:Lcom/facebook/ads/redexgen/X/D2;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/D2;->A01:I

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0D:Lcom/facebook/ads/redexgen/X/D2;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/D2;->A03:I

    if-ge v1, v0, :cond_5

    .line 61586
    iget v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A06:I

    invoke-interface {v9, v0}, Lcom/facebook/ads/redexgen/X/CQ;->AEh(I)V

    .line 61587
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0D:Lcom/facebook/ads/redexgen/X/D2;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D2;->A02(Lcom/facebook/ads/redexgen/X/D2;)V

    .line 61588
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0D:Lcom/facebook/ads/redexgen/X/D2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/D2;->A08()Z

    move-result v0

    if-nez v0, :cond_4

    .line 61589
    iput-object v3, v5, Lcom/facebook/ads/redexgen/X/W1;->A0D:Lcom/facebook/ads/redexgen/X/D2;

    .line 61590
    :cond_4
    iput v2, v5, Lcom/facebook/ads/redexgen/X/W1;->A02:I

    .line 61591
    return v14

    .line 61592
    :cond_5
    iget-object v3, v5, Lcom/facebook/ads/redexgen/X/W1;->A0D:Lcom/facebook/ads/redexgen/X/D2;

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "st8dZG"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/D2;->A05:Lcom/facebook/ads/redexgen/X/DB;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/DB;->A02:I

    if-ne v0, v14, :cond_7

    .line 61593
    iget v1, v5, Lcom/facebook/ads/redexgen/X/W1;->A06:I

    const/16 v0, 0x8

    sub-int/2addr v1, v0

    iput v1, v5, Lcom/facebook/ads/redexgen/X/W1;->A06:I

    .line 61594
    invoke-interface {v9, v0}, Lcom/facebook/ads/redexgen/X/CQ;->AEh(I)V

    .line 61595
    :cond_7
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0D:Lcom/facebook/ads/redexgen/X/D2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/D2;->A03()I

    move-result v0

    iput v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A04:I

    .line 61596
    iget v1, v5, Lcom/facebook/ads/redexgen/X/W1;->A06:I

    iget v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A04:I

    add-int/2addr v1, v0

    iput v1, v5, Lcom/facebook/ads/redexgen/X/W1;->A06:I

    .line 61597
    iput v15, v5, Lcom/facebook/ads/redexgen/X/W1;->A02:I

    .line 61598
    iput v13, v5, Lcom/facebook/ads/redexgen/X/W1;->A05:I

    .line 61599
    :cond_8
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0D:Lcom/facebook/ads/redexgen/X/D2;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/redexgen/X/DD;

    .line 61600
    .local v5, "fragment":Lcom/facebook/ads/redexgen/X/DD;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0D:Lcom/facebook/ads/redexgen/X/D2;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/D2;->A05:Lcom/facebook/ads/redexgen/X/DB;

    .line 61601
    .local v14, "track":Lcom/facebook/ads/redexgen/X/DB;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0D:Lcom/facebook/ads/redexgen/X/D2;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/D2;->A06:Lcom/facebook/ads/redexgen/X/Cb;

    .line 61602
    .local v13, "output":Lcom/facebook/ads/redexgen/X/Cb;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0D:Lcom/facebook/ads/redexgen/X/D2;

    iget v7, v0, Lcom/facebook/ads/redexgen/X/D2;->A01:I

    .line 61603
    .local v0, "sampleIndex":I
    invoke-virtual {v8, v7}, Lcom/facebook/ads/redexgen/X/DD;->A00(I)J

    move-result-wide v1

    const-wide/16 v10, 0x3e8

    mul-long/2addr v1, v10

    .line 61604
    .local v0, "sampleTimeUs":J
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0S:Lcom/facebook/ads/redexgen/X/Ih;

    if-eqz v0, :cond_9

    .line 61605
    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ih;->A06(J)J

    move-result-wide v1

    .line 61606
    .end local v0    # "sampleTimeUs":J
    .local v2, "sampleTimeUs":J
    :cond_9
    iget v0, v4, Lcom/facebook/ads/redexgen/X/DB;->A01:I

    if-eqz v0, :cond_d

    .line 61607
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0Q:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    .line 61608
    .local v0, "nalPrefixData":[B
    aput-byte v13, v11, v13

    .line 61609
    aput-byte v13, v11, v14

    .line 61610
    const/4 v0, 0x2

    aput-byte v13, v11, v0

    .line 61611
    iget v10, v4, Lcom/facebook/ads/redexgen/X/DB;->A01:I

    add-int/2addr v10, v14

    .line 61612
    .local v0, "nalUnitPrefixLength":I
    iget v0, v4, Lcom/facebook/ads/redexgen/X/DB;->A01:I

    rsub-int/lit8 v3, v0, 0x4

    .line 61613
    .local v7, "nalUnitLengthFieldLengthDiff":I
    :goto_0
    iget v12, v5, Lcom/facebook/ads/redexgen/X/W1;->A04:I

    iget v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A06:I

    if-ge v12, v0, :cond_e

    .line 61614
    iget v12, v5, Lcom/facebook/ads/redexgen/X/W1;->A05:I

    if-nez v12, :cond_b

    .line 61615
    invoke-interface {v9, v11, v3, v10}, Lcom/facebook/ads/redexgen/X/CQ;->readFully([BII)V

    .line 61616
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0Q:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v13}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 61617
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0Q:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0H()I

    move-result v0

    sub-int/2addr v0, v14

    iput v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A05:I

    .line 61618
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0R:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v13}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 61619
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0R:Lcom/facebook/ads/redexgen/X/IV;

    invoke-interface {v6, v0, v15}, Lcom/facebook/ads/redexgen/X/Cb;->AE4(Lcom/facebook/ads/redexgen/X/IV;I)V

    .line 61620
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0Q:Lcom/facebook/ads/redexgen/X/IV;

    invoke-interface {v6, v0, v14}, Lcom/facebook/ads/redexgen/X/Cb;->AE4(Lcom/facebook/ads/redexgen/X/IV;I)V

    .line 61621
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0H:[Lcom/facebook/ads/redexgen/X/Cb;

    array-length v0, v0

    if-lez v0, :cond_a

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/DB;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-object v12, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    aget-byte v0, v11, v15

    .line 61622
    invoke-static {v12, v0}, Lcom/facebook/ads/redexgen/X/IR;->A0C(Ljava/lang/String;B)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0G:Z

    .line 61623
    iget v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A04:I

    add-int/lit8 v0, v0, 0x5

    iput v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A04:I

    .line 61624
    iget v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A06:I

    add-int/2addr v0, v3

    iput v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A06:I

    goto :goto_0

    .line 61625
    :cond_a
    const/4 v0, 0x0

    goto :goto_1

    .line 61626
    :cond_b
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0G:Z

    if-eqz v0, :cond_c

    .line 61627
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0P:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v12}, Lcom/facebook/ads/redexgen/X/IV;->A0W(I)V

    .line 61628
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0P:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A05:I

    invoke-interface {v9, v12, v13, v0}, Lcom/facebook/ads/redexgen/X/CQ;->readFully([BII)V

    .line 61629
    iget-object v12, v5, Lcom/facebook/ads/redexgen/X/W1;->A0P:Lcom/facebook/ads/redexgen/X/IV;

    iget v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A05:I

    invoke-interface {v6, v12, v0}, Lcom/facebook/ads/redexgen/X/Cb;->AE4(Lcom/facebook/ads/redexgen/X/IV;I)V

    .line 61630
    iget v12, v5, Lcom/facebook/ads/redexgen/X/W1;->A05:I

    .line 61631
    .local v9, "writtenBytes":I
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0P:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0P:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A07()I

    move-result v0

    invoke-static {v13, v0}, Lcom/facebook/ads/redexgen/X/IR;->A02([BI)I

    move-result v16

    .line 61632
    .local v0, "unescapedLength":I
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0P:Lcom/facebook/ads/redexgen/X/IV;

    move-object/from16 v17, v0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/DB;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-object v14, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    const/16 v15, 0x2ae

    const/16 v13, 0xa

    const/16 v0, 0xd

    invoke-static {v15, v13, v0}, Lcom/facebook/ads/redexgen/X/W1;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 v13, v17

    move v14, v0

    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 61633
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0P:Lcom/facebook/ads/redexgen/X/IV;

    move-object v13, v0

    move/from16 v14, v16

    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/IV;->A0X(I)V

    .line 61634
    iget-object v13, v5, Lcom/facebook/ads/redexgen/X/W1;->A0P:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0H:[Lcom/facebook/ads/redexgen/X/Cb;

    invoke-static {v1, v2, v13, v0}, Lcom/facebook/ads/redexgen/X/GV;->A03(JLcom/facebook/ads/redexgen/X/IV;[Lcom/facebook/ads/redexgen/X/Cb;)V

    .line 61635
    .end local v0    # "unescapedLength":I
    .restart local v9    # "writtenBytes":I
    :goto_2
    iget v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A04:I

    add-int/2addr v0, v12

    iput v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A04:I

    .line 61636
    iget v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A05:I

    sub-int/2addr v0, v12

    iput v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A05:I

    .line 61637
    .end local v9    # "writtenBytes":I
    const/4 v15, 0x4

    const/4 v14, 0x1

    const/4 v13, 0x0

    goto/16 :goto_0

    .line 61638
    .end local v9
    :cond_c
    const/4 v0, 0x0

    invoke-interface {v6, v9, v12, v0}, Lcom/facebook/ads/redexgen/X/Cb;->AE3(Lcom/facebook/ads/redexgen/X/CQ;IZ)I

    move-result v12

    goto :goto_2

    .line 61639
    :cond_d
    :goto_3
    iget v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A04:I

    iget v3, v5, Lcom/facebook/ads/redexgen/X/W1;->A06:I

    if-ge v0, v3, :cond_e

    .line 61640
    sub-int/2addr v3, v0

    const/4 v0, 0x0

    invoke-interface {v6, v9, v3, v0}, Lcom/facebook/ads/redexgen/X/Cb;->AE3(Lcom/facebook/ads/redexgen/X/CQ;IZ)I

    move-result v3

    .line 61641
    .local v0, "writtenBytes":I
    iget v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A04:I

    add-int/2addr v0, v3

    iput v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A04:I

    .line 61642
    .end local v0    # "writtenBytes":I
    goto :goto_3

    .line 61643
    :cond_e
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/DD;->A0I:[Z

    aget-boolean v10, v0, v7

    .line 61644
    .local v9, "sampleFlags":I
    const/4 v7, 0x0

    .line 61645
    .local v0, "cryptoData":Lcom/facebook/ads/redexgen/X/Ca;
    iget-boolean v0, v8, Lcom/facebook/ads/redexgen/X/DD;->A0A:Z

    if-eqz v0, :cond_f

    .line 61646
    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr v10, v0

    .line 61647
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/DD;->A08:Lcom/facebook/ads/redexgen/X/DC;

    if-eqz v0, :cond_11

    .line 61648
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/DD;->A08:Lcom/facebook/ads/redexgen/X/DC;

    .line 61649
    .local v3, "encryptionBox":Lcom/facebook/ads/redexgen/X/DC;
    :goto_4
    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/DC;->A01:Lcom/facebook/ads/redexgen/X/Ca;

    .line 61650
    .end local v3    # "encryptionBox":Lcom/facebook/ads/redexgen/X/DC;
    :cond_f
    iget v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A06:I

    const/4 v12, 0x0

    move-wide v3, v1

    .end local v2    # "sampleTimeUs":J
    .local v2, "sampleTimeUs":J
    .end local v0    # "cryptoData":Lcom/facebook/ads/redexgen/X/Ca;
    .local v3, "sampleIndex":I
    move-wide v8, v1

    move v11, v0

    move-object v13, v7

    move-object v7, v6

    invoke-interface/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/Cb;->AE5(JIIILcom/facebook/ads/redexgen/X/Ca;)V

    .line 61651
    .end local v2    # "sampleTimeUs":J
    .local v0, "sampleTimeUs":J
    invoke-direct {v5, v3, v4}, Lcom/facebook/ads/redexgen/X/W1;->A0E(J)V

    .line 61652
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0D:Lcom/facebook/ads/redexgen/X/D2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/D2;->A08()Z

    move-result v0

    if-nez v0, :cond_10

    .line 61653
    const/4 v0, 0x0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A0D:Lcom/facebook/ads/redexgen/X/D2;

    .line 61654
    :cond_10
    const/4 v0, 0x3

    iput v0, v5, Lcom/facebook/ads/redexgen/X/W1;->A02:I

    .line 61655
    const/4 v0, 0x1

    return v0

    .line 61656
    :cond_11
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/DD;->A07:Lcom/facebook/ads/redexgen/X/Cw;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Cw;->A02:I

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/DB;->A00(I)Lcom/facebook/ads/redexgen/X/DC;

    move-result-object v0

    goto :goto_4
.end method


# virtual methods
.method public final A8A(Lcom/facebook/ads/redexgen/X/CR;)V
    .locals 4

    .line 61657
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/W1;->A0C:Lcom/facebook/ads/redexgen/X/CR;

    .line 61658
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0N:Lcom/facebook/ads/redexgen/X/DB;

    if-eqz v0, :cond_0

    .line 61659
    iget v0, v0, Lcom/facebook/ads/redexgen/X/DB;->A03:I

    const/4 v3, 0x0

    invoke-interface {p1, v3, v0}, Lcom/facebook/ads/redexgen/X/CR;->AF1(II)Lcom/facebook/ads/redexgen/X/Cb;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/D2;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/D2;-><init>(Lcom/facebook/ads/redexgen/X/Cb;)V

    .line 61660
    .local p0, "bundle":Lcom/facebook/ads/redexgen/X/D2;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W1;->A0N:Lcom/facebook/ads/redexgen/X/DB;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cw;

    invoke-direct {v0, v3, v3, v3, v3}, Lcom/facebook/ads/redexgen/X/Cw;-><init>(IIII)V

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D2;->A07(Lcom/facebook/ads/redexgen/X/DB;Lcom/facebook/ads/redexgen/X/Cw;)V

    .line 61661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61662
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W1;->A0C()V

    .line 61663
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0C:Lcom/facebook/ads/redexgen/X/CR;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CR;->A5A()V

    .line 61664
    .end local p0    # "bundle":Lcom/facebook/ads/redexgen/X/D2;
    :cond_0
    return-void
.end method

.method public final ADD(Lcom/facebook/ads/redexgen/X/CQ;Lcom/facebook/ads/redexgen/X/CW;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61665
    :cond_0
    :goto_0
    iget v4, p0, Lcom/facebook/ads/redexgen/X/W1;->A02:I

    if-eqz v4, :cond_5

    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4b

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "Ub8SUYMnE0bQG8CZo0KwdlTNogw2mbM0"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_4

    const/4 v0, 0x2

    if-eq v4, v0, :cond_3

    .line 61666
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/W1;->A0Z(Lcom/facebook/ads/redexgen/X/CQ;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_2

    if-eqz v3, :cond_0

    .line 61667
    :goto_1
    const/4 v0, 0x0

    return v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A0Y:[Ljava/lang/String;

    const-string v1, "b"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    goto :goto_1

    .line 61668
    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/W1;->A0H(Lcom/facebook/ads/redexgen/X/CQ;)V

    .line 61669
    goto :goto_0

    .line 61670
    :cond_4
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/W1;->A0G(Lcom/facebook/ads/redexgen/X/CQ;)V

    .line 61671
    goto :goto_0

    .line 61672
    :cond_5
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/W1;->A0Y(Lcom/facebook/ads/redexgen/X/CQ;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61673
    const/4 v0, -0x1

    return v0
.end method

.method public final AE9(JJ)V
    .locals 3

    .line 61674
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 61675
    .local p0, "trackCount":I
    const/4 v1, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 61676
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/D2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/D2;->A04()V

    .line 61677
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61678
    .end local p1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0U:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 61679
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A03:I

    .line 61680
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/W1;->A0A:J

    .line 61681
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A0T:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 61682
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W1;->A0B()V

    .line 61683
    return-void
.end method

.method public final AEj(Lcom/facebook/ads/redexgen/X/CQ;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61684
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/D9;->A03(Lcom/facebook/ads/redexgen/X/CQ;)Z

    move-result v0

    return v0
.end method
