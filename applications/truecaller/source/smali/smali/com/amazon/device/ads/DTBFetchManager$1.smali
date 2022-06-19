.class public Lcom/amazon/device/ads/DTBFetchManager$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/DTBFetchManager;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/amazon/device/ads/DTBFetchManager;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/DTBFetchManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazon/device/ads/DTBFetchManager$1;->this$0:Lcom/amazon/device/ads/DTBFetchManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBFetchManager$1;->this$0:Lcom/amazon/device/ads/DTBFetchManager;

    invoke-static {v0}, Lcom/amazon/device/ads/DTBFetchManager;->access$000(Lcom/amazon/device/ads/DTBFetchManager;)V

    return-void
.end method
