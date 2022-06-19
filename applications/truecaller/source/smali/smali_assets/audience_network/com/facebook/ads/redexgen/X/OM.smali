.class public final Lcom/facebook/ads/redexgen/X/OM;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterstitialLayoutParamsBuilder"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/Tj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/MT;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/redexgen/X/IS;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A06:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A07:Lcom/facebook/ads/redexgen/X/16;

.field public final A08:Lcom/facebook/ads/redexgen/X/XT;

.field public final A09:Lcom/facebook/ads/redexgen/X/JT;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Lz;

.field public final A0B:Lcom/facebook/ads/redexgen/X/MU;

.field public final A0C:Lcom/facebook/ads/redexgen/X/QZ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/16;Landroid/view/View;Lcom/facebook/ads/redexgen/X/QZ;Lcom/facebook/ads/redexgen/X/Lz;)V
    .locals 1
    .param p5    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 47114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47115
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/OM;->A01:I

    .line 47116
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/OM;->A00:I

    .line 47117
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OM;->A08:Lcom/facebook/ads/redexgen/X/XT;

    .line 47118
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/OM;->A09:Lcom/facebook/ads/redexgen/X/JT;

    .line 47119
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/OM;->A0B:Lcom/facebook/ads/redexgen/X/MU;

    .line 47120
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/OM;->A07:Lcom/facebook/ads/redexgen/X/16;

    .line 47121
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/OM;->A06:Landroid/view/View;

    .line 47122
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/OM;->A0C:Lcom/facebook/ads/redexgen/X/QZ;

    .line 47123
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/OM;->A0A:Lcom/facebook/ads/redexgen/X/Lz;

    .line 47124
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/OM;)I
    .locals 0

    .line 47125
    iget p0, p0, Lcom/facebook/ads/redexgen/X/OM;->A01:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/OM;)I
    .locals 0

    .line 47126
    iget p0, p0, Lcom/facebook/ads/redexgen/X/OM;->A00:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/OM;)Landroid/view/View;
    .locals 0

    .line 47127
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/OM;->A02:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/OM;)Landroid/view/View;
    .locals 0

    .line 47128
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/OM;->A06:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/OM;)Lcom/facebook/ads/redexgen/X/16;
    .locals 0

    .line 47129
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/OM;->A07:Lcom/facebook/ads/redexgen/X/16;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/OM;)Lcom/facebook/ads/redexgen/X/XT;
    .locals 0

    .line 47130
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/OM;->A08:Lcom/facebook/ads/redexgen/X/XT;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/OM;)Lcom/facebook/ads/redexgen/X/JT;
    .locals 0

    .line 47131
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/OM;->A09:Lcom/facebook/ads/redexgen/X/JT;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/OM;)Lcom/facebook/ads/redexgen/X/Tj;
    .locals 0

    .line 47132
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/OM;->A03:Lcom/facebook/ads/redexgen/X/Tj;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/OM;)Lcom/facebook/ads/redexgen/X/Lz;
    .locals 0

    .line 47133
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/OM;->A0A:Lcom/facebook/ads/redexgen/X/Lz;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/OM;)Lcom/facebook/ads/redexgen/X/MT;
    .locals 0

    .line 47134
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/OM;->A04:Lcom/facebook/ads/redexgen/X/MT;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/OM;)Lcom/facebook/ads/redexgen/X/MU;
    .locals 0

    .line 47135
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/OM;->A0B:Lcom/facebook/ads/redexgen/X/MU;

    return-object p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/OM;)Lcom/facebook/ads/redexgen/X/IS;
    .locals 0

    .line 47136
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/OM;->A05:Lcom/facebook/ads/redexgen/X/IS;

    return-object p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/OM;)Lcom/facebook/ads/redexgen/X/QZ;
    .locals 0

    .line 47137
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/OM;->A0C:Lcom/facebook/ads/redexgen/X/QZ;

    return-object p0
.end method


# virtual methods
.method public final A0D(I)Lcom/facebook/ads/redexgen/X/OM;
    .locals 0

    .line 47138
    iput p1, p0, Lcom/facebook/ads/redexgen/X/OM;->A00:I

    .line 47139
    return-object p0
.end method

.method public final A0E(I)Lcom/facebook/ads/redexgen/X/OM;
    .locals 0

    .line 47140
    iput p1, p0, Lcom/facebook/ads/redexgen/X/OM;->A01:I

    .line 47141
    return-object p0
.end method

.method public final A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/OM;
    .locals 0

    .line 47142
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OM;->A02:Landroid/view/View;

    .line 47143
    return-object p0
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/OM;
    .locals 0

    .line 47144
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OM;->A03:Lcom/facebook/ads/redexgen/X/Tj;

    .line 47145
    return-object p0
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/MT;)Lcom/facebook/ads/redexgen/X/OM;
    .locals 0

    .line 47146
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OM;->A04:Lcom/facebook/ads/redexgen/X/MT;

    .line 47147
    return-object p0
.end method

.method public final A0I(Lcom/facebook/ads/redexgen/X/IS;)Lcom/facebook/ads/redexgen/X/OM;
    .locals 0

    .line 47148
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OM;->A05:Lcom/facebook/ads/redexgen/X/IS;

    .line 47149
    return-object p0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/ON;
    .locals 2

    .line 47150
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/ON;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/ON;-><init>(Lcom/facebook/ads/redexgen/X/OM;Lcom/facebook/ads/redexgen/X/OL;)V

    return-object v0
.end method
