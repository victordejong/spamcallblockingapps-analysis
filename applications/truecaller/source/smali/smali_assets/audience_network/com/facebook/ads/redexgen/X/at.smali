.class public final Lcom/facebook/ads/redexgen/X/at;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/7B;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/as;->A01()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/as;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/as;)V
    .locals 0

    .line 68394
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/at;->A00:Lcom/facebook/ads/redexgen/X/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AA5()V
    .locals 1

    .line 68395
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    .line 68396
    return-void
.end method

.method public final AAC()V
    .locals 1

    .line 68397
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    .line 68398
    return-void
.end method
