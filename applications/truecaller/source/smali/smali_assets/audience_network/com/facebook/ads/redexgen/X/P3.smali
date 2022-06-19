.class public final Lcom/facebook/ads/redexgen/X/P3;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/P5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/1I;

.field public A02:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A04:Lcom/facebook/ads/redexgen/X/1G;

.field public final A05:Lcom/facebook/ads/redexgen/X/1S;

.field public final A06:Lcom/facebook/ads/redexgen/X/XT;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1S;)V
    .locals 1

    .line 48135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48136
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1I;->A01(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/P3;->A01:Lcom/facebook/ads/redexgen/X/1I;

    .line 48137
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/P3;->A00:I

    .line 48138
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/P3;->A06:Lcom/facebook/ads/redexgen/X/XT;

    .line 48139
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/P3;->A04:Lcom/facebook/ads/redexgen/X/1G;

    .line 48140
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/P3;->A05:Lcom/facebook/ads/redexgen/X/1S;

    .line 48141
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/P3;)I
    .locals 0

    .line 48142
    iget p0, p0, Lcom/facebook/ads/redexgen/X/P3;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/P3;)Lcom/facebook/ads/redexgen/X/1G;
    .locals 0

    .line 48143
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/P3;->A04:Lcom/facebook/ads/redexgen/X/1G;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/P3;)Lcom/facebook/ads/redexgen/X/1I;
    .locals 0

    .line 48144
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/P3;->A01:Lcom/facebook/ads/redexgen/X/1I;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/P3;)Lcom/facebook/ads/redexgen/X/1S;
    .locals 0

    .line 48145
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/P3;->A05:Lcom/facebook/ads/redexgen/X/1S;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/P3;)Lcom/facebook/ads/redexgen/X/XT;
    .locals 0

    .line 48146
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/P3;->A06:Lcom/facebook/ads/redexgen/X/XT;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/P3;)Ljava/lang/String;
    .locals 0

    .line 48147
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/P3;->A03:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/P3;)Ljava/lang/String;
    .locals 0

    .line 48148
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/P3;->A02:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final A07(I)Lcom/facebook/ads/redexgen/X/P3;
    .locals 0

    .line 48149
    iput p1, p0, Lcom/facebook/ads/redexgen/X/P3;->A00:I

    .line 48150
    return-object p0
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/1I;)Lcom/facebook/ads/redexgen/X/P3;
    .locals 0

    .line 48151
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/P3;->A01:Lcom/facebook/ads/redexgen/X/1I;

    .line 48152
    return-object p0
.end method

.method public final A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/P3;
    .locals 0

    .line 48153
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/P3;->A02:Ljava/lang/String;

    .line 48154
    return-object p0
.end method

.method public final A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/P3;
    .locals 0

    .line 48155
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/P3;->A03:Ljava/lang/String;

    .line 48156
    return-object p0
.end method

.method public final A0B()Lcom/facebook/ads/redexgen/X/P5;
    .locals 2

    .line 48157
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/P5;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/P5;-><init>(Lcom/facebook/ads/redexgen/X/P3;Lcom/facebook/ads/redexgen/X/Rq;)V

    return-object v0
.end method
