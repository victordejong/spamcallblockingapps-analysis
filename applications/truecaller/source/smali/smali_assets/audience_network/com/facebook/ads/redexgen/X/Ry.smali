.class public final Lcom/facebook/ads/redexgen/X/Ry;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/LR;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Rv;->A0R(ILcom/facebook/ads/redexgen/X/Kv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Kv;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Rv;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Rv;ILcom/facebook/ads/redexgen/X/Kv;)V
    .locals 0

    .line 51261
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ry;->A02:Lcom/facebook/ads/redexgen/X/Rv;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/Ry;->A00:I

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Ry;->A01:Lcom/facebook/ads/redexgen/X/Kv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAB()V
    .locals 1

    .line 51262
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ry;->A01:Lcom/facebook/ads/redexgen/X/Kv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kv;->run()V

    .line 51263
    return-void
.end method

.method public final ABj(F)V
    .locals 3

    .line 51264
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ry;->A00:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    .line 51265
    .local p1, "percentage":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ry;->A02:Lcom/facebook/ads/redexgen/X/Rv;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Rv;->A07:Lcom/facebook/ads/redexgen/X/MT;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MT;->setProgress(F)V

    .line 51266
    return-void
.end method
