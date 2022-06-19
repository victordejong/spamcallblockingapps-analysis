.class public final synthetic Le/c/b/a/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/amazon/device/ads/DTBAdView;


# direct methods
.method public synthetic constructor <init>(Lcom/amazon/device/ads/DTBAdView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/c/b/a/d0;->a:Lcom/amazon/device/ads/DTBAdView;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Le/c/b/a/d0;->a:Lcom/amazon/device/ads/DTBAdView;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/DTBAdView;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1
.end method
