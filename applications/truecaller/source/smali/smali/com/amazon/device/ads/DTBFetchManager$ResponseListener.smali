.class public Lcom/amazon/device/ads/DTBFetchManager$ResponseListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/DTBAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/DTBFetchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResponseListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/amazon/device/ads/DTBFetchManager;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/DTBFetchManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazon/device/ads/DTBFetchManager$ResponseListener;->this$0:Lcom/amazon/device/ads/DTBFetchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/amazon/device/ads/AdError;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/amazon/device/ads/DTBFetchManager$ResponseListener;->this$0:Lcom/amazon/device/ads/DTBFetchManager;

    new-instance v0, Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;

    new-instance v1, Lcom/amazon/device/ads/DTBAdResponse;

    invoke-direct {v1}, Lcom/amazon/device/ads/DTBAdResponse;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;-><init>(Lcom/amazon/device/ads/DTBFetchManager;Lcom/amazon/device/ads/DTBAdResponse;)V

    invoke-static {p1, v0}, Lcom/amazon/device/ads/DTBFetchManager;->access$100(Lcom/amazon/device/ads/DTBFetchManager;Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;)V

    .line 2
    iget-object p1, p0, Lcom/amazon/device/ads/DTBFetchManager$ResponseListener;->this$0:Lcom/amazon/device/ads/DTBFetchManager;

    invoke-static {p1}, Lcom/amazon/device/ads/DTBFetchManager;->access$200(Lcom/amazon/device/ads/DTBFetchManager;)V

    return-void
.end method

.method public onSuccess(Lcom/amazon/device/ads/DTBAdResponse;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBFetchManager$ResponseListener;->this$0:Lcom/amazon/device/ads/DTBFetchManager;

    new-instance v1, Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;

    invoke-direct {v1, v0, p1}, Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;-><init>(Lcom/amazon/device/ads/DTBFetchManager;Lcom/amazon/device/ads/DTBAdResponse;)V

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DTBFetchManager;->access$100(Lcom/amazon/device/ads/DTBFetchManager;Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;)V

    .line 2
    iget-object p1, p0, Lcom/amazon/device/ads/DTBFetchManager$ResponseListener;->this$0:Lcom/amazon/device/ads/DTBFetchManager;

    invoke-static {p1}, Lcom/amazon/device/ads/DTBFetchManager;->access$200(Lcom/amazon/device/ads/DTBFetchManager;)V

    return-void
.end method
