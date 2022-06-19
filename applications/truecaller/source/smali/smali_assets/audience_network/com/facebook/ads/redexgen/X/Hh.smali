.class public final Lcom/facebook/ads/redexgen/X/Hh;
.super Landroid/view/TextureView;
.source ""

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/facebook/ads/redexgen/X/QG;
.implements Lcom/facebook/ads/redexgen/X/QU;
.implements Lcom/facebook/ads/redexgen/X/QI;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field public static A0N:[B

.field public static A0O:[Ljava/lang/String;

.field public static final A0P:Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:J

.field public A06:Landroid/net/Uri;

.field public A07:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A08:Landroid/view/View;

.field public A09:Landroid/widget/MediaController;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0A:Lcom/facebook/ads/redexgen/X/XT;

.field public A0B:Lcom/facebook/ads/redexgen/X/Pj;

.field public A0C:Lcom/facebook/ads/redexgen/X/QJ;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0D:Lcom/facebook/ads/redexgen/X/QW;

.field public A0E:Lcom/facebook/ads/redexgen/X/QW;

.field public A0F:Lcom/facebook/ads/redexgen/X/QX;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0G:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public A0K:Z

.field public A0L:Z

.field public A0M:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5i34yksohRV8hSvEB2dTOBGqhO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "V2RNkeamXobpzSRVkM4sjlG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1HR"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "8SLqGCa2wxiVkGjIaPVK9LXerY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "SSmTkZgpl4jZsKBndOsNgmbhAq5FKejN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "hgMiihLf1lx1lIiVFZ8jC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "euSTtDnbG06q2RqThlQcyR1Es6oMHQDw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "iHXqYQoKvaPWKvo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Hh;->A0O:[Ljava/lang/String;

    .line 37048
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hh;->A07()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Hh;->A0P:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 2

    .line 37049
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 37050
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/QW;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0D:Lcom/facebook/ads/redexgen/X/QW;

    .line 37051
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/QW;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0E:Lcom/facebook/ads/redexgen/X/QW;

    .line 37052
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0L:Z

    .line 37053
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0M:Z

    .line 37054
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0J:Z

    .line 37055
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A03:I

    .line 37056
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A02:I

    .line 37057
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A00:F

    .line 37058
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A01:I

    .line 37059
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0I:Z

    .line 37060
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0H:Z

    .line 37061
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pj;->A04:Lcom/facebook/ads/redexgen/X/Pj;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    .line 37062
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0K:Z

    .line 37063
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0A:Lcom/facebook/ads/redexgen/X/XT;

    .line 37064
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;)V
    .locals 2

    .line 37065
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37066
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/QW;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0D:Lcom/facebook/ads/redexgen/X/QW;

    .line 37067
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/QW;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0E:Lcom/facebook/ads/redexgen/X/QW;

    .line 37068
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0L:Z

    .line 37069
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0M:Z

    .line 37070
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0J:Z

    .line 37071
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A03:I

    .line 37072
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A02:I

    .line 37073
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A00:F

    .line 37074
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A01:I

    .line 37075
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0I:Z

    .line 37076
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0H:Z

    .line 37077
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pj;->A04:Lcom/facebook/ads/redexgen/X/Pj;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    .line 37078
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0K:Z

    .line 37079
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0A:Lcom/facebook/ads/redexgen/X/XT;

    .line 37080
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 37081
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37082
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/QW;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0D:Lcom/facebook/ads/redexgen/X/QW;

    .line 37083
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/QW;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0E:Lcom/facebook/ads/redexgen/X/QW;

    .line 37084
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0L:Z

    .line 37085
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0M:Z

    .line 37086
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0J:Z

    .line 37087
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A03:I

    .line 37088
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A02:I

    .line 37089
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A00:F

    .line 37090
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A01:I

    .line 37091
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0I:Z

    .line 37092
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0H:Z

    .line 37093
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pj;->A04:Lcom/facebook/ads/redexgen/X/Pj;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    .line 37094
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0K:Z

    .line 37095
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0A:Lcom/facebook/ads/redexgen/X/XT;

    .line 37096
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Hh;)Landroid/widget/MediaController;
    .locals 0

    .line 37097
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A09:Landroid/widget/MediaController;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Hh;)Lcom/facebook/ads/redexgen/X/QJ;
    .locals 0

    .line 37098
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Hh;)Lcom/facebook/ads/redexgen/X/QX;
    .locals 0

    .line 37099
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0F:Lcom/facebook/ads/redexgen/X/QX;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hh;->A0N:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x44

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .locals 5

    .line 37100
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0A:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/QJ;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    .line 37101
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/QJ;->A0H(Lcom/facebook/ads/redexgen/X/QI;)V

    .line 37102
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/QJ;->A0G(Lcom/facebook/ads/redexgen/X/QG;)V

    .line 37103
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/QJ;->A0I(Z)V

    .line 37104
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0J:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0I:Z

    if-nez v0, :cond_2

    .line 37105
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0A:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0C()Landroid/app/Activity;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hh;->A0O:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 37106
    .local p0, "activityContext":Landroid/app/Activity;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hh;->A0O:[Ljava/lang/String;

    const-string v1, "kOzpobq3cn2ENPvO1dz11rE9gYrdsM2t"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "XeC6T5eSgweGxN3AGx0qK1AhpVQau6BW"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_7

    .line 37107
    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, v4}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A09:Landroid/widget/MediaController;

    .line 37108
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A09:Landroid/widget/MediaController;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A08:Landroid/view/View;

    if-nez v0, :cond_1

    move-object v0, p0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 37109
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A09:Landroid/widget/MediaController;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QO;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/QO;-><init>(Lcom/facebook/ads/redexgen/X/Hh;)V

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 37110
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A09:Landroid/widget/MediaController;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 37111
    .end local p0    # "activityContext":Landroid/app/Activity;
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0G:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hh;->A0O:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hh;->A0O:[Ljava/lang/String;

    const-string v1, "7OzxCvlMe7OewOex"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v4, :cond_3

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0K:Z

    if-eqz v0, :cond_4

    .line 37112
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A06:Landroid/net/Uri;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QJ;->A0E(Landroid/content/Context;Landroid/net/Uri;)V

    .line 37113
    :cond_4
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/QW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V

    .line 37114
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 37115
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v3}, Lcom/facebook/ads/redexgen/X/Hh;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 37116
    :cond_5
    return-void

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hh;->A0O:[Ljava/lang/String;

    const-string v1, "NXAVCVHzJxAz58YH1UEgH4PHy83Kp8aQ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "f1ODdwAOeVqSGvJpvEMDUKedn4FgojKu"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_3

    goto :goto_1

    .line 37117
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A09:Landroid/widget/MediaController;

    goto :goto_0
.end method

.method private A05()V
    .locals 4

    .line 37118
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    if-nez v0, :cond_0

    .line 37119
    return-void

    .line 37120
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QJ;->A08()Lcom/facebook/ads/redexgen/X/QH;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hh;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 37121
    .local p0, "videoFormat":Lcom/facebook/ads/redexgen/X/QH;
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hh;->A0O:[Ljava/lang/String;

    const-string v1, "yniwio37QFCiL85s5GWvJngxgc"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "95HbvmBBNGyB2bovEph22CE4vZ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 37122
    iget v1, v3, Lcom/facebook/ads/redexgen/X/QH;->A01:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/QH;->A00:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A08(II)V

    .line 37123
    :cond_2
    return-void
.end method

.method private A06()V
    .locals 4

    .line 37124
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A07:Landroid/view/Surface;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 37125
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 37126
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Hh;->A07:Landroid/view/Surface;

    .line 37127
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    if-eqz v0, :cond_2

    .line 37128
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QJ;->A09()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hh;->A0O:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 37129
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hh;->A0O:[Ljava/lang/String;

    const-string v1, "he0jjWxzFB8qDestWT3k7cDZmQ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "YQusGxI3ZRGEiRLtvLIlZ3cCdg"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    .line 37130
    :cond_2
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Hh;->A09:Landroid/widget/MediaController;

    .line 37131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0M:Z

    .line 37132
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/QW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V

    .line 37133
    return-void
.end method

.method public static A07()V
    .locals 3

    const/16 v0, 0xe2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Hh;->A0N:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hh;->A0O:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hh;->A0O:[Ljava/lang/String;

    const-string v1, "4Rjqxy3w03hT2rk3wOaPN94qCv"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "J56YrdEaTg6GnpCj3tljjm9xxp"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x56t
        0x7et
        0x7et
        0x76t
        0x7dt
        0x74t
        0x31t
        0x70t
        0x7dt
        0x66t
        0x70t
        0x68t
        0x62t
        0x31t
        0x65t
        0x79t
        0x63t
        0x7et
        0x66t
        0x31t
        0x70t
        0x7ft
        0x31t
        0x74t
        0x69t
        0x72t
        0x74t
        0x61t
        0x65t
        0x78t
        0x7et
        0x7ft
        0x31t
        0x66t
        0x78t
        0x65t
        0x79t
        0x31t
        0x62t
        0x74t
        0x65t
        0x53t
        0x70t
        0x72t
        0x7at
        0x76t
        0x63t
        0x7et
        0x64t
        0x7ft
        0x75t
        0x55t
        0x63t
        0x70t
        0x66t
        0x70t
        0x73t
        0x7dt
        0x74t
        0x31t
        0x7et
        0x7ft
        0x31t
        0x5ft
        0x7et
        0x64t
        0x76t
        0x70t
        0x65t
        0x31t
        0x70t
        0x73t
        0x7et
        0x67t
        0x74t
        0x3ft
        0x31t
        0x62t
        0x7et
        0x31t
        0x66t
        0x74t
        0x31t
        0x62t
        0x78t
        0x7dt
        0x74t
        0x7ft
        0x65t
        0x7dt
        0x68t
        0x31t
        0x78t
        0x76t
        0x7ft
        0x7et
        0x63t
        0x74t
        0x31t
        0x78t
        0x65t
        0x3ft
        0x4ct
        0x64t
        0x64t
        0x6ct
        0x67t
        0x6et
        0x2bt
        0x6at
        0x67t
        0x7ct
        0x6at
        0x72t
        0x78t
        0x2bt
        0x7ft
        0x63t
        0x79t
        0x64t
        0x7ct
        0x2bt
        0x6at
        0x65t
        0x2bt
        0x6et
        0x73t
        0x68t
        0x6et
        0x7bt
        0x7ft
        0x62t
        0x64t
        0x65t
        0x2bt
        0x7ct
        0x62t
        0x7ft
        0x63t
        0x2bt
        0x78t
        0x6et
        0x7ft
        0x4dt
        0x64t
        0x79t
        0x6et
        0x6ct
        0x79t
        0x64t
        0x7et
        0x65t
        0x6ft
        0x2bt
        0x64t
        0x65t
        0x2bt
        0x45t
        0x64t
        0x7et
        0x6ct
        0x6at
        0x7ft
        0x2bt
        0x6at
        0x69t
        0x64t
        0x7dt
        0x6et
        0x25t
        0x2bt
        0x78t
        0x64t
        0x2bt
        0x7ct
        0x6et
        0x2bt
        0x78t
        0x62t
        0x67t
        0x6et
        0x65t
        0x7ft
        0x67t
        0x72t
        0x2bt
        0x62t
        0x6ct
        0x65t
        0x64t
        0x79t
        0x6et
        0x2bt
        0x62t
        0x7ft
        0x25t
        0x21t
        0x1et
        0x13t
        0x12t
        0x18t
        0x57t
        0x4t
        0x3t
        0x16t
        0x3t
        0x12t
        0x57t
        0x14t
        0x1ft
        0x16t
        0x19t
        0x10t
        0x12t
        0x13t
        0x57t
        0x3t
        0x18t
        0x57t
        0x5ft
        0x5dt
        0x56t
        0x5dt
        0x4at
        0x51t
        0x5bt
    .end array-data
.end method

.method private A08(II)V
    .locals 1

    .line 37134
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A03:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A02:I

    if-eq p2, v0, :cond_1

    .line 37135
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A03:I

    .line 37136
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Hh;->A02:I

    .line 37137
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A03:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A02:I

    if-eqz v0, :cond_1

    .line 37138
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->requestLayout()V

    .line 37139
    :cond_1
    return-void
.end method

.method public static A09()Z
    .locals 1

    .line 37140
    invoke-static {}, Lcom/facebook/ads/redexgen/X/QJ;->A03()Z

    move-result v0

    return v0
.end method

.method private setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V
    .locals 4

    .line 37302
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0D:Lcom/facebook/ads/redexgen/X/QW;

    if-eq p1, v0, :cond_2

    .line 37303
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xc4

    const/16 v1, 0x17

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37305
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0D:Lcom/facebook/ads/redexgen/X/QW;

    .line 37306
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0D:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A0A:Lcom/facebook/ads/redexgen/X/QW;

    if-ne v1, v0, :cond_1

    .line 37307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0M:Z

    .line 37308
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0F:Lcom/facebook/ads/redexgen/X/QX;

    if-eqz v0, :cond_2

    .line 37309
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/QX;->ACb(Lcom/facebook/ads/redexgen/X/QW;)V

    .line 37310
    :cond_2
    return-void
.end method


# virtual methods
.method public final A7l()V
    .locals 2

    .line 37141
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0H:Z

    if-nez v0, :cond_0

    .line 37142
    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->ACn(ZI)V

    .line 37143
    :cond_0
    return-void
.end method

.method public final A7x()Z
    .locals 1

    .line 37144
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QJ;->A0K()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A7y()Z
    .locals 1

    .line 37145
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0M:Z

    return v0
.end method

.method public final A8T()Z
    .locals 1

    .line 37146
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0L:Z

    return v0
.end method

.method public final ABc(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 6

    .line 37147
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0A:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->A9R(Ljava/lang/String;)V

    .line 37148
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0A:Lcom/facebook/ads/redexgen/X/XT;

    .line 37149
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    .line 37150
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2u(I)V

    .line 37151
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A03:Lcom/facebook/ads/redexgen/X/QW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V

    .line 37152
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0A:Lcom/facebook/ads/redexgen/X/XT;

    .line 37153
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8m;->A1B:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v3, p2}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/Throwable;)V

    .line 37154
    const/16 v2, 0xdb

    const/4 v1, 0x7

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 37155
    return-void
.end method

.method public final ABd(ZI)V
    .locals 7

    .line 37156
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    if-nez v0, :cond_0

    .line 37157
    return-void

    .line 37158
    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_d

    const/4 v0, 0x2

    if-eq p2, v0, :cond_b

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_6

    .line 37159
    :cond_1
    :goto_0
    return-void

    .line 37160
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A05()V

    .line 37161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A04:J

    .line 37162
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A00:F

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->setRequestedVolume(F)V

    .line 37163
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/Hh;->A05:J

    const-wide/16 v3, 0x0

    cmp-long v0, v5, v3

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QJ;->A07()J

    move-result-wide v1

    cmp-long v0, v5, v1

    if-gez v0, :cond_3

    .line 37164
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A05:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/QJ;->A0D(J)V

    .line 37165
    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/Hh;->A05:J

    .line 37166
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QJ;->A06()J

    move-result-wide v1

    cmp-long v0, v1, v3

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0M:Z

    if-eqz v0, :cond_4

    .line 37167
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A05:Lcom/facebook/ads/redexgen/X/QW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V

    goto :goto_0

    .line 37168
    :cond_4
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0D:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A06:Lcom/facebook/ads/redexgen/X/QW;

    if-eq v1, v0, :cond_1

    .line 37169
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A07:Lcom/facebook/ads/redexgen/X/QW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V

    .line 37170
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0E:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hh;->A0O:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hh;->A0O:[Ljava/lang/String;

    const-string v1, "QOwsd8cFgtBxhwq2W5mYjt9JcX"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "NiYGjjh9hUScPgNoOA1xOqSddN"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A0A:Lcom/facebook/ads/redexgen/X/QW;

    if-ne v3, v0, :cond_1

    .line 37171
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    const/16 v0, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->AEk(Lcom/facebook/ads/redexgen/X/Pj;I)V

    .line 37172
    sget-object v3, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hh;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_a

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A0A:Lcom/facebook/ads/redexgen/X/QW;

    if-ne v3, v0, :cond_1

    goto :goto_1

    .line 37173
    :cond_6
    if-eqz p1, :cond_7

    .line 37174
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A06:Lcom/facebook/ads/redexgen/X/QW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V

    .line 37175
    :cond_7
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hh;->A0O:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_8

    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hh;->A0O:[Ljava/lang/String;

    const-string v1, "KLjUXng8f5n9djrrPXv2F"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v4, :cond_9

    .line 37176
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/QJ;->A0I(Z)V

    .line 37177
    if-nez p1, :cond_9

    .line 37178
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QJ;->A0A()V

    .line 37179
    :cond_9
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0M:Z

    goto/16 :goto_0

    :cond_a
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hh;->A0O:[Ljava/lang/String;

    const-string v1, "yetXNvPdXumqVjXfCpilY"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0E:Lcom/facebook/ads/redexgen/X/QW;

    goto/16 :goto_0

    .line 37180
    :cond_b
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A05()V

    .line 37181
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Hh;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hh;->A0O:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_e

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hh;->A0O:[Ljava/lang/String;

    const-string v1, "9yr"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "mKFyaVoRgsxwFz3"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ltz v3, :cond_1

    .line 37182
    iget v5, p0, Lcom/facebook/ads/redexgen/X/Hh;->A01:I

    .line 37183
    .local p0, "seekFrom":I
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A01:I

    .line 37184
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0F:Lcom/facebook/ads/redexgen/X/QX;

    if-eqz v4, :cond_1

    .line 37185
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->getCurrentPosition()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hh;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_c

    invoke-interface {v4, v5, v3}, Lcom/facebook/ads/redexgen/X/QX;->AC1(II)V

    goto/16 :goto_0

    :cond_c
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hh;->A0O:[Ljava/lang/String;

    const-string v1, "bt2gfLOq6VYcjgDmYUS3R"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-interface {v4, v5, v3}, Lcom/facebook/ads/redexgen/X/QX;->AC1(II)V

    goto/16 :goto_0

    .line 37186
    :cond_d
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/QW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V

    .line 37187
    goto/16 :goto_0

    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ACZ(IIIF)V
    .locals 0

    .line 37188
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Hh;->A08(II)V

    .line 37189
    return-void
.end method

.method public final ACn(ZI)V
    .locals 2

    .line 37190
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0A:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/0R;->A2q(I)V

    .line 37191
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A05:Lcom/facebook/ads/redexgen/X/QW;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0E:Lcom/facebook/ads/redexgen/X/QW;

    .line 37192
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0L:Z

    .line 37193
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    if-eqz v1, :cond_0

    .line 37194
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QJ;->A0I(Z)V

    .line 37195
    :goto_0
    return-void

    .line 37196
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/QW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V

    goto :goto_0
.end method

.method public final AEf(I)V
    .locals 2

    .line 37197
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0A:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->A9S(I)V

    .line 37198
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A09:Lcom/facebook/ads/redexgen/X/QW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V

    .line 37199
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->AEr(I)V

    .line 37200
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A05:J

    .line 37201
    return-void
.end method

.method public final AEk(Lcom/facebook/ads/redexgen/X/Pj;I)V
    .locals 2

    .line 37202
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0A:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/0R;->A31(I)V

    .line 37203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0L:Z

    .line 37204
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A0A:Lcom/facebook/ads/redexgen/X/QW;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0E:Lcom/facebook/ads/redexgen/X/QW;

    .line 37205
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    .line 37206
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    if-nez v0, :cond_1

    .line 37207
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A06:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->setup(Landroid/net/Uri;)V

    .line 37208
    :cond_0
    :goto_0
    return-void

    .line 37209
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0D:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A07:Lcom/facebook/ads/redexgen/X/QW;

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0D:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A05:Lcom/facebook/ads/redexgen/X/QW;

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0D:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A06:Lcom/facebook/ads/redexgen/X/QW;

    if-ne v1, v0, :cond_0

    .line 37210
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QJ;->A0I(Z)V

    .line 37211
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A0A:Lcom/facebook/ads/redexgen/X/QW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V

    goto :goto_0
.end method

.method public final AEr(I)V
    .locals 1

    .line 37212
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0A:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->A33(I)V

    .line 37213
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/QW;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0E:Lcom/facebook/ads/redexgen/X/QW;

    .line 37214
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    if-eqz v0, :cond_0

    .line 37215
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QJ;->A0B()V

    .line 37216
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QJ;->A09()V

    .line 37217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    .line 37218
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/QW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V

    .line 37219
    return-void
.end method

.method public final destroy()V
    .locals 0

    .line 37220
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A06()V

    .line 37221
    return-void
.end method

.method public getCurrentPosition()I
    .locals 3

    .line 37222
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QJ;->A06()J

    move-result-wide v1

    long-to-int v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 3

    .line 37223
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    if-nez v0, :cond_0

    .line 37224
    const/4 v0, 0x0

    return v0

    .line 37225
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QJ;->A07()J

    move-result-wide v1

    long-to-int v0, v1

    return v0
.end method

.method public getInitialBufferTime()J
    .locals 2

    .line 37226
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A04:J

    return-wide v0
.end method

.method public getStartReason()Lcom/facebook/ads/redexgen/X/Pj;
    .locals 1

    .line 37227
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    return-object v0
.end method

.method public getState()Lcom/facebook/ads/redexgen/X/QW;
    .locals 1

    .line 37228
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0D:Lcom/facebook/ads/redexgen/X/QW;

    return-object v0
.end method

.method public getTargetState()Lcom/facebook/ads/redexgen/X/QW;
    .locals 1

    .line 37229
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0E:Lcom/facebook/ads/redexgen/X/QW;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 37230
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A02:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 37231
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A03:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 37232
    return-object p0
.end method

.method public getVolume()F
    .locals 1

    .line 37233
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A00:F

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 37234
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 37235
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A1k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37236
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37237
    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A03:Lcom/facebook/ads/redexgen/X/QW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->setVideoState(Lcom/facebook/ads/redexgen/X/QW;)V

    .line 37238
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->AEr(I)V

    .line 37239
    :cond_0
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 37240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A07:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 37241
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 37242
    :cond_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A07:Landroid/view/Surface;

    .line 37243
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    if-nez v1, :cond_1

    .line 37244
    return-void

    .line 37245
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A07:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QJ;->A0F(Landroid/view/Surface;)V

    .line 37246
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0D:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A05:Lcom/facebook/ads/redexgen/X/QW;

    if-ne v1, v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0L:Z

    if-nez v0, :cond_2

    .line 37247
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    const/4 v0, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->AEk(Lcom/facebook/ads/redexgen/X/Pj;I)V

    .line 37248
    :cond_2
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 4

    .line 37249
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A07:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 37250
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 37251
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A07:Landroid/view/Surface;

    .line 37252
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    if-eqz v0, :cond_0

    .line 37253
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/QJ;->A0F(Landroid/view/Surface;)V

    .line 37254
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0D:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A05:Lcom/facebook/ads/redexgen/X/QW;

    if-eq v1, v0, :cond_2

    .line 37255
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hh;->A0O:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hh;->A0O:[Ljava/lang/String;

    const-string v1, "TScQzo9LVHiM3saFvXTgi"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v0, 0x5

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Hh;->ACn(ZI)V

    .line 37256
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 37257
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 37258
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 37259
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowFocusChanged(Z)V

    .line 37260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    if-nez v0, :cond_0

    .line 37261
    return-void

    .line 37262
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A09:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37263
    return-void

    .line 37264
    :cond_1
    if-nez p1, :cond_3

    .line 37265
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0D:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A05:Lcom/facebook/ads/redexgen/X/QW;

    if-eq v1, v0, :cond_2

    .line 37266
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A7l()V

    .line 37267
    :cond_2
    :goto_0
    return-void

    .line 37268
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0D:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A05:Lcom/facebook/ads/redexgen/X/QW;

    if-ne v1, v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0L:Z

    if-nez v0, :cond_2

    .line 37269
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    const/16 v0, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->AEk(Lcom/facebook/ads/redexgen/X/Pj;I)V

    goto :goto_0
.end method

.method public final seekTo(I)V
    .locals 5

    .line 37270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    if-eqz v0, :cond_0

    .line 37271
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A01:I

    .line 37272
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    int-to-long v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/QJ;->A0D(J)V

    .line 37273
    :goto_0
    return-void

    .line 37274
    :cond_0
    int-to-long v3, p1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hh;->A0O:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hh;->A0O:[Ljava/lang/String;

    const-string v1, "kfjJwAtkK1UY2s6fcoM3d"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/Hh;->A05:J

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 37275
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_1

    .line 37276
    invoke-super {p0, p1}, Landroid/view/TextureView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37277
    :cond_0
    :goto_0
    return-void

    .line 37278
    :cond_1
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hh;->A0O:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hh;->A0O:[Ljava/lang/String;

    const-string v1, "HF5JdwiOlRNKOfaOH"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 37279
    sget-object v3, Lcom/facebook/ads/redexgen/X/Hh;->A0P:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x66

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBackgroundPlaybackEnabled(Z)V
    .locals 0

    .line 37280
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0H:Z

    .line 37281
    return-void
.end method

.method public setControlsAnchorView(Landroid/view/View;)V
    .locals 1

    .line 37282
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A08:Landroid/view/View;

    .line 37283
    new-instance v0, Lcom/facebook/ads/redexgen/X/QQ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/QQ;-><init>(Lcom/facebook/ads/redexgen/X/Hh;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 37284
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 37285
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_1

    .line 37286
    invoke-super {p0, p1}, Landroid/view/TextureView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 37287
    :cond_0
    :goto_0
    return-void

    .line 37288
    :cond_1
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37289
    sget-object v3, Lcom/facebook/ads/redexgen/X/Hh;->A0P:Ljava/lang/String;

    const/16 v4, 0x66

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hh;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hh;->A0O:[Ljava/lang/String;

    const-string v1, "adR4uJi1AjYNmamYU7fKdN8LPQzpuqJY"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "LCKmfGi2Ka9VnYBnqFwdGZK0MZJmec2m"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/16 v1, 0x5e

    const/16 v0, 0x4f

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFullScreen(Z)V
    .locals 1

    .line 37290
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0J:Z

    .line 37291
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0I:Z

    if-nez v0, :cond_0

    .line 37292
    new-instance v0, Lcom/facebook/ads/redexgen/X/QP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/QP;-><init>(Lcom/facebook/ads/redexgen/X/Hh;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 37293
    :cond_0
    return-void
.end method

.method public setRequestedVolume(F)V
    .locals 2

    .line 37294
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A00:F

    .line 37295
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0D:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/QW;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0D:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/QW;

    if-eq v1, v0, :cond_0

    .line 37296
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/QJ;->A0C(F)V

    .line 37297
    :cond_0
    return-void
.end method

.method public setTestMode(Z)V
    .locals 0

    .line 37298
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0K:Z

    .line 37299
    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 37300
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0G:Ljava/lang/String;

    .line 37301
    return-void
.end method

.method public setVideoStateChangeListener(Lcom/facebook/ads/redexgen/X/QX;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/QX;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 37311
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0F:Lcom/facebook/ads/redexgen/X/QX;

    .line 37312
    return-void
.end method

.method public setup(Landroid/net/Uri;)V
    .locals 1

    .line 37313
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0A:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2t()V

    .line 37314
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    if-eqz v0, :cond_0

    .line 37315
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A06()V

    .line 37316
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A06:Landroid/net/Uri;

    .line 37317
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/Hh;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 37318
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A04()V

    .line 37319
    return-void
.end method
