.class public final Lcom/facebook/ads/redexgen/X/XX;
.super Lcom/facebook/ads/redexgen/X/Kv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7J;->A0U(Lcom/facebook/ads/redexgen/X/7B;Lcom/facebook/ads/redexgen/X/7C;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7B;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/7C;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/7J;

.field public final synthetic A03:Ljava/util/ArrayList;

.field public final synthetic A04:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7J;Ljava/util/ArrayList;Lcom/facebook/ads/redexgen/X/7B;Lcom/facebook/ads/redexgen/X/7C;Ljava/util/ArrayList;)V
    .locals 0

    .line 66237
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XX;->A02:Lcom/facebook/ads/redexgen/X/7J;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/XX;->A03:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/XX;->A00:Lcom/facebook/ads/redexgen/X/7B;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/XX;->A01:Lcom/facebook/ads/redexgen/X/7C;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/XX;->A04:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 4

    .line 66238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A03:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7J;->A0D(Ljava/util/ArrayList;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    .line 66239
    .local p0, "result":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A02:Lcom/facebook/ads/redexgen/X/7J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7J;->A07(Lcom/facebook/ads/redexgen/X/7J;)Lcom/facebook/ads/redexgen/X/8J;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/XT;

    if-eqz v0, :cond_0

    .line 66240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A02:Lcom/facebook/ads/redexgen/X/7J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7J;->A07(Lcom/facebook/ads/redexgen/X/7J;)Lcom/facebook/ads/redexgen/X/8J;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/XT;

    .line 66241
    .local v0, "adContext":Lcom/facebook/ads/redexgen/X/XT;
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66242
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A02:Lcom/facebook/ads/redexgen/X/7J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7J;->A00(Lcom/facebook/ads/redexgen/X/7J;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ly;->A01(J)J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A3u(J)V

    .line 66243
    .end local v0    # "adContext":Lcom/facebook/ads/redexgen/X/XT;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A02:Lcom/facebook/ads/redexgen/X/7J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7J;->A01(Lcom/facebook/ads/redexgen/X/7J;)Landroid/os/Handler;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/XY;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/XY;-><init>(Lcom/facebook/ads/redexgen/X/XX;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66244
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A04:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7J;->A0D(Ljava/util/ArrayList;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66245
    return-void

    .line 66246
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A02:Lcom/facebook/ads/redexgen/X/7J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7J;->A00(Lcom/facebook/ads/redexgen/X/7J;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ly;->A01(J)J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A3t(J)V

    goto :goto_0
.end method
