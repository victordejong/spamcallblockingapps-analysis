.class public final Lcom/facebook/ads/redexgen/X/9H;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/9H;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 20023
    new-instance v0, Lcom/facebook/ads/redexgen/X/9H;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9H;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/9H;->A00:Lcom/facebook/ads/redexgen/X/9H;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 20024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/9H;
    .locals 1

    .line 20025
    sget-object v0, Lcom/facebook/ads/redexgen/X/9H;->A00:Lcom/facebook/ads/redexgen/X/9H;

    return-object v0
.end method


# virtual methods
.method public final A01(Lcom/facebook/ads/redexgen/X/8J;Z)Lcom/facebook/ads/redexgen/X/9G;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InstanceMethodCanBeStatic"
        }
    .end annotation

    .line 20026
    new-instance v1, Lcom/facebook/ads/redexgen/X/5v;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/5v;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/X0;

    invoke-direct {v0, p1, p2, v1}, Lcom/facebook/ads/redexgen/X/X0;-><init>(Lcom/facebook/ads/redexgen/X/8J;ZLcom/facebook/ads/redexgen/X/5v;)V

    return-object v0
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/8J;)Ljava/util/Map;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/8J;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20027
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/9H;->A01(Lcom/facebook/ads/redexgen/X/8J;Z)Lcom/facebook/ads/redexgen/X/9G;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9G;->A6S()Ljava/util/Map;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20028
    :catchall_0
    move-exception v1

    .line 20029
    .local p0, "t":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8l;->A3P(Ljava/lang/Throwable;)V

    .line 20030
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/9D;->A01(Lcom/facebook/ads/redexgen/X/8J;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
