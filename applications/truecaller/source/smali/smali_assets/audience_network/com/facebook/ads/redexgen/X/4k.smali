.class public final Lcom/facebook/ads/redexgen/X/4k;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InfoRecord"
.end annotation


# static fields
.field public static A03:Lcom/facebook/ads/redexgen/X/2X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/2X<",
            "Lcom/facebook/ads/redexgen/X/4k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/4H;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/4H;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 12561
    const/16 v1, 0x14

    new-instance v0, Lcom/facebook/ads/redexgen/X/bw;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/bw;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/4k;->A03:Lcom/facebook/ads/redexgen/X/2X;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12563
    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/4k;
    .locals 1

    .line 12564
    sget-object v0, Lcom/facebook/ads/redexgen/X/4k;->A03:Lcom/facebook/ads/redexgen/X/2X;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/2X;->A2O()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4k;

    .line 12565
    .local v0, "record":Lcom/facebook/ads/redexgen/X/4k;
    if-nez v0, :cond_0

    new-instance v0, Lcom/facebook/ads/redexgen/X/4k;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4k;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static A01()V
    .locals 1

    .line 12566
    :goto_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/4k;->A03:Lcom/facebook/ads/redexgen/X/2X;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/2X;->A2O()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 12567
    :cond_0
    return-void
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/4k;)V
    .locals 1

    .line 12568
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:I

    .line 12569
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A02:Lcom/facebook/ads/redexgen/X/4H;

    .line 12570
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A01:Lcom/facebook/ads/redexgen/X/4H;

    .line 12571
    sget-object v0, Lcom/facebook/ads/redexgen/X/4k;->A03:Lcom/facebook/ads/redexgen/X/2X;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/2X;->ADV(Ljava/lang/Object;)Z

    .line 12572
    return-void
.end method
