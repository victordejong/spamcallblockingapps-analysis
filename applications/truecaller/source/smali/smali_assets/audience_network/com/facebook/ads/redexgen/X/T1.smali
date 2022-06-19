.class public final Lcom/facebook/ads/redexgen/X/T1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/P4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Sw;->A0K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Sw;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Sw;)V
    .locals 0

    .line 53526
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/T1;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAv()V
    .locals 2

    .line 53527
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T1;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0G(Lcom/facebook/ads/redexgen/X/Sw;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 53528
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T1;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0U(Lcom/facebook/ads/redexgen/X/Sw;)V

    .line 53529
    return-void
.end method
