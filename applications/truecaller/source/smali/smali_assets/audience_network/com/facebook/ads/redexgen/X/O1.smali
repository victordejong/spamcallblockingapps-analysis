.class public final Lcom/facebook/ads/redexgen/X/O1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/O0;
    }
.end annotation


# static fields
.field public static A09:[B


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/O0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Z

.field public A02:Z

.field public final A03:Lcom/facebook/ads/redexgen/X/XT;

.field public final A04:Lcom/facebook/ads/redexgen/X/JT;

.field public final A05:Lcom/facebook/ads/redexgen/X/Lz;

.field public final A06:Lcom/facebook/ads/redexgen/X/MU;

.field public final A07:Lcom/facebook/ads/redexgen/X/QZ;

.field public final A08:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/O1;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/QZ;Lcom/facebook/ads/redexgen/X/Lz;Lcom/facebook/ads/redexgen/X/JT;)V
    .locals 1

    .line 46535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46536
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/O1;->A01:Z

    .line 46537
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/O1;->A03:Lcom/facebook/ads/redexgen/X/XT;

    .line 46538
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/O1;->A08:Ljava/lang/String;

    .line 46539
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/O1;->A07:Lcom/facebook/ads/redexgen/X/QZ;

    .line 46540
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/O1;->A05:Lcom/facebook/ads/redexgen/X/Lz;

    .line 46541
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/O1;->A04:Lcom/facebook/ads/redexgen/X/JT;

    .line 46542
    new-instance v0, Lcom/facebook/ads/redexgen/X/Sa;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Sa;-><init>(Lcom/facebook/ads/redexgen/X/O1;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/O1;->A06:Lcom/facebook/ads/redexgen/X/MU;

    .line 46543
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/QZ;Lcom/facebook/ads/redexgen/X/Lz;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;)V
    .locals 1

    .line 46544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46545
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/O1;->A01:Z

    .line 46546
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/O1;->A03:Lcom/facebook/ads/redexgen/X/XT;

    .line 46547
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/O1;->A08:Ljava/lang/String;

    .line 46548
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/O1;->A07:Lcom/facebook/ads/redexgen/X/QZ;

    .line 46549
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/O1;->A05:Lcom/facebook/ads/redexgen/X/Lz;

    .line 46550
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/O1;->A04:Lcom/facebook/ads/redexgen/X/JT;

    .line 46551
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/O1;->A06:Lcom/facebook/ads/redexgen/X/MU;

    .line 46552
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/O1;)Lcom/facebook/ads/redexgen/X/JT;
    .locals 0

    .line 46553
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/O1;->A04:Lcom/facebook/ads/redexgen/X/JT;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/O1;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x68

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/O1;->A09:[B

    return-void

    :array_0
    .array-data 1
        0x1ft
        0x8t
        0x1dt
        0x1et
        0x29t
        0x28t
        0x28t
        0x33t
        0x32t
        0x1ft
        0x30t
        0x35t
        0x3ft
        0x37t
        0x10t
        0x35t
        0x2ft
        0x28t
        0x39t
        0x32t
        0x39t
        0x2et
        0x72t
        0x45t
        0x45t
        0x58t
        0x45t
        0x17t
        0x52t
        0x4ft
        0x52t
        0x54t
        0x42t
        0x43t
        0x5et
        0x59t
        0x50t
        0x17t
        0x56t
        0x54t
        0x43t
        0x5et
        0x58t
        0x59t
        0x49t
        0x7et
        0x7et
        0x63t
        0x7et
        0x2ct
        0x7bt
        0x64t
        0x65t
        0x60t
        0x69t
        0x2ct
        0x63t
        0x7ct
        0x69t
        0x62t
        0x65t
        0x62t
        0x6bt
        0x2ct
    .end array-data
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/QZ;Lcom/facebook/ads/redexgen/X/Lz;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;)V
    .locals 7
    .param p1    # Lcom/facebook/ads/redexgen/X/QZ;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 46554
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/1J;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 46555
    .local v0, "uri":Landroid/net/Uri;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Nu;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Nu;-><init>()V

    .line 46556
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Nu;->A03(Lcom/facebook/ads/redexgen/X/QZ;)Lcom/facebook/ads/redexgen/X/Nu;

    move-result-object v0

    .line 46557
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/Nu;->A02(Lcom/facebook/ads/redexgen/X/Lz;)Lcom/facebook/ads/redexgen/X/Nu;

    move-result-object v0

    .line 46558
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nu;->A05()Ljava/util/Map;

    move-result-object v4

    .line 46559
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p3

    move-object v2, p5

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/0g;->A01(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;ZZ)Lcom/facebook/ads/redexgen/X/0f;

    move-result-object v0

    .line 46560
    .local p1, "adAction":Lcom/facebook/ads/redexgen/X/0f;
    if-eqz v0, :cond_0

    .line 46561
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0f;->A09()Lcom/facebook/ads/redexgen/X/0e;

    .line 46562
    :cond_0
    return-void
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/O1;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 46563
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/O1;->A06(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private A05(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46564
    .local v1, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O1;->A04:Lcom/facebook/ads/redexgen/X/JT;

    invoke-interface {v0, p1, p3}, Lcom/facebook/ads/redexgen/X/JT;->A9E(Ljava/lang/String;Ljava/util/Map;)V

    .line 46565
    new-instance v2, Lcom/facebook/ads/redexgen/X/Ny;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/facebook/ads/redexgen/X/Ny;-><init>(Lcom/facebook/ads/redexgen/X/O1;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/Nz;

    invoke-direct {v1, p0, p1, p3}, Lcom/facebook/ads/redexgen/X/Nz;-><init>(Lcom/facebook/ads/redexgen/X/O1;Ljava/lang/String;Ljava/util/Map;)V

    .line 46566
    invoke-static {}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A00()Landroid/app/Activity;

    move-result-object v0

    .line 46567
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LX;->A00(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/Context;)V

    .line 46568
    return-void
.end method

.method private A06(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46569
    .local v1, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/16 v1, 0x16

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/O1;->A01(III)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 46570
    .local v2, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/O1;->A03:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/O1;->A04:Lcom/facebook/ads/redexgen/X/JT;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Nu;

    invoke-direct {v1, p3}, Lcom/facebook/ads/redexgen/X/Nu;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O1;->A07:Lcom/facebook/ads/redexgen/X/QZ;

    .line 46571
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A03(Lcom/facebook/ads/redexgen/X/QZ;)Lcom/facebook/ads/redexgen/X/Nu;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O1;->A05:Lcom/facebook/ads/redexgen/X/Lz;

    .line 46572
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A02(Lcom/facebook/ads/redexgen/X/Lz;)Lcom/facebook/ads/redexgen/X/Nu;

    move-result-object v0

    .line 46573
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nu;->A05()Ljava/util/Map;

    move-result-object v9

    iget-boolean v10, p0, Lcom/facebook/ads/redexgen/X/O1;->A01:Z

    iget-boolean v11, p0, Lcom/facebook/ads/redexgen/X/O1;->A02:Z

    .line 46574
    move-object v7, p1

    invoke-static/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/0g;->A01(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;ZZ)Lcom/facebook/ads/redexgen/X/0f;

    move-result-object v0

    .line 46575
    .local v7, "adAction":Lcom/facebook/ads/redexgen/X/0f;
    if-eqz v0, :cond_0

    .line 46576
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0f;->A0B()V

    .line 46577
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O1;->A00:Lcom/facebook/ads/redexgen/X/O0;

    if-eqz v0, :cond_1

    .line 46578
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O1;->A00:Lcom/facebook/ads/redexgen/X/O0;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/O0;->AAF()V

    .line 46579
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/O1;->A06:Lcom/facebook/ads/redexgen/X/MU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O1;->A08:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/MU;->A3q(Ljava/lang/String;)V

    goto :goto_0
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 46580
    .end local v7    # "adAction":Lcom/facebook/ads/redexgen/X/0f;
    :catch_0
    move-exception v5

    .line 46581
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2c

    const/16 v1, 0x14

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/O1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 46582
    :catch_1
    move-exception v3

    .line 46583
    .local v7, "ex":Ljava/lang/Exception;
    const/16 v2, 0x16

    const/16 v1, 0x16

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/O1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46584
    :goto_0
    return-void
.end method


# virtual methods
.method public final A07(Lcom/facebook/ads/redexgen/X/O0;)V
    .locals 0

    .line 46585
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/O1;->A00:Lcom/facebook/ads/redexgen/X/O0;

    .line 46586
    return-void
.end method

.method public final A08(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46587
    .local v1, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O1;->A04:Lcom/facebook/ads/redexgen/X/JT;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Jb;

    invoke-direct {v2, p1, v0}, Lcom/facebook/ads/redexgen/X/Jb;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JT;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ja;->A0J:Lcom/facebook/ads/redexgen/X/Ja;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jb;->A02(Lcom/facebook/ads/redexgen/X/Ja;Ljava/util/Map;)V

    .line 46588
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/O1;->A05:Lcom/facebook/ads/redexgen/X/Lz;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O1;->A03:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Lz;->A09(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46589
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O1;->A04:Lcom/facebook/ads/redexgen/X/JT;

    invoke-interface {v0, p1, p3}, Lcom/facebook/ads/redexgen/X/JT;->A8m(Ljava/lang/String;Ljava/util/Map;)V

    .line 46590
    :goto_0
    return-void

    .line 46591
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O1;->A03:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A12(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46592
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/O1;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 46593
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/O1;->A06(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final A09(Z)V
    .locals 0

    .line 46594
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/O1;->A02:Z

    .line 46595
    return-void
.end method

.method public final A0A(Z)V
    .locals 0

    .line 46596
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/O1;->A01:Z

    .line 46597
    return-void
.end method
