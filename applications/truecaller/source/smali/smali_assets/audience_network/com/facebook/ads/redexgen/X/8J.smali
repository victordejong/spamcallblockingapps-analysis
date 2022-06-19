.class public Lcom/facebook/ads/redexgen/X/8J;
.super Landroid/content/ContextWrapper;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/8L;

.field public final A01:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8L;)V
    .locals 1

    .line 18194
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 18195
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8J;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    .line 18196
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/8J;->A00:Lcom/facebook/ads/redexgen/X/8L;

    .line 18197
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/XS;
    .locals 1

    .line 18198
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8J;->A00:Lcom/facebook/ads/redexgen/X/8L;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/8L;->A7G(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/8K;
    .locals 1

    .line 18199
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8J;->A00:Lcom/facebook/ads/redexgen/X/8L;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/8L;->A5n(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/8K;

    move-result-object v0

    return-object v0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/8M;
    .locals 1

    .line 18200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8J;->A00:Lcom/facebook/ads/redexgen/X/8L;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/8L;->A6R(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/8M;

    move-result-object v0

    return-object v0
.end method

.method public final A03()Lcom/facebook/ads/redexgen/X/8O;
    .locals 1

    .line 18201
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8J;->A00:Lcom/facebook/ads/redexgen/X/8L;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/8L;->A7F(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/8O;

    move-result-object v0

    return-object v0
.end method

.method public final A04()Lcom/facebook/ads/redexgen/X/8P;
    .locals 1

    .line 18202
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8J;->A00:Lcom/facebook/ads/redexgen/X/8L;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8L;->A7W()Lcom/facebook/ads/redexgen/X/8P;

    move-result-object v0

    return-object v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/8Y;
    .locals 1

    .line 18203
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8J;->A00:Lcom/facebook/ads/redexgen/X/8L;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/8L;->A6H(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/8Y;

    move-result-object v0

    return-object v0
.end method

.method public final A06()Lcom/facebook/ads/redexgen/X/8l;
    .locals 1

    .line 18204
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8J;->A00:Lcom/facebook/ads/redexgen/X/8L;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/8L;->A6I(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v0

    return-object v0
.end method

.method public final A07()Lcom/facebook/ads/redexgen/X/9C;
    .locals 1

    .line 18205
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8J;->A00:Lcom/facebook/ads/redexgen/X/8L;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8L;->A7N()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    return-object v0
.end method

.method public final A08()Lcom/facebook/ads/redexgen/X/JT;
    .locals 2

    .line 18206
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8J;->A00:Lcom/facebook/ads/redexgen/X/8L;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/8L;->A5Z(Lcom/facebook/ads/redexgen/X/XS;)Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v0

    return-object v0
.end method

.method public final A09()Lcom/facebook/ads/redexgen/X/Jf;
    .locals 2

    .line 18207
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8J;->A00:Lcom/facebook/ads/redexgen/X/8L;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/8L;->A7H(Lcom/facebook/ads/redexgen/X/XS;)Lcom/facebook/ads/redexgen/X/Jf;

    move-result-object v0

    return-object v0
.end method

.method public final A0A()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 18208
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8J;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final A0B(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 18209
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8J;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 18210
    return-void
.end method
