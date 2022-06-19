.class public Lcom/amazon/device/ads/DTBAdRequest$WrapperReport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/DTBAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WrapperReport"
.end annotation


# instance fields
.field public expectedPackage:Ljava/lang/String;

.field public final synthetic this$0:Lcom/amazon/device/ads/DTBAdRequest;

.field public wrapperPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/DTBAdRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdRequest$WrapperReport;->this$0:Lcom/amazon/device/ads/DTBAdRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
