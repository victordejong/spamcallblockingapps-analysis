.class public final Lcom/facebook/ads/redexgen/X/b0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/5L;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/5N;->A02(Landroid/widget/ImageView;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/widget/ImageView;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/5N;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Tj;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5N;Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Tj;)V
    .locals 0

    .line 68426
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/b0;->A01:Lcom/facebook/ads/redexgen/X/5N;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/b0;->A00:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/b0;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAj(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 68427
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b0;->A00:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0b(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    .line 68428
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b0;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Tj;->A1I(Landroid/graphics/drawable/Drawable;)V

    .line 68429
    return-void
.end method
