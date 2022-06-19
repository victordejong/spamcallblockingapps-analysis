.class public final Lcom/facebook/ads/redexgen/X/az;
.super Lcom/facebook/ads/redexgen/X/Kv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/5N;->A02(Landroid/widget/ImageView;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/graphics/drawable/Drawable;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/5N;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Tj;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5N;Lcom/facebook/ads/redexgen/X/Tj;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 68423
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/az;->A01:Lcom/facebook/ads/redexgen/X/5N;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/az;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/az;->A00:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 2

    .line 68424
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/az;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/az;->A00:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Tj;->A1I(Landroid/graphics/drawable/Drawable;)V

    .line 68425
    return-void
.end method
