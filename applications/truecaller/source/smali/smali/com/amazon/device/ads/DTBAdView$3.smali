.class public Lcom/amazon/device/ads/DTBAdView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/DTBAdView;->commonInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/amazon/device/ads/DTBAdView;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/DTBAdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdView$3;->this$0:Lcom/amazon/device/ads/DTBAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView$3;->this$0:Lcom/amazon/device/ads/DTBAdView;

    invoke-static {v0}, Lcom/amazon/device/ads/DTBAdView;->access$000(Lcom/amazon/device/ads/DTBAdView;)V

    return-void
.end method
