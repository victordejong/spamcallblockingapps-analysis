.class public final Lcom/facebook/ads/redexgen/X/DA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Wo;
.implements Lcom/facebook/ads/redexgen/X/Ab;
.implements Lcom/facebook/ads/redexgen/X/AZ;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Wm;,
        Lcom/facebook/ads/internal/exoplayer2/SimpleExoPlayer$VideoListener;
    }
.end annotation


# static fields
.field public static A0O:[B

.field public static A0P:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Landroid/view/SurfaceHolder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Landroid/view/TextureView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Lcom/facebook/ads/internal/exoplayer2/Format;

.field public A07:Lcom/facebook/ads/internal/exoplayer2/Format;

.field public A08:Lcom/facebook/ads/redexgen/X/B0;

.field public A09:Lcom/facebook/ads/redexgen/X/Bj;

.field public A0A:Lcom/facebook/ads/redexgen/X/Bj;

.field public A0B:Lcom/facebook/ads/redexgen/X/FN;

.field public A0C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GK;",
            ">;"
        }
    .end annotation
.end field

.field public A0D:Z

.field public final A0E:Landroid/os/Handler;

.field public final A0F:Lcom/facebook/ads/redexgen/X/Wo;

.field public final A0G:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A0H:Lcom/facebook/ads/redexgen/X/Wk;

.field public final A0I:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/BG;",
            ">;"
        }
    .end annotation
.end field

.field public final A0J:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/E6;",
            ">;"
        }
    .end annotation
.end field

.field public final A0K:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/GO;",
            ">;"
        }
    .end annotation
.end field

.field public final A0L:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/J9;",
            ">;"
        }
    .end annotation
.end field

.field public final A0M:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/J0;",
            ">;"
        }
    .end annotation
.end field

.field public final A0N:[Lcom/facebook/ads/redexgen/X/Wn;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "p1p2g9mbI7jG28uS1AIjZaN2DuNLisT4"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5M6TC2sONh3rGys5YKd78dMRKX2wOUqH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "h92WNkWPJTM"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "jYXxaa6xf7axcTjhEWPmUH7zZsfwsjgI"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "vYDSW5DyAu5jQwnIRgw24Ezub5gSEfu7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "VyMVayVAQGyPc0QthTR0tkMwCD52dsyF"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "LU4FXKZXpKPxotYf"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "puFnwNxTYtdaaLd9gUGAlTVzIEShK4ZY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/DA;->A0P:[Ljava/lang/String;

    .line 26946
    invoke-static {}, Lcom/facebook/ads/redexgen/X/DA;->A0F()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Aj;Lcom/facebook/ads/redexgen/X/HG;Lcom/facebook/ads/redexgen/X/AO;Lcom/facebook/ads/redexgen/X/C9;)V
    .locals 6
    .param p4    # Lcom/facebook/ads/redexgen/X/C9;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Aj;",
            "Lcom/facebook/ads/redexgen/X/HG;",
            "Lcom/facebook/ads/redexgen/X/AO;",
            "Lcom/facebook/ads/redexgen/X/C9<",
            "Lcom/facebook/ads/redexgen/X/WT;",
            ">;)V"
        }
    .end annotation

    .line 26947
    .local v4, "drmSessionManager":Lcom/facebook/ads/redexgen/X/C9;, "Lcom/facebook/ads/internal/exoplayer2/drm/DrmSessionManager<Lcom/facebook/ads/internal/exoplayer2/drm/FrameworkMediaCrypto;>;"
    new-instance v5, Lcom/facebook/ads/redexgen/X/Ap;

    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/Ap;-><init>()V

    move-object v0, p0

    move-object v2, p2

    move-object v1, p1

    move-object v4, p4

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/DA;-><init>(Lcom/facebook/ads/redexgen/X/Aj;Lcom/facebook/ads/redexgen/X/HG;Lcom/facebook/ads/redexgen/X/AO;Lcom/facebook/ads/redexgen/X/C9;Lcom/facebook/ads/redexgen/X/Ap;)V

    .line 26948
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Aj;Lcom/facebook/ads/redexgen/X/HG;Lcom/facebook/ads/redexgen/X/AO;Lcom/facebook/ads/redexgen/X/C9;Lcom/facebook/ads/redexgen/X/Ap;)V
    .locals 7
    .param p4    # Lcom/facebook/ads/redexgen/X/C9;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Aj;",
            "Lcom/facebook/ads/redexgen/X/HG;",
            "Lcom/facebook/ads/redexgen/X/AO;",
            "Lcom/facebook/ads/redexgen/X/C9<",
            "Lcom/facebook/ads/redexgen/X/WT;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Ap;",
            ")V"
        }
    .end annotation

    .line 26949
    .local v4, "drmSessionManager":Lcom/facebook/ads/redexgen/X/C9;, "Lcom/facebook/ads/internal/exoplayer2/drm/DrmSessionManager<Lcom/facebook/ads/internal/exoplayer2/drm/FrameworkMediaCrypto;>;"
    sget-object v6, Lcom/facebook/ads/redexgen/X/I9;->A00:Lcom/facebook/ads/redexgen/X/I9;

    move-object v0, p0

    move-object v2, p2

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/DA;-><init>(Lcom/facebook/ads/redexgen/X/Aj;Lcom/facebook/ads/redexgen/X/HG;Lcom/facebook/ads/redexgen/X/AO;Lcom/facebook/ads/redexgen/X/C9;Lcom/facebook/ads/redexgen/X/Ap;Lcom/facebook/ads/redexgen/X/I9;)V

    .line 26950
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Aj;Lcom/facebook/ads/redexgen/X/HG;Lcom/facebook/ads/redexgen/X/AO;Lcom/facebook/ads/redexgen/X/C9;Lcom/facebook/ads/redexgen/X/Ap;Lcom/facebook/ads/redexgen/X/I9;)V
    .locals 7
    .param p4    # Lcom/facebook/ads/redexgen/X/C9;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Aj;",
            "Lcom/facebook/ads/redexgen/X/HG;",
            "Lcom/facebook/ads/redexgen/X/AO;",
            "Lcom/facebook/ads/redexgen/X/C9<",
            "Lcom/facebook/ads/redexgen/X/WT;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Ap;",
            "Lcom/facebook/ads/redexgen/X/I9;",
            ")V"
        }
    .end annotation

    move-object v6, p4

    .line 26951
    .local v0, "drmSessionManager":Lcom/facebook/ads/redexgen/X/C9;, "Lcom/facebook/ads/internal/exoplayer2/drm/DrmSessionManager<Lcom/facebook/ads/internal/exoplayer2/drm/FrameworkMediaCrypto;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26952
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wm;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Wm;-><init>(Lcom/facebook/ads/redexgen/X/DA;Lcom/facebook/ads/redexgen/X/Al;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0G:Lcom/facebook/ads/redexgen/X/Wm;

    .line 26953
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0M:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 26954
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 26955
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0J:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 26956
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0L:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 26957
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0I:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 26958
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 26959
    .local p0, "eventLooper":Landroid/os/Looper;
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0E:Landroid/os/Handler;

    .line 26960
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DA;->A0E:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DA;->A0G:Lcom/facebook/ads/redexgen/X/Wm;

    .line 26961
    move-object v3, v2

    move-object v4, v2

    move-object v0, p1

    move-object v5, v2

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Aj;->A4P(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/J9;Lcom/facebook/ads/redexgen/X/BG;Lcom/facebook/ads/redexgen/X/GO;Lcom/facebook/ads/redexgen/X/E6;Lcom/facebook/ads/redexgen/X/C9;)[Lcom/facebook/ads/redexgen/X/Wn;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0N:[Lcom/facebook/ads/redexgen/X/Wn;

    .line 26962
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A00:F

    .line 26963
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A01:I

    .line 26964
    sget-object v0, Lcom/facebook/ads/redexgen/X/B0;->A04:Lcom/facebook/ads/redexgen/X/B0;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A08:Lcom/facebook/ads/redexgen/X/B0;

    .line 26965
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A02:I

    .line 26966
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0C:Ljava/util/List;

    .line 26967
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0N:[Lcom/facebook/ads/redexgen/X/Wn;

    invoke-direct {p0, v0, p2, p3, p6}, Lcom/facebook/ads/redexgen/X/DA;->A02([Lcom/facebook/ads/redexgen/X/Wn;Lcom/facebook/ads/redexgen/X/HG;Lcom/facebook/ads/redexgen/X/AO;Lcom/facebook/ads/redexgen/X/I9;)Lcom/facebook/ads/redexgen/X/Wo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0F:Lcom/facebook/ads/redexgen/X/Wo;

    .line 26968
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0F:Lcom/facebook/ads/redexgen/X/Wo;

    invoke-virtual {p5, v0, p6}, Lcom/facebook/ads/redexgen/X/Ap;->A00(Lcom/facebook/ads/redexgen/X/Ac;Lcom/facebook/ads/redexgen/X/I9;)Lcom/facebook/ads/redexgen/X/Wk;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0H:Lcom/facebook/ads/redexgen/X/Wk;

    .line 26969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0H:Lcom/facebook/ads/redexgen/X/Wk;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DA;->A3D(Lcom/facebook/ads/redexgen/X/AX;)V

    .line 26970
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DA;->A0L:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0H:Lcom/facebook/ads/redexgen/X/Wk;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 26971
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DA;->A0I:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0H:Lcom/facebook/ads/redexgen/X/Wk;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 26972
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0H:Lcom/facebook/ads/redexgen/X/Wk;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DA;->A0I(Lcom/facebook/ads/redexgen/X/E6;)V

    .line 26973
    instance-of v0, v6, Lcom/facebook/ads/redexgen/X/WV;

    if-eqz v0, :cond_0

    .line 26974
    check-cast v6, Lcom/facebook/ads/redexgen/X/WV;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DA;->A0E:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0H:Lcom/facebook/ads/redexgen/X/Wk;

    invoke-virtual {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/WV;->A04(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Bx;)V

    .line 26975
    :cond_0
    return-void

    .line 26976
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/DA;I)I
    .locals 0

    .line 26977
    iput p1, p0, Lcom/facebook/ads/redexgen/X/DA;->A01:I

    return p1
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/DA;)Landroid/view/Surface;
    .locals 0

    .line 26978
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/DA;->A03:Landroid/view/Surface;

    return-object p0
.end method

.method private final A02([Lcom/facebook/ads/redexgen/X/Wn;Lcom/facebook/ads/redexgen/X/HG;Lcom/facebook/ads/redexgen/X/AO;Lcom/facebook/ads/redexgen/X/I9;)Lcom/facebook/ads/redexgen/X/Wo;
    .locals 1

    .line 26979
    new-instance v0, Lcom/facebook/ads/redexgen/X/DU;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/DU;-><init>([Lcom/facebook/ads/redexgen/X/Wn;Lcom/facebook/ads/redexgen/X/HG;Lcom/facebook/ads/redexgen/X/AO;Lcom/facebook/ads/redexgen/X/I9;)V

    return-object v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/DA;Lcom/facebook/ads/internal/exoplayer2/Format;)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 0

    .line 26980
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DA;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    return-object p1
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/DA;Lcom/facebook/ads/internal/exoplayer2/Format;)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 0

    .line 26981
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DA;->A06:Lcom/facebook/ads/internal/exoplayer2/Format;

    return-object p1
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/DA;Lcom/facebook/ads/redexgen/X/Bj;)Lcom/facebook/ads/redexgen/X/Bj;
    .locals 0

    .line 26982
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DA;->A0A:Lcom/facebook/ads/redexgen/X/Bj;

    return-object p1
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/DA;Lcom/facebook/ads/redexgen/X/Bj;)Lcom/facebook/ads/redexgen/X/Bj;
    .locals 0

    .line 26983
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DA;->A09:Lcom/facebook/ads/redexgen/X/Bj;

    return-object p1
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/DA;->A0O:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/DA;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 26984
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DA;->A0C:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/DA;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 26985
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/DA;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 26986
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0J:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/DA;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 26987
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0L:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/DA;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 26988
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0M:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/DA;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 26989
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0I:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method private A0E()V
    .locals 5

    .line 26990
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A05:Landroid/view/TextureView;

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 26991
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0G:Lcom/facebook/ads/redexgen/X/Wm;

    if-eq v1, v0, :cond_2

    .line 26992
    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DA;->A07(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xf

    const/16 v1, 0x31

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DA;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26993
    :goto_0
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/DA;->A05:Landroid/view/TextureView;

    .line 26994
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DA;->A04:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_1

    .line 26995
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0G:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 26996
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/DA;->A04:Landroid/view/SurfaceHolder;

    .line 26997
    :cond_1
    return-void

    .line 26998
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A05:Landroid/view/TextureView;

    invoke-virtual {v0, v4}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0
.end method

.method public static A0F()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/DA;->A0O:[B

    return-void

    :array_0
    .array-data 1
        0x2dt
        0x17t
        0x13t
        0xet
        0x12t
        0x1bt
        0x3bt
        0x6t
        0x11t
        0x2et
        0x12t
        0x1ft
        0x7t
        0x1bt
        0xct
        0x9t
        0x2ft
        0x28t
        0x3ct
        0x3bt
        0x39t
        0x3ft
        0xet
        0x3ft
        0x22t
        0x2et
        0x2ft
        0x28t
        0x3ft
        0x16t
        0x33t
        0x29t
        0x2et
        0x3ft
        0x34t
        0x3ft
        0x28t
        0x7at
        0x3bt
        0x36t
        0x28t
        0x3ft
        0x3bt
        0x3et
        0x23t
        0x7at
        0x2ft
        0x34t
        0x29t
        0x3ft
        0x2et
        0x7at
        0x35t
        0x28t
        0x7at
        0x28t
        0x3ft
        0x2at
        0x36t
        0x3bt
        0x39t
        0x3ft
        0x3et
        0x74t
    .end array-data
.end method

.method private A0G(Landroid/view/Surface;Z)V
    .locals 10
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 26999
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 27000
    .local p0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/PlayerMessage;>;"
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/DA;->A0N:[Lcom/facebook/ads/redexgen/X/Wn;

    array-length v3, v5

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v8, v5, v2

    .line 27001
    .local v5, "renderer":Lcom/facebook/ads/redexgen/X/Wn;
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/Wn;->A7b()I

    move-result v9

    const/4 v7, 0x2

    sget-object v6, Lcom/facebook/ads/redexgen/X/DA;->A0P:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v6, v0

    const/4 v0, 0x4

    aget-object v6, v6, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v6, Lcom/facebook/ads/redexgen/X/DA;->A0P:[Ljava/lang/String;

    const-string v1, "VrJ3McZcw7cn2zeT"

    const/4 v0, 0x6

    aput-object v1, v6, v0

    const-string v1, "MNepmlV8OvsHi61EfIBswCx5NcPOIPrl"

    const/4 v0, 0x0

    aput-object v1, v6, v0

    if-ne v9, v7, :cond_0

    .line 27002
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0F:Lcom/facebook/ads/redexgen/X/Wo;

    .line 27003
    invoke-interface {v0, v8}, Lcom/facebook/ads/redexgen/X/Wo;->A4J(Lcom/facebook/ads/redexgen/X/Ae;)Lcom/facebook/ads/redexgen/X/Af;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A06(I)Lcom/facebook/ads/redexgen/X/Af;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Af;->A07(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/Af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Af;->A05()Lcom/facebook/ads/redexgen/X/Af;

    move-result-object v0

    .line 27004
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27005
    .end local v5    # "renderer":Lcom/facebook/ads/redexgen/X/Wn;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 27006
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A03:Landroid/view/Surface;

    if-eqz v0, :cond_4

    if-eq v0, p1, :cond_4

    .line 27007
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Af;

    .line 27008
    .local p2, "message":Lcom/facebook/ads/redexgen/X/Af;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Af;->A0C()Z

    goto :goto_1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27009
    .local p1, "e":Ljava/lang/InterruptedException;
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 27010
    .end local p1    # "e":Ljava/lang/InterruptedException;
    :cond_3
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0D:Z

    if-eqz v0, :cond_4

    .line 27011
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A03:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 27012
    :cond_4
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DA;->A03:Landroid/view/Surface;

    sget-object v1, Lcom/facebook/ads/redexgen/X/DA;->A0P:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x56

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 27013
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/DA;->A0P:[Ljava/lang/String;

    const-string v1, "BcNzrhvciYYCifYD3J0kGNpt4Q56t2ws"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "LBzJc3KMaCoazXjGhEegCXyOf3paMmXp"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/DA;->A0D:Z

    .line 27014
    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/DA;Landroid/view/Surface;Z)V
    .locals 0

    .line 27015
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/DA;->A0G(Landroid/view/Surface;Z)V

    return-void
.end method

.method private final A0I(Lcom/facebook/ads/redexgen/X/E6;)V
    .locals 1

    .line 27016
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0J:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 27017
    return-void
.end method


# virtual methods
.method public final A0J()I
    .locals 1

    .line 27018
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A01:I

    return v0
.end method

.method public final A0K()Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 1

    .line 27019
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A06:Lcom/facebook/ads/internal/exoplayer2/Format;

    return-object v0
.end method

.method public final A0L()Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 27020
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    return-object v0
.end method

.method public final A0M()V
    .locals 1

    .line 27021
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DA;->AEs(Z)V

    .line 27022
    return-void
.end method

.method public final A0N(F)V
    .locals 7

    .line 27023
    iput p1, p0, Lcom/facebook/ads/redexgen/X/DA;->A00:F

    .line 27024
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/DA;->A0N:[Lcom/facebook/ads/redexgen/X/Wn;

    array-length v3, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v6, v4, v2

    sget-object v5, Lcom/facebook/ads/redexgen/X/DA;->A0P:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v5, v0

    const/4 v0, 0x4

    aget-object v5, v5, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 27025
    .local v3, "renderer":Lcom/facebook/ads/redexgen/X/Wn;
    sget-object v5, Lcom/facebook/ads/redexgen/X/DA;->A0P:[Ljava/lang/String;

    const-string v1, "TZ1OBcEbhXggSiRE"

    const/4 v0, 0x6

    aput-object v1, v5, v0

    const-string v1, "o47SCfAcsD46THYYRPii4HELThPbmwG8"

    const/4 v0, 0x0

    aput-object v1, v5, v0

    invoke-interface {v6}, Lcom/facebook/ads/redexgen/X/Wn;->A7b()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 27026
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0F:Lcom/facebook/ads/redexgen/X/Wo;

    invoke-interface {v0, v6}, Lcom/facebook/ads/redexgen/X/Wo;->A4J(Lcom/facebook/ads/redexgen/X/Ae;)Lcom/facebook/ads/redexgen/X/Af;

    move-result-object v1

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A06(I)Lcom/facebook/ads/redexgen/X/Af;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A07(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/Af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Af;->A05()Lcom/facebook/ads/redexgen/X/Af;

    .line 27027
    .end local v3    # "renderer":Lcom/facebook/ads/redexgen/X/Wn;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 27028
    :cond_2
    return-void
.end method

.method public final A0O(Landroid/view/Surface;)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 27029
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DA;->A0E()V

    .line 27030
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/DA;->A0G(Landroid/view/Surface;Z)V

    .line 27031
    return-void
.end method

.method public final A0P(Lcom/facebook/ads/redexgen/X/FN;)V
    .locals 1

    .line 27032
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/facebook/ads/redexgen/X/DA;->ACz(Lcom/facebook/ads/redexgen/X/FN;ZZ)V

    .line 27033
    return-void
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/J0;)V
    .locals 1

    .line 27034
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0M:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 27035
    return-void
.end method

.method public final A3D(Lcom/facebook/ads/redexgen/X/AX;)V
    .locals 1

    .line 27036
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0F:Lcom/facebook/ads/redexgen/X/Wo;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Ac;->A3D(Lcom/facebook/ads/redexgen/X/AX;)V

    .line 27037
    return-void
.end method

.method public final A4J(Lcom/facebook/ads/redexgen/X/Ae;)Lcom/facebook/ads/redexgen/X/Af;
    .locals 1

    .line 27038
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0F:Lcom/facebook/ads/redexgen/X/Wo;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Wo;->A4J(Lcom/facebook/ads/redexgen/X/Ae;)Lcom/facebook/ads/redexgen/X/Af;

    move-result-object v0

    return-object v0
.end method

.method public final A5o()I
    .locals 1

    .line 27039
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0F:Lcom/facebook/ads/redexgen/X/Wo;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ac;->A5o()I

    move-result v0

    return v0
.end method

.method public final A5p()J
    .locals 2

    .line 27040
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0F:Lcom/facebook/ads/redexgen/X/Wo;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ac;->A5p()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A66()J
    .locals 2

    .line 27041
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0F:Lcom/facebook/ads/redexgen/X/Wo;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ac;->A66()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A68()I
    .locals 1

    .line 27042
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0F:Lcom/facebook/ads/redexgen/X/Wo;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ac;->A68()I

    move-result v0

    return v0
.end method

.method public final A69()I
    .locals 1

    .line 27043
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0F:Lcom/facebook/ads/redexgen/X/Wo;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ac;->A69()I

    move-result v0

    return v0
.end method

.method public final A6B()J
    .locals 2

    .line 27044
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0F:Lcom/facebook/ads/redexgen/X/Wo;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ac;->A6B()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A6D()Lcom/facebook/ads/redexgen/X/Ao;
    .locals 1

    .line 27045
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0F:Lcom/facebook/ads/redexgen/X/Wo;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ac;->A6D()Lcom/facebook/ads/redexgen/X/Ao;

    move-result-object v0

    return-object v0
.end method

.method public final A6E()I
    .locals 1

    .line 27046
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0F:Lcom/facebook/ads/redexgen/X/Wo;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ac;->A6E()I

    move-result v0

    return v0
.end method

.method public final A6N()J
    .locals 2

    .line 27047
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0F:Lcom/facebook/ads/redexgen/X/Wo;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ac;->A6N()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A77()Z
    .locals 1

    .line 27048
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0F:Lcom/facebook/ads/redexgen/X/Wo;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ac;->A77()Z

    move-result v0

    return v0
.end method

.method public final ACz(Lcom/facebook/ads/redexgen/X/FN;ZZ)V
    .locals 2

    .line 27049
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DA;->A0B:Lcom/facebook/ads/redexgen/X/FN;

    if-eq v1, p1, :cond_1

    .line 27050
    if-eqz v1, :cond_0

    .line 27051
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0H:Lcom/facebook/ads/redexgen/X/Wk;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/FN;->ADb(Lcom/facebook/ads/redexgen/X/Fb;)V

    .line 27052
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0H:Lcom/facebook/ads/redexgen/X/Wk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wk;->A07()V

    .line 27053
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DA;->A0E:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0H:Lcom/facebook/ads/redexgen/X/Wk;

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/FN;->A3B(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Fb;)V

    .line 27054
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DA;->A0B:Lcom/facebook/ads/redexgen/X/FN;

    .line 27055
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0F:Lcom/facebook/ads/redexgen/X/Wo;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Wo;->ACz(Lcom/facebook/ads/redexgen/X/FN;ZZ)V

    .line 27056
    return-void
.end method

.method public final ADS()V
    .locals 2

    .line 27057
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0F:Lcom/facebook/ads/redexgen/X/Wo;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ac;->ADS()V

    .line 27058
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DA;->A0E()V

    .line 27059
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DA;->A03:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 27060
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0D:Z

    if-eqz v0, :cond_0

    .line 27061
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 27062
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A03:Landroid/view/Surface;

    .line 27063
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DA;->A0B:Lcom/facebook/ads/redexgen/X/FN;

    if-eqz v1, :cond_2

    .line 27064
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0H:Lcom/facebook/ads/redexgen/X/Wk;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/FN;->ADb(Lcom/facebook/ads/redexgen/X/Fb;)V

    .line 27065
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0C:Ljava/util/List;

    .line 27066
    return-void
.end method

.method public final AEB(J)V
    .locals 1

    .line 27067
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0H:Lcom/facebook/ads/redexgen/X/Wk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wk;->A06()V

    .line 27068
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0F:Lcom/facebook/ads/redexgen/X/Wo;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ac;->AEB(J)V

    .line 27069
    return-void
.end method

.method public final AEC()V
    .locals 1

    .line 27070
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0H:Lcom/facebook/ads/redexgen/X/Wk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wk;->A06()V

    .line 27071
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0F:Lcom/facebook/ads/redexgen/X/Wo;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ac;->AEC()V

    .line 27072
    return-void
.end method

.method public final AES(Z)V
    .locals 1

    .line 27073
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0F:Lcom/facebook/ads/redexgen/X/Wo;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Ac;->AES(Z)V

    .line 27074
    return-void
.end method

.method public final AEs(Z)V
    .locals 3

    .line 27075
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0F:Lcom/facebook/ads/redexgen/X/Wo;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Ac;->AEs(Z)V

    .line 27076
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DA;->A0B:Lcom/facebook/ads/redexgen/X/FN;

    if-eqz v1, :cond_0

    .line 27077
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0H:Lcom/facebook/ads/redexgen/X/Wk;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/FN;->ADb(Lcom/facebook/ads/redexgen/X/Fb;)V

    .line 27078
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0B:Lcom/facebook/ads/redexgen/X/FN;

    .line 27079
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0H:Lcom/facebook/ads/redexgen/X/Wk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wk;->A07()V

    .line 27080
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A0C:Ljava/util/List;

    sget-object v2, Lcom/facebook/ads/redexgen/X/DA;->A0P:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 27081
    sget-object v2, Lcom/facebook/ads/redexgen/X/DA;->A0P:[Ljava/lang/String;

    const-string v1, "8NqoZsSfBCZ1v43okD4Pix8d8oY1Moxp"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "VfYOa1CKuZhM9jsFhHY6jw4UB0OoLmrV"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
