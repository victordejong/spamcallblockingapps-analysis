.class public Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/DTBFetchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FetchEntry"
.end annotation


# instance fields
.field public response:Lcom/amazon/device/ads/DTBAdResponse;

.field public final synthetic this$0:Lcom/amazon/device/ads/DTBFetchManager;

.field public timestamp:J


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/DTBFetchManager;Lcom/amazon/device/ads/DTBAdResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;->this$0:Lcom/amazon/device/ads/DTBFetchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;->response:Lcom/amazon/device/ads/DTBAdResponse;

    .line 3
    invoke-static {}, Le/d/c/a/a;->c()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;->timestamp:J

    return-void
.end method
