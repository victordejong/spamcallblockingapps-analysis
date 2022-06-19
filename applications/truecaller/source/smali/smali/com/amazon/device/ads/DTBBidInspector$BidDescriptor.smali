.class public Lcom/amazon/device/ads/DTBBidInspector$BidDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/DTBBidInspector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BidDescriptor"
.end annotation


# instance fields
.field public bidId:Ljava/lang/String;

.field public bidTime:J

.field public final synthetic this$0:Lcom/amazon/device/ads/DTBBidInspector;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/DTBBidInspector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazon/device/ads/DTBBidInspector$BidDescriptor;->this$0:Lcom/amazon/device/ads/DTBBidInspector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
