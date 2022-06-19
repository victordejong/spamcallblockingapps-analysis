.class public final Lcom/facebook/ads/redexgen/X/SQ;
.super Lcom/facebook/ads/redexgen/X/Kv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/SK;-><init>(Lcom/facebook/ads/redexgen/X/ON;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/SK;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ZvDtHAz5m48M18w3xVBvW9UUvAxUfTco"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Su9zcdtZ9ImnInrf0ILgVeApSeGsgvZI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "xXqvKIRF0PBjEGaR7TZ18ROMB"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "m2Hewa3Z6gbURtNYV3SWt7DVdluwrYvz"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "mWXUFmbAmKViJClAM9LXlAC"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0Y7AahKvzPLarINwhoocY8ezozCmsz"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "5fBoxvqmYpNfoXwOAmWasRGE3QCsQXLn"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "O4RwXCXfxOQMJWQD0Tqe5fA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/SQ;->A01:[Ljava/lang/String;

    .line 51820
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SK;)V
    .locals 0

    .line 51821
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SQ;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 3

    .line 51822
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SQ;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SK;->A0S(Lcom/facebook/ads/redexgen/X/SK;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51823
    const/16 v1, 0x3e8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SQ;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SK;->A09(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/OU;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0F(ILandroid/view/View;)V

    .line 51824
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SQ;->A00:Lcom/facebook/ads/redexgen/X/SK;

    const-wide/16 v0, 0x7d0

    invoke-virtual {v2, p0, v0, v1}, Lcom/facebook/ads/redexgen/X/SK;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/SQ;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_1

    .line 51825
    sget-object v2, Lcom/facebook/ads/redexgen/X/SQ;->A01:[Ljava/lang/String;

    const-string v1, "V75DU12eQT8nm"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
