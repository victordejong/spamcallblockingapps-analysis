.class public final Lcom/facebook/ads/redexgen/X/Mz;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/N0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/MD;

.field public A02:Lcom/facebook/ads/redexgen/X/N3;

.field public A03:Ljava/lang/String;

.field public A04:Ljava/lang/String;

.field public A05:Ljava/lang/String;

.field public A06:Ljava/lang/String;

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Lcom/facebook/ads/redexgen/X/XT;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/N3;)V
    .locals 1

    .line 45077
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45078
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Mz;->A0A:Z

    .line 45079
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Mz;->A0B:Z

    .line 45080
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Mz;->A09:Z

    .line 45081
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Mz;->A07:Z

    .line 45082
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Mz;->A08:Z

    .line 45083
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mz;->A0C:Lcom/facebook/ads/redexgen/X/XT;

    .line 45084
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Mz;->A02:Lcom/facebook/ads/redexgen/X/N3;

    .line 45085
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Mz;)I
    .locals 0

    .line 45086
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Mz;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Mz;)Lcom/facebook/ads/redexgen/X/XT;
    .locals 0

    .line 45087
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Mz;->A0C:Lcom/facebook/ads/redexgen/X/XT;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Mz;)Lcom/facebook/ads/redexgen/X/MD;
    .locals 0

    .line 45088
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Mz;->A01:Lcom/facebook/ads/redexgen/X/MD;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Mz;)Lcom/facebook/ads/redexgen/X/N3;
    .locals 0

    .line 45089
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Mz;->A02:Lcom/facebook/ads/redexgen/X/N3;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Mz;)Ljava/lang/String;
    .locals 0

    .line 45090
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Mz;->A06:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Mz;)Ljava/lang/String;
    .locals 0

    .line 45091
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Mz;->A05:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Mz;)Ljava/lang/String;
    .locals 0

    .line 45092
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Mz;->A04:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Mz;)Ljava/lang/String;
    .locals 0

    .line 45093
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Mz;->A03:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Mz;)Z
    .locals 0

    .line 45094
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Mz;->A09:Z

    return p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/Mz;)Z
    .locals 0

    .line 45095
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Mz;->A0B:Z

    return p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/Mz;)Z
    .locals 0

    .line 45096
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Mz;->A07:Z

    return p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/Mz;)Z
    .locals 0

    .line 45097
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Mz;->A08:Z

    return p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/Mz;)Z
    .locals 0

    .line 45098
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Mz;->A0A:Z

    return p0
.end method


# virtual methods
.method public final A0D(I)Lcom/facebook/ads/redexgen/X/Mz;
    .locals 0

    .line 45099
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Mz;->A00:I

    .line 45100
    return-object p0
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/MD;)Lcom/facebook/ads/redexgen/X/Mz;
    .locals 0

    .line 45101
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mz;->A01:Lcom/facebook/ads/redexgen/X/MD;

    .line 45102
    return-object p0
.end method

.method public final A0F(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mz;
    .locals 0

    .line 45103
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mz;->A03:Ljava/lang/String;

    .line 45104
    return-object p0
.end method

.method public final A0G(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mz;
    .locals 0

    .line 45105
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mz;->A04:Ljava/lang/String;

    .line 45106
    return-object p0
.end method

.method public final A0H(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mz;
    .locals 0

    .line 45107
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mz;->A05:Ljava/lang/String;

    .line 45108
    return-object p0
.end method

.method public final A0I(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mz;
    .locals 0

    .line 45109
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mz;->A06:Ljava/lang/String;

    .line 45110
    return-object p0
.end method

.method public final A0J(Z)Lcom/facebook/ads/redexgen/X/Mz;
    .locals 0

    .line 45111
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Mz;->A09:Z

    .line 45112
    return-object p0
.end method

.method public final A0K(Z)Lcom/facebook/ads/redexgen/X/Mz;
    .locals 0

    .line 45113
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Mz;->A0A:Z

    .line 45114
    return-object p0
.end method

.method public final A0L(Z)Lcom/facebook/ads/redexgen/X/Mz;
    .locals 0

    .line 45115
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Mz;->A0B:Z

    .line 45116
    return-object p0
.end method

.method public final A0M()Lcom/facebook/ads/redexgen/X/N0;
    .locals 2

    .line 45117
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/N0;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/N0;-><init>(Lcom/facebook/ads/redexgen/X/Mz;Lcom/facebook/ads/redexgen/X/Mx;)V

    return-object v0
.end method
