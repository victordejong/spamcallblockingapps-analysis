.class public abstract Lcom/facebook/ads/redexgen/X/N1;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/2B;

.field public A02:Lcom/facebook/ads/redexgen/X/2C;

.field public A03:Lcom/facebook/ads/redexgen/X/2D;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A04:Lcom/facebook/ads/redexgen/X/XT;

.field public final A05:Lcom/facebook/ads/redexgen/X/JT;

.field public final A06:Lcom/facebook/ads/redexgen/X/MU;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A07:Lcom/facebook/ads/redexgen/X/MV;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A08:Ljava/lang/String;

.field public final A09:Lcom/facebook/ads/redexgen/X/1S;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0A:Lcom/facebook/ads/redexgen/X/N3;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Ljava/lang/String;)V
    .locals 7

    .line 45245
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/N1;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;Lcom/facebook/ads/redexgen/X/MV;Lcom/facebook/ads/redexgen/X/MU;)V

    .line 45246
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;Lcom/facebook/ads/redexgen/X/MV;Lcom/facebook/ads/redexgen/X/MU;)V
    .locals 1
    .param p4    # Lcom/facebook/ads/redexgen/X/1S;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/ads/redexgen/X/MV;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/ads/redexgen/X/MU;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 45247
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45248
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/N1;->A00:I

    .line 45249
    sget-object v0, Lcom/facebook/ads/redexgen/X/2B;->A04:Lcom/facebook/ads/redexgen/X/2B;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/N1;->A01:Lcom/facebook/ads/redexgen/X/2B;

    .line 45250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/N1;->A03:Lcom/facebook/ads/redexgen/X/2D;

    .line 45251
    new-instance v0, Lcom/facebook/ads/redexgen/X/Sr;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Sr;-><init>(Lcom/facebook/ads/redexgen/X/N1;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/N1;->A0A:Lcom/facebook/ads/redexgen/X/N3;

    .line 45252
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/N1;->A04:Lcom/facebook/ads/redexgen/X/XT;

    .line 45253
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/N1;->A05:Lcom/facebook/ads/redexgen/X/JT;

    .line 45254
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/N1;->A07:Lcom/facebook/ads/redexgen/X/MV;

    .line 45255
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/N1;->A06:Lcom/facebook/ads/redexgen/X/MU;

    .line 45256
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/N1;->A08:Ljava/lang/String;

    .line 45257
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/N1;->A09:Lcom/facebook/ads/redexgen/X/1S;

    .line 45258
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/N1;)I
    .locals 2

    .line 45259
    iget v1, p0, Lcom/facebook/ads/redexgen/X/N1;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/N1;->A00:I

    return v1
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/N1;)I
    .locals 2

    .line 45260
    iget v1, p0, Lcom/facebook/ads/redexgen/X/N1;->A00:I

    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/N1;->A00:I

    return v1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/N1;)Lcom/facebook/ads/redexgen/X/2B;
    .locals 0

    .line 45261
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/N1;->A01:Lcom/facebook/ads/redexgen/X/2B;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/N1;Lcom/facebook/ads/redexgen/X/2B;)Lcom/facebook/ads/redexgen/X/2B;
    .locals 0

    .line 45262
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/N1;->A01:Lcom/facebook/ads/redexgen/X/2B;

    return-object p1
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/N1;)Lcom/facebook/ads/redexgen/X/2C;
    .locals 0

    .line 45263
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/N1;->A02:Lcom/facebook/ads/redexgen/X/2C;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/N1;)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 45264
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/N1;->A03:Lcom/facebook/ads/redexgen/X/2D;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/N1;)Lcom/facebook/ads/redexgen/X/XT;
    .locals 0

    .line 45265
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/N1;->A04:Lcom/facebook/ads/redexgen/X/XT;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/N1;)Lcom/facebook/ads/redexgen/X/MU;
    .locals 0

    .line 45266
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/N1;->A06:Lcom/facebook/ads/redexgen/X/MU;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/N1;)Lcom/facebook/ads/redexgen/X/MV;
    .locals 0

    .line 45267
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/N1;->A07:Lcom/facebook/ads/redexgen/X/MV;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/N1;)Ljava/lang/String;
    .locals 0

    .line 45268
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/N1;->A08:Ljava/lang/String;

    return-object p0
.end method

.method private A0A()V
    .locals 3

    .line 45269
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N1;->A02:Lcom/facebook/ads/redexgen/X/2C;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2C;->A0A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45270
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/N1;->A05:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N1;->A08:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N1;->A02:Lcom/facebook/ads/redexgen/X/2C;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2C;->A02()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JT;->A8i(Ljava/lang/String;Ljava/util/Map;)V

    .line 45271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N1;->A02:Lcom/facebook/ads/redexgen/X/2C;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2C;->A03()V

    .line 45272
    :cond_0
    return-void
.end method

.method private A0B()V
    .locals 1

    .line 45273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/N1;->A03:Lcom/facebook/ads/redexgen/X/2D;

    .line 45274
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N1;->A02:Lcom/facebook/ads/redexgen/X/2C;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2C;->A05()V

    .line 45275
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N1;->A0K()V

    .line 45276
    return-void
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/2D;)V
    .locals 2

    .line 45277
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N1;->A02:Lcom/facebook/ads/redexgen/X/2C;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N1;->A01:Lcom/facebook/ads/redexgen/X/2B;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2C;->A08(Lcom/facebook/ads/redexgen/X/2B;)V

    .line 45278
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N1;->A01:Lcom/facebook/ads/redexgen/X/2B;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/N1;->A0M(Lcom/facebook/ads/redexgen/X/2D;Lcom/facebook/ads/redexgen/X/2B;)V

    .line 45279
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0u;->A03()V

    .line 45280
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N1;->A0O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45281
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/N1;->A0A()V

    .line 45282
    :cond_0
    return-void
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/2D;)V
    .locals 3

    .line 45283
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/N1;->A03:Lcom/facebook/ads/redexgen/X/2D;

    .line 45284
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/N1;->A02:Lcom/facebook/ads/redexgen/X/2C;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N1;->A01:Lcom/facebook/ads/redexgen/X/2B;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/N1;->A00:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2C;->A09(Lcom/facebook/ads/redexgen/X/2B;I)V

    .line 45285
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N1;->A01:Lcom/facebook/ads/redexgen/X/2B;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/N1;->A0N(Lcom/facebook/ads/redexgen/X/2D;Lcom/facebook/ads/redexgen/X/2B;)V

    .line 45286
    return-void
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/N1;)V
    .locals 0

    .line 45287
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/N1;->A0B()V

    return-void
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/N1;)V
    .locals 0

    .line 45288
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/N1;->A0A()V

    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/N1;Lcom/facebook/ads/redexgen/X/2D;)V
    .locals 0

    .line 45289
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/N1;->A0D(Lcom/facebook/ads/redexgen/X/2D;)V

    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/N1;Lcom/facebook/ads/redexgen/X/2D;)V
    .locals 0

    .line 45290
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/N1;->A0C(Lcom/facebook/ads/redexgen/X/2D;)V

    return-void
.end method


# virtual methods
.method public final A0I()V
    .locals 0

    .line 45291
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/N1;->A0A()V

    .line 45292
    return-void
.end method

.method public final A0J()V
    .locals 3

    .line 45293
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/N1;->A08:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N1;->A05:Lcom/facebook/ads/redexgen/X/JT;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Jb;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Jb;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JT;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/2C;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/2C;-><init>(Lcom/facebook/ads/redexgen/X/Jb;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/N1;->A02:Lcom/facebook/ads/redexgen/X/2C;

    .line 45294
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N1;->A07:Lcom/facebook/ads/redexgen/X/MV;

    if-eqz v1, :cond_0

    .line 45295
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/MV;->ABU(Z)V

    .line 45296
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/N1;->A0B()V

    .line 45297
    return-void
.end method

.method public abstract A0K()V
.end method

.method public abstract A0L()V
.end method

.method public abstract A0M(Lcom/facebook/ads/redexgen/X/2D;Lcom/facebook/ads/redexgen/X/2B;)V
.end method

.method public abstract A0N(Lcom/facebook/ads/redexgen/X/2D;Lcom/facebook/ads/redexgen/X/2B;)V
.end method

.method public abstract A0O()Z
.end method
