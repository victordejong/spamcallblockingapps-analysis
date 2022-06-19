.class public final Lcom/facebook/ads/redexgen/X/1R;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public A00:Ljava/lang/String;

.field public A01:Ljava/lang/String;

.field public A02:Ljava/lang/String;

.field public A03:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/1R;)Ljava/lang/String;
    .locals 0

    .line 3363
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/1R;->A02:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/1R;)Ljava/lang/String;
    .locals 0

    .line 3364
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/1R;->A01:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/1R;)Ljava/lang/String;
    .locals 0

    .line 3365
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/1R;->A00:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/1R;)Ljava/lang/String;
    .locals 0

    .line 3366
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/1R;->A03:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1R;
    .locals 0

    .line 3367
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1R;->A00:Ljava/lang/String;

    .line 3368
    return-object p0
.end method

.method public final A05(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1R;
    .locals 0

    .line 3369
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1R;->A01:Ljava/lang/String;

    .line 3370
    return-object p0
.end method

.method public final A06(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1R;
    .locals 0

    .line 3371
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1R;->A02:Ljava/lang/String;

    .line 3372
    return-object p0
.end method

.method public final A07(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1R;
    .locals 0

    .line 3373
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1R;->A03:Ljava/lang/String;

    .line 3374
    return-object p0
.end method

.method public final A08()Lcom/facebook/ads/redexgen/X/1S;
    .locals 2

    .line 3375
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/1S;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/1S;-><init>(Lcom/facebook/ads/redexgen/X/1R;Lcom/facebook/ads/redexgen/X/1Q;)V

    return-object v0
.end method
