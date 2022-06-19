.class public Lcom/amazon/device/ads/DTBBidInspector$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/DTBBidInspector;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/amazon/device/ads/DTBBidInspector;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/DTBBidInspector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazon/device/ads/DTBBidInspector$1;->this$0:Lcom/amazon/device/ads/DTBBidInspector;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/amazon/device/ads/DtbThreadService;->getInstance()Lcom/amazon/device/ads/DtbThreadService;

    move-result-object v0

    new-instance v1, Le/c/b/a/e0;

    invoke-direct {v1, p0}, Le/c/b/a/e0;-><init>(Lcom/amazon/device/ads/DTBBidInspector$1;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DtbThreadService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
