.class public Lcom/amazon/device/ads/DTBAdMRAIDBannerController$BackgroundView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/DTBAdMRAIDBannerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackgroundView"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/amazon/device/ads/DTBAdMRAIDBannerController;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$BackgroundView;->this$0:Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method
