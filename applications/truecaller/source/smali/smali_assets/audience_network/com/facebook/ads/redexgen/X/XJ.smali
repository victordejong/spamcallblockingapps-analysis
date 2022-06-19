.class public final Lcom/facebook/ads/redexgen/X/XJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/8l;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DeprecatedMethod"
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/8J;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8J;)V
    .locals 0

    .line 65978
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65979
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XJ;->A00:Lcom/facebook/ads/redexgen/X/8J;

    .line 65980
    return-void
.end method


# virtual methods
.method public final A3P(Ljava/lang/Throwable;)V
    .locals 0

    .line 65981
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/8g;->A0E(Ljava/lang/Throwable;)V

    .line 65982
    return-void
.end method

.method public final A87(Ljava/lang/String;)V
    .locals 1

    .line 65983
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XJ;->A00:Lcom/facebook/ads/redexgen/X/8J;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Je;->A08(Lcom/facebook/ads/redexgen/X/8J;Ljava/lang/String;)V

    .line 65984
    return-void
.end method

.method public final A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V
    .locals 1

    .line 65985
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XJ;->A00:Lcom/facebook/ads/redexgen/X/8J;

    invoke-static {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/8g;->A06(Lcom/facebook/ads/redexgen/X/8J;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 65986
    return-void
.end method

.method public final A8r(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V
    .locals 1

    .line 65987
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XJ;->A00:Lcom/facebook/ads/redexgen/X/8J;

    invoke-static {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/8g;->A06(Lcom/facebook/ads/redexgen/X/8J;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 65988
    return-void
.end method

.method public final A8z(JJJJILjava/lang/Exception;)V
    .locals 11
    .param p10    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65989
    move-object v0, p0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/XJ;->A00:Lcom/facebook/ads/redexgen/X/8J;

    move/from16 v9, p9

    move-wide v3, p3

    move-object/from16 v10, p10

    move-wide/from16 v5, p5

    move-wide v1, p1

    move-wide/from16 v7, p7

    invoke-static/range {v0 .. v10}, Lcom/facebook/ads/redexgen/X/8r;->A03(Lcom/facebook/ads/redexgen/X/8J;JJJJILjava/lang/Exception;)V

    .line 65990
    return-void
.end method

.method public final A98(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V
    .locals 1

    .line 65991
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XJ;->A00:Lcom/facebook/ads/redexgen/X/8J;

    invoke-static {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/8g;->A07(Lcom/facebook/ads/redexgen/X/8J;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 65992
    return-void
.end method

.method public final A9G(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V
    .locals 1

    .line 65993
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XJ;->A00:Lcom/facebook/ads/redexgen/X/8J;

    invoke-static {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/8g;->A08(Lcom/facebook/ads/redexgen/X/8J;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 65994
    return-void
.end method

.method public final A9M()V
    .locals 2

    .line 65995
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XJ;->A00:Lcom/facebook/ads/redexgen/X/8J;

    invoke-static {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XJ;->A00:Lcom/facebook/ads/redexgen/X/8J;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/InitApi;->maybeAttachCrashListener(Landroid/content/Context;)V

    .line 65996
    return-void
.end method
