.class public final Lcom/facebook/ads/redexgen/X/3S;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ew;,
        Lcom/facebook/ads/redexgen/X/Ex;,
        Lcom/facebook/ads/redexgen/X/bi;,
        Lcom/facebook/ads/redexgen/X/3R;
    }
.end annotation


# static fields
.field public static final A01:Lcom/facebook/ads/redexgen/X/3R;


# instance fields
.field public final A00:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 9719
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_0

    .line 9720
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ew;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ew;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3S;->A01:Lcom/facebook/ads/redexgen/X/3R;

    .line 9721
    :goto_0
    return-void

    .line 9722
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_1

    .line 9723
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ex;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ex;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3S;->A01:Lcom/facebook/ads/redexgen/X/3R;

    goto :goto_0

    .line 9724
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/bi;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/bi;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3S;->A01:Lcom/facebook/ads/redexgen/X/3R;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .line 9725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9726
    sget-object v0, Lcom/facebook/ads/redexgen/X/3S;->A01:Lcom/facebook/ads/redexgen/X/3R;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/3R;->A9W(Lcom/facebook/ads/redexgen/X/3S;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3S;->A00:Ljava/lang/Object;

    .line 9727
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 9728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9729
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3S;->A00:Ljava/lang/Object;

    .line 9730
    return-void
.end method


# virtual methods
.method public final A00(I)Lcom/facebook/ads/redexgen/X/3Q;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 9731
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A01(I)Lcom/facebook/ads/redexgen/X/3Q;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 9732
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A02()Ljava/lang/Object;
    .locals 1

    .line 9733
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3S;->A00:Ljava/lang/Object;

    return-object v0
.end method

.method public final A03(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/3Q;",
            ">;"
        }
    .end annotation

    .line 9734
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A04(IILandroid/os/Bundle;)Z
    .locals 1

    .line 9735
    const/4 v0, 0x0

    return v0
.end method
