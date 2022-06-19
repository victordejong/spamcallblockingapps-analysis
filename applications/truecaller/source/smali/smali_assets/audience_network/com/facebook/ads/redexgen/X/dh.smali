.class public abstract Lcom/facebook/ads/redexgen/X/dh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/di;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/di;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 1

    .line 74023
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dh;->A00:Lcom/facebook/ads/redexgen/X/di;

    if-eqz v0, :cond_0

    .line 74024
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/di;->onStart()V

    .line 74025
    :cond_0
    return-void
.end method

.method public final A01()V
    .locals 1

    .line 74026
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dh;->A00:Lcom/facebook/ads/redexgen/X/di;

    if-eqz v0, :cond_0

    .line 74027
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/di;->onStop()V

    .line 74028
    :cond_0
    return-void
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/di;)V
    .locals 0

    .line 74029
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dh;->A00:Lcom/facebook/ads/redexgen/X/di;

    .line 74030
    return-void
.end method
