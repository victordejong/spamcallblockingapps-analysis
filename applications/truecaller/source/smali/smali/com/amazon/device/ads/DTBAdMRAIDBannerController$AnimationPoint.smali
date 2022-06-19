.class public Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/DTBAdMRAIDBannerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimationPoint"
.end annotation


# instance fields
.field public height:I

.field public final synthetic this$0:Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

.field public width:I

.field public xPos:I

.field public yPos:I


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;IIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->this$0:Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->xPos:I

    .line 3
    iput p3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->yPos:I

    .line 4
    iput p4, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->width:I

    .line 5
    iput p5, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->height:I

    return-void
.end method
