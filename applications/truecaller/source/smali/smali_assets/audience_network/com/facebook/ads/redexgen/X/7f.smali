.class public final Lcom/facebook/ads/redexgen/X/7f;
.super Lcom/facebook/ads/redexgen/X/Kq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/JX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/JX;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/JX;)V
    .locals 0

    .line 17302
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7f;->A00:Lcom/facebook/ads/redexgen/X/JX;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kq;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Kr;)V
    .locals 3

    .line 17303
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7f;->A00:Lcom/facebook/ads/redexgen/X/JX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JX;->A0C(Lcom/facebook/ads/redexgen/X/JX;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17304
    return-void

    .line 17305
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7f;->A00:Lcom/facebook/ads/redexgen/X/JX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JX;->A03(Lcom/facebook/ads/redexgen/X/JX;)Lcom/facebook/ads/redexgen/X/Pw;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pw;->A03:Lcom/facebook/ads/redexgen/X/Pw;

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7f;->A00:Lcom/facebook/ads/redexgen/X/JX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JX;->A0D(Lcom/facebook/ads/redexgen/X/JX;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17306
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7f;->A00:Lcom/facebook/ads/redexgen/X/JX;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/JX;->A04(Lcom/facebook/ads/redexgen/X/JX;Lcom/facebook/ads/redexgen/X/Pw;)Lcom/facebook/ads/redexgen/X/Pw;

    .line 17307
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7f;->A00:Lcom/facebook/ads/redexgen/X/JX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JX;->A09(Lcom/facebook/ads/redexgen/X/JX;)V

    .line 17308
    return-void

    .line 17309
    :cond_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7f;->A00:Lcom/facebook/ads/redexgen/X/JX;

    const/4 v1, 0x0

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JX;->A0A(Lcom/facebook/ads/redexgen/X/JX;II)V

    .line 17310
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 17311
    check-cast p1, Lcom/facebook/ads/redexgen/X/Kr;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7f;->A00(Lcom/facebook/ads/redexgen/X/Kr;)V

    return-void
.end method
