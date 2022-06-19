.class public final Lcom/facebook/ads/redexgen/X/Rt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Nt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/8p;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/MU;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/8p;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8p;)V
    .locals 0

    .line 51166
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rt;->A00:Lcom/facebook/ads/redexgen/X/8p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAi(Z)V
    .locals 1

    .line 51167
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A00:Lcom/facebook/ads/redexgen/X/8p;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8p;->A04(Lcom/facebook/ads/redexgen/X/8p;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 51168
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A00:Lcom/facebook/ads/redexgen/X/8p;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8p;->A07(Lcom/facebook/ads/redexgen/X/8p;)V

    .line 51169
    return-void
.end method
