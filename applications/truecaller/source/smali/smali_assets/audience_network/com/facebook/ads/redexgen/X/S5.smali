.class public final Lcom/facebook/ads/redexgen/X/S5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/On;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/JT;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/On;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/On;)V
    .locals 0

    .line 51396
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/S5;->A00:Lcom/facebook/ads/redexgen/X/On;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAg(Ljava/lang/String;)V
    .locals 1

    .line 51397
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A00:Lcom/facebook/ads/redexgen/X/On;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/On;->A0C(Lcom/facebook/ads/redexgen/X/On;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 51398
    return-void
.end method
