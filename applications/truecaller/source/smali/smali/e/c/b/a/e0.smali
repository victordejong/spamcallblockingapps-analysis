.class public final synthetic Le/c/b/a/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/amazon/device/ads/DTBBidInspector$1;


# direct methods
.method public synthetic constructor <init>(Lcom/amazon/device/ads/DTBBidInspector$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/c/b/a/e0;->a:Lcom/amazon/device/ads/DTBBidInspector$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Le/c/b/a/e0;->a:Lcom/amazon/device/ads/DTBBidInspector$1;

    .line 1
    iget-object v0, v0, Lcom/amazon/device/ads/DTBBidInspector$1;->this$0:Lcom/amazon/device/ads/DTBBidInspector;

    invoke-static {v0}, Lcom/amazon/device/ads/DTBBidInspector;->access$000(Lcom/amazon/device/ads/DTBBidInspector;)V

    return-void
.end method
