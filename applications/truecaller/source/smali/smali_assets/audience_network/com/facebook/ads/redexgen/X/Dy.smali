.class public final Lcom/facebook/ads/redexgen/X/Dy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Dv;,
        Lcom/facebook/ads/redexgen/X/VN;,
        Lcom/facebook/ads/redexgen/X/VM;,
        Lcom/facebook/ads/redexgen/X/Dx;,
        Lcom/facebook/ads/redexgen/X/Dw;
    }
.end annotation


# static fields
.field public static A00:I

.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final A03:Landroid/util/SparseIntArray;

.field public static final A04:Landroid/util/SparseIntArray;

.field public static final A05:Lcom/facebook/ads/redexgen/X/Dn;

.field public static final A06:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/facebook/ads/redexgen/X/Dv;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Dn;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final A07:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final A08:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "PUk6Ycp3IyZuDM2vxEClNB7s"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Cor2Bf7UAjKBCW6KQ3kJAY2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tBvhUMYEWbjuF5bg8fuW6r"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "p"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "fIpZ4gAxwncTaI4Qx56KLzmZZ7uUPeai"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "EGElOHn6uGhmkRxS9uXWLb9eFH9So4cV"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7k7mDGZCg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A02:[Ljava/lang/String;

    .line 29645
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Dy;->A0A()V

    const/16 v2, 0x291

    const/16 v1, 0x16

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dn;->A01(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Dn;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Dy;->A05:Lcom/facebook/ads/redexgen/X/Dn;

    .line 29646
    const/16 v2, 0x383

    const/16 v1, 0xa

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Dy;->A08:Ljava/util/regex/Pattern;

    .line 29647
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Dy;->A06:Ljava/util/HashMap;

    .line 29648
    const/4 v0, -0x1

    sput v0, Lcom/facebook/ads/redexgen/X/Dy;->A00:I

    .line 29649
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Dy;->A04:Landroid/util/SparseIntArray;

    .line 29650
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A04:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/16 v0, 0x42

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 29651
    sget-object v3, Lcom/facebook/ads/redexgen/X/Dy;->A04:Landroid/util/SparseIntArray;

    const/16 v16, 0x2

    const/16 v2, 0x4d

    move/from16 v0, v16

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 29652
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A04:Landroid/util/SparseIntArray;

    const/4 v3, 0x4

    const/16 v0, 0x58

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 29653
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A04:Landroid/util/SparseIntArray;

    const/16 v8, 0x8

    const/16 v0, 0x64

    invoke-virtual {v2, v0, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 29654
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Dy;->A03:Landroid/util/SparseIntArray;

    .line 29655
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A03:Landroid/util/SparseIntArray;

    const/16 v0, 0xa

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 29656
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A03:Landroid/util/SparseIntArray;

    const/16 v0, 0xb

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 29657
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A03:Landroid/util/SparseIntArray;

    const/16 v0, 0xc

    invoke-virtual {v2, v0, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 29658
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A03:Landroid/util/SparseIntArray;

    const/16 v14, 0x10

    const/16 v0, 0xd

    invoke-virtual {v2, v0, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 29659
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A03:Landroid/util/SparseIntArray;

    const/16 v7, 0x20

    const/16 v0, 0x14

    invoke-virtual {v2, v0, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 29660
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A03:Landroid/util/SparseIntArray;

    const/16 v13, 0x40

    const/16 v0, 0x15

    invoke-virtual {v2, v0, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 29661
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A03:Landroid/util/SparseIntArray;

    const/16 v6, 0x80

    const/16 v0, 0x16

    invoke-virtual {v2, v0, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 29662
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A03:Landroid/util/SparseIntArray;

    const/16 v12, 0x100

    const/16 v0, 0x1e

    invoke-virtual {v2, v0, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 29663
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A03:Landroid/util/SparseIntArray;

    const/16 v5, 0x200

    const/16 v0, 0x1f

    invoke-virtual {v2, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 29664
    sget-object v0, Lcom/facebook/ads/redexgen/X/Dy;->A03:Landroid/util/SparseIntArray;

    const/16 v11, 0x400

    invoke-virtual {v0, v7, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 29665
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dy;->A03:Landroid/util/SparseIntArray;

    const/16 v2, 0x800

    const/16 v0, 0x28

    invoke-virtual {v4, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29666
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A03:Landroid/util/SparseIntArray;

    const/16 v10, 0x1000

    const/16 v0, 0x29

    invoke-virtual {v2, v0, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 29667
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dy;->A03:Landroid/util/SparseIntArray;

    const/16 v2, 0x2000

    const/16 v0, 0x2a

    invoke-virtual {v4, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29668
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A03:Landroid/util/SparseIntArray;

    const/16 v9, 0x4000

    const/16 v0, 0x32

    invoke-virtual {v2, v0, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 29669
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dy;->A03:Landroid/util/SparseIntArray;

    const/16 v2, 0x33

    const v0, 0x8000

    invoke-virtual {v4, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 29670
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dy;->A03:Landroid/util/SparseIntArray;

    const/16 v2, 0x34

    const/high16 v0, 0x10000

    invoke-virtual {v4, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 29671
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Dy;->A07:Ljava/util/Map;

    .line 29672
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dy;->A07:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v15, 0x159

    const/4 v1, 0x3

    const/16 v0, 0x3b

    invoke-static {v15, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29673
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dy;->A07:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x160

    const/4 v1, 0x3

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29674
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dy;->A07:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x163

    const/4 v1, 0x3

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29675
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dy;->A07:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x166

    const/4 v1, 0x3

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29676
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dy;->A07:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x169

    const/4 v1, 0x3

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29677
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dy;->A07:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x139

    const/4 v1, 0x4

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29678
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dy;->A07:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x13d

    const/4 v1, 0x4

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29679
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dy;->A07:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x141

    const/4 v1, 0x4

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29680
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dy;->A07:Ljava/util/Map;

    const/high16 v0, 0x10000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x145

    const/4 v1, 0x4

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29681
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dy;->A07:Ljava/util/Map;

    const/high16 v0, 0x40000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x149

    const/4 v1, 0x4

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29682
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dy;->A07:Ljava/util/Map;

    const/high16 v0, 0x100000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x14d

    const/4 v1, 0x4

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29683
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dy;->A07:Ljava/util/Map;

    const/high16 v0, 0x400000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x151

    const/4 v1, 0x4

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29684
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dy;->A07:Ljava/util/Map;

    const/high16 v0, 0x1000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x155

    const/4 v1, 0x4

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29685
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dy;->A07:Ljava/util/Map;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0xdd

    const/4 v1, 0x3

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29686
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dy;->A07:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0xe0

    const/4 v1, 0x3

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29687
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dy;->A07:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0xe3

    const/4 v1, 0x3

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29688
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dy;->A07:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0xe6

    const/4 v1, 0x3

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29689
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dy;->A07:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0xe9

    const/4 v1, 0x3

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29690
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dy;->A07:Ljava/util/Map;

    const/16 v0, 0x800

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0xbd

    const/4 v1, 0x4

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29691
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dy;->A07:Ljava/util/Map;

    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0xc1

    const/4 v1, 0x4

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29692
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dy;->A07:Ljava/util/Map;

    const v0, 0x8000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0xc5

    const/4 v1, 0x4

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29693
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dy;->A07:Ljava/util/Map;

    const/high16 v0, 0x20000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0xc9

    const/4 v1, 0x4

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29694
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dy;->A07:Ljava/util/Map;

    const/high16 v0, 0x80000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0xcd

    const/4 v1, 0x4

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29695
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dy;->A07:Ljava/util/Map;

    const/high16 v0, 0x200000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0xd1

    const/4 v1, 0x4

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29696
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dy;->A07:Ljava/util/Map;

    const/high16 v0, 0x800000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0xd5

    const/4 v1, 0x4

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29697
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dy;->A07:Ljava/util/Map;

    const/high16 v0, 0x2000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0xd9

    const/4 v1, 0x4

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29698
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Dw;
        }
    .end annotation

    .line 29700
    sget v1, Lcom/facebook/ads/redexgen/X/Dy;->A00:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_3

    .line 29701
    const/4 v3, 0x0

    .line 29702
    .local v1, "result":I
    const/4 v5, 0x0

    const/16 v2, 0x3ee

    const/16 v1, 0x9

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/Dy;->A06(Ljava/lang/String;Z)Lcom/facebook/ads/redexgen/X/Dn;

    move-result-object v0

    .line 29703
    .local v3, "decoderInfo":Lcom/facebook/ads/redexgen/X/Dn;
    if-eqz v0, :cond_2

    .line 29704
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dn;->A0J()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A02:[Ljava/lang/String;

    const-string v1, "KZ3htwrCZaN4pnqbUvwqLO4F2z8ifUlK"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "b2BkF0yBOqWKoYmDncjILGp6agQJiwPk"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    array-length v1, v4

    :goto_0
    if-ge v5, v1, :cond_1

    aget-object v0, v4, v5

    .line 29705
    .local v1, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v0, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dy;->A01(I)I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 29706
    .end local v1    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 29707
    :cond_1
    sget v1, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_4

    const v0, 0x54600

    :goto_1
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 29708
    :cond_2
    sput v3, Lcom/facebook/ads/redexgen/X/Dy;->A00:I

    .line 29709
    .end local v1
    .end local v3    # "decoderInfo":Lcom/facebook/ads/redexgen/X/Dn;
    :cond_3
    sget v0, Lcom/facebook/ads/redexgen/X/Dy;->A00:I

    return v0

    .line 29710
    :cond_4
    const v0, 0x2a300

    goto :goto_1
.end method

.method public static A01(I)I
    .locals 4

    .line 29711
    const/4 v0, 0x1

    const/16 v1, 0x6300

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/high16 v3, 0x900000

    const/high16 v2, 0x200000

    const v1, 0x65400

    const v0, 0x18c00

    sparse-switch p0, :sswitch_data_0

    .line 29712
    const/4 v0, -0x1

    return v0

    .line 29713
    :sswitch_0
    return v0

    .line 29714
    :sswitch_1
    return v0

    .line 29715
    :sswitch_2
    return v0

    .line 29716
    :sswitch_3
    const v0, 0x31800

    return v0

    .line 29717
    :sswitch_4
    return v1

    .line 29718
    :sswitch_5
    return v1

    .line 29719
    :sswitch_6
    const v0, 0xe1000

    return v0

    .line 29720
    :sswitch_7
    const/high16 v0, 0x140000

    return v0

    .line 29721
    :sswitch_8
    return v2

    .line 29722
    :sswitch_9
    return v2

    .line 29723
    :sswitch_a
    const/high16 v0, 0x220000

    return v0

    .line 29724
    :sswitch_b
    const v0, 0x564000

    return v0

    .line 29725
    :sswitch_c
    return v3

    .line 29726
    :sswitch_d
    return v3

    .line 29727
    :cond_0
    return v1

    .line 29728
    :cond_1
    return v1

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
        0x20 -> :sswitch_2
        0x40 -> :sswitch_3
        0x80 -> :sswitch_4
        0x100 -> :sswitch_5
        0x200 -> :sswitch_6
        0x400 -> :sswitch_7
        0x800 -> :sswitch_8
        0x1000 -> :sswitch_9
        0x2000 -> :sswitch_a
        0x4000 -> :sswitch_b
        0x8000 -> :sswitch_c
        0x10000 -> :sswitch_d
    .end sparse-switch
.end method

.method public static A02(Ljava/lang/String;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 29729
    const/4 v9, 0x0

    if-nez p0, :cond_0

    .line 29730
    return-object v9

    .line 29731
    :cond_0
    const/16 v2, 0x381

    const/4 v1, 0x2

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 29732
    .local v9, "parts":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v7, v6, v8

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_1
    const/4 v8, -0x1

    :goto_0
    if-eqz v8, :cond_3

    if-eq v8, v3, :cond_3

    if-eq v8, v4, :cond_2

    if-eq v8, v5, :cond_2

    .line 29733
    return-object v9

    .line 29734
    :sswitch_0
    const/16 v2, 0x3a8

    const/4 v1, 0x4

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v8

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A02:[Ljava/lang/String;

    const-string v1, "URe3HeFimxZDPUOt0d5oLD2A6pzKN2og"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "XxvGV8PZkl56DMpAUShQLpZcYfSVK56v"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x2

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x3ac

    const/4 v1, 0x4

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x3

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x3b9

    const/4 v1, 0x4

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x3bd

    const/4 v1, 0x4

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    .line 29735
    :cond_2
    invoke-static {p0, v6}, Lcom/facebook/ads/redexgen/X/Dy;->A03(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 29736
    :cond_3
    invoke-static {p0, v6}, Lcom/facebook/ads/redexgen/X/Dy;->A04(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2ddf23 -> :sswitch_0
        0x2ddf24 -> :sswitch_1
        0x30d038 -> :sswitch_2
        0x310dbc -> :sswitch_3
    .end sparse-switch
.end method

.method public static A03(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 29737
    array-length v6, p1

    const/16 v2, 0xee

    const/16 v1, 0x25

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    const/4 v10, 0x0

    const/16 v3, 0x1a9

    const/16 v1, 0xe

    const/16 v0, 0x48

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v4

    if-ge v6, v5, :cond_0

    .line 29738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29739
    return-object v10

    .line 29740
    :cond_0
    const/4 v9, 0x1

    :try_start_0
    aget-object v0, p1, v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-ne v1, v0, :cond_1

    .line 29741
    aget-object v1, p1, v9

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 29742
    .local v6, "profileInteger":Ljava/lang/Integer;
    aget-object v1, p1, v9

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .local p0, "levelInteger":Ljava/lang/Integer;
    goto :goto_0

    .line 29743
    .end local p0    # "levelInteger":Ljava/lang/Integer;
    .end local v6    # "profileInteger":Ljava/lang/Integer;
    :cond_1
    array-length v7, p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x3

    sget-object v3, Lcom/facebook/ads/redexgen/X/Dy;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v3, v0

    const/4 v0, 0x4

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v3, Lcom/facebook/ads/redexgen/X/Dy;->A02:[Ljava/lang/String;

    const-string v1, "q6TgT0Zl1BFx8Drr2JTlp2"

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const-string v1, "f"

    const/4 v0, 0x3

    aput-object v1, v3, v0

    if-lt v7, v6, :cond_5

    .line 29744
    :try_start_1
    aget-object v0, p1, v9

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 29745
    .local p0, "profileInteger":Ljava/lang/Integer;
    aget-object v0, p1, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 29746
    .local p1, "levelInteger":Ljava/lang/Integer;
    :goto_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/Dy;->A04:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v7, -0x1

    invoke-virtual {v1, v0, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 29747
    .local v6, "profile":I
    if-ne v6, v7, :cond_2

    .line 29748
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x32e

    const/16 v1, 0x15

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29749
    return-object v10

    .line 29750
    :cond_2
    sget-object v8, Lcom/facebook/ads/redexgen/X/Dy;->A03:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A02:[Ljava/lang/String;

    const-string v1, "OIveFKmAPVIRESrbGac3LUkj9r6x05YL"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "ikuxhPNUokluk07GzS0qL2IBF7JsSDB6"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v8, v3, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 29751
    .local v0, "level":I
    if-ne v0, v7, :cond_4

    .line 29752
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x31b

    const/16 v1, 0x13

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29753
    return-object v10

    :cond_3
    invoke-virtual {v8, v3, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 29754
    .local v0, "level":I
    if-ne v0, v7, :cond_4

    goto :goto_1

    .line 29755
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 29756
    .end local p0    # "profileInteger":Ljava/lang/Integer;
    .end local p1    # "levelInteger":Ljava/lang/Integer;
    .end local v6    # "profile":I
    .end local v0    # "level":I
    :cond_5
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29757
    return-object v10
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 29758
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 29759
    .local p0, "e":Ljava/lang/NumberFormatException;
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29760
    return-object v10
.end method

.method public static A04(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 29761
    array-length v5, p1

    const/16 v2, 0x113

    const/16 v1, 0x26

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    const/16 v2, 0x1a9

    const/16 v1, 0xe

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x4

    if-ge v5, v0, :cond_0

    .line 29762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29763
    return-object v8

    .line 29764
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/Dy;->A08:Ljava/util/regex/Pattern;

    const/4 v6, 0x1

    aget-object v0, p1, v6

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 29765
    .local p0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 29766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29767
    return-object v8

    .line 29768
    :cond_1
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 29769
    .local p1, "profileString":Ljava/lang/String;
    const/16 v2, 0x35

    const/4 v1, 0x1

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29770
    const/4 v3, 0x1

    .line 29771
    .local v0, "profile":I
    .restart local v0    # "profile":I
    :goto_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/Dy;->A07:Ljava/util/Map;

    const/4 v0, 0x3

    aget-object v0, p1, v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 29772
    .local v3, "level":Ljava/lang/Integer;
    if-nez v2, :cond_3

    .line 29773
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x343

    const/16 v1, 0x1b

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29774
    return-object v8

    .line 29775
    .end local v0    # "profile":I
    :cond_2
    const/16 v2, 0x36

    const/4 v1, 0x1

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29776
    const/4 v3, 0x2

    goto :goto_0

    .line 29777
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 29778
    .end local v0
    .end local v3    # "level":Ljava/lang/Integer;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x35e

    const/16 v1, 0x1d

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29779
    return-object v8
.end method

.method public static A05()Lcom/facebook/ads/redexgen/X/Dn;
    .locals 1

    .line 29780
    sget-object v0, Lcom/facebook/ads/redexgen/X/Dy;->A05:Lcom/facebook/ads/redexgen/X/Dn;

    return-object v0
.end method

.method public static A06(Ljava/lang/String;Z)Lcom/facebook/ads/redexgen/X/Dn;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Dw;
        }
    .end annotation

    .line 29781
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Dy;->A09(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    .line 29782
    .local p0, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/mediacodec/MediaCodecInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/redexgen/X/Dn;

    goto :goto_0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dy;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/Dv;Lcom/facebook/ads/redexgen/X/Dx;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Dv;",
            "Lcom/facebook/ads/redexgen/X/Dx;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/Dn;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Dw;
        }
    .end annotation

    .line 29783
    :try_start_0
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 29784
    .local v9, "decoderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/mediacodec/MediaCodecInfo;>;"
    move-object/from16 v9, p0

    iget-object v8, v9, Lcom/facebook/ads/redexgen/X/Dv;->A00:Ljava/lang/String;

    .line 29785
    .local p0, "mimeType":Ljava/lang/String;
    move-object/from16 p0, p1

    invoke-interface/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Dx;->A62()I

    move-result v16

    .line 29786
    .local v17, "numberOfCodecs":I
    invoke-interface/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Dx;->AE7()Z

    move-result v7

    .line 29787
    .local v17, "secureDecodersExplicit":Z
    const/4 v3, 0x0

    .local v8, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v3, v0, :cond_6

    .line 29788
    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/Dx;->A63(I)Landroid/media/MediaCodecInfo;

    move-result-object v11

    .line 29789
    .local v8, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 29790
    .local v16, "codecName":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p2

    invoke-static {v11, v6, v7, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A0C(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29791
    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v10

    array-length v2, v10

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v5, v10, v1

    .line 29792
    .local v11, "supportedType":Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 29793
    :try_start_2
    invoke-virtual {v11, v5}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v12

    .line 29794
    .local v9, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    move-object/from16 v0, p0

    invoke-interface {v0, v8, v12}, Lcom/facebook/ads/redexgen/X/Dx;->A8X(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v4

    .line 29795
    .local v6, "secure":Z
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Dy;->A0D(Ljava/lang/String;)Z

    move-result v13

    .line 29796
    .local v6, "forceDisableAdaptive":Z
    if-eqz v7, :cond_0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    iget-boolean v0, v9, Lcom/facebook/ads/redexgen/X/Dv;->A01:Z

    .end local v6    # "forceDisableAdaptive":Z
    .local v0, "secure":Z
    if-eq v0, v4, :cond_2

    .end local v6
    .restart local v0    # "secure":Z
    :cond_0
    if-nez v7, :cond_1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    iget-boolean v0, v9, Lcom/facebook/ads/redexgen/X/Dv;->A01:Z

    if-nez v0, :cond_1

    goto :goto_2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 29797
    .end local v11    # "supportedType":Ljava/lang/String;
    .restart local v17    # "secureDecodersExplicit":Z
    :catch_0
    move-exception v15

    goto :goto_3

    .line 29798
    .restart local v9    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .restart local v0    # "secure":Z
    .restart local v6    # "forceDisableAdaptive":Z
    .end local v17    # "secureDecodersExplicit":Z
    .end local v6    # "forceDisableAdaptive":Z
    .restart local v3
    .restart local v11    # "supportedType":Ljava/lang/String;
    :cond_1
    if-nez v7, :cond_3

    if-eqz v4, :cond_3

    .line 29799
    :try_start_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0x2e

    const/4 v4, 0x7

    const/16 v0, 0x5b

    invoke-static {v15, v4, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 29800
    const/4 v0, 0x1

    invoke-static {v4, v8, v12, v13, v0}, Lcom/facebook/ads/redexgen/X/Dn;->A02(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Lcom/facebook/ads/redexgen/X/Dn;

    move-result-object v4

    .line 29801
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 29802
    :cond_2
    :goto_2
    const/4 v0, 0x0

    .end local v17
    .end local v6
    .local v3, "forceDisableAdaptive":Z
    .local v11, "numberOfCodecs":I
    invoke-static {v6, v8, v12, v13, v0}, Lcom/facebook/ads/redexgen/X/Dn;->A02(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Lcom/facebook/ads/redexgen/X/Dn;

    move-result-object v4

    .line 29803
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 29804
    .end local v9    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v0    # "secure":Z
    .end local v3    # "forceDisableAdaptive":Z
    :catch_1
    move-exception v15

    goto :goto_3

    .end local v9
    .end local v0
    .end local v6
    :catch_2
    move-exception v15

    goto :goto_3

    .end local v11    # "numberOfCodecs":I
    .restart local v17    # "secureDecodersExplicit":Z
    :catch_3
    move-exception v15

    .line 29805
    .end local v17    # "secureDecodersExplicit":Z
    .local v9, "e":Ljava/lang/Exception;
    .restart local v11    # "numberOfCodecs":I
    :goto_3
    :try_start_6
    sget v14, Lcom/facebook/ads/redexgen/X/Il;->A02:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    const/16 v13, 0x17

    const/16 v12, 0x1a9

    const/16 v4, 0xe

    const/16 v0, 0x48

    invoke-static {v12, v4, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v4

    if-gt v14, v13, :cond_5

    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 29806
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x30c

    const/16 v5, 0xf

    const/16 v0, 0x49

    invoke-static {v12, v5, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x2

    const/16 v5, 0x1f

    const/16 v0, 0x3a

    invoke-static {v12, v5, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29807
    .end local v17
    .end local v11    # "numberOfCodecs":I
    .restart local v11    # "numberOfCodecs":I
    :cond_3
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 29808
    .end local v17
    .end local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v16    # "codecName":Ljava/lang/String;
    .restart local v11    # "numberOfCodecs":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 29809
    :goto_5
    return-object v17

    .line 29810
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa7

    const/16 v1, 0x16

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    const/4 v1, 0x1

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29811
    .end local v0
    .end local v0
    .end local v10
    throw v15

    .line 29812
    .restart local v9    # "e":Ljava/lang/Exception;
    .restart local p0    # "mimeType":Ljava/lang/String;
    .restart local v17    # "secureDecodersExplicit":Z
    .restart local v17    # "secureDecodersExplicit":Z
    :cond_6
    return-object v17
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 29813
    .end local v9    # "e":Ljava/lang/Exception;
    .end local p0    # "mimeType":Ljava/lang/String;
    .end local v17    # "secureDecodersExplicit":Z
    .end local v17
    :catch_4
    move-exception v2

    goto :goto_6

    .end local v9
    .end local p0
    .end local v17
    .end local v8
    .end local v11    # "numberOfCodecs":I
    :catch_5
    move-exception v2

    .line 29814
    .restart local v9    # "e":Ljava/lang/Exception;
    :goto_6
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Dw;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Dw;-><init>(Ljava/lang/Throwable;Lcom/facebook/ads/redexgen/X/Du;)V

    throw v0
.end method

.method public static declared-synchronized A09(Ljava/lang/String;Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Dn;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Dw;
        }
    .end annotation

    const-class v8, Lcom/facebook/ads/redexgen/X/Dy;

    monitor-enter v8

    .line 29815
    :try_start_0
    new-instance v3, Lcom/facebook/ads/redexgen/X/Dv;

    invoke-direct {v3, p0, p1}, Lcom/facebook/ads/redexgen/X/Dv;-><init>(Ljava/lang/String;Z)V

    .line 29816
    .local p1, "key":Lcom/facebook/ads/redexgen/X/Dv;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Dy;->A06:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 29817
    .local v8, "cachedDecoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/mediacodec/MediaCodecInfo;>;"
    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29818
    monitor-exit v8

    return-object v0

    .line 29819
    :cond_0
    :try_start_1
    sget v0, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/4 v2, 0x0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    new-instance v5, Lcom/facebook/ads/redexgen/X/VM;

    invoke-direct {v5, p1}, Lcom/facebook/ads/redexgen/X/VM;-><init>(Z)V

    .line 29820
    .local v3, "mediaCodecList":Lcom/facebook/ads/redexgen/X/Dx;
    :goto_0
    invoke-static {v3, v5, p0}, Lcom/facebook/ads/redexgen/X/Dy;->A08(Lcom/facebook/ads/redexgen/X/Dv;Lcom/facebook/ads/redexgen/X/Dx;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 29821
    .local v0, "decoderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/mediacodec/MediaCodecInfo;>;"
    if-eqz p1, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    if-gt v1, v0, :cond_1

    sget v1, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v0, 0x17

    if-gt v1, v0, :cond_1

    .line 29822
    new-instance v5, Lcom/facebook/ads/redexgen/X/VN;

    invoke-direct {v5, v2}, Lcom/facebook/ads/redexgen/X/VN;-><init>(Lcom/facebook/ads/redexgen/X/Du;)V

    .line 29823
    invoke-static {v3, v5, p0}, Lcom/facebook/ads/redexgen/X/Dy;->A08(Lcom/facebook/ads/redexgen/X/Dv;Lcom/facebook/ads/redexgen/X/Dx;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 29824
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 29825
    const/16 v2, 0x1a9

    const/16 v1, 0xe

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x176

    const/16 v1, 0x33

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    const/16 v1, 0xc

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 29826
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Dn;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Dn;->A02:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29827
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29828
    :cond_1
    const/16 v2, 0x39a

    const/16 v1, 0xe

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29829
    const/16 v2, 0x390

    const/16 v1, 0xa

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v2

    iget-boolean v1, v3, Lcom/facebook/ads/redexgen/X/Dv;->A01:Z

    new-instance v0, Lcom/facebook/ads/redexgen/X/Dv;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Dv;-><init>(Ljava/lang/String;Z)V

    .line 29830
    .local v0, "eac3Key":Lcom/facebook/ads/redexgen/X/Dv;
    invoke-static {v0, v5, p0}, Lcom/facebook/ads/redexgen/X/Dy;->A08(Lcom/facebook/ads/redexgen/X/Dv;Lcom/facebook/ads/redexgen/X/Dx;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 29831
    .local v0, "eac3DecoderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/mediacodec/MediaCodecInfo;>;"
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 29832
    .end local v0    # "eac3DecoderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/mediacodec/MediaCodecInfo;>;"
    .end local v0
    :cond_2
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Dy;->A0B(Ljava/util/List;)V

    .line 29833
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 29834
    .local v0, "unmodifiableDecoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/mediacodec/MediaCodecInfo;>;"
    sget-object v0, Lcom/facebook/ads/redexgen/X/Dy;->A06:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 29835
    :cond_3
    new-instance v5, Lcom/facebook/ads/redexgen/X/VN;

    invoke-direct {v5, v2}, Lcom/facebook/ads/redexgen/X/VN;-><init>(Lcom/facebook/ads/redexgen/X/Du;)V

    goto/16 :goto_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29836
    :goto_1
    monitor-exit v8

    return-object v1

    .line 29837
    .end local p1    # "key":Lcom/facebook/ads/redexgen/X/Dv;
    .end local v8    # "cachedDecoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/mediacodec/MediaCodecInfo;>;"
    .end local v3    # "mediaCodecList":Lcom/facebook/ads/redexgen/X/Dx;
    .end local v0    # "unmodifiableDecoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/mediacodec/MediaCodecInfo;>;"
    .end local v0
    .end local v2
    .end local v1
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0x421

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Dy;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x49t
        -0x41t
        -0x57t
        -0x4ft
        -0x11t
        -0x16t
        -0xet
        -0xbt
        -0x12t
        -0x13t
        -0x57t
        -0x3t
        -0x8t
        -0x57t
        -0x6t
        -0x2t
        -0x12t
        -0x5t
        0x2t
        -0x57t
        -0x14t
        -0x16t
        -0x7t
        -0x16t
        -0x15t
        -0xet
        -0xbt
        -0xet
        -0x3t
        -0xet
        -0x12t
        -0x4t
        -0x4et
        -0x73t
        -0x3bt
        -0x49t
        -0x28t
        0xat
        0xat
        0xct
        0x4t
        0x0t
        0x5t
        -0x2t
        -0x2ft
        -0x49t
        -0x28t
        0x1dt
        0xft
        0xdt
        0x1ft
        0x1ct
        0xft
        -0x2et
        -0x53t
        -0x3at
        -0x3et
        -0x3at
        -0x1bt
        -0x2bt
        -0x43t
        -0x43t
        -0x41t
        -0x40t
        -0x1ft
        -0x21t
        -0x15t
        -0x20t
        -0x1ft
        -0x12t
        -0x16t
        -0x28t
        -0x24t
        -0x29t
        -0x25t
        -0x69t
        -0x7bt
        -0x77t
        -0x7ct
        -0x77t
        -0xat
        -0x1ct
        -0x17t
        -0x1dt
        -0x19t
        -0x4et
        -0x60t
        -0x5bt
        -0x61t
        -0x5ct
        -0x12t
        -0x1ft
        -0x1ft
        -0x25t
        -0x23t
        -0x6bt
        -0x78t
        -0x78t
        -0x7et
        -0x7bt
        -0xbt
        -0x18t
        -0x18t
        -0x1et
        -0x18t
        -0x35t
        -0x42t
        -0x42t
        -0x47t
        -0x42t
        -0x4bt
        -0x45t
        -0x3et
        -0x4dt
        -0x4dt
        -0x4bt
        -0x4at
        -0x29t
        -0x2bt
        -0x1ft
        -0x2at
        -0x29t
        -0x1ct
        -0x10t
        -0xat
        -0x3t
        -0x12t
        -0x6t
        -0x1t
        -0x5t
        -0x11t
        -0xft
        0x12t
        0x10t
        0x1ct
        0x11t
        0x12t
        0x1ft
        -0x50t
        -0x4at
        -0x43t
        -0x46t
        -0x43t
        -0x60t
        -0x4ft
        -0x2et
        -0x30t
        -0x24t
        -0x2ft
        -0x2et
        -0x21t
        -0x4ct
        -0x46t
        -0x3ft
        -0x39t
        -0x20t
        -0x1dt
        -0x2dt
        -0x26t
        -0x1ct
        -0x4bt
        -0x2at
        -0x2ct
        -0x20t
        -0x2bt
        -0x2at
        -0x1dt
        -0x4dt
        -0x32t
        -0x2at
        -0x27t
        -0x2et
        -0x2ft
        -0x73t
        -0x1ft
        -0x24t
        -0x73t
        -0x22t
        -0x1et
        -0x2et
        -0x21t
        -0x1at
        -0x73t
        -0x30t
        -0x24t
        -0x2ft
        -0x2et
        -0x30t
        -0x73t
        -0x7t
        -0x1et
        -0x1dt
        -0x1ft
        -0x37t
        -0x4et
        -0x4dt
        -0x4ct
        -0x46t
        -0x5dt
        -0x59t
        -0x5et
        -0x4t
        -0x1bt
        -0x17t
        -0x19t
        -0x5dt
        -0x74t
        -0x70t
        -0x6ft
        0xat
        -0xdt
        -0x6t
        -0xet
        -0x47t
        -0x5et
        -0x57t
        -0x5ct
        -0x10t
        -0x27t
        -0x20t
        -0x22t
        -0x5t
        -0x1at
        -0x1dt
        -0xat
        -0x1ct
        -0x22t
        -0x30t
        -0x42t
        -0x45t
        0x12t
        0x3t
        -0x6t
        -0x2ft
        -0x3et
        -0x44t
        -0x56t
        -0x51t
        0xbt
        0x29t
        0x30t
        0x31t
        0x34t
        0x2bt
        0x30t
        0x29t
        -0x1et
        0x2ft
        0x23t
        0x2et
        0x28t
        0x31t
        0x34t
        0x2ft
        0x27t
        0x26t
        -0x1et
        0x3t
        0x18t
        0x5t
        -0x1et
        0x25t
        0x31t
        0x26t
        0x27t
        0x25t
        -0x1et
        0x35t
        0x36t
        0x34t
        0x2bt
        0x30t
        0x29t
        -0x4t
        -0x1et
        -0x24t
        -0x6t
        0x1t
        0x2t
        0x5t
        -0x4t
        0x1t
        -0x6t
        -0x4dt
        0x0t
        -0xct
        -0x1t
        -0x7t
        0x2t
        0x5t
        0x0t
        -0x8t
        -0x9t
        -0x4dt
        -0x25t
        -0x28t
        -0x17t
        -0x2at
        -0x4dt
        -0xat
        0x2t
        -0x9t
        -0x8t
        -0xat
        -0x4dt
        0x6t
        0x7t
        0x5t
        -0x4t
        0x1t
        -0x6t
        -0x33t
        -0x4dt
        -0x22t
        -0x3dt
        -0x3ct
        -0x3et
        -0x4et
        -0x69t
        -0x68t
        -0x67t
        -0x18t
        -0x33t
        -0x2ft
        -0x34t
        -0x52t
        -0x6dt
        -0x69t
        -0x6bt
        -0x11t
        -0x2ct
        -0x28t
        -0x27t
        -0x46t
        -0x61t
        -0x5at
        -0x62t
        -0x42t
        -0x5dt
        -0x56t
        -0x5bt
        -0x51t
        -0x6ct
        -0x65t
        -0x67t
        -0x2at
        -0x43t
        -0x46t
        0x4t
        -0x15t
        -0x12t
        0x20t
        -0x5dt
        -0x73t
        -0x79t
        -0x15t
        -0x2bt
        -0x2et
        -0x25t
        -0x38t
        -0x41t
        -0xft
        -0x22t
        -0x28t
        -0x3et
        -0x3bt
        -0x58t
        -0x47t
        -0x26t
        -0x28t
        -0x1ct
        -0x27t
        -0x26t
        -0x19t
        0x7t
        0x1ft
        0x1et
        0x23t
        0x1bt
        -0x3t
        0x29t
        0x1et
        0x1ft
        0x1dt
        0x6t
        0x23t
        0x2dt
        0x2et
        -0x26t
        -0x5t
        0xat
        0x3t
        -0x26t
        0x1et
        0x23t
        0x1et
        0x28t
        -0x1ft
        0x2et
        -0x26t
        0x26t
        0x23t
        0x2dt
        0x2et
        -0x26t
        0x2dt
        0x1ft
        0x1dt
        0x2ft
        0x2ct
        0x1ft
        -0x26t
        0x1et
        0x1ft
        0x1dt
        0x29t
        0x1et
        0x1ft
        0x2ct
        -0x26t
        0x20t
        0x29t
        0x2ct
        -0xct
        -0x26t
        -0x1ct
        -0x4t
        -0x5t
        0x0t
        -0x8t
        -0x26t
        0x6t
        -0x5t
        -0x4t
        -0x6t
        -0x14t
        0xbt
        0x0t
        0x3t
        -0x5bt
        -0x44t
        -0x31t
        -0x34t
        -0x36t
        0x77t
        -0x78t
        -0x79t
        -0xat
        -0x15t
        -0x7t
        -0xat
        -0x10t
        -0x15t
        -0x2ct
        -0x1t
        -0x4t
        -0x26t
        -0x4dt
        -0x4ft
        -0x44t
        -0x6et
        -0x57t
        -0x24t
        -0x23t
        -0x2et
        -0x2dt
        -0x29t
        -0x6et
        -0x5bt
        -0x5bt
        -0x59t
        -0x6et
        -0x58t
        -0x37t
        -0x39t
        -0x2dt
        -0x38t
        -0x37t
        -0x2at
        0x19t
        0x17t
        0x22t
        -0x8t
        0xft
        0x42t
        0x43t
        0x38t
        0x39t
        0x3dt
        -0x8t
        0xbt
        0x20t
        0xdt
        -0x8t
        0xet
        0x2ft
        0x2dt
        0x39t
        0x2et
        0x2ft
        0x3ct
        0x15t
        0x13t
        0x1et
        -0xct
        0xbt
        0x3et
        0x3ft
        0x34t
        0x35t
        0x39t
        -0xct
        0x7t
        0x1ct
        0x9t
        -0xct
        0xat
        0x2bt
        0x29t
        0x35t
        0x2at
        0x2bt
        0x38t
        -0xct
        0x39t
        0x2bt
        0x29t
        0x3bt
        0x38t
        0x2bt
        0x3t
        0x1t
        0xct
        -0x1et
        0x1t
        0x8t
        -0x1t
        -0x1et
        -0xbt
        0x9t
        -0x8t
        -0x3t
        0x3t
        -0x1et
        -0x8t
        -0x7t
        -0x9t
        0x3t
        -0x8t
        -0x7t
        0x6t
        -0x1et
        -0xbt
        -0xbt
        -0x9t
        -0x14t
        -0x16t
        -0xbt
        -0x35t
        -0x16t
        -0xft
        -0x18t
        -0x35t
        -0x22t
        -0xet
        -0x1ft
        -0x1at
        -0x14t
        -0x35t
        -0x1ft
        -0x1et
        -0x20t
        -0x14t
        -0x1ft
        -0x1et
        -0x11t
        -0x35t
        -0x1ft
        -0x10t
        -0x13t
        -0x22t
        -0x20t
        -0x30t
        -0x26t
        -0x28t
        -0x1dt
        -0x47t
        -0x28t
        -0x21t
        -0x2at
        -0x47t
        -0x34t
        -0x20t
        -0x31t
        -0x2ct
        -0x26t
        -0x47t
        -0x31t
        -0x30t
        -0x32t
        -0x26t
        -0x31t
        -0x30t
        -0x23t
        -0x47t
        -0x23t
        -0x34t
        -0x1et
        -0x17t
        -0x19t
        -0xet
        -0x38t
        -0x13t
        -0x21t
        -0x23t
        -0x38t
        -0x19t
        -0x16t
        -0x33t
        -0x38t
        -0x22t
        -0x1t
        -0x3t
        0x9t
        -0x2t
        -0x1t
        0xct
        -0x3dt
        -0x3ft
        -0x34t
        -0x5et
        -0x39t
        -0x47t
        -0x49t
        -0x5et
        -0x2bt
        -0x2bt
        -0x29t
        -0x5et
        -0x28t
        -0x27t
        -0x29t
        -0x59t
        -0x5bt
        -0x50t
        -0x7at
        -0x55t
        -0x63t
        -0x65t
        -0x7at
        -0x32t
        -0x38t
        -0x70t
        -0x7at
        -0x44t
        -0x43t
        -0x45t
        -0x2bt
        -0x2dt
        -0x22t
        -0x4ct
        -0x13t
        -0xbt
        -0xbt
        -0x13t
        -0xet
        -0x15t
        -0x4ct
        -0x8t
        -0x19t
        -0x3t
        -0x4ct
        -0x16t
        -0x15t
        -0x17t
        -0xbt
        -0x16t
        -0x15t
        -0x8t
        0x18t
        0x16t
        0x21t
        -0x9t
        0x3at
        0x2ct
        0x38t
        0x36t
        -0x9t
        0x2at
        0x3et
        0x2dt
        0x32t
        0x38t
        -0x9t
        0x2dt
        0x2et
        0x2ct
        0x38t
        0x2dt
        0x2et
        0x3bt
        -0x9t
        0x2at
        0x2at
        0x2ct
        -0x57t
        -0x59t
        -0x4et
        -0x78t
        -0x35t
        -0x43t
        -0x37t
        -0x39t
        -0x78t
        -0x45t
        -0x31t
        -0x42t
        -0x3dt
        -0x37t
        -0x78t
        -0x42t
        -0x41t
        -0x43t
        -0x37t
        -0x42t
        -0x41t
        -0x34t
        -0x78t
        -0x39t
        -0x36t
        -0x73t
        -0x54t
        -0x56t
        -0x4bt
        -0x75t
        -0x32t
        -0x40t
        -0x34t
        -0x36t
        -0x75t
        -0x2dt
        -0x3at
        -0x3ft
        -0x3et
        -0x34t
        -0x75t
        -0x3ft
        -0x3et
        -0x40t
        -0x34t
        -0x3ft
        -0x3et
        -0x31t
        -0x75t
        -0x2dt
        -0x33t
        -0x6bt
        -0x33t
        -0x43t
        -0x59t
        -0x56t
        -0x52t
        -0x3ft
        -0x43t
        -0x53t
        -0x69t
        -0x66t
        -0x61t
        -0x4ft
        0x21t
        0x11t
        0x24t
        0x1t
        -0x1t
        0x5t
        0x1t
        -0x21t
        -0x1et
        -0x1ct
        -0x9t
        -0x15t
        0x3t
        0x1t
        0x8t
        0x8t
        0x1t
        0x6t
        -0x1t
        -0x48t
        -0x5t
        0x7t
        -0x4t
        -0x3t
        -0x5t
        -0x48t
        -0x14t
        0x5t
        0x2t
        0x5t
        0x6t
        0xet
        0x5t
        -0x49t
        -0x28t
        -0x13t
        -0x26t
        -0x49t
        0x3t
        -0x4t
        0xdt
        -0x4t
        0x3t
        -0x2ft
        -0x49t
        -0x4et
        -0x35t
        -0x38t
        -0x35t
        -0x34t
        -0x2ct
        -0x35t
        0x7dt
        -0x62t
        -0x4dt
        -0x60t
        0x7dt
        -0x33t
        -0x31t
        -0x34t
        -0x3dt
        -0x3at
        -0x37t
        -0x3et
        -0x69t
        0x7dt
        0x17t
        0x30t
        0x2dt
        0x30t
        0x31t
        0x39t
        0x30t
        -0x1et
        0xat
        0x7t
        0x18t
        0x5t
        -0x1et
        0x2et
        0x27t
        0x38t
        0x27t
        0x2et
        -0x1et
        0x35t
        0x36t
        0x34t
        0x2bt
        0x30t
        0x29t
        -0x4t
        -0x1et
        -0x1et
        -0x5t
        -0x8t
        -0x5t
        -0x4t
        0x4t
        -0x5t
        -0x53t
        -0x2bt
        -0x2et
        -0x1dt
        -0x30t
        -0x53t
        -0x3t
        -0x1t
        -0x4t
        -0xdt
        -0xat
        -0x7t
        -0xet
        -0x53t
        0x0t
        0x1t
        -0x1t
        -0xat
        -0x5t
        -0xct
        -0x39t
        -0x53t
        -0x25t
        -0x14t
        -0x1ct
        -0xet
        -0x10t
        -0x14t
        -0x2t
        -0x30t
        -0x8t
        -0xat
        -0x22t
        -0x27t
        -0x3et
        -0xat
        -0x2t
        -0x3bt
        -0x3dt
        -0x42t
        0xbt
        -0x1ft
        -0x26t
        0x22t
        0x36t
        0x25t
        0x2at
        0x30t
        -0x10t
        0x26t
        0x22t
        0x24t
        -0xct
        -0x38t
        -0x24t
        -0x35t
        -0x30t
        -0x2at
        -0x6at
        -0x34t
        -0x38t
        -0x36t
        -0x66t
        -0x6ct
        -0x2ft
        -0x2at
        -0x36t
        0x26t
        0x3bt
        0x28t
        -0xat
        0x9t
        0x1et
        0xbt
        -0x26t
        -0xft
        -0x41t
        -0x20t
        -0x18t
        -0xct
        -0xft
        -0x4t
        -0x6t
        -0x6t
        -0x2ct
        -0x2ft
        -0x1et
        -0x63t
        -0x7t
        0x7t
        -0xct
        -0x3et
        0x7t
        0x3t
        0x9t
        0x11t
        0x2t
        0x19t
        0xdt
        0x1et
        0x15t
        0x1at
        0x11t
        0x18t
        0x20t
        0x11t
        0xdt
        0x20t
        0x20t
        0x34t
        0x36t
        0x33t
        0x38t
        0x33t
        0x39t
        -0x1et
        -0x30t
        -0x24t
        -0x1et
        -0x1ct
        -0x23t
        -0x2at
        -0x34t
        -0x46t
        -0x39t
        -0x33t
        -0x38t
        -0x34t
        0xft
        0x1t
        0xet
        0xet
        -0x3t
        0xat
        0xbt
        0x1bt
        -0x29t
        -0x2at
        -0x37t
        -0x3ct
        -0x3bt
        -0x31t
        -0x71t
        -0x3ft
        -0x2at
        -0x3dt
        0x19t
        0xct
        0xft
        0xft
        0x8t
        0x39t
        0x2ct
        0x2ft
        0x2ft
        0x28t
        0x26t
        -0xbt
        0x7t
        -0x6t
        -0x3t
        -0x3t
        -0xat
        0x1t
        -0x3t
        0x6t
        0x4t
        -0x29t
        -0x3et
        -0x35t
        -0x37t
        -0x2ft
        -0x3et
        0x37t
        0x22t
        0x2ft
        0x2ct
        0x23t
        0x29t
        0x31t
        0x22t
        0x33t
        0x1et
        0x2bt
        0x28t
        0x25t
        0x2dt
        0x1et
    .end array-data
.end method

.method public static A0B(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Dn;",
            ">;)V"
        }
    .end annotation

    .line 29838
    .local v6, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/mediacodec/MediaCodecInfo;>;"
    sget v1, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v0, 0x1a

    if-ge v1, v0, :cond_0

    .line 29839
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x1

    if-le v1, v0, :cond_0

    .line 29840
    const/4 v6, 0x0

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Dn;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Dn;->A02:Ljava/lang/String;

    const/16 v2, 0x247

    const/16 v1, 0x19

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29841
    const/4 v5, 0x1

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A02:[Ljava/lang/String;

    const-string v1, "0x3TFANg8Ut6JiiOQttPnD"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "p"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge v5, v3, :cond_0

    .line 29842
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Dn;

    .line 29843
    .local v0, "decoderInfo":Lcom/facebook/ads/redexgen/X/Dn;
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/Dn;->A02:Ljava/lang/String;

    const/16 v2, 0x291

    const/16 v1, 0x16

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29844
    invoke-interface {p0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 29845
    invoke-interface {p0, v6, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 29846
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 29847
    .end local v0    # "decoderInfo":Lcom/facebook/ads/redexgen/X/Dn;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0C(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 7

    .line 29848
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v0

    const/4 p0, 0x0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    const/16 v2, 0x2e

    const/4 v1, 0x7

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29849
    :cond_0
    return p0

    .line 29850
    :cond_1
    sget v1, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_4

    .line 29851
    const/16 v2, 0x6e

    const/16 v1, 0xd

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 29852
    const/16 v2, 0x8a

    const/16 v1, 0xd

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A02:[Ljava/lang/String;

    const-string v1, "Xrnxd6TTPw0VRIzrl38SAVr"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    .line 29853
    const/16 v2, 0x97

    const/16 v1, 0x10

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 29854
    const/16 v2, 0x7b

    const/16 v1, 0xf

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 29855
    const/16 v2, 0x3c

    const/16 v1, 0xa

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 29856
    const/16 v2, 0x16c

    const/16 v1, 0xa

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29857
    :cond_2
    return p0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 29858
    :cond_4
    sget v0, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v3, 0x12

    if-ge v0, v3, :cond_5

    const/16 v2, 0x260

    const/16 v1, 0x13

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 29859
    return p0

    .line 29860
    :cond_5
    sget v0, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    if-ge v0, v3, :cond_8

    .line 29861
    const/16 v2, 0x212

    const/16 v1, 0x19

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 29862
    const/16 v2, 0x38d

    const/4 v1, 0x3

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A05:Ljava/lang/String;

    .line 29863
    const/16 v2, 0x37b

    const/4 v1, 0x6

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    const/16 v2, 0xec

    const/4 v1, 0x2

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A02:[Ljava/lang/String;

    const-string v1, "rdXjReJBq8aAQw8lIZ8zL01sxRhhynRR"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "BQiQiLPkKNHtfe5iDR7FLrkkpu9i3G1e"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_8

    .line 29864
    :cond_6
    :goto_0
    return p0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A02:[Ljava/lang/String;

    const-string v1, "uVqatwOWW"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "KICdfFxbcAJgSXxY4Hh9gxj0"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_8

    goto :goto_0

    .line 29865
    :cond_8
    sget v0, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v4, 0x10

    if-ne v0, v4, :cond_b

    .line 29866
    const/16 v2, 0x2c1

    const/16 v1, 0x1a

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 29867
    const/16 v2, 0x3b2

    const/4 v1, 0x4

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 29868
    const/16 v2, 0x3d2

    const/4 v1, 0x6

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 29869
    const/16 v2, 0x3f7

    const/4 v1, 0x5

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 29870
    const/16 v2, 0x403

    const/16 v1, 0x9

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 29871
    const/16 v2, 0x3fc

    const/4 v1, 0x7

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 29872
    const/16 v2, 0x3b6

    const/4 v1, 0x3

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 29873
    const/16 v2, 0x5a

    const/4 v1, 0x5

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 29874
    const/16 v2, 0x5f

    const/4 v1, 0x5

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 29875
    const/16 v5, 0x64

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A02:[Ljava/lang/String;

    const-string v1, "oPZDRSzo0"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "0InYg9JEpbCusmdZKGYCVfcU"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v1, 0x5

    const/16 v0, 0x63

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 29876
    const/16 v2, 0x69

    const/4 v1, 0x5

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 29877
    const/16 v2, 0x15c

    const/4 v1, 0x4

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 29878
    const/16 v2, 0x306

    const/4 v1, 0x6

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 29879
    :cond_9
    return p0

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 29880
    :cond_b
    sget v0, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    if-ne v0, v4, :cond_d

    .line 29881
    const/16 v2, 0x2a7

    const/16 v1, 0x1a

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 29882
    const/16 v2, 0x46

    const/4 v1, 0x5

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 29883
    const/16 v2, 0x4b

    const/4 v1, 0x5

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 29884
    const/16 v2, 0x50

    const/4 v1, 0x5

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 29885
    const/16 v2, 0x55

    const/4 v1, 0x5

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 29886
    :cond_c
    return p0

    .line 29887
    :cond_d
    sget v4, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v3, 0x18

    const/16 v2, 0x3d8

    const/4 v1, 0x7

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_10

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A02:[Ljava/lang/String;

    const-string v1, "83Lf9GdFIttz9eWPc99Cly"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "A"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge v4, v3, :cond_11

    .line 29888
    :goto_1
    const/16 v2, 0x273

    const/16 v1, 0xf

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v2, 0x1c9

    const/16 v1, 0x16

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_e
    sget-object v0, Lcom/facebook/ads/redexgen/X/Il;->A05:Ljava/lang/String;

    .line 29889
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 29890
    const/16 v2, 0x412

    const/16 v1, 0x8

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 29891
    const/16 v2, 0x41a

    const/4 v1, 0x7

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 29892
    const/16 v2, 0x40c

    const/4 v1, 0x6

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 29893
    const/16 v2, 0x2fb

    const/4 v1, 0x6

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 29894
    const/16 v2, 0x3c6

    const/16 v1, 0xc

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 29895
    const/16 v2, 0x37

    const/4 v1, 0x5

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 29896
    const/16 v2, 0x2f5

    const/4 v1, 0x6

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 29897
    const/16 v2, 0x301

    const/4 v1, 0x5

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 29898
    :cond_f
    return p0

    :cond_10
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A02:[Ljava/lang/String;

    const-string v1, "vJAWmKb5TlARTgLq6rNVbe"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "X"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge v4, v3, :cond_11

    goto/16 :goto_1

    .line 29899
    :cond_11
    sget v3, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v2, 0x3c1

    const/4 v1, 0x5

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x13

    if-gt v3, v5, :cond_13

    .line 29900
    const/16 v2, 0x282

    const/16 v1, 0xf

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/facebook/ads/redexgen/X/Il;->A05:Ljava/lang/String;

    .line 29901
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 29902
    const/16 v2, 0x3b0

    const/4 v1, 0x2

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 29903
    const/16 v2, 0x3e5

    const/4 v1, 0x7

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 29904
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 29905
    const/16 v2, 0x3df

    const/4 v1, 0x6

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 29906
    const/16 v2, 0x3ec

    const/4 v1, 0x2

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 29907
    :cond_12
    return p0

    .line 29908
    :cond_13
    sget v0, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    if-gt v0, v5, :cond_14

    sget-object v0, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 29909
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 29910
    const/16 v2, 0x2db

    const/16 v1, 0x1a

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 29911
    return p0

    .line 29912
    :cond_14
    const/16 v2, 0x39a

    const/16 v1, 0xe

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 29913
    const/16 v2, 0x22b

    const/16 v1, 0x1c

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 29914
    return p0

    .line 29915
    :cond_15
    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_16

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A02:[Ljava/lang/String;

    const-string v1, "urMU5pp8oH4FNiT48xzV1CX"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3

    :cond_16
    return v3
.end method

.method public static A0D(Ljava/lang/String;)Z
    .locals 4

    .line 29916
    sget v1, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v0, 0x16

    if-gt v1, v0, :cond_3

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A06:Ljava/lang/String;

    .line 29917
    const/16 v2, 0x1bf

    const/16 v1, 0xa

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A06:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dy;->A02:[Ljava/lang/String;

    const-string v1, "WIAIQszHPLNREe1YP7XBIT7"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/16 v2, 0x1b7

    const/16 v1, 0x8

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29918
    :cond_1
    const/16 v2, 0x1df

    const/16 v1, 0x16

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v2, 0x1f5

    const/16 v1, 0x1d

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 29919
    :goto_0
    return v0
.end method
