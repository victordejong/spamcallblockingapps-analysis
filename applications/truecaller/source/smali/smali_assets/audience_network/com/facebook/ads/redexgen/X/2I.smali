.class public final Lcom/facebook/ads/redexgen/X/2I;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Landroid/util/TypedValue;

.field public static final A01:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 5079
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/2I;->A01:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5081
    return-void
.end method

.method public static final A00(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 5082
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    .line 5083
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 5084
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_1

    .line 5085
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 5086
    :cond_1
    sget-object v3, Lcom/facebook/ads/redexgen/X/2I;->A01:Ljava/lang/Object;

    monitor-enter v3

    .line 5087
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/2I;->A00:Landroid/util/TypedValue;

    if-nez v0, :cond_2

    .line 5088
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/2I;->A00:Landroid/util/TypedValue;

    .line 5089
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/2I;->A00:Landroid/util/TypedValue;

    const/4 v0, 0x1

    invoke-virtual {v2, p1, v1, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 5090
    sget-object v0, Lcom/facebook/ads/redexgen/X/2I;->A00:Landroid/util/TypedValue;

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 5091
    .local p1, "resolvedId":I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5092
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 5093
    .end local p1    # "resolvedId":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
