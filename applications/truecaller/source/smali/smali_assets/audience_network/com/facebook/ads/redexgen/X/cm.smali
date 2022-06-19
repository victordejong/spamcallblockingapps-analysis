.class public final Lcom/facebook/ads/redexgen/X/cm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Nt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/cl;->A0F(Landroid/widget/ImageView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/cl;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Tj;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/cl;ILcom/facebook/ads/redexgen/X/Tj;)V
    .locals 0

    .line 72105
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cm;->A01:Lcom/facebook/ads/redexgen/X/cl;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/cm;->A00:I

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/cm;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAi(Z)V
    .locals 2

    .line 72106
    iget v0, p0, Lcom/facebook/ads/redexgen/X/cm;->A00:I

    if-nez v0, :cond_0

    .line 72107
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cm;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cm;->A01:Lcom/facebook/ads/redexgen/X/cl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cl;->A06(Lcom/facebook/ads/redexgen/X/cl;)Lcom/facebook/ads/redexgen/X/QY;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Tj;->A1X(Lcom/facebook/ads/redexgen/X/QY;)V

    .line 72108
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cm;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Tj;->A1a(ZZ)V

    .line 72109
    return-void
.end method
