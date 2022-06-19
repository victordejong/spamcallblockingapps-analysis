.class public final Lcom/facebook/ads/redexgen/X/Ii;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 2

    .line 39315
    sget v1, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v0, 0x12

    if-lt v1, v0, :cond_0

    .line 39316
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ii;->A01()V

    .line 39317
    :cond_0
    return-void
.end method

.method public static A01()V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 39318
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 39319
    return-void
.end method

.method public static A02(Ljava/lang/String;)V
    .locals 2

    .line 39320
    sget v1, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v0, 0x12

    if-lt v1, v0, :cond_0

    .line 39321
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Ii;->A03(Ljava/lang/String;)V

    .line 39322
    :cond_0
    return-void
.end method

.method public static A03(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 39323
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 39324
    return-void
.end method
