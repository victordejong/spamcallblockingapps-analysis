.class public final Lcom/facebook/ads/redexgen/X/Gd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubtitleService"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/GX;

.field public A01:Lcom/facebook/ads/redexgen/X/GZ;

.field public final A02:I

.field public final A03:I

.field public final A04:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/GW;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/GY;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/GW;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/GY;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Gb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 34588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34589
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A08:Landroid/util/SparseArray;

    .line 34590
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A06:Landroid/util/SparseArray;

    .line 34591
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A07:Landroid/util/SparseArray;

    .line 34592
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A04:Landroid/util/SparseArray;

    .line 34593
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A05:Landroid/util/SparseArray;

    .line 34594
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Gd;->A03:I

    .line 34595
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Gd;->A02:I

    .line 34596
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 1

    .line 34597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A08:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 34598
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A06:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 34599
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A07:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 34600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A04:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 34601
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A05:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 34602
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A00:Lcom/facebook/ads/redexgen/X/GX;

    .line 34603
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A01:Lcom/facebook/ads/redexgen/X/GZ;

    .line 34604
    return-void
.end method
